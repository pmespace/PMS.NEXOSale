unit NEXO;

interface

uses
	MC_PluginInterface,
	MC_PluginCatInterface,
	NEXOPluginBase,
	NEXOTypes,
	activeX,
	XMLIntf,
	PMS_NEXOSale30_TLB,
	PMS_NEXO30_TLB;

type
	enumAlign = (left, center, right, none);

type
	TLastTxn = record
		dlgp: Action;
		receipt: PSafeArray;
	end;

type
	TNexo = class(TNexoPluginBase, IMC_PluginCAT)
	private
		myNexo: NEXOSALE;

		szLastPurchaseTransactionID: string;
		LastPrintedTransaction: TLastTxn;

	protected
		fePrinterDevice: Integer;
		fcReceiptNature: widestring;
		fcCustomerReceipt: widestring;
		fcStoreReceipt: widestring;

	protected
		function doInitLink: boolean;
		function doPrintDuplicate: boolean;
		function doInitDeviceCheckHealth: boolean;
		function TranslateCommand(aeCommand: TMC_CATCommand): widestring;
		function GetLogClass: widestring; override;
		function doGetPluginInformations: IMC_PluginInformations; override;
		function doGetCapabilities(aiCapability: TMC_Capabilities; const asOptArgs: widestring): widestring; override;
		function doConnect(const asConnectString: widestring): boolean; override;
		function doOpen(): boolean; override;
		function doClose(): boolean; override;
		function doDisconnect(): boolean; override;
		function doCheckHealth(const asConnectString: widestring; out zsAnswer: widestring): boolean; override;
		function doInitDevice(): boolean; override;
		function doDirectCommand(const asCommand: widestring; acDataIn: IStream; out zcDataOut: IStream): boolean; override;
		function doTransactionReport(): boolean;

		procedure PrintTransactionShortReceipt(const ope, result, msg: widestring; const amount: double; const currency: widestring);
		procedure PrintTransactionReceipt(request: Action; receipts: PSafeArray; fCustomerReceipt: boolean; fDuplicate: boolean);
		procedure AddLine(lcReceiptData: IXMLDocument; S: widestring; align: enumAlign; fBold: boolean; fUnderline: boolean; fDoubleWidth: boolean; fDoubleHeight: boolean);
		procedure AddEmptyLine(lcReceiptData: IXMLDocument);
		function PrintReceipt(acXmlReceipt: IXMLDocument; aeCommand: TMC_CATCommand; aeReportType: TMC_ReportType): TMC_CallbackResult;
		function doTransaction(acParamsIn: IMC_CATParamsIn; out zcParamsOut: IMC_CATParamsOut): boolean;
		function doOpenDay(acParamsIn: IMC_CATParamsIn): boolean;
		function doSettlement(acParamsIn: IMC_CATParamsIn): boolean;

	public
		// constructor create(const asLangID: widestring); reintroduce; virtual;
		constructor create(const asLangID: widestring; theNexoSaleObject: NEXOSALE); reintroduce; virtual;
		// Comes from IMC_PluginCAT interface
		function command(aeCommand: TMC_CATCommand; acParamsIn: IMC_CATParamsIn; out zcParamsOut: IMC_CATParamsOut): boolean; stdcall;
	end;

implementation

uses
	sysutils,
	NEXOLib,
	MC_UICallbackParamsIn,
	NEXOCATParamsOut,
	XMLDoc,
	Classes,
	Math,
	UITypes,
	Dialogs,
	StrUtils;

// TNexo

function TNexo.GetLogClass: widestring;
begin
	result := DRIVER_NAME_SHORT;
end;

function TNexo.doGetPluginInformations: IMC_PluginInformations;
var
	lcVersion: IMC_PLuginVersion;
begin
	lcVersion := TMC_PluginVersion.create(DRIVER_VERSION_MAJOR, DRIVER_VERSION_MINOR, DRIVER_VERSION_RELEASE, DRIVER_VERSION_BUILD);
	result := TMC_PluginInformations.create(dtCAT, DRIVER_NAME_SHORT, DRIVER_COPYRIGHT, lcVersion, DRIVER_NAME_EXTENDED);
end;

function TNexo.doInitDevice: boolean;
begin
	_F('TNexo.doInitDevice');
	AddLogVerbose(CFB, '');

	result := TRUE;

	AddLogVerbose(CFER, booltostr_(result));
end;

function TNexo.doInitLink(): boolean;
begin
	_F('TNexo.doInitLink');
	AddLogVerbose(CFB, '');

	// Do something to initialize the communication
	result := TRUE;

	AddLogVerbose(CFER, booltostr_(result));
end;

function TNexo.doInitDeviceCheckHealth: boolean;
begin
	_F('TNexo.doInitDeviceCheckHealth');
	AddLogVerbose(CFB, '');

	// result := myNexo.Connected;
	result := TRUE;

	AddLogVerbose(CFER, booltostr_(result));
end;

