unit NEXO;

interface

uses
	MC_PluginInterface, MC_PluginCatInterface, NEXOPluginBase, NEXOTypes, activeX, XMLIntf, PMS_NEXOSale_TLB;

type
	TNexo = class(TNexoPluginBase, IMC_PluginCAT)
		private
			myNexo: NEXOSale;
			fCanPrintDuplicate: boolean;
			// function GetDlgResult(out fPrintReceipt: boolean): TMC_CATResultTransaction;

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

			// procedure PrintTransactionReceipt(request: enumRequest; fCustomerReceipt: boolean; fDuplicate: boolean);
			function PrintReceipt(acXmlReceipt: IXMLDocument; aeCommand: TMC_CATCommand; aeReportType: TMC_ReportType): TMC_CallbackResult;
			function doTransaction(acParamsIn: IMC_CATParamsIn; out zcParamsOut: IMC_CATParamsOut): boolean;
			function doOpenDay(acParamsIn: IMC_CATParamsIn): boolean;
			function doSettlement(acParamsIn: IMC_CATParamsIn): boolean;
		public
			// constructor create(const asLangID: widestring); reintroduce; virtual;
			constructor create(const asLangID: widestring; theNexoSaleObject: NEXOSale); reintroduce; virtual;
			// Comes from IMC_PluginCAT interface
			function command(aeCommand: TMC_CATCommand; acParamsIn: IMC_CATParamsIn; out zcParamsOut: IMC_CATParamsOut): boolean; stdcall;
	end;

implementation

uses
	sysutils, NEXOLib, MC_UICallbackParamsIn, NEXOCATParamsOut, XMLDoc, Classes, Math, PMS_NEXO_TLB;

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
	AddLogVerbose(CFB);

	result := TRUE;

	AddLogVerbose(CFER + booltostr_(result));
end;

function TNexo.doInitLink(): boolean;
begin
	_F('TNexo.doInitLink');
	AddLogVerbose(CFB);

	// Do something to initialize the communication
	result := TRUE;

	AddLogVerbose(CFER + booltostr_(result));
end;

function TNexo.doInitDeviceCheckHealth: boolean;
begin
	_F('TNexo.doInitDeviceCheckHealth');
	AddLogVerbose(CFB);

	result := myNexo.Connected; // SetSettingsOrValidateMerchant(myNexo, myRegistry, false, false);

	AddLogVerbose(CFER + booltostr_(result));
end;

function TNexo.doGetCapabilities(aiCapability: TMC_Capabilities; const asOptArgs: widestring): widestring;
begin
	_F('TNexo.doGetCapabilities');
	AddLogVerbose(CFB + ' - aiCapability: ' + inttostr(ord(aiCapability)) + ' - asOptArgs: ' + asOptArgs);

	result := '';
	case aiCapability of
		caCATDuplicataLastOpe: result := CEGID_STRING_TRUE;
		caCATCheckMaintenance: result := CEGID_STRING_FALSE;
		caCATSettlement: result := CEGID_STRING_FALSE;
		caCATCheckCard: result := CEGID_STRING_FALSE;
		caCATManageGiftCard: result := CEGID_STRING_FALSE;
		caCATManageBankCard: result := CEGID_STRING_TRUE; // DO NOT MODIFY OR THE DRIVER WON'T BE USABLE FOR PAYMENTS
		caCATManageCheque: result := CEGID_STRING_FALSE;
		caCATDoInit: result := CEGID_STRING_FALSE;
		caCATInterrupt: result := CEGID_STRING_FALSE;
		caCATOpenDay: result := CEGID_STRING_FALSE;
		caCATTransactionReport: result := '1'; // <<<>>>
		caCATManageGiftCardActivation: result := CEGID_STRING_FALSE;
		caCATManageGiftCardReload: result := CEGID_STRING_FALSE;
		caCATUpdate: result := CEGID_STRING_FALSE;
		caCATManageForcedPurchase: result := CEGID_STRING_FALSE;
		caCATManageForcedVoidPurchase: result := CEGID_STRING_FALSE;
		caCATManageForcedRefund: result := CEGID_STRING_FALSE;
		caCATManageForcedVoidRefund: result := CEGID_STRING_FALSE;
		caCATMustWaitBetween2Transac: result := CEGID_STRING_TRUE;
		caCATManageGiftCardVoidActivation: result := CEGID_STRING_FALSE;
		caCATManageGiftCardVoidReload: result := CEGID_STRING_FALSE;
		caCATManageGiftCardIssue: result := CEGID_STRING_FALSE;
		caCATManageGiftCardVoidIssue: result := CEGID_STRING_FALSE;
		caCATGiftCardShouldReadBalanceBeforePayment: result := CEGID_STRING_FALSE;
		caCATManageGiftCardReturn: result := CEGID_STRING_FALSE;
		caCATManageGiftCardVoidReturn: result := CEGID_STRING_FALSE;
		caCATManageManualCardEntry: result := CEGID_STRING_FALSE;
		caCATManageForcedCheque: result := CEGID_STRING_FALSE;
		caCATGetCardMetaData: result := CEGID_STRING_FALSE;
		caCATCheckCardMetaData: result := CEGID_STRING_FALSE;
		caCATGetTransactionIssuer: result := '';
		else result := inherited doGetCapabilities(aiCapability, asOptArgs);
	end;

	AddLogVerbose(CFER + result);