function TNexo.doGetCapabilities(aiCapability: TMC_Capabilities; const asOptArgs: widestring): widestring;
begin
	_F('TNexo.doGetCapabilities');
	AddLogVerbose(CFB, 'aiCapability: ' + inttostr(ord(aiCapability)) + ' - asOptArgs: ' + asOptArgs);

	result := '';
	case aiCapability of
		caCATDuplicataLastOpe:
			result := CEGID_STRING_TRUE;
		caCATCheckMaintenance:
			result := CEGID_STRING_FALSE;
		caCATSettlement:
			result := CEGID_STRING_FALSE;
		caCATCheckCard:
			result := CEGID_STRING_FALSE;
		caCATManageGiftCard:
			result := CEGID_STRING_FALSE;

		// DO NOT MODIFY THIS ENTRY OR THE DRIVER WON'T BE USABLE FOR PAYMENTS
		caCATManageBankCard:
			result := CEGID_STRING_TRUE;

		caCATManageCheque:
			result := CEGID_STRING_FALSE;
		caCATDoInit:
			result := CEGID_STRING_FALSE;
		caCATInterrupt:
			result := CEGID_STRING_FALSE;
		caCATOpenDay:
			result := CEGID_STRING_FALSE;
		caCATTransactionReport:
			result := '1'; // <<<>>>
		caCATManageGiftCardActivation:
			result := CEGID_STRING_FALSE;
		caCATManageGiftCardReload:
			result := CEGID_STRING_FALSE;
		caCATUpdate:
			result := CEGID_STRING_FALSE;
		caCATManageForcedPurchase:
			result := CEGID_STRING_FALSE;
		caCATManageForcedVoidPurchase:
			result := CEGID_STRING_FALSE;
		caCATManageForcedRefund:
			result := CEGID_STRING_FALSE;
		caCATManageForcedVoidRefund:
			result := CEGID_STRING_FALSE;
		caCATMustWaitBetween2Transac:
			result := CEGID_STRING_TRUE;
		caCATManageGiftCardVoidActivation:
			result := CEGID_STRING_FALSE;
		caCATManageGiftCardVoidReload:
			result := CEGID_STRING_FALSE;
		caCATManageGiftCardIssue:
			result := CEGID_STRING_FALSE;
		caCATManageGiftCardVoidIssue:
			result := CEGID_STRING_FALSE;
		caCATGiftCardShouldReadBalanceBeforePayment:
			result := CEGID_STRING_FALSE;
		caCATManageGiftCardReturn:
			result := CEGID_STRING_FALSE;
		caCATManageGiftCardVoidReturn:
			result := CEGID_STRING_FALSE;
		caCATManageManualCardEntry:
			result := CEGID_STRING_FALSE;
		caCATManageForcedCheque:
			result := CEGID_STRING_FALSE;
		caCATGetCardMetaData:
			result := CEGID_STRING_FALSE;
		caCATCheckCardMetaData:
			result := CEGID_STRING_FALSE;

		// set the issuer for later refund processing
		caCATGetTransactionIssuer:
			result := DRIVER_CAPACITY_IS_NEXO;

		else
			result := inherited doGetCapabilities(aiCapability, asOptArgs);
	end;

	AddLogVerbose(CFER, result);
end;

function TNexo.doConnect(const asConnectString: widestring): boolean;
begin
	_F('TNexo.doConnect');
	AddLogVerbose(CFB, 'asConnectString: ' + asConnectString);

	fePrinterDevice := StrToIntDef(WideExtractValue(asConnectString, 'PrinterDeviceNum'), -1);
	fcReceiptNature := WideExtractValue(asConnectString, 'PrinterReceiptNature');
	fcCustomerReceipt := WideExtractValue(asConnectString, 'PrintTransactionReceiptModele');
	fcStoreReceipt := WideExtractValue(asConnectString, 'PrinterStoreReceiptModele');

	result := TRUE; // myNexo.Connect();

	AddLogVerbose(CFER, booltostr_(result));
end;

function TNexo.doDisconnect(): boolean;
begin
	_F('TNexo.doDisconnect');
	AddLogVerbose(CFB, '');

	// disconnecting from device
	// myNexo.Disconnect();
	result := TRUE;

	AddLogVerbose(CFER, booltostr_(result));
end;

function TNexo.doOpen(): boolean;
begin
	_F('TNexo.doOpen');
	AddLogVerbose(CFB, '');

	// Connecting to device
	result := TRUE;
	// result := myNexo.Connect();

	AddLogVerbose(CFER, booltostr_(result));
end;

function TNexo.doClose(): boolean;
begin
	_F('TNexo.doClose');
	AddLogVerbose(CFB, '');

	// Closing device
	// myNexo.Disconnect();
	result := TRUE;

	AddLogVerbose(CFER, booltostr_(result));
end;

function TNexo.doOpenDay(acParamsIn: IMC_CATParamsIn): boolean;
begin
	_F('TNexo.doOpenDay');
	AddLogVerbose(CFB, 'acParamsIn assigned: ' + booltostr_(assigned(acParamsIn)));

	result := TRUE;

	AddLogVerbose(CFER, booltostr_(result));
end;

constructor TNexo.create(const asLangID: widestring; theNexoSaleObject: NEXOSALE);
begin
	inherited create(asLangID);
	// _C('TNexo');
	// _C := 'TNexo';
	myNexo := theNexoSaleObject;
	myNexo.UseInternalPrinting := false;
end;

function TNexo.doCheckHealth(const asConnectString: widestring; out zsAnswer: widestring): boolean;
begin
	_F('TNexo.doCheckHealth');
	AddLogVerbose(CFB, 'asConnectString: ' + asConnectString);

	// Do something to check the health of the device
	result := doInitDeviceCheckHealth;

	AddLogVerbose(CFER, booltostr_(result) + ' - zsAnswer: ' + zsAnswer);
end;

function TNexo.doDirectCommand(const asCommand: widestring; acDataIn: IStream; out zcDataOut: IStream): boolean;
begin
	_F('TNexo.doDirectCommand');
	AddLogVerbose(CFB, 'asCommand: ' + asCommand + ' - acData.assigned: ' + booltostr_(assigned(acDataIn)));

	result := false;
	setError(TMC_Error.create(DRIVER_ERROR_INVALID_COMMAND));

	AddLogVerbose(CFER, booltostr_(result) + ' - zcDataOuta.assigned: ' + booltostr_(assigned(zcDataOut)));