end;

function TNexo.doConnect(const asConnectString: widestring): boolean;
begin
	_F('TNexo.doConnect');
	AddLogVerbose(CFB + ' - asConnectString: ' + asConnectString);

	fePrinterDevice := StrToIntDef(WideExtractValue(asConnectString, 'PrinterDeviceNum'), -1);
	fcReceiptNature := WideExtractValue(asConnectString, 'PrinterReceiptNature');
	fcCustomerReceipt := WideExtractValue(asConnectString, 'PrintTransactionReceiptModele');
	fcStoreReceipt := WideExtractValue(asConnectString, 'PrinterStoreReceiptModele');

	result := TRUE; // myNexo.Connect(false);

	AddLogVerbose(CFER + booltostr_(result));
end;

function TNexo.doDisconnect(): boolean;
begin
	_F('TNexo.doDisconnect');
	AddLogVerbose(CFB);

	// disconnecting from device
	// myNexo.Disconnect();
	result := TRUE;

	AddLogVerbose(CFER + booltostr_(result));
end;

function TNexo.doOpen(): boolean;
begin
	_F('TNexo.doOpen');
	AddLogVerbose(CFB);

	// Connecting to device
	result := TRUE;

	AddLogVerbose(CFER + booltostr_(result));
end;

function TNexo.doClose(): boolean;
begin
	_F('TNexo.doClose');
	AddLogVerbose(CFB);

	// Closing device
	result := TRUE;

	AddLogVerbose(CFER + booltostr_(result));
end;

function TNexo.doOpenDay(acParamsIn: IMC_CATParamsIn): boolean;
begin
	_F('TNexo.doOpenDay');
	AddLogVerbose(CFB + ' - acParamsIn assigned: ' + booltostr_(assigned(acParamsIn)));

	result := TRUE;

	AddLogVerbose(CFER + booltostr_(result));
end;

constructor TNexo.create(const asLangID: widestring; theNexoSaleObject: NEXOSale);
begin
	inherited create(asLangID);
	// _C('TNexo');
	// _C := 'TNexo';
	myNexo := theNexoSaleObject;
end;

function TNexo.doCheckHealth(const asConnectString: widestring; out zsAnswer: widestring): boolean;
begin
	_F('TNexo.doCheckHealth');
	AddLogVerbose(CFB + ' - asConnectString: ' + asConnectString);

	// Do something to check the health of the device
	result := doInitDeviceCheckHealth;

	AddLogVerbose(CFER + booltostr_(result) + ' - zsAnswer: ' + zsAnswer);
end;

function TNexo.doDirectCommand(const asCommand: widestring; acDataIn: IStream; out zcDataOut: IStream): boolean;
begin
	_F('TNexo.doDirectCommand');
	AddLogVerbose(CFB + ' - asCommand: ' + asCommand + ' - acData.assigned: ' + booltostr_(assigned(acDataIn)));

	result := false;
	setError(TMC_Error.create(DRIVER_INVALID_COMMAND));

	AddLogVerbose(CFER + booltostr_(result) + ' - zcDataOuta.assigned: ' + booltostr_(assigned(zcDataOut)));