end;

function TNexo.TranslateCommand(aeCommand: TMC_CATCommand): widestring;
begin
	result := '*Unknown command*';
	case aeCommand of
		coInitLink:
			result := 'Initialise Merchant (coInitLinkc)';
		coTransaction:
			result := 'Perform transaction (coTransaction)';
		coPrintDuplicate:
			result := 'Print duplicate (coPrintDuplicate)';
		// coCheckForMaintenance: result := 'coCheckForMaintenance';
		// coMaintenance: result := 'coMaintenance';
		// coSettlement: result := 'coSettlement';
		// coCheckCard: result := 'coCheckCard';
		// coGiftCardActivate: result := 'coGiftCardActivate';
		// coGiftCardReload: result := 'coGiftCardReload';
		coTest:
			result := 'Test connection (coTest)';
		// coOpenDay: result := 'coOpenDay';
		coTransactionsReport:
			result := 'Transactions report (coTransactionsReport)';
		// coCATUpdate: result := 'coCATUpdate';
		// coGiftCardVoidActivate: result := 'coGiftCardVoidActivate';
		// coGiftCardVoidReload: result := 'coGiftCardVoidReload';
		// coGiftCardIssue: result := 'coGiftCardIssue';
		// coGiftCardVoidIssue: result := 'coGiftCardVoidIssue';
		// coGiftCardReturn: result := 'coGiftCardReturn';
		// coGiftCardVoidReturn: result := 'coGiftCardVoidReturn';
		// coGetCardMetaData: result := 'coGetCardMetaData';
		// coCheckCardMetaData: result := 'coCheckCardMetaData';
	end;
end;

function TNexo.command(aeCommand: TMC_CATCommand; acParamsIn: IMC_CATParamsIn; out zcParamsOut: IMC_CATParamsOut): boolean;
begin
	_F('TNexo.command');
	AddLogVerbose(CFB, 'aeCommand: ' + TranslateCommand(aeCommand) + ' - acParamsIn assigned: ' + booltostr_(assigned(acParamsIn)));

	case aeCommand of
		coInitLink:
			result := doInitLink();
		coTransaction:
			result := doTransaction(acParamsIn, zcParamsOut);
		coPrintDuplicate:
			result := doPrintDuplicate();
		coCheckForMaintenance:
			result := false;
		coMaintenance:
			result := false;
		coSettlement:
			result := doSettlement(acParamsIn);
		coCheckCard:
			result := false;
		coGiftCardActivate:
			result := false;
		coGiftCardReload:
			result := false;
		coTest:
			result := false;
		coOpenDay:
			result := doOpenDay(acParamsIn);
		coTransactionsReport:
			result := doTransactionReport();
		coCATUpdate:
			result := false;
		coGiftCardVoidActivate:
			result := false;
		coGiftCardVoidReload:
			result := false;
		coGiftCardIssue:
			result := false;
		coGiftCardVoidIssue:
			result := false;
		coGiftCardReturn:
			result := false;
		coGiftCardVoidReturn:
			result := false;
		coGetCardMetaData:
			result := false;
		coCheckCardMetaData:
			result := false;
		else
			begin
				setError(TMC_Error.create(DRIVER_ERROR_COMMAND_NOT_SUPPORTED));
				result := false;
			end;
	end;

	AddLogVerbose(CFER, booltostr_(result));
end;

function TNexo.doTransaction(acParamsIn: IMC_CATParamsIn; out zcParamsOut: IMC_CATParamsOut): boolean;
var
	leTransactionResult: TMC_CATResultTransaction;
	lsTrace { , lsMessage } : widestring;
	lcTransac: IMC_CATPOTransac;
	lcTransacV2: IMC_CATPITransacV2;
	dlgp: Action;
	dlgpres: ActionResult;
	// err: TMC_Error;
	verr: Integer;
	txnMode: widestring;
	// online, authorised: boolean;
	dlgpresText: string;
	processedAmount: double;
	canProceed: boolean;
	receipt: PSafeArray;
	dlgpText: string;
	txnCurrency, txnAuthNumber, txnPaymentMethod, txnCard, txnBrand, txnReference: string;
	txnSignature: TMC_CATMustSign;

	function RebuildID(original: string): string;
	var
		{ i, } j: Integer;
		// MerchantReferenceID: string;
	begin
		_F('TNexo.doTransaction.RebuildID');
		// i := AnsiPos('#', original);
		// j := AnsiPos('@', original);
		// MerchantReferenceID := leftStr(original, i - 1);
		// myNexo.OriginalPOITransactionID := Copy(original, i + 1, j - i - 1);
		// myNexo.OriginalPOITransactionTimestamp := Copy(original, j + 1, length(original));
		// result := MerchantReferenceID;
		j := AnsiPos('@', original);
		myNexo.OriginalPOITransactionID := leftStr(original, j - 1);
		myNexo.OriginalPOITransactionTimestamp := Copy(original, j + 1, length(original));
		result := 'original txn ID: ' + original + ' providing => OriginalPOITransactionID: ' + myNexo.OriginalPOITransactionID + ' & OriginalPOITransactionTimestamp: ' + myNexo.OriginalPOITransactionTimestamp;
	end;

	function CreateID(): string;
	begin
		_F('TNexo.doTransaction.CreateID');
		// result := myNexo.MerchantReferenceID + '#' + myNexo.POITransactionID + '@' + myNexo.POITransactionTimestamp;
		result := myNexo.POITransactionID + '@' + myNexo.POITransactionTimestamp;
		AddLogVerbose(CF, 'generated txn ID: ' + result);
	end;