end;

function TNexo.TranslateCommand(aeCommand: TMC_CATCommand): widestring;
begin
	result := '*Unknown command*';
	case aeCommand of
		coInitLink: result := 'Initialise Merchant (coInitLinkc)';
		coTransaction: result := 'Perform transaction (coTransaction)';
		coPrintDuplicate: result := 'Print duplicate (coPrintDuplicate)';
		// coCheckForMaintenance: result := 'coCheckForMaintenance';
		// coMaintenance: result := 'coMaintenance';
		// coSettlement: result := 'coSettlement';
		// coCheckCard: result := 'coCheckCard';
		// coGiftCardActivate: result := 'coGiftCardActivate';
		// coGiftCardReload: result := 'coGiftCardReload';
		coTest: result := 'Test connection (coTest)';
		// coOpenDay: result := 'coOpenDay';
		coTransactionsReport: result := 'Transactions report (coTransactionsReport)';
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

// function TNexo.GetDlgResult(out fPrintReceipt: boolean): TMC_CATResultTransaction;
// begin
//
// case myNexo.dlgResult of
// enumDlgResult_Success: begin
// result := rtAccepted;
// fPrintReceipt := TRUE;
// end;
// enumDlgResult_Failure: begin
// result := rtRefussed;
// fPrintReceipt := TRUE;
// end;
// enumDlgResult_Cancel: begin
// result := rtRefussed;
// fPrintReceipt := false;
// end;
// enumDlgResult_Abort: begin
// result := rtError;
// fPrintReceipt := false;
// end;
// else begin
// result := rtError;
// fPrintReceipt := false;
// end;
// end;
//
// end;

function TNexo.command(aeCommand: TMC_CATCommand; acParamsIn: IMC_CATParamsIn; out zcParamsOut: IMC_CATParamsOut): boolean;
begin
	_F('TNexo.command');
	AddLogVerbose(CFB + ' - aeCommand: ' + TranslateCommand(aeCommand) + ' - acParamsIn assigned: ' + booltostr_(assigned(acParamsIn)));

	case aeCommand of
		coInitLink: result := doInitLink();
		coTransaction: result := doTransaction(acParamsIn, zcParamsOut);
		coPrintDuplicate: result := doPrintDuplicate();
		coCheckForMaintenance: result := false;
		coMaintenance: result := false;
		coSettlement: result := doSettlement(acParamsIn);
		coCheckCard: result := false;
		coGiftCardActivate: result := false;
		coGiftCardReload: result := false;
		coTest: result := false;
		coOpenDay: result := doOpenDay(acParamsIn);
		coTransactionsReport: result := doTransactionReport();
		coCATUpdate: result := false;
		coGiftCardVoidActivate: result := false;
		coGiftCardVoidReload: result := false;
		coGiftCardIssue: result := false;
		coGiftCardVoidIssue: result := false;
		coGiftCardReturn: result := false;
		coGiftCardVoidReturn: result := false;
		coGetCardMetaData: result := false;
		coCheckCardMetaData: result := false;
		else
			begin
				setError(TMC_Error.create(DRIVER_COMMAND_NOT_SUPPORTED));
				result := false;
			end;
	end;

	AddLogVerbose(CFER + booltostr_(result));
end;

function TNexo.doTransaction(acParamsIn: IMC_CATParamsIn; out zcParamsOut: IMC_CATParamsOut): boolean;
var
	leTransactionResult: TMC_CATResultTransaction;
	lsTrace, lsMessage: widestring;
	lcTransac: IMC_CATPOTransac;
	dlgp: Action;
	dlgpres: ActionResult;
	fPrintReceipt: boolean;