begin
	_F('TNexo.doTransaction');
	AddLogVerbose(CFB, 'acParamsIn assigned: ' + booltostr_(assigned(acParamsIn)));

	result := TRUE;
	lsTrace := '';
	// lsMessage := 'UNKNOWN TRANSACTION';
	lcTransac := nil;
	zcParamsOut := nil;
	leTransactionResult := rtUnknown;

	// process a transaction
	if assigned(acParamsIn) then
	begin
		lsTrace := 'RecordVersion: ' + inttostr(acParamsIn.recordVersion);
		// lsMessage := 'UNKNOWN TRANSACTION TYPE';

		// verify currency, whether it matches the one declared in Nexo retailer
		if result and assigned(acParamsIn.currency) then
		begin
			lsTrace := lsTrace + #13 + ' currency currency: ' + acParamsIn.currency.currency + ' currencyISOA: ' + acParamsIn.currency.currencyISOA + ' currencyISON: ' + acParamsIn.currency.currencyISON + ' currencyDec: ' +
				inttostr(acParamsIn.currency.currencyDec);
			AddLogVerbose(CF, lsTrace);

			// check currency against NEXO settings
			if not(myNexo.Settings.currency = acParamsIn.currency.currencyISOA) or not(myNexo.Settings.Decimals = acParamsIn.currency.currencyDec) then
			begin
				AddLogWarning(CF, GetErrorDescription(DRIVER_ERROR_CURRENCY_DOES_NOT_MATCH) + ' - Received: ' + acParamsIn.currency.currencyISOA + ' (' + inttostr(acParamsIn.currency.currencyDec) + ')' + ' - Expected (and will be used): ' +
					myNexo.Settings.currency + ' (' + inttostr(myNexo.Settings.Decimals) + ')');
			end;
		end else begin
			AddLogWarning(CF, GetErrorDescription(DRIVER_ERROR_CURRENCY_IS_MISSING) + ' yet using expected currency: ' + myNexo.Settings.currency + ' (' + inttostr(myNexo.Settings.Decimals) + ')');
		end;

		// start processing transaction
		if result and assigned(acParamsIn.Transac) then
		begin
			lsTrace := lsTrace + #13 + ' Transac transacType: ' + inttostr(ord(acParamsIn.Transac.transacType)) + ' receiptRef: ' + acParamsIn.Transac.receiptRef + ' receiptNum: ' + acParamsIn.Transac.receiptNum + ' totalAmount: ' +
				formatFloat('#,##0.00', acParamsIn.Transac.totalAmount) + ' clerk: ' + acParamsIn.Transac.clerk + ' cardType: ' + inttostr(acParamsIn.Transac.cardType) + ' paymentMode: ' + acParamsIn.Transac.paymentMode + ' date: ' + acParamsIn.Transac.date
				+ ' hour: ' + acParamsIn.Transac.hour + ' refundRef: ' + acParamsIn.Transac.refundRef + ' refundAutNum: ' + acParamsIn.Transac.refundAutNum;

			if (acParamsIn.Transac.recordVersion >= 2) and (acParamsIn.Transac.queryInterface(IMC_CATPITransacV2, lcTransacV2) = S_OK) then
			begin
				lsTrace := lsTrace + #13 + ' RefundTransacToken="' + lcTransacV2.RefundTransacToken + '"' + ' StoreId="' + lcTransacV2.StoreId + '"';
			end;

			AddLogVerbose(CF, lsTrace);

			// verify whether transaction is authorised or not
			canProceed := (acParamsIn.Transac.transacType = ttpurchase) or (acParamsIn.Transac.transacType = ttRefund) or (acParamsIn.Transac.transacType = ttVoidPurchase)
			{ or  (acParamsIn.Transac.transacType = ttCheque and poi.SupportsCheck)
				or (acParamsIn.Transac.transacType = ttVoidCheque and poi.SupportsCheck) }
				;
			if (canProceed) then
			begin
				// start transaction itself
				myNexo.amount := acParamsIn.Transac.totalAmount;
				myNexo.MerchantReferenceID := acParamsIn.Transac.receiptRef;
				myNexo.Login.RequestOperatorID := acParamsIn.Transac.clerk;
				// reset last txn ID as it's been overwritten no matter what happens next
				szLastPurchaseTransactionID := '';

				lsTrace := 'UNKNOWN TRANSACTION';
				// save merchant reference inside the transaction
				case acParamsIn.Transac.transacType of
					ttpurchase:
						begin
							// Préparation de la requête
							dlgp := Action_payment;
							dlgpText := TXN_TYPE_PURCHASE;
							myNexo.MerchantReferenceID := acParamsIn.Transac.receiptRef;
							lsTrace := 'PURCHASE - amount: ' + formatFloat('#,##0.00', myNexo.amount) + ' - merchant reference ID: ' + myNexo.MerchantReferenceID;
							AddLogInformation(CF, lsTrace);
						end;
					ttVoidPurchase:
						begin
							dlgp := Action_reversal;
							dlgpText := TXN_TYPE_CANCELLATION;
							myNexo.MerchantReferenceID := '';
							// txnReference := RebuildID(acParamsIn.Transac.refundRef);
							RebuildID(acParamsIn.Transac.refundRef);
							lsTrace := 'REVERSAL - ' + RebuildID(acParamsIn.Transac.refundRef);
							AddLogInformation(CF, lsTrace);
						end;
					ttRefund:
						begin
							dlgp := Action_refund;
							dlgpText := TXN_TYPE_REFUND;
							myNexo.MerchantReferenceID := acParamsIn.Transac.receiptRef;
							// txnReference := RebuildID(acParamsIn.Transac.refundRef);
							myNexo.OriginalPOITransactionID := '';
							myNexo.OriginalPOITransactionTimestamp := '';
							lsTrace := 'REFUND - amount: ' + formatFloat('#,##0.00', myNexo.amount) + ' - merchant reference ID: ' + myNexo.MerchantReferenceID;
							AddLogInformation(CF, lsTrace);
						end
					else
						begin
							dlgp := Action__none;
							verr := DRIVER_ERROR_INVALID_TRANSACTION;
							lsTrace := lsTrace + ' - processing will stop';
							result := false;
							setError(TMC_Error.create(verr, CF, lsTrace));
						end;
				end;

				// process transaction
				if result and (Action__none <> dlgp) then
				begin
					LastPrintedTransaction.dlgp := Action__none;
					LastPrintedTransaction.receipt := nil;
					txnBrand := 'txnBrand';
					txnAuthNumber := 'txnAuthNumber';
					txnSignature := msNO;
					txnMode := TXN_MODE_UNKOWN;
					txnCard := 'txnCard';
					txnReference := 'txnReference';
					txnPaymentMethod := TXN_PAYMENT_METHOD_NEXO;

					{ ****************
						Perform operation
						***************** }
					dlgpres := myNexo.DisplayProcessing(dlgp);
					leTransactionResult := rtRefussed;
					txnCurrency := myNexo.currency.value;

					// test transaction result
					case dlgpres of
						ActionResult_success:
							begin
								dlgpresText := TXN_RESULT_ACCEPTED;
								verr := DRIVER_NO_ERROR;
								leTransactionResult := rtAccepted;
								lsTrace := lsTrace + ' - result: OK';
								if ttpurchase = acParamsIn.Transac.transacType then
								begin
									processedAmount := myNexo.Payment.ReplyAuthorizedAmount;
									txnBrand := myNexo.Brand;
									txnAuthNumber := myNexo.Payment.ReplyData.PaymentResult.PaymentAcquirerData.ApprovalCode;
									txnSignature := msNO;
									// for i := 0 to myNexo.Payment.ReplyData.PaymentReceiptLength do
									// begin
									// if myNexo.Payment.ReplyData.PaymentReceiptGetItem(i).RequiredSignatureFlag then
									// begin
									// txnSignature := msCustomerSign;
									// break;
									// end;
									// end;
									if myNexo.Payment.ReplyData.PaymentResult.OnlineFlag then
										txnMode := TXN_MODE_ONLINE
									else
										txnMode := TXN_MODE_OFFLINE;
									txnCard := myNexo.Payment.ReplyData.PaymentResult.PaymentInstrumentData.CardData.MaskedPAN;
									txnReference := CreateID();
									szLastPurchaseTransactionID := txnReference;
									lsTrace := lsTrace + ' - authorised amount: ' + formatFloat('#,##0.00', processedAmount) + ' - txn ID: ' + txnReference + ' - authorisation number: ' + txnAuthNumber;
									AddLogInformation(CF, lsTrace);
								end else if ttRefund = acParamsIn.Transac.transacType then
								begin
									processedAmount := myNexo.Refund.ReplyAuthorizedAmount;
									txnBrand := myNexo.Brand;
									txnAuthNumber := myNexo.Refund.ReplyData.PaymentResult.PaymentAcquirerData.ApprovalCode;
									if myNexo.Refund.ReplyData.PaymentResult.OnlineFlag then
										txnMode := TXN_MODE_ONLINE
									else
										txnMode := TXN_MODE_OFFLINE;
									txnCard := myNexo.Refund.ReplyData.PaymentResult.PaymentInstrumentData.CardData.MaskedPAN;
									txnReference := CreateID();
									lsTrace := lsTrace + ' - authorised amount: ' + formatFloat('#,##0.00', processedAmount) + ' - txn ID: ' + txnReference + ' - authorisation number: ' + txnAuthNumber;
									AddLogInformation(CF, lsTrace);
								end
								else // reversal
								begin
									processedAmount := acParamsIn.Transac.totalAmount;
									lsTrace := lsTrace + ' - txn ID: ' + txnReference;
									AddLogInformation(CF, lsTrace);
								end;
							end;
						else
							begin
								lsTrace := lsTrace + ' - result: ';
								leTransactionResult := rtRefussed;
								if ttpurchase = acParamsIn.Transac.transacType then
								begin
									processedAmount := myNexo.Payment.RequestRequestedAmount;
								end else if ttRefund = acParamsIn.Transac.transacType then
								begin
									processedAmount := myNexo.Refund.RequestRequestedAmount;
								end else begin
									processedAmount := acParamsIn.Transac.totalAmount;
								end;
								case dlgpres of
									ActionResult_decline:
										begin
											dlgpresText := TXN_RESULT_DECLINED;
											verr := DRIVER_ERROR_TRANSACTION_DECLINED;
											lsTrace := lsTrace + 'KO - declined';
										end;
									ActionResult_cancel, ActionResult_timeout, ActionResult_exception:
										begin
											if (myNexo.DisplayConfirmPurchase()) then
											begin
												dlgpresText := TXN_RESULT_MANUALLY_VALIDATED;
												verr := DRIVER_ERROR_TRANSACTION_MANUALLY_ENTERED;
												leTransactionResult := rtAccepted;
												txnPaymentMethod := TXN_PAYMENT_METHOD_NO_RETAILER;
												txnAuthNumber := '';
												txnSignature := msNO;
												txnMode := TXN_MODE_UNKOWN;
												txnCard := '';
												txnReference := '';
												lsTrace := lsTrace + 'OK - MANUALLY VALIDATED';
												AddLogInformation(CF, lsTrace);
											end else begin
												lsTrace := lsTrace + 'KO';
												if ActionResult_cancel = dlgpres then
												begin
													dlgpresText := TXN_RESULT_CANCELLED_BY_USER;
													verr := DRIVER_ERROR_TRANSACTION_CANCELLED_BY_USER;
													lsTrace := lsTrace + ' - cancelled';
												end else if ActionResult_timeout = dlgpres then
												begin
													dlgpresText := TXN_RESULT_TIMEOUT;
													verr := DRIVER_ERROR_TRANSACTION_TIMEOUT;
													lsTrace := lsTrace + ' - timed out';
												end else begin
													dlgpresText := TXN_RESULT_EXCEPTION;
													verr := DRIVER_ERROR_EXCEPTION;
													lsTrace := lsTrace + ' - unknown error';
												end;
												setError(TMC_Error.create(verr, CF, lsTrace));
											end;
										end;
									ActionResult_incomplete:
										begin
											lsTrace := lsTrace + 'KO - incomplete';
											dlgpresText := TXN_RESULT_INCOMPLETE;
											verr := DRIVER_ERROR_TRANSACTION_INCOMPLETE;
											setError(TMC_Error.create(verr, CF, lsTrace));
											// end;
											// ActionResult_timeout:
											// begin
											// dlgpresText := TXN_RESULT_TIMEOUT;
											// verr := DRIVER_ERROR_TRANSACTION_TIMEOUT;
											// setError(TMC_Error.create(verr, inttostr(acParamsIn.Transac.transacType)));
											// end;
											// ActionResult_exception:
											// begin
											// dlgpresText := TXN_RESULT_EXCEPTION;
											// verr := DRIVER_ERROR_EXCEPTION;
											// result := false;
											// setError(TMC_Error.create(verr, inttostr(acParamsIn.Transac.transacType)));
										end
									else
										begin
											dlgpresText := TXN_RESULT_UNKNOWN_ERROR;
											verr := DRIVER_ERROR_TRANSACTION_UNKNOWN_ERROR;
											lsTrace := lsTrace + 'KO - unknown transaction result';
											result := false;
											setError(TMC_Error.create(verr, CF, lsTrace));
										end;
								end;
							end;
					end;

					lcTransac := TNexoCATPOTransac.create(dlgpresText, txnMode, txnReference, processedAmount, txnCurrency, ckcISOAlpha, txnCard, '', '', txnAuthNumber, txnBrand, '', dxNotEvaluate, txnSignature, '', 1, nil, 0, '', ckcUnknown);

					// préparation de l'enregistrement de la transaction
					// if (rtAccepted = leTransactionResult) then
					begin
						// Préparation de l'enregistrement en sortie
						zcParamsOut := TNexoCATParamsOut.create(myNexo.SaleID, myNexo.POIID, leTransactionResult, lsTrace, nil);
						zcParamsOut.transacList.TotalApprovedAmount := lcTransac.approvedAmount;
						zcParamsOut.transacList.add(lcTransac);
					end;

					// print receipts
					if (myNexo.ReceiptAvailable and myNexo.POIInUse.PrintReceipt) then
					begin
						if (Action_payment = dlgp) then
						begin
							receipt := myNexo.Payment.ReplyData.PaymentReceipt;
						end else if (Action_refund = dlgp) then
						begin
							receipt := myNexo.Refund.ReplyData.PaymentReceipt
						end else begin
							receipt := myNexo.Reversal.ReplyData.PaymentReceipt;
						end;

						// print transaction receipt
						if myNexo.POIInUse.PrintCustomerReceipt then
						begin
							LastPrintedTransaction.dlgp := dlgp;
							LastPrintedTransaction.receipt := myNexo.LastReceipt;
							PrintTransactionReceipt(dlgp, receipt, TRUE, false);
						end;
						if myNexo.POIInUse.PrintMerchantReceipt then
							PrintTransactionReceipt(dlgp, receipt, false, false);
					end else begin
						PrintTransactionShortReceipt(dlgpText, dlgpresText, '', acParamsIn.Transac.totalAmount, myNexo.currency.value);
					end;
				end;
			end;
		end else begin
			result := false;
			lsTrace := lsTrace + 'missing parameter';
			setError(TMC_Error.create(DRIVER_ERROR_REQUIRED_PARAMSIN_MISSING, CF, 'acParamsIn.Transac - ' + lsTrace));
		end
	end else begin
		result := false;
		setError(TMC_Error.create(DRIVER_ERROR_REQUIRED_PARAMSIN_MISSING, CF, 'acParamsIn'));
	end;
	if (nil = zcParamsOut) then
	begin
		zcParamsOut := TNexoCATParamsOut.create(myNexo.SaleID, myNexo.POIID, rtError, 'no message to return', nil);
		zcParamsOut.transacList.TotalApprovedAmount := lcTransac.approvedAmount;
		zcParamsOut.transacList.add(lcTransac);
		result := false;
		setError(TMC_Error.create(DRIVER_ERROR_TRANSACTION_UNKNOWN_ERROR, CF, 'no message to return'));
	end;