begin
	_F('TNexo.doTransaction');
	AddLogVerbose(CFB + ' - acParamsIn assigned: ' + booltostr_(assigned(acParamsIn)));

	result := TRUE;
	lsTrace := '';
	lsMessage := '';
	lcTransac := nil;
	// leTransactionResult := rtUnknown;

	// process a transaction
	if assigned(acParamsIn)
	then
	begin
		lsTrace := 'RecordVersion: ' + inttostr(acParamsIn.recordVersion);

		// verify currency, whether it matches the one declared in Nexo retailer
		if result and assigned(acParamsIn.currency)
		then
		begin
			lsTrace := lsTrace + #13 + ' currency currency: ' + acParamsIn.currency.currency + ' currencyISOA: ' + acParamsIn.currency.currencyISOA +
				' currencyISON: ' + acParamsIn.currency.currencyISON + ' currencyDec: ' + inttostr(acParamsIn.currency.currencyDec);
			AddLogVerbose(cf + ' - ' + lsTrace);

			// check currency against NEXO settings
			if not(myNexo.Settings.currency = acParamsIn.currency.currencyISOA) or not(myNexo.Settings.Decimals = acParamsIn.currency.currencyDec)
			then
			begin
				AddLogWarning(cf + ' - ' + GetErrorDescription(DRIVER_CURRENCY_DOES_NOT_MATCH) + ' - Received: ' + acParamsIn.currency.currencyISOA + ' (' +
						inttostr(acParamsIn.currency.currencyDec) + ')' + ' - Expected (and will be used): ' + myNexo.Settings.currency + ' (' +
						inttostr(myNexo.Settings.Decimals) + ')');
			end;
		end
		else
		begin
			AddLogWarning(cf + ' - ' + GetErrorDescription(DRIVER_CURRENCY_IS_MISSING) + ' yet using expected currency: ' + myNexo.Settings.currency + ' (' +
					inttostr(myNexo.Settings.Decimals) + ')');
		end;

		// start processing transaction
		if result and assigned(acParamsIn.Transac)
		then
		begin
			lsTrace := lsTrace + #13 + ' Transac transacType: ' + inttostr(ord(acParamsIn.Transac.transacType)) + ' receiptRef: ' + acParamsIn.Transac.receiptRef +
				' receiptNum: ' + acParamsIn.Transac.receiptNum + ' totalAmount: ' + formatFloat('#,##0.00', acParamsIn.Transac.totalAmount) + ' clerk: ' +
				acParamsIn.Transac.clerk + ' cardType: ' + inttostr(acParamsIn.Transac.cardType) + ' paymentMode: ' + acParamsIn.Transac.paymentMode + ' date: ' +
				acParamsIn.Transac.date + ' hour: ' + acParamsIn.Transac.hour + ' refundRef: ' + acParamsIn.Transac.refundRef + ' refundAutNum: ' +
				acParamsIn.Transac.refundAutNum;
			AddLogVerbose(cf + ' - ' + lsTrace);

			dlgp := Action__none;

			// start transaction itself
			case acParamsIn.Transac.transacType of
				// purchase
				ttpurchase, ttVoidPurchase, ttRefund:
					begin
						// // create currency to use
						// currency := CoNexoCurrency.create();
						// currency.value := myNexo.Settings.currency;
						// currency.DecimalPlaces := myNexo.Settings.Decimals;
						myNexo.amount := Floor(acParamsIn.Transac.totalAmount * Power(10, myNexo.Settings.Decimals));
						// Positionnement de la référence de transaction par le terminal
						case acParamsIn.Transac.transacType of
							// Purchase
							ttpurchase:
								begin
									myNexo.TransactionID := acParamsIn.Transac.receiptRef;
									myNexo.TransactionTimestamp := CreateNexoDateTime(acParamsIn);
									// Préparation de la requête
									dlgp := Action_payment;
								end;
							// Cancel/Refund purchase
							ttVoidPurchase, ttRefund:
								begin
									case acParamsIn.Transac.transacType of
										ttVoidPurchase:
											begin
												dlgp := Action_reversal;
											end;
										ttRefund:
											begin
												myNexo.TransactionID := acParamsIn.Transac.receiptRef;
												myNexo.TransactionTimestamp := CreateNexoDateTime(acParamsIn);
												dlgp := Action_refund;
											end;
									end;
								end;
						end;

						// Traitement de la requête et du résultat
						if (Action__none <> dlgp)
						then
						begin
							dlgpres := myNexo.DisplayProcessing(dlgp);
							case dlgpres of
								ActionResult_unknown:
									begin

									end;
								ActionResult_success:
									begin
									end;
								ActionResult_cancel:
									begin

									end;
								ActionResult_timeout:
									begin

									end;
								ActionResult_abort:
									begin

									end;
								ActionResult_exception:
									begin

									end;
							end;
							// leTransactionResult := GetDlgResult(fPrintReceipt);
							// lsMessage := myNexo.LastErrorDescription;
							result := TRUE; // leTransactionResult = rtAccepted;
						end;
					end;
				else
					begin
						result := false;
						leTransactionResult := rtError;
						lsMessage := 'Invalid transaction order';
						setError(TMC_Error.create(DRIVER_INVALID_TRANSACTION, inttostr(acParamsIn.Transac.transacType)));
					end;
			end;

			// préparation de l'enregistrement transaction
			case leTransactionResult of
				rtAccepted, rtRefussed:
					begin

						// if fPrintReceipt
						// then begin
						// lcTransac := TNexoCATPOTransac.create(myNexo.Payment., myNexo.type_, myNexo.Payment.RequestSaleTransactionID, acParamsIn.Transac.totalAmount,
						// myNexo.Settings.currency{ acParamsIn.currency.currencyISOA }, ckcAppli, ''{myNexo.BuyerIdentityCode}, '', ''{myNexo.BuyerUserID}, '',
						// ''{myNexo.TransactionScheme}, '', dxNotEvaluate, msNo, myNexo.Payment.ReplyPOITransactionID, 1, nil{ lcDCC }, 0, '', ckcUnknown);
						// // Préparation de l'enregistrement en sortie
						// zcParamsOut := TNexoCATParamsOut.create(myNexo.MerchantNumberAsString, myNexo.ReaderIDAsString, leTransactionResult, lsMessage, nil);
						// if (leTransactionResult = rtAccepted)
						// then begin
						// zcParamsOut.transacList.TotalApprovedAmount := lcTransac.approvedAmount;
						// zcParamsOut.transacList.add(lcTransac);
						// end
						// else begin
						// setError(TMC_Error.create(DRIVER_TRANSACTION_DECLINED, myNexo.LastErrorDescription));
						// end;
						// lastRequest := dlgp.request;
						// PrintTransactionReceipt(lastRequest, TRUE, false);
						// PrintTransactionReceipt(lastRequest, false, false);
						// end
						// else
						// if enumDlgResult_Cancel = myNexo.dlgResult
						// then begin
						// // L'opération a été annulée par l'utilisateur avant d'être réalisée
						// lastRequest := enumRequest__none;
						// lcTransac := TNexoCATPOTransac.create(myNexo.GetErrorDescription(enumRC_CancelledByUser), myNexo.type_, '', acParamsIn.Transac.totalAmount,
						// ''{ acParamsIn.currency.currencyISOA }, ckcAppli, '', '', '', '', '', '', dxNotEvaluate, msNo, '', 1, nil{ lcDCC }, 0, '', ckcUnknown);
						// setError(TMC_Error.create(DRIVER_OPERATION_CANCELLED_BY_USER, myNexo.GetErrorDescription(enumRC_CancelledByUser)));
						// end
						// else begin
						// // Une erreur s'est produite avant de pouvoir traiter l'opération
						// lastRequest := enumRequest__none;
						// lcTransac := TNexoCATPOTransac.create(myNexo.GetErrorDescription(enumRC_UnknownError), myNexo.type_, '', acParamsIn.Transac.totalAmount,
						// ''{ acParamsIn.currency.currencyISOA }, ckcAppli, '', '', '', '', '', '', dxNotEvaluate, msNo, '', 1, nil{ lcDCC }, 0, '', ckcUnknown);
						// setError(TMC_Error.create(DRIVER_OPERATION_UNKNOWN_ERROR, myNexo.GetErrorDescription(enumRC_UnknownError)));
						// end;

					end
				else
					begin
						lcTransac := TNexoCATPOTransac.create('Unknown', 'Unknown Transaction Type', '', acParamsIn.Transac.totalAmount,
							''{ acParamsIn.currency.currencyISOA }, ckcAppli, '', '', '', '', '', '', dxNotEvaluate, msNo, '', 1, nil{ lcDCC }, 0, '', ckcUnknown);
					end;
			end;
		end
		else
		begin
			setError(TMC_Error.create(DRIVER_REQUIRED_PARAMSIN_MISSING, ' acParamsIn.Transac'));
			result := false;
		end
	end
	else
	begin
		setError(TMC_Error.create(DRIVER_REQUIRED_PARAMSIN_MISSING, ' acParamsIn'));
		result := false;
	end;