end;

function TNexo.doTransactionReport: boolean;
// var
// opt: sDialogSelect;
begin
	_F('TNexo.doTransactionReport');
	AddLogVerbose(CFB, '');

	result := false;

	// lsTrace := lsTrace + #13 + ' Init ExecID: ' + acParamsIn.Init.ExecID + ' ExecVersion: ' + acParamsIn.Init.ExecVersion;
	AddLogVerbose(CFER, booltostr_(result));
end;

function TNexo.doPrintDuplicate: boolean;
begin
	_F('TNexo.doPrintDuplicate');
	AddLogVerbose(CFB, '');

	if (LastPrintedTransaction.dlgp <> Action__none) and (nil <> LastPrintedTransaction.receipt) then
		PrintTransactionReceipt(LastPrintedTransaction.dlgp, LastPrintedTransaction.receipt, TRUE, TRUE);
	result := TRUE;

	// lsTrace := lsTrace + #13 + ' Init ExecID: ' + acParamsIn.Init.ExecID + ' ExecVersion: ' + acParamsIn.Init.ExecVersion;
	AddLogVerbose(CFER, booltostr_(result));
end;

function TNexo.doSettlement(acParamsIn: IMC_CATParamsIn): boolean;
begin
	_F('TNexo.doSettlement');
	AddLogVerbose(CFB, 'acParamsIn assigned: ' + booltostr_(assigned(acParamsIn)));

	result := TRUE;

	AddLogVerbose(CFER, booltostr_(result));
end;

function TNexo.PrintReceipt(acXmlReceipt: IXMLDocument; aeCommand: TMC_CATCommand; aeReportType: TMC_ReportType): TMC_CallbackResult;
var
	lcContext: IMC_CPOSCommandPrintXMLStreamContext;
	lsPrintingLayout: widestring;
	leDeviceNum: Integer;
	lcParamIn: IMC_UICallbackPIMessage;
	lcParamOut: IMC_UICallbackResult;
	leDeviceType: TMC_DeviceType;
	lcError: IMC_Error;
begin
	_F('TNexo.PrintReceipt');
	AddLogVerbose(CFB, 'aeCommand: ' + inttostr(aeCommand) + ' aePrintMode: ' + inttostr(aeReportType));

	// Display message : Printing in progress
	lcParamIn := TMC_UICallbackPIMessage.create('Printing in progress', -1);
	doUICallback(ctMessage, lcParamIn, lcParamOut);

	// Select the template according on the report type
	case aeReportType of
		pptReportType1:
			begin
				// Customer receipt
				lsPrintingLayout := fcReceiptNature + '|' + fcCustomerReceipt + '|';
				leDeviceNum := fePrinterDevice;
			end;
		pptReportType2:
			begin
				// Merchant receipt
				lsPrintingLayout := fcReceiptNature + '|' + fcStoreReceipt + '|';
				leDeviceNum := fePrinterDevice;
			end;
		else
			begin
				lsPrintingLayout := '';
				leDeviceNum := -1;
			end;
	end;

	aeReportType := pptReportType1;
	lsPrintingLayout := '';
	leDeviceNum := -1;
	leDeviceType := dtCPOS; // dtprinter;

	// Prepare the request
	lcContext := TMC_CPOSCommandPrintXMLStreamContext.create(ccPrintXmlStream { aeCommandId } , leDeviceType { aeDeviceType } , leDeviceNum { aeDeviceNum } , inttostr(aeCommand) { asOriginalCommand } , aeReportType { aeReportType } ,
		lsPrintingLayout { asPrintingLayout } , acXmlReceipt.XML.Text { asXML } );

	// Print the receipt
	result := (get_CallBack as IMC_PluginCallbackV2).onMC_CPOSCommand((Self as IMC_PluginBase), // sender
		lcContext, // acContext
		lcError // acErr
		);

	AddLogVerbose(CFER, inttostr(result));