end;

function TNexo.doTransactionReport: boolean;
// var
// opt: sDialogSelect;
begin
	_F('TNexo.doTransactionReport');
	AddLogVerbose(CFB);

	// opt.fAllowSearchByDate := Integer(TRUE);
	// opt.fAllowCancelRefund := Integer(false);
	// opt.fConfirmOnCancel := Integer(false);
	// myNexo.DialogSelect(opt);
	// result := TRUE;

	result := false;

	// lsTrace := lsTrace + #13 + ' Init ExecID: ' + acParamsIn.Init.ExecID + ' ExecVersion: ' + acParamsIn.Init.ExecVersion;
	AddLogVerbose(CFER + booltostr_(result));
end;

function TNexo.doPrintDuplicate: boolean;
begin
	_F('TNexo.doPrintDuplicate');
	AddLogVerbose(CFB);

	// PrintTransactionReceipt(lastRequest, TRUE, TRUE);
	result := TRUE;

	// lsTrace := lsTrace + #13 + ' Init ExecID: ' + acParamsIn.Init.ExecID + ' ExecVersion: ' + acParamsIn.Init.ExecVersion;
	AddLogVerbose(CFER + booltostr_(result));
end;

function TNexo.doSettlement(acParamsIn: IMC_CATParamsIn): boolean;
begin
	_F('TNexo.doSettlement');
	AddLogVerbose(CFB + ' - acParamsIn assigned: ' + booltostr_(assigned(acParamsIn)));

	result := TRUE;

	AddLogVerbose(CFER + booltostr_(result));
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
	AddLogVerbose(CFB + ' - aeCommand: ' + inttostr(aeCommand) + ' aePrintMode: ' + inttostr(aeReportType));

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
	lcContext := TMC_CPOSCommandPrintXMLStreamContext.create(ccPrintXmlStream{ aeCommandId }, leDeviceType{ aeDeviceType }, leDeviceNum{ aeDeviceNum },
		inttostr(aeCommand){ asOriginalCommand }, aeReportType{ aeReportType }, lsPrintingLayout{ asPrintingLayout }, acXmlReceipt.XML.Text{ asXML });

	// Print the receipt
	result := (get_CallBack as IMC_PluginCallbackV2).onMC_CPOSCommand((Self as IMC_PluginBase), // sender
		lcContext, // acContext
		lcError // acErr
		);

	AddLogVerbose(CFER + inttostr(result));