end;

procedure TNexo.PrintTransactionReceipt(request: Action; receipts: PSafeArray; fCustomerReceipt: boolean; fDuplicate: boolean);
var
	lcReceiptData: IXMLDocument;
	align: enumAlign;
	// buffer: widestring;
	viLow, viHigh, i: Integer;
	receipt: PaymentReceiptType;
	outputContent: OutputContentType;
	outputText: OutputTextType;
	receiptType: string;
begin
	_F('TNexo.PrintTransactionReceipt');

	// type of receipt to print
	if fCustomerReceipt then
		receiptType := TXN_RECEIPT_CUSTOMER
	else
		receiptType := TXN_RECEIPT_MERCHANT;
	AddLogVerbose(CFB, receiptType);

	// prepare receipt to print
	lcReceiptData := TXMLDocument.create(nil) as IXMLDocument;
	lcReceiptData.Active := TRUE;
	lcReceiptData.Version := '1.0';
	lcReceiptData.Encoding := 'UTF-8'; // Only UTF-8 encoding accepted
	lcReceiptData.DocumentElement := lcReceiptData.CreateElement('Receipt', '');
	// Element name should be Receipt

	// duplicate indication
	if fDuplicate then
	begin
		AddLine(lcReceiptData, '***** DUPLICATE *****', center, TRUE, TRUE, TRUE, TRUE);
		AddEmptyLine(lcReceiptData);
	end;

	// receipt recipient indication
	AddLine(lcReceiptData, '*** ' + receiptType + ' RECEIPT ***', center, TRUE, TRUE, TRUE, TRUE);
	AddEmptyLine(lcReceiptData);

	{ My Variable is populated, somehow, see how many items are in it }
	SafeArrayGetLBound(receipts, 1, viLow);
	SafeArrayGetUBound(receipts, 1, viHigh);
	SafeArrayLock(receipts);
	try
		receipt := nil;
		outputContent := nil;
		// now that it's locked, extract the elements from the array
		for i := viLow to viHigh do
		begin
			SafeArrayGetElement(receipts, i, receipt);
			if nil <> receipt then
			begin
				// look for customer receipt
				if (fCustomerReceipt) and (0 = CompareText(myNexo.DocumentQualifierToString(DocumentQualifierEnumeration_CustomerReceipt), receipt.DocumentQualifier)) then
				begin
					outputContent := receipt.outputContent;
					break;
				end
				// look for merchant receipt
				else if (not fCustomerReceipt) and (0 = CompareText(myNexo.DocumentQualifierToString(DocumentQualifierEnumeration_CashierReceipt), receipt.DocumentQualifier)) then
				begin
					outputContent := receipt.outputContent;
					break;
				end;
			end;
		end;

		// do we have something to print ?
		if nil <> outputContent then
		begin
			// loop on all lines to print
			for i := 0 to outputContent.OutputTextLength - 1 do
			begin
				outputText := outputContent.OutputTextGetItem(i);
				if nil <> outputText then
				begin
					if '' <> outputText.value then
					begin
						// determine how to print the text
						if 0 = CompareText(myNexo.AlignmentToString(AlignmentEnumeration_Left), outputText.Alignment) then
							align := left
						else if 0 = CompareText(myNexo.AlignmentToString(AlignmentEnumeration_Right), outputText.Alignment) then
							align := right
						else if 0 = CompareText(myNexo.AlignmentToString(AlignmentEnumeration_Centred), outputText.Alignment) then
							align := left
						else if 0 = CompareText(myNexo.AlignmentToString(AlignmentEnumeration_Justified), outputText.Alignment) then
							align := none
						else
							align := none;
						AddLine(lcReceiptData, outputText.value, align, 0 = CompareText(myNexo.CharacterStyleToString(CharacterStyleEnumeration_Bold), outputText.CharacterStyle),
							0 = CompareText(myNexo.CharacterStyleToString(CharacterStyleEnumeration_Underlined), outputText.CharacterStyle), false, false);
					end
					else
						AddEmptyLine(lcReceiptData);
				end;
			end;
		end;

	finally
		SafeArrayUnlock(receipts);
	end;

	// finally print the prepared receipt
	PrintReceipt(lcReceiptData, coTransaction, pptReportType1);

	AddLogVerbose(CFE, '');
end;

procedure TNexo.PrintTransactionShortReceipt(const ope, result, msg: widestring; const amount: double; const currency: widestring);
var
	lcReceiptData: IXMLDocument;
begin
	_F('TNexo.PrintTransactionShortReceipt');

	// prepare receipt to print
	lcReceiptData := TXMLDocument.create(nil) as IXMLDocument;
	lcReceiptData.Active := TRUE;
	lcReceiptData.Version := '1.0';
	lcReceiptData.Encoding := 'UTF-8'; // Only UTF-8 encoding accepted
	lcReceiptData.DocumentElement := lcReceiptData.CreateElement('Receipt', '');
	// Element name should be Receipt

	AddLine(lcReceiptData, ope + ' ' + TXN_SHORT_RECEIPT_TRANSACTION, center, TRUE, false, false, false);
	AddEmptyLine(lcReceiptData);
	if 0 <> amount then
	begin
		AddLine(lcReceiptData, TXN_SHORT_RECEIPT_AMOUNT + TXN_SHORT_RECEIPT_SEPARATOR + amount.ToString() + ' ' + currency, center, TRUE, false, false, false);
		AddEmptyLine(lcReceiptData);
	end;
	AddLine(lcReceiptData, TXN_SHORT_RECEIPT_FINAL_RESULT + TXN_SHORT_RECEIPT_SEPARATOR + result, center, TRUE, false, false, false);
	AddEmptyLine(lcReceiptData);
	if '' <> msg then
	begin
		AddLine(lcReceiptData, msg, center, TRUE, false, false, false);
		AddEmptyLine(lcReceiptData);
	end;
	// finally print the prepared receipt
	PrintReceipt(lcReceiptData, coTransaction, pptReportType1);

	AddLogVerbose(CFE, '');
end;

procedure TNexo.AddLine(lcReceiptData: IXMLDocument; S: widestring; align: enumAlign; fBold: boolean; fUnderline: boolean; fDoubleWidth: boolean; fDoubleHeight: boolean);
var
	attr: widestring;
	i: Integer;
begin
	case align of
		left:
			attr := '2';
		right:
			attr := '3';
		center:
			attr := '4';
		none:
			attr := '5';
	end;
	if fBold then
		attr := attr + '1'
	else
		attr := attr + '0';
	if fUnderline then
		attr := attr + '1'
	else
		attr := attr + '0';
	if fDoubleWidth then
		i := 1
	else
		i := 0;
	if fDoubleHeight then
		i := i + 2;
	attr := attr + chr(i + ord('0'));
	with lcReceiptData.DocumentElement.AddChild('line') do
	begin
		AddChild('LIBELLE').NodeValue := S;
		AddChild('ATTRIBUT').NodeValue := attr;
	end;
end;

procedure TNexo.AddEmptyLine(lcReceiptData: IXMLDocument);
begin
	AddLine(lcReceiptData, '', none, false, false, false, false);
end;

end.