end;

// procedure TNexo.PrintTransactionReceipt(request: enumRequest; fCustomerReceipt: boolean; fDuplicate: boolean);
// type
// enumAlign = (left, center, right, none);
// var
// lcReceiptData: IXMLDocument;
// al: enumAlign;
// action: widestring;
// buffer: widestring;
//
// procedure AddLine(S: widestring; al: enumAlign; fBold: boolean; fUnderline: boolean; fDoubleWidth: boolean; fDoubleHeight: boolean);
// var
// attr: widestring;
// i: Integer;
// begin
// case al of
// left: attr := '2';
// right: attr := '3';
// center: attr := '4';
// none: attr := '5';
// end;
// if fBold
// then attr := attr + '1'
// else attr := attr + '0';
// if fUnderline
// then attr := attr + '1'
// else attr := attr + '0';
// if fDoubleWidth
// then i := 1
// else i := 0;
// if fDoubleHeight
// then i := i + 2;
// attr := attr + chr(i + ord('0'));
// with lcReceiptData.DocumentElement.AddChild('line') do begin
// AddChild('LIBELLE').NodeValue := S;
// AddChild('ATTRIBUT').NodeValue := attr;
// end;
// end;
// procedure AddEmptyLine;
// begin
// AddLine('', none, false, false, false, false);
// end;
//
// begin
// _F('TNexo.PrintTransactionReceipt');
// AddLogVerbose(CFB + ' - fCustomerReceipt: ' + booltostr_(fCustomerReceipt) + ' - fDuplicate: ' + booltostr_(fDuplicate));
//
// if enumRequest__none <> lastRequest
// then begin
//
// // To print a receipt
// lcReceiptData := TXMLDocument.create(nil) as IXMLDocument;
// lcReceiptData.Active := TRUE;
// lcReceiptData.Version := '1.0';
// lcReceiptData.Encoding := 'UTF-8'; // Only UTF-8 encoding accepted
// lcReceiptData.DocumentElement := lcReceiptData.CreateElement('Receipt', ''); // Element name should be Receipt
//
// al := center;
//
// if fDuplicate
// then begin
// AddLine('***** DUPLICATE *****', al, TRUE, TRUE, TRUE, TRUE);
// AddEmptyLine();
// end;
//
// if (enumRequest_payByBarcode = request)
// then buffer := uppercase(myNexo.TransactionScheme)
// else buffer := uppercase(myNexo.SelectedTransaction.transaction_scheme);
// AddLine('>>>>> ' + buffer + ' TRANSACTION <<<<<', al, TRUE, false, false, false);
// AddEmptyLine;
//
// if fCustomerReceipt
// then buffer := 'CUSTOMER'
// else buffer := 'MERCHANT';
// buffer := '*** ' + buffer + ' RECEIPT ***';
// AddLine(buffer, al, TRUE, TRUE, TRUE, TRUE);
// AddEmptyLine;
//
// case request of
// enumRequest_payByBarcode: action := myNexo.TypeToString(enumType_purchase);
// enumRequest_cancel: action := myNexo.TypeToString(enumType_cancel);
// enumRequest_refund: action := myNexo.TypeToString(enumType_refund);
// else action := 'unknown request';
// end;
//
// if (enumRC_success = myNexo.LastError) or (enumRC_cancelled = myNexo.LastError) or (enumRC_Refunded = myNexo.LastError)
// then begin
// AddLine('*** ACCEPTED ' + uppercase(action) + ' ***', al, TRUE, TRUE, TRUE, TRUE);
// end
// else begin
// AddLine('*** DECLINED ' + uppercase(action) + ' ***', al, TRUE, TRUE, TRUE, TRUE);
// if not fCustomerReceipt
// then AddLine('(' + myNexo.LastErrorDescription + ')', al, false, false, false, false);
// end;
// AddEmptyLine;
//
// al := left;
//
// if (0 <> myNexo.amount)
// then begin
// AddLine('AMOUNT => ' + myNexo.AmountToDisplay(myNexo.amount, myNexo.currencydecimal, myNexo.currency), al, TRUE, false, TRUE, TRUE);
// AddEmptyLine;
// end;
//
// AddLine('DATE => ' + myNexo.convertdatetolocale(myNexo.ReaderDatetime), al, false, false, false, false);
// AddEmptyLine;
//
// // if (enumRequest_payByBarcode = request)
// // then buffer := uppercase(myNexo.TransactionScheme)
// // else buffer := uppercase(myNexo.SelectedTransaction.transaction_scheme);
// // AddLine('WALLET => ' + buffer, al, TRUE, false, false, false);
// // AddEmptyLine;
//
// if ('' = myNexo.ServerTransactionID)
// then buffer := 'NONE'
// else buffer := myNexo.ServerTransactionID;
// AddLine('TXN ID => ' + buffer, al, false, false, false, false);
// AddEmptyLine;
//
// AddLine('MERCHANT => ' + myNexo.MerchantNumberAsString, al, false, false, false, false);
// AddEmptyLine;
//
// AddLine('READER ID => ' + myNexo.ReaderIDAsString, al, false, false, false, false);
// AddEmptyLine;
//
// AddLine('READER NUMBER => ' + myNexo.ReaderIDSrv, al, false, false, false, false);
// AddEmptyLine;
//
// AddLine('READER TXN ID', al, false, false, false, false);
// AddLine(myNexo.readertransactionid, al, false, false, false, false);
// AddEmptyLine;
//
// if '' <> myNexo.MerchantReference
// then begin
// AddLine('CEGID Y2 TXN ID', al, false, false, false, false);
// AddLine(myNexo.MerchantReference, al, false, false, false, false);
// end;
//
// PrintReceipt(lcReceiptData, coTransaction, pptReportType1);
// end;
//
// AddLogVerbose(CFE);
// end;

end.
