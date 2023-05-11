unit PMS_NEXOSALE30_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 98336 $
// File generated on 11/05/2023 18:08:18 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\philippe\Documents\Dev\NEXOSale\bin\PMS.NEXOSALE30.tlb (1)
// LIBID: {B82C79B0-4829-4E9B-BBD8-993B1D2240DC}
// LCID: 0
// Helpfile:
// HelpString: nexoSale 3.0 [COM compatible]
// DepndLst:
// (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
// (3) v2.4 System, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.tlb)
// (4) v2.4 System_Windows_Forms, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.Windows.Forms.tlb)
// (5) v4.9 PMS_NEXO30, (C:\Users\philippe\Documents\Dev\NEXOSale\bin\PMS.NEXO30.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses
	Winapi.Windows,
	mscorlib_TLB,
	PMS_NEXO30_TLB,
	System.Classes,
	System.Variants,
	System.Win.StdVCL,
	System_TLB,
	System_Windows_Forms_TLB,
	Vcl.Graphics,
	Vcl.OleServer,
	Winapi.ActiveX;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
// Type Libraries     : LIBID_xxxx
// CoClasses          : CLASS_xxxx
// DISPInterfaces     : DIID_xxxx
// Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
	// TypeLibrary Major and minor versions
	PMS_NEXOSALE30MajorVersion = 1;
	PMS_NEXOSALE30MinorVersion = 8;

	LIBID_PMS_NEXOSALE30: TGUID = '{B82C79B0-4829-4E9B-BBD8-993B1D2240DC}';

	IID__FConfirm: TGUID = '{9974E3A5-54E5-3A5F-AC9E-6ED028B8F992}';
	IID__Currency: TGUID = '{9457A49D-F7C7-4F70-A712-9F2652E09C3A}';
	IID__FConfirmResult: TGUID = '{2F65A977-ABA8-394A-A7E6-48D142D2DC9D}';
	IID__FProcessing: TGUID = '{A90D2E54-B13B-3238-B283-F3BE59B41045}';
	IID__FSelectPrinter: TGUID = '{21B674D4-CD3C-38C9-9C8F-1EC1FCB4EFB6}';
	IID__FSettings: TGUID = '{BB400D29-BA2E-3F5E-A67B-686A37C25322}';
	IID__FWait: TGUID = '{4D08397F-21F4-3E4C-B8E9-8AA56AA6D485}';
	IID__NEXOSALE: TGUID = '{24B500EF-FCF4-4438-9541-2EEB99BEF014}';
	IID__POISettings: TGUID = '{78192CA7-AD36-408B-B822-A2FDAA6FA65C}';
	IID__CardSchemes: TGUID = '{C5B4E0EF-148D-4C66-B118-DF5C6C36FF41}';
	IID__Settings: TGUID = '{56D0D286-89A1-403D-A3CD-F73F2173D7AB}';
	CLASS_Currency: TGUID = '{A0F233DB-6682-4DC2-9C06-107077CC6717}';
	IID__CheckToPrint: TGUID = '{268D27E4-86C4-38F5-B088-B30ED08D1646}';
	IID__NexoOperation: TGUID = '{984CF177-D8A1-3AD7-8B13-2C31985D17BF}';
	IID__Receipts: TGUID = '{4A65F449-A410-3E97-A09D-1FBD9CB63B83}';
	IID__ConnectRequestData: TGUID = '{7A870150-2CFE-3023-8BBD-6457CFE171C1}';
	IID__ConnectRequest: TGUID = '{2455C7C4-FE7A-3508-BD99-47B9B07D94E4}';
	IID__ConnectReplyData: TGUID = '{1AF8A2E1-265F-38D9-80EA-D70E77BB29A8}';
	IID__ConnectReply: TGUID = '{1CFD6A00-DABC-31B6-BF14-3E79D05A1F9F}';
	CLASS_NEXOSALE: TGUID = '{C86AC303-6A19-4FE6-91CC-99D9BE369EE5}';
	CLASS_POISettings: TGUID = '{0ACB497E-FD2B-48D5-A602-EDEC63137A2C}';
	CLASS_CardSchemes: TGUID = '{06F6DFC2-2504-47B5-945C-9526AE7A5386}';
	CLASS_Settings: TGUID = '{CA6F62F3-0D1D-49C0-A8C4-BB46E5390931}';
	IID__ConnectRequestData_2: TGUID = '{80C364BE-C21B-32A2-BF29-1AA9FBE5F828}';
	IID__ConnectRequest_2: TGUID = '{33E64AB9-7739-3014-BB6C-75480E5ABA82}';
	IID__ConnectReplyData_2: TGUID = '{352B83BD-4A3B-34FE-9907-C708633DA424}';
	IID__ConnectReply_2: TGUID = '{4DBE4A65-110A-3B8B-B422-8CE65AE8D407}';
	CLASS_FConfirm: TGUID = '{EEF5C599-528F-3D83-92B8-EDECA56DFD42}';
	CLASS_FConfirmResult: TGUID = '{46DD5A4D-BB0A-300B-83AE-04A37D0C36FA}';
	CLASS_FProcessing: TGUID = '{7883D0A7-0267-34FB-89E0-D0E68774B278}';
	CLASS_FSelectPrinter: TGUID = '{5D52C3BD-1D16-3448-8378-A09A9708D166}';
	CLASS_FSettings: TGUID = '{9CB03DEF-275B-38D9-B8F7-2738F04344AE}';
	CLASS_FWait: TGUID = '{E6171552-7155-34D0-9E4B-82C2F58AB54C}';
	CLASS_CheckToPrint: TGUID = '{EABC73B9-2AF6-3C07-814E-58228E773D73}';
	CLASS_NexoOperation: TGUID = '{7D9C9B16-0F22-3121-B07E-E8B48FF87D17}';
	CLASS_Receipts: TGUID = '{9C15A788-6E71-3344-AF8B-AA7D10AA11D5}';
	CLASS_ConnectRequestData: TGUID = '{D1728C29-ED1B-3AD0-9E78-C3732DB8F9AA}';
	CLASS_ConnectRequest: TGUID = '{5141E390-8C67-37C1-A9E2-F8BFDFA52D4C}';
	CLASS_ConnectReplyData: TGUID = '{641A9DEE-67E1-3B26-A1A8-8DD375B016FA}';
	CLASS_ConnectReply: TGUID = '{B4626ECE-E6AA-3FFE-9E75-39C292F3ADF0}';
	CLASS_ConnectRequestData_2: TGUID = '{28042E83-8167-3042-B913-9C52B6A463BC}';
	CLASS_ConnectRequest_2: TGUID = '{63C3DA3C-4841-32E3-A679-A1788B6D8A58}';
	CLASS_ConnectReplyData_2: TGUID = '{32ED1B55-1594-3D24-9479-3DA9A159D767}';
	CLASS_ConnectReply_2: TGUID = '{F7AC006B-5572-394E-BC00-6BEE47162446}';

	// *********************************************************************//
	// Declaration of Enumerations defined in Type Library
	// *********************************************************************//
	// Constants for enum Action
type
	Action = TOleEnum;

const
	Action__none = $00000000;
	Action__begin = $00000001;
	Action_Login = $00000002;
	Action_Logout = $00000003;
	Action_Payment = $00000004;
	Action__base = $00000005;
	Action_Refund = $00000006;
	Action_Reversal = $00000007;
	Action_Reconciliation = $00000008;
	Action_Abort = $00000009;
	Action__checks = $0000000A;
	Action_ReadCheck = $0000000B;
	Action_PrintCheck = $0000000C;
	Action__end = $0000000D;

	// Constants for enum ActionResult
type
	ActionResult = TOleEnum;

const
	ActionResult__begin = $FFFFFFFF;
	ActionResult_unknown = $00000000;
	ActionResult_success = $00000001;
	ActionResult_decline = $00000002;
	ActionResult_cancel = $00000003;
	ActionResult_timeout = $00000004;
	ActionResult_exception = $00000005;
	ActionResult_notSupported = $00000006;
	ActionResult_incomplete = $00000007;
	ActionResult__end = $00000008;

	// Constants for enum CheckAuthorisationType
type
	CheckAuthorisationType = TOleEnum;

const
	CheckAuthorisationType_None = $00000000;
	CheckAuthorisationType_FNCI = $00000001;
	CheckAuthorisationType_Guarantee = $00000002;

type

	// *********************************************************************//
	// Forward declaration of types defined in TypeLibrary
	// *********************************************************************//
	_FConfirm = interface;
	_FConfirmDisp = dispinterface;
	_Currency = interface;
	_CurrencyDisp = dispinterface;
	_FConfirmResult = interface;
	_FConfirmResultDisp = dispinterface;
	_FProcessing = interface;
	_FProcessingDisp = dispinterface;
	_FSelectPrinter = interface;
	_FSelectPrinterDisp = dispinterface;
	_FSettings = interface;
	_FSettingsDisp = dispinterface;
	_FWait = interface;
	_FWaitDisp = dispinterface;
	_NEXOSALE = interface;
	_NEXOSALEDisp = dispinterface;
	_POISettings = interface;
	_POISettingsDisp = dispinterface;
	_CardSchemes = interface;
	_CardSchemesDisp = dispinterface;
	_Settings = interface;
	_SettingsDisp = dispinterface;
	_CheckToPrint = interface;
	_CheckToPrintDisp = dispinterface;
	_NexoOperation = interface;
	_NexoOperationDisp = dispinterface;
	_Receipts = interface;
	_ReceiptsDisp = dispinterface;
	_ConnectRequestData = interface;
	_ConnectRequestDataDisp = dispinterface;
	_ConnectRequest = interface;
	_ConnectRequestDisp = dispinterface;
	_ConnectReplyData = interface;
	_ConnectReplyDataDisp = dispinterface;
	_ConnectReply = interface;
	_ConnectReplyDisp = dispinterface;
	_ConnectRequestData_2 = interface;
	_ConnectRequestData_2Disp = dispinterface;
	_ConnectRequest_2 = interface;
	_ConnectRequest_2Disp = dispinterface;
	_ConnectReplyData_2 = interface;
	_ConnectReplyData_2Disp = dispinterface;
	_ConnectReply_2 = interface;
	_ConnectReply_2Disp = dispinterface;

	// *********************************************************************//
	// Declaration of CoClasses defined in Type Library
	// (NOTE: Here we map each CoClass to its Default Interface)
	// *********************************************************************//
	Currency = _Currency;
	NEXOSALE = _NEXOSALE;
	POISettings = _POISettings;
	CardSchemes = _CardSchemes;
	Settings = _Settings;
	FConfirm = _FConfirm;
	FConfirmResult = _FConfirmResult;
	FProcessing = _FProcessing;
	FSelectPrinter = _FSelectPrinter;
	FSettings = _FSettings;
	FWait = _FWait;
	CheckToPrint = _CheckToPrint;
	NexoOperation = _NexoOperation;
	Receipts = _Receipts;
	ConnectRequestData = _ConnectRequestData;
	ConnectRequest = _ConnectRequest;
	ConnectReplyData = _ConnectReplyData;
	ConnectReply = _ConnectReply;
	ConnectRequestData_2 = _ConnectRequestData_2;
	ConnectRequest_2 = _ConnectRequest_2;
	ConnectReplyData_2 = _ConnectReplyData_2;
	ConnectReply_2 = _ConnectReply_2;

	// *********************************************************************//
	// Interface: _FConfirm
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {9974E3A5-54E5-3A5F-AC9E-6ED028B8F992}
	// *********************************************************************//
	_FConfirm = interface(IDispatch)
		['{9974E3A5-54E5-3A5F-AC9E-6ED028B8F992}']
	end;

	// *********************************************************************//
	// DispIntf:  _FConfirmDisp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {9974E3A5-54E5-3A5F-AC9E-6ED028B8F992}
	// *********************************************************************//
	_FConfirmDisp = dispinterface
		['{9974E3A5-54E5-3A5F-AC9E-6ED028B8F992}']
	end;

	// *********************************************************************//
	// Interface: _Currency
	// Flags:     (4416) Dual OleAutomation Dispatchable
	// GUID:      {9457A49D-F7C7-4F70-A712-9F2652E09C3A}
	// *********************************************************************//
	_Currency = interface(IDispatch)
		['{9457A49D-F7C7-4F70-A712-9F2652E09C3A}']
		function Get_Name: WideString; safecall;
		procedure Set_Name(const pRetVal: WideString); safecall;
		function Get_Decimals: LongWord; safecall;
		procedure Set_Decimals(pRetVal: LongWord); safecall;
		function Get_ToString: WideString; safecall;
		function Equals(const obj: _Currency): WordBool; safecall;
		property Name: WideString
			read Get_Name
			write Set_Name;
		property Decimals: LongWord
			read Get_Decimals
			write Set_Decimals;
		property ToString: WideString
			read Get_ToString;
	end;

	// *********************************************************************//
	// DispIntf:  _CurrencyDisp
	// Flags:     (4416) Dual OleAutomation Dispatchable
	// GUID:      {9457A49D-F7C7-4F70-A712-9F2652E09C3A}
	// *********************************************************************//
	_CurrencyDisp = dispinterface
		['{9457A49D-F7C7-4F70-A712-9F2652E09C3A}']
		property Name: WideString
			dispid 1;
		property Decimals: LongWord
			dispid 2;
		property ToString: WideString
			readonly dispid 100;
		function Equals(const obj: _Currency): WordBool; dispid 5;
	end;

	// *********************************************************************//
	// Interface: _FConfirmResult
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {2F65A977-ABA8-394A-A7E6-48D142D2DC9D}
	// *********************************************************************//
	_FConfirmResult = interface(IDispatch)
		['{2F65A977-ABA8-394A-A7E6-48D142D2DC9D}']
	end;

	// *********************************************************************//
	// DispIntf:  _FConfirmResultDisp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {2F65A977-ABA8-394A-A7E6-48D142D2DC9D}
	// *********************************************************************//
	_FConfirmResultDisp = dispinterface
		['{2F65A977-ABA8-394A-A7E6-48D142D2DC9D}']
	end;

	// *********************************************************************//
	// Interface: _FProcessing
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {A90D2E54-B13B-3238-B283-F3BE59B41045}
	// *********************************************************************//
	_FProcessing = interface(IDispatch)
		['{A90D2E54-B13B-3238-B283-F3BE59B41045}']
	end;

	// *********************************************************************//
	// DispIntf:  _FProcessingDisp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {A90D2E54-B13B-3238-B283-F3BE59B41045}
	// *********************************************************************//
	_FProcessingDisp = dispinterface
		['{A90D2E54-B13B-3238-B283-F3BE59B41045}']
	end;

	// *********************************************************************//
	// Interface: _FSelectPrinter
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {21B674D4-CD3C-38C9-9C8F-1EC1FCB4EFB6}
	// *********************************************************************//
	_FSelectPrinter = interface(IDispatch)
		['{21B674D4-CD3C-38C9-9C8F-1EC1FCB4EFB6}']
	end;

	// *********************************************************************//
	// DispIntf:  _FSelectPrinterDisp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {21B674D4-CD3C-38C9-9C8F-1EC1FCB4EFB6}
	// *********************************************************************//
	_FSelectPrinterDisp = dispinterface
		['{21B674D4-CD3C-38C9-9C8F-1EC1FCB4EFB6}']
	end;

	// *********************************************************************//
	// Interface: _FSettings
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {BB400D29-BA2E-3F5E-A67B-686A37C25322}
	// *********************************************************************//
	_FSettings = interface(IDispatch)
		['{BB400D29-BA2E-3F5E-A67B-686A37C25322}']
	end;

	// *********************************************************************//
	// DispIntf:  _FSettingsDisp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {BB400D29-BA2E-3F5E-A67B-686A37C25322}
	// *********************************************************************//
	_FSettingsDisp = dispinterface
		['{BB400D29-BA2E-3F5E-A67B-686A37C25322}']
	end;

	// *********************************************************************//
	// Interface: _FWait
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {4D08397F-21F4-3E4C-B8E9-8AA56AA6D485}
	// *********************************************************************//
	_FWait = interface(IDispatch)
		['{4D08397F-21F4-3E4C-B8E9-8AA56AA6D485}']
	end;

	// *********************************************************************//
	// DispIntf:  _FWaitDisp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {4D08397F-21F4-3E4C-B8E9-8AA56AA6D485}
	// *********************************************************************//
	_FWaitDisp = dispinterface
		['{4D08397F-21F4-3E4C-B8E9-8AA56AA6D485}']
	end;

	// *********************************************************************//
	// Interface: _NEXOSALE
	// Flags:     (4416) Dual OleAutomation Dispatchable
	// GUID:      {24B500EF-FCF4-4438-9541-2EEB99BEF014}
	// *********************************************************************//
	_NEXOSALE = interface(IDispatch)
		['{24B500EF-FCF4-4438-9541-2EEB99BEF014}']
		function Get_IsLogged: WordBool; safecall;
		function Get_Amount: Double; safecall;
		procedure Set_Amount(pRetVal: Double); safecall;
		function Get_SaleTransactionID: WideString; safecall;
		function Get_SaleTransactionTimestamp: WideString; safecall;
		function Get_MainWindow: Integer; safecall;
		procedure Set_MainWindow(pRetVal: Integer); safecall;
		function Get_Settings: _Settings; safecall;
		procedure _Set_Settings(const pRetVal: _Settings); safecall;
		function Get_SaleID: WideString; safecall;
		procedure Set_SaleID(const pRetVal: WideString); safecall;
		function Get_POIID: WideString; safecall;
		procedure Set_POIID(const pRetVal: WideString); safecall;
		function Get_Login: INexoLogin; safecall;
		function Get_Payment: INexoPayment; safecall;
		function Get_Refund: INexoPayment; safecall;
		function Get_Logout: INexoLogout; safecall;
		function Get_NexoClient: INexoRetailerClient; safecall;
		function Get_Connected: WordBool; safecall;
		function Get_Success: WordBool; safecall;
		function Get_POITransactionID: WideString; safecall;
		function Get_POITransactionTimestamp: WideString; safecall;
		function Get_OriginalPOITransactionID: WideString; safecall;
		procedure Set_OriginalPOITransactionID(const pRetVal: WideString); safecall;
		function Get_OriginalPOITransactionTimestamp: WideString; safecall;
		procedure Set_OriginalPOITransactionTimestamp(const pRetVal: WideString); safecall;
		function Get_UseBackup: WordBool; safecall;
		procedure Set_UseBackup(pRetVal: WordBool); safecall;
		function Get_LogoutOnTerminate: WordBool; safecall;
		procedure Set_LogoutOnTerminate(pRetVal: WordBool); safecall;
		function Get_Reversal: INexoReversal; safecall;
		function Get_Reconciliation: INexoReconciliation; safecall;
		function Get_Abort: INexoAbort; safecall;
		function Get_ReconciliationID: WideString; safecall;
		procedure Set_ReconciliationID(const pRetVal: WideString); safecall;
		function Get_ReconciliationAcquirerID: WideString; safecall;
		procedure Set_ReconciliationAcquirerID(const pRetVal: WideString); safecall;
		function Get_ReconciliationType: ReconciliationTypeEnumeration; safecall;
		procedure Set_ReconciliationType(pRetVal: ReconciliationTypeEnumeration); safecall;
		function Get_AbortReason: WideString; safecall;
		procedure Set_AbortReason(const pRetVal: WideString); safecall;
		function Get_AbortMessageCategory: MessageCategoryEnumeration; safecall;
		procedure Set_AbortMessageCategory(pRetVal: MessageCategoryEnumeration); safecall;
		function Get_AbortServiceID: WideString; safecall;
		procedure Set_AbortServiceID(const pRetVal: WideString); safecall;
		function Get_MerchantName: WideString; safecall;
		procedure Set_MerchantName(const pRetVal: WideString); safecall;
		function Get_MerchantAddress: WideString; safecall;
		procedure Set_MerchantAddress(const pRetVal: WideString); safecall;
		function Get_CheckIndex: Integer; safecall;
		procedure Set_CheckIndex(pRetVal: Integer); safecall;
		function Get_CheckAuthorisationSignature: WideString; safecall;
		procedure Set_CheckAuthorisationSignature(const pRetVal: WideString); safecall;
		function Get_Input: INexoDeviceInput; safecall;
		function Get_Print: INexoDevicePrint; safecall;
		function Get_CheckAuthorisationResponseCode: WideString; safecall;
		procedure Set_CheckAuthorisationResponseCode(const pRetVal: WideString); safecall;
		function Get_MerchantReferenceID: WideString; safecall;
		procedure Set_MerchantReferenceID(const pRetVal: WideString); safecall;
		function Get_Currency: INexoCurrency; safecall;
		function Get_ReceiptAvailable: WordBool; safecall;
		function Get_POIInUse: _POISettings; safecall;
		function Get_ReversalReason: WideString; safecall;
		procedure Set_ReversalReason(const pRetVal: WideString); safecall;
		function Get_Brand: WideString; safecall;
		function Get_UnknownBrand: WideString; safecall;
		function Get_IndicateBrand: WordBool; safecall;
		procedure Set_IndicateBrand(pRetVal: WordBool); safecall;
		function Get_POIIsOffline: WordBool; safecall;
		function Get_UseInternalPrinting: WordBool; safecall;
		procedure Set_UseInternalPrinting(pRetVal: WordBool); safecall;
		function Get_CustomerReceiptFileName: WideString; safecall;
		function Get_MerchantReceiptFileName: WideString; safecall;
		function Get_LastReceipt: PSafeArray; safecall;
		function Get_MaskedPAN: WideString; safecall;
		procedure DisplaySettings(useAdvancedSettings: WordBool); safecall;
		function DisplayProcessing(theAction: Action): ActionResult; safecall;
		function DisplayConfirmPurchase: WordBool; safecall;
		function Connect(const clientSettings: INexoRetailerClientSettings): WordBool; safecall;
		procedure Disconnect; safecall;
		function SettingsFileName: WideString; safecall;
		function DocumentQualifierToString(value: DocumentQualifierEnumeration): WideString; safecall;
		function AlignmentToString(value: AlignmentEnumeration): WideString; safecall;
		function CharacterStyleToString(value: CharacterStyleEnumeration): WideString; safecall;
		property IsLogged: WordBool
			read Get_IsLogged;
		property Amount: Double
			read Get_Amount
			write Set_Amount;
		property SaleTransactionID: WideString
			read Get_SaleTransactionID;
		property SaleTransactionTimestamp: WideString
			read Get_SaleTransactionTimestamp;
		property MainWindow: Integer
			read Get_MainWindow
			write Set_MainWindow;
		property Settings: _Settings
			read Get_Settings
			write _Set_Settings;
		property SaleID: WideString
			read Get_SaleID
			write Set_SaleID;
		property POIID: WideString
			read Get_POIID
			write Set_POIID;
		property Login: INexoLogin
			read Get_Login;
		property Payment: INexoPayment
			read Get_Payment;
		property Refund: INexoPayment
			read Get_Refund;
		property Logout: INexoLogout
			read Get_Logout;
		property NexoClient: INexoRetailerClient
			read Get_NexoClient;
		property Connected: WordBool
			read Get_Connected;
		property Success: WordBool
			read Get_Success;
		property POITransactionID: WideString
			read Get_POITransactionID;
		property POITransactionTimestamp: WideString
			read Get_POITransactionTimestamp;
		property OriginalPOITransactionID: WideString
			read Get_OriginalPOITransactionID
			write Set_OriginalPOITransactionID;
		property OriginalPOITransactionTimestamp: WideString
			read Get_OriginalPOITransactionTimestamp
			write Set_OriginalPOITransactionTimestamp;
		property UseBackup: WordBool
			read Get_UseBackup
			write Set_UseBackup;
		property LogoutOnTerminate: WordBool
			read Get_LogoutOnTerminate
			write Set_LogoutOnTerminate;
		property Reversal: INexoReversal
			read Get_Reversal;
		property Reconciliation: INexoReconciliation
			read Get_Reconciliation;
		property Abort: INexoAbort
			read Get_Abort;
		property ReconciliationID: WideString
			read Get_ReconciliationID
			write Set_ReconciliationID;
		property ReconciliationAcquirerID: WideString
			read Get_ReconciliationAcquirerID
			write Set_ReconciliationAcquirerID;
		property ReconciliationType: ReconciliationTypeEnumeration
			read Get_ReconciliationType
			write Set_ReconciliationType;
		property AbortReason: WideString
			read Get_AbortReason
			write Set_AbortReason;
		property AbortMessageCategory: MessageCategoryEnumeration
			read Get_AbortMessageCategory
			write Set_AbortMessageCategory;
		property AbortServiceID: WideString
			read Get_AbortServiceID
			write Set_AbortServiceID;
		property MerchantName: WideString
			read Get_MerchantName
			write Set_MerchantName;
		property MerchantAddress: WideString
			read Get_MerchantAddress
			write Set_MerchantAddress;
		property CheckIndex: Integer
			read Get_CheckIndex
			write Set_CheckIndex;
		property CheckAuthorisationSignature: WideString
			read Get_CheckAuthorisationSignature
			write Set_CheckAuthorisationSignature;
		property Input: INexoDeviceInput
			read Get_Input;
		property Print: INexoDevicePrint
			read Get_Print;
		property CheckAuthorisationResponseCode: WideString
			read Get_CheckAuthorisationResponseCode
			write Set_CheckAuthorisationResponseCode;
		property MerchantReferenceID: WideString
			read Get_MerchantReferenceID
			write Set_MerchantReferenceID;
		property Currency: INexoCurrency
			read Get_Currency;
		property ReceiptAvailable: WordBool
			read Get_ReceiptAvailable;
		property POIInUse: _POISettings
			read Get_POIInUse;
		property ReversalReason: WideString
			read Get_ReversalReason
			write Set_ReversalReason;
		property Brand: WideString
			read Get_Brand;
		property UnknownBrand: WideString
			read Get_UnknownBrand;
		property IndicateBrand: WordBool
			read Get_IndicateBrand
			write Set_IndicateBrand;
		property POIIsOffline: WordBool
			read Get_POIIsOffline;
		property UseInternalPrinting: WordBool
			read Get_UseInternalPrinting
			write Set_UseInternalPrinting;
		property CustomerReceiptFileName: WideString
			read Get_CustomerReceiptFileName;
		property MerchantReceiptFileName: WideString
			read Get_MerchantReceiptFileName;
		property LastReceipt: PSafeArray
			read Get_LastReceipt;
		property MaskedPAN: WideString
			read Get_MaskedPAN;
	end;

	// *********************************************************************//
	// DispIntf:  _NEXOSALEDisp
	// Flags:     (4416) Dual OleAutomation Dispatchable
	// GUID:      {24B500EF-FCF4-4438-9541-2EEB99BEF014}
	// *********************************************************************//
	_NEXOSALEDisp = dispinterface
		['{24B500EF-FCF4-4438-9541-2EEB99BEF014}']
		property IsLogged: WordBool
			readonly dispid 1;
		property Amount: Double
			dispid 2;
		property SaleTransactionID: WideString
			readonly dispid 3;
		property SaleTransactionTimestamp: WideString
			readonly dispid 4;
		property MainWindow: Integer
			dispid 6;
		property Settings: _Settings
			dispid 7;
		property SaleID: WideString
			dispid 8;
		property POIID: WideString
			dispid 9;
		property Login: INexoLogin
			readonly dispid 10;
		property Payment: INexoPayment
			readonly dispid 11;
		property Refund: INexoPayment
			readonly dispid 12;
		property Logout: INexoLogout
			readonly dispid 13;
		property NexoClient: INexoRetailerClient
			readonly dispid 14;
		property Connected: WordBool
			readonly dispid 15;
		property Success: WordBool
			readonly dispid 16;
		property POITransactionID: WideString
			readonly dispid 17;
		property POITransactionTimestamp: WideString
			readonly dispid 18;
		property OriginalPOITransactionID: WideString
			dispid 19;
		property OriginalPOITransactionTimestamp: WideString
			dispid 20;
		property UseBackup: WordBool
			dispid 21;
		property LogoutOnTerminate: WordBool
			dispid 22;
		property Reversal: INexoReversal
			readonly dispid 23;
		property Reconciliation: INexoReconciliation
			readonly dispid 24;
		property Abort: INexoAbort
			readonly dispid 25;
		property ReconciliationID: WideString
			dispid 26;
		property ReconciliationAcquirerID: WideString
			dispid 27;
		property ReconciliationType: ReconciliationTypeEnumeration
			dispid 28;
		property AbortReason: WideString
			dispid 29;
		property AbortMessageCategory: MessageCategoryEnumeration
			dispid 30;
		property AbortServiceID: WideString
			dispid 31;
		property MerchantName: WideString
			dispid 32;
		property MerchantAddress: WideString
			dispid 33;
		property CheckIndex: Integer
			dispid 34;
		property CheckAuthorisationSignature: WideString
			dispid 35;
		property Input: INexoDeviceInput
			readonly dispid 36;
		property Print: INexoDevicePrint
			readonly dispid 37;
		property CheckAuthorisationResponseCode: WideString
			dispid 38;
		property MerchantReferenceID: WideString
			dispid 39;
		property Currency: INexoCurrency
			readonly dispid 40;
		property ReceiptAvailable: WordBool
			readonly dispid 41;
		property POIInUse: _POISettings
			readonly dispid 42;
		property ReversalReason: WideString
			dispid 43;
		property Brand: WideString
			readonly dispid 44;
		property UnknownBrand: WideString
			readonly dispid 94;
		property IndicateBrand: WordBool
			dispid 45;
		property POIIsOffline: WordBool
			readonly dispid 46;
		property UseInternalPrinting: WordBool
			dispid 50;
		property CustomerReceiptFileName: WideString
			readonly dispid 51;
		property MerchantReceiptFileName: WideString
			readonly dispid 52;
		property LastReceipt: { NOT_OLEAUTO(PSafeArray) } OleVariant
			readonly dispid 53;
		property MaskedPAN: WideString
			readonly dispid 54;
		procedure DisplaySettings(useAdvancedSettings: WordBool); dispid 100;
		function DisplayProcessing(theAction: Action): ActionResult; dispid 101;
		function DisplayConfirmPurchase: WordBool; dispid 103;
		function Connect(const clientSettings: INexoRetailerClientSettings): WordBool; dispid 200;
		procedure Disconnect; dispid 201;
		function SettingsFileName: WideString; dispid 500;
		function DocumentQualifierToString(value: DocumentQualifierEnumeration): WideString; dispid 501;
		function AlignmentToString(value: AlignmentEnumeration): WideString; dispid 502;
		function CharacterStyleToString(value: CharacterStyleEnumeration): WideString; dispid 503;
	end;

	// *********************************************************************//
	// Interface: _POISettings
	// Flags:     (4416) Dual OleAutomation Dispatchable
	// GUID:      {78192CA7-AD36-408B-B822-A2FDAA6FA65C}
	// *********************************************************************//
	_POISettings = interface(IDispatch)
		['{78192CA7-AD36-408B-B822-A2FDAA6FA65C}']
		function Get_ServerIP: WideString; safecall;
		procedure Set_ServerIP(const pRetVal: WideString); safecall;
		function Get_ServerPort: TDecimal; safecall;
		procedure Set_ServerPort(pRetVal: TDecimal); safecall;
		function Get_PrintReceipt: WordBool; safecall;
		procedure Set_PrintReceipt(pRetVal: WordBool); safecall;
		function Get_PrintCustomerReceipt: WordBool; safecall;
		procedure Set_PrintCustomerReceipt(pRetVal: WordBool); safecall;
		function Get_PrintMerchantReceipt: WordBool; safecall;
		procedure Set_PrintMerchantReceipt(pRetVal: WordBool); safecall;
		function Get_Synchronous: WordBool; safecall;
		procedure Set_Synchronous(pRetVal: WordBool); safecall;
		function Get_SupportsCancel: WordBool; safecall;
		procedure Set_SupportsCancel(pRetVal: WordBool); safecall;
		function Get_SupportsAbort: WordBool; safecall;
		procedure Set_SupportsAbort(pRetVal: WordBool); safecall;
		function Get_SupportsRefund: WordBool; safecall;
		procedure Set_SupportsRefund(pRetVal: WordBool); safecall;
		function Get_SupportsReconciliation: WordBool; safecall;
		procedure Set_SupportsReconciliation(pRetVal: WordBool); safecall;
		function Get_SupportsCheck: WordBool; safecall;
		procedure Set_SupportsCheck(pRetVal: WordBool); safecall;
		function Get_GeneralTimer: Integer; safecall;
		procedure Set_GeneralTimer(pRetVal: Integer); safecall;
		function Get_PaymentTimer: Integer; safecall;
		procedure Set_PaymentTimer(pRetVal: Integer); safecall;
		function Get_CheckTimer: Integer; safecall;
		procedure Set_CheckTimer(pRetVal: Integer); safecall;
		function Get_IsValid: WordBool; safecall;
		property ServerIP: WideString
			read Get_ServerIP
			write Set_ServerIP;
		property ServerPort: TDecimal
			read Get_ServerPort
			write Set_ServerPort;
		property PrintReceipt: WordBool
			read Get_PrintReceipt
			write Set_PrintReceipt;
		property PrintCustomerReceipt: WordBool
			read Get_PrintCustomerReceipt
			write Set_PrintCustomerReceipt;
		property PrintMerchantReceipt: WordBool
			read Get_PrintMerchantReceipt
			write Set_PrintMerchantReceipt;
		property Synchronous: WordBool
			read Get_Synchronous
			write Set_Synchronous;
		property SupportsCancel: WordBool
			read Get_SupportsCancel
			write Set_SupportsCancel;
		property SupportsAbort: WordBool
			read Get_SupportsAbort
			write Set_SupportsAbort;
		property SupportsRefund: WordBool
			read Get_SupportsRefund
			write Set_SupportsRefund;
		property SupportsReconciliation: WordBool
			read Get_SupportsReconciliation
			write Set_SupportsReconciliation;
		property SupportsCheck: WordBool
			read Get_SupportsCheck
			write Set_SupportsCheck;
		property GeneralTimer: Integer
			read Get_GeneralTimer
			write Set_GeneralTimer;
		property PaymentTimer: Integer
			read Get_PaymentTimer
			write Set_PaymentTimer;
		property CheckTimer: Integer
			read Get_CheckTimer
			write Set_CheckTimer;
		property IsValid: WordBool
			read Get_IsValid;
	end;

	// *********************************************************************//
	// DispIntf:  _POISettingsDisp
	// Flags:     (4416) Dual OleAutomation Dispatchable
	// GUID:      {78192CA7-AD36-408B-B822-A2FDAA6FA65C}
	// *********************************************************************//
	_POISettingsDisp = dispinterface
		['{78192CA7-AD36-408B-B822-A2FDAA6FA65C}']
		property ServerIP: WideString
			dispid 1;
		property ServerPort: { NOT_OLEAUTO(TDecimal) } OleVariant
			dispid 2;
		property PrintReceipt: WordBool
			dispid 10;
		property PrintCustomerReceipt: WordBool
			dispid 11;
		property PrintMerchantReceipt: WordBool
			dispid 12;
		property Synchronous: WordBool
			dispid 20;
		property SupportsCancel: WordBool
			dispid 30;
		property SupportsAbort: WordBool
			dispid 31;
		property SupportsRefund: WordBool
			dispid 32;
		property SupportsReconciliation: WordBool
			dispid 33;
		property SupportsCheck: WordBool
			dispid 34;
		property GeneralTimer: Integer
			dispid 50;
		property PaymentTimer: Integer
			dispid 51;
		property CheckTimer: Integer
			dispid 52;
		property IsValid: WordBool
			readonly dispid 53;
	end;

	// *********************************************************************//
	// Interface: _CardSchemes
	// Flags:     (4416) Dual OleAutomation Dispatchable
	// GUID:      {C5B4E0EF-148D-4C66-B118-DF5C6C36FF41}
	// *********************************************************************//
	_CardSchemes = interface(IDispatch)
		['{C5B4E0EF-148D-4C66-B118-DF5C6C36FF41}']
		function Get_ToString: WideString; safecall;
		property ToString: WideString
			read Get_ToString;
	end;

	// *********************************************************************//
	// DispIntf:  _CardSchemesDisp
	// Flags:     (4416) Dual OleAutomation Dispatchable
	// GUID:      {C5B4E0EF-148D-4C66-B118-DF5C6C36FF41}
	// *********************************************************************//
	_CardSchemesDisp = dispinterface
		['{C5B4E0EF-148D-4C66-B118-DF5C6C36FF41}']
		property ToString: WideString
			readonly dispid 1;
	end;

	// *********************************************************************//
	// Interface: _Settings
	// Flags:     (4416) Dual OleAutomation Dispatchable
	// GUID:      {56D0D286-89A1-403D-A3CD-F73F2173D7AB}
	// *********************************************************************//
	_Settings = interface(IDispatch)
		['{56D0D286-89A1-403D-A3CD-F73F2173D7AB}']
		function Get_SaleID: WideString; safecall;
		procedure Set_SaleID(const pRetVal: WideString); safecall;
		function Get_SaleIDUseIP: WordBool; safecall;
		procedure Set_SaleIDUseIP(pRetVal: WordBool); safecall;
		function Get_POIID: WideString; safecall;
		procedure Set_POIID(const pRetVal: WideString); safecall;
		function Get_POIIDUseIP: WordBool; safecall;
		procedure Set_POIIDUseIP(pRetVal: WordBool); safecall;
		function Get_ApplicationName: WideString; safecall;
		procedure Set_ApplicationName(const pRetVal: WideString); safecall;
		function Get_ManufacturerName: WideString; safecall;
		procedure Set_ManufacturerName(const pRetVal: WideString); safecall;
		function Get_SoftwareVersion: WideString; safecall;
		procedure Set_SoftwareVersion(const pRetVal: WideString); safecall;
		function Get_CertificationCode: WideString; safecall;
		procedure Set_CertificationCode(const pRetVal: WideString); safecall;
		function Get_Currency: WideString; safecall;
		procedure Set_Currency(const pRetVal: WideString); safecall;
		function Get_Decimals: LongWord; safecall;
		procedure Set_Decimals(pRetVal: LongWord); safecall;
		function Get_NoAutocloseOnError: WordBool; safecall;
		procedure Set_NoAutocloseOnError(pRetVal: WordBool); safecall;
		function Get_LogFileName: WideString; safecall;
		procedure Set_LogFileName(const pRetVal: WideString); safecall;
		function Get_Autoclose: WordBool; safecall;
		procedure Set_Autoclose(pRetVal: WordBool); safecall;
		function Get_AutocloseDelay: LongWord; safecall;
		procedure Set_AutocloseDelay(pRetVal: LongWord); safecall;
		function Get_Primary: _POISettings; safecall;
		procedure _Set_Primary(const pRetVal: _POISettings); safecall;
		function Get_Backup: _POISettings; safecall;
		procedure _Set_Backup(const pRetVal: _POISettings); safecall;
		function Get_AdminCode: WideString; safecall;
		procedure Set_AdminCode(const pRetVal: WideString); safecall;
		function Get_UseDate: WordBool; safecall;
		procedure Set_UseDate(pRetVal: WordBool); safecall;
		function Get_GatewayIP: WideString; safecall;
		procedure Set_GatewayIP(const pRetVal: WideString); safecall;
		function Get_UserID: WideString; safecall;
		procedure Set_UserID(const pRetVal: WideString); safecall;
		function Get_PWD: WideString; safecall;
		procedure Set_PWD(const pRetVal: WideString); safecall;
		function Get_ICCD: WideString; safecall;
		procedure Set_ICCD(const pRetVal: WideString); safecall;
		function Get_POIPort: TDecimal; safecall;
		procedure Set_POIPort(pRetVal: TDecimal); safecall;
		function Get_GatewayPort: TDecimal; safecall;
		procedure Set_GatewayPort(pRetVal: TDecimal); safecall;
		procedure GhostMethod__Settings_220_1; safecall;
		procedure GhostMethod__Settings_224_2; safecall;
		function Get_ServerName: WideString; safecall;
		procedure Set_ServerName(const pRetVal: WideString); safecall;
		function Get_Picture: WideString; safecall;
		procedure Set_Picture(const pRetVal: WideString); safecall;
		function Get_Printer: WideString; safecall;
		procedure Set_Printer(const pRetVal: WideString); safecall;
		function Get_ReceiptFolder: WideString; safecall;
		procedure Set_ReceiptFolder(const pRetVal: WideString); safecall;
		function Get_MerchantTextToPrint: WideString; safecall;
		procedure Set_MerchantTextToPrint(const pRetVal: WideString); safecall;
		function Get_TraceLevel: WideString; safecall;
		procedure Set_TraceLevel(const pRetVal: WideString); safecall;
		function Get_SaveReceipts: WordBool; safecall;
		procedure Set_SaveReceipts(pRetVal: WordBool); safecall;
		function Get_ReuseMerchantReferenceIDAsTransactionID: WordBool; safecall;
		procedure Set_ReuseMerchantReferenceIDAsTransactionID(pRetVal: WordBool); safecall;
		function Get_IndicateBrand: WordBool; safecall;
		procedure Set_IndicateBrand(pRetVal: WordBool); safecall;
		function Get_AllowOfflinePOI: WordBool; safecall;
		procedure Set_AllowOfflinePOI(pRetVal: WordBool); safecall;
		function Get_HideNexoMessagesWhenProcessing: WordBool; safecall;
		procedure Set_HideNexoMessagesWhenProcessing(pRetVal: WordBool); safecall;
		function Get_AlwaysLogToPOI: WordBool; safecall;
		procedure Set_AlwaysLogToPOI(pRetVal: WordBool); safecall;
		function Get_UseRefundForCancel: WordBool; safecall;
		procedure Set_UseRefundForCancel(pRetVal: WordBool); safecall;
		function Get_CardSchemes: _CardSchemes; safecall;
		procedure _Set_CardSchemes(const pRetVal: _CardSchemes); safecall;
		function Get_NotificationAlwaysReturnsOK: WordBool; safecall;
		procedure Set_NotificationAlwaysReturnsOK(pRetVal: WordBool); safecall;
		function Get_DeviceDisplayAlwaysReturnsOK: WordBool; safecall;
		procedure Set_DeviceDisplayAlwaysReturnsOK(pRetVal: WordBool); safecall;
		function RegistryEntry: WideString; safecall;
		function RegistryKeySettingsFileName: WideString; safecall;
		function DefaultSettingsFileName: WideString; safecall;
		function DefaultSettingsFolder: WideString; safecall;
		function RegistryKeyCurrenciesFileName: WideString; safecall;
		function DefaultCurrenciesFileName: WideString; safecall;
		property SaleID: WideString
			read Get_SaleID
			write Set_SaleID;
		property SaleIDUseIP: WordBool
			read Get_SaleIDUseIP
			write Set_SaleIDUseIP;
		property POIID: WideString
			read Get_POIID
			write Set_POIID;
		property POIIDUseIP: WordBool
			read Get_POIIDUseIP
			write Set_POIIDUseIP;
		property ApplicationName: WideString
			read Get_ApplicationName
			write Set_ApplicationName;
		property ManufacturerName: WideString
			read Get_ManufacturerName
			write Set_ManufacturerName;
		property SoftwareVersion: WideString
			read Get_SoftwareVersion
			write Set_SoftwareVersion;
		property CertificationCode: WideString
			read Get_CertificationCode
			write Set_CertificationCode;
		property Currency: WideString
			read Get_Currency
			write Set_Currency;
		property Decimals: LongWord
			read Get_Decimals
			write Set_Decimals;
		property NoAutocloseOnError: WordBool
			read Get_NoAutocloseOnError
			write Set_NoAutocloseOnError;
		property LogFileName: WideString
			read Get_LogFileName
			write Set_LogFileName;
		property Autoclose: WordBool
			read Get_Autoclose
			write Set_Autoclose;
		property AutocloseDelay: LongWord
			read Get_AutocloseDelay
			write Set_AutocloseDelay;
		property Primary: _POISettings
			read Get_Primary
			write _Set_Primary;
		property Backup: _POISettings
			read Get_Backup
			write _Set_Backup;
		property AdminCode: WideString
			read Get_AdminCode
			write Set_AdminCode;
		property UseDate: WordBool
			read Get_UseDate
			write Set_UseDate;
		property GatewayIP: WideString
			read Get_GatewayIP
			write Set_GatewayIP;
		property UserID: WideString
			read Get_UserID
			write Set_UserID;
		property PWD: WideString
			read Get_PWD
			write Set_PWD;
		property ICCD: WideString
			read Get_ICCD
			write Set_ICCD;
		property POIPort: TDecimal
			read Get_POIPort
			write Set_POIPort;
		property GatewayPort: TDecimal
			read Get_GatewayPort
			write Set_GatewayPort;
		property ServerName: WideString
			read Get_ServerName
			write Set_ServerName;
		property Picture: WideString
			read Get_Picture
			write Set_Picture;
		property Printer: WideString
			read Get_Printer
			write Set_Printer;
		property ReceiptFolder: WideString
			read Get_ReceiptFolder
			write Set_ReceiptFolder;
		property MerchantTextToPrint: WideString
			read Get_MerchantTextToPrint
			write Set_MerchantTextToPrint;
		property TraceLevel: WideString
			read Get_TraceLevel
			write Set_TraceLevel;
		property SaveReceipts: WordBool
			read Get_SaveReceipts
			write Set_SaveReceipts;
		property ReuseMerchantReferenceIDAsTransactionID: WordBool
			read Get_ReuseMerchantReferenceIDAsTransactionID
			write Set_ReuseMerchantReferenceIDAsTransactionID;
		property IndicateBrand: WordBool
			read Get_IndicateBrand
			write Set_IndicateBrand;
		property AllowOfflinePOI: WordBool
			read Get_AllowOfflinePOI
			write Set_AllowOfflinePOI;
		property HideNexoMessagesWhenProcessing: WordBool
			read Get_HideNexoMessagesWhenProcessing
			write Set_HideNexoMessagesWhenProcessing;
		property AlwaysLogToPOI: WordBool
			read Get_AlwaysLogToPOI
			write Set_AlwaysLogToPOI;
		property UseRefundForCancel: WordBool
			read Get_UseRefundForCancel
			write Set_UseRefundForCancel;
		property CardSchemes: _CardSchemes
			read Get_CardSchemes
			write _Set_CardSchemes;
		property NotificationAlwaysReturnsOK: WordBool
			read Get_NotificationAlwaysReturnsOK
			write Set_NotificationAlwaysReturnsOK;
		property DeviceDisplayAlwaysReturnsOK: WordBool
			read Get_DeviceDisplayAlwaysReturnsOK
			write Set_DeviceDisplayAlwaysReturnsOK;
	end;

	// *********************************************************************//
	// DispIntf:  _SettingsDisp
	// Flags:     (4416) Dual OleAutomation Dispatchable
	// GUID:      {56D0D286-89A1-403D-A3CD-F73F2173D7AB}
	// *********************************************************************//
	_SettingsDisp = dispinterface
		['{56D0D286-89A1-403D-A3CD-F73F2173D7AB}']
		property SaleID: WideString
			dispid 1;
		property SaleIDUseIP: WordBool
			dispid 2;
		property POIID: WideString
			dispid 3;
		property POIIDUseIP: WordBool
			dispid 4;
		property ApplicationName: WideString
			dispid 10;
		property ManufacturerName: WideString
			dispid 11;
		property SoftwareVersion: WideString
			dispid 12;
		property CertificationCode: WideString
			dispid 13;
		property Currency: WideString
			dispid 20;
		property Decimals: LongWord
			dispid 21;
		property NoAutocloseOnError: WordBool
			dispid 30;
		property LogFileName: WideString
			dispid 31;
		property Autoclose: WordBool
			dispid 50;
		property AutocloseDelay: LongWord
			dispid 51;
		property Primary: _POISettings
			dispid 60;
		property Backup: _POISettings
			dispid 61;
		property AdminCode: WideString
			dispid 65;
		property UseDate: WordBool
			dispid 66;
		property GatewayIP: WideString
			dispid 100;
		property UserID: WideString
			dispid 101;
		property PWD: WideString
			dispid 102;
		property ICCD: WideString
			dispid 103;
		property POIPort: { NOT_OLEAUTO(TDecimal) } OleVariant
			dispid 104;
		property GatewayPort: { NOT_OLEAUTO(TDecimal) } OleVariant
			dispid 105;
		procedure GhostMethod__Settings_220_1; dispid 1610743856;
		procedure GhostMethod__Settings_224_2; dispid 1610743857;
		property ServerName: WideString
			dispid 107;
		property Picture: WideString
			dispid 200;
		property Printer: WideString
			dispid 201;
		property ReceiptFolder: WideString
			dispid 202;
		property MerchantTextToPrint: WideString
			dispid 203;
		property TraceLevel: WideString
			dispid 204;
		property SaveReceipts: WordBool
			dispid 250;
		property ReuseMerchantReferenceIDAsTransactionID: WordBool
			dispid 251;
		property IndicateBrand: WordBool
			dispid 252;
		property AllowOfflinePOI: WordBool
			dispid 253;
		property HideNexoMessagesWhenProcessing: WordBool
			dispid 254;
		property AlwaysLogToPOI: WordBool
			dispid 255;
		property UseRefundForCancel: WordBool
			dispid 256;
		property CardSchemes: _CardSchemes
			dispid 300;
		property NotificationAlwaysReturnsOK: WordBool
			dispid 301;
		property DeviceDisplayAlwaysReturnsOK: WordBool
			dispid 302;
		function RegistryEntry: WideString; dispid 500;
		function RegistryKeySettingsFileName: WideString; dispid 501;
		function DefaultSettingsFileName: WideString; dispid 502;
		function DefaultSettingsFolder: WideString; dispid 503;
		function RegistryKeyCurrenciesFileName: WideString; dispid 504;
		function DefaultCurrenciesFileName: WideString; dispid 505;
	end;

	// *********************************************************************//
	// Interface: _CheckToPrint
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {268D27E4-86C4-38F5-B088-B30ED08D1646}
	// *********************************************************************//
	_CheckToPrint = interface(IDispatch)
		['{268D27E4-86C4-38F5-B088-B30ED08D1646}']
	end;

	// *********************************************************************//
	// DispIntf:  _CheckToPrintDisp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {268D27E4-86C4-38F5-B088-B30ED08D1646}
	// *********************************************************************//
	_CheckToPrintDisp = dispinterface
		['{268D27E4-86C4-38F5-B088-B30ED08D1646}']
	end;

	// *********************************************************************//
	// Interface: _NexoOperation
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {984CF177-D8A1-3AD7-8B13-2C31985D17BF}
	// *********************************************************************//
	_NexoOperation = interface(IDispatch)
		['{984CF177-D8A1-3AD7-8B13-2C31985D17BF}']
	end;

	// *********************************************************************//
	// DispIntf:  _NexoOperationDisp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {984CF177-D8A1-3AD7-8B13-2C31985D17BF}
	// *********************************************************************//
	_NexoOperationDisp = dispinterface
		['{984CF177-D8A1-3AD7-8B13-2C31985D17BF}']
	end;

	// *********************************************************************//
	// Interface: _Receipts
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {4A65F449-A410-3E97-A09D-1FBD9CB63B83}
	// *********************************************************************//
	_Receipts = interface(IDispatch)
		['{4A65F449-A410-3E97-A09D-1FBD9CB63B83}']
	end;

	// *********************************************************************//
	// DispIntf:  _ReceiptsDisp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {4A65F449-A410-3E97-A09D-1FBD9CB63B83}
	// *********************************************************************//
	_ReceiptsDisp = dispinterface
		['{4A65F449-A410-3E97-A09D-1FBD9CB63B83}']
	end;

	// *********************************************************************//
	// Interface: _ConnectRequestData
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {7A870150-2CFE-3023-8BBD-6457CFE171C1}
	// *********************************************************************//
	_ConnectRequestData = interface(IDispatch)
		['{7A870150-2CFE-3023-8BBD-6457CFE171C1}']
	end;

	// *********************************************************************//
	// DispIntf:  _ConnectRequestDataDisp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {7A870150-2CFE-3023-8BBD-6457CFE171C1}
	// *********************************************************************//
	_ConnectRequestDataDisp = dispinterface
		['{7A870150-2CFE-3023-8BBD-6457CFE171C1}']
	end;

	// *********************************************************************//
	// Interface: _ConnectRequest
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {2455C7C4-FE7A-3508-BD99-47B9B07D94E4}
	// *********************************************************************//
	_ConnectRequest = interface(IDispatch)
		['{2455C7C4-FE7A-3508-BD99-47B9B07D94E4}']
	end;

	// *********************************************************************//
	// DispIntf:  _ConnectRequestDisp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {2455C7C4-FE7A-3508-BD99-47B9B07D94E4}
	// *********************************************************************//
	_ConnectRequestDisp = dispinterface
		['{2455C7C4-FE7A-3508-BD99-47B9B07D94E4}']
	end;

	// *********************************************************************//
	// Interface: _ConnectReplyData
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {1AF8A2E1-265F-38D9-80EA-D70E77BB29A8}
	// *********************************************************************//
	_ConnectReplyData = interface(IDispatch)
		['{1AF8A2E1-265F-38D9-80EA-D70E77BB29A8}']
	end;

	// *********************************************************************//
	// DispIntf:  _ConnectReplyDataDisp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {1AF8A2E1-265F-38D9-80EA-D70E77BB29A8}
	// *********************************************************************//
	_ConnectReplyDataDisp = dispinterface
		['{1AF8A2E1-265F-38D9-80EA-D70E77BB29A8}']
	end;

	// *********************************************************************//
	// Interface: _ConnectReply
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {1CFD6A00-DABC-31B6-BF14-3E79D05A1F9F}
	// *********************************************************************//
	_ConnectReply = interface(IDispatch)
		['{1CFD6A00-DABC-31B6-BF14-3E79D05A1F9F}']
	end;

	// *********************************************************************//
	// DispIntf:  _ConnectReplyDisp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {1CFD6A00-DABC-31B6-BF14-3E79D05A1F9F}
	// *********************************************************************//
	_ConnectReplyDisp = dispinterface
		['{1CFD6A00-DABC-31B6-BF14-3E79D05A1F9F}']
	end;

	// *********************************************************************//
	// Interface: _ConnectRequestData_2
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {80C364BE-C21B-32A2-BF29-1AA9FBE5F828}
	// *********************************************************************//
	_ConnectRequestData_2 = interface(IDispatch)
		['{80C364BE-C21B-32A2-BF29-1AA9FBE5F828}']
	end;

	// *********************************************************************//
	// DispIntf:  _ConnectRequestData_2Disp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {80C364BE-C21B-32A2-BF29-1AA9FBE5F828}
	// *********************************************************************//
	_ConnectRequestData_2Disp = dispinterface
		['{80C364BE-C21B-32A2-BF29-1AA9FBE5F828}']
	end;

	// *********************************************************************//
	// Interface: _ConnectRequest_2
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {33E64AB9-7739-3014-BB6C-75480E5ABA82}
	// *********************************************************************//
	_ConnectRequest_2 = interface(IDispatch)
		['{33E64AB9-7739-3014-BB6C-75480E5ABA82}']
	end;

	// *********************************************************************//
	// DispIntf:  _ConnectRequest_2Disp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {33E64AB9-7739-3014-BB6C-75480E5ABA82}
	// *********************************************************************//
	_ConnectRequest_2Disp = dispinterface
		['{33E64AB9-7739-3014-BB6C-75480E5ABA82}']
	end;

	// *********************************************************************//
	// Interface: _ConnectReplyData_2
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {352B83BD-4A3B-34FE-9907-C708633DA424}
	// *********************************************************************//
	_ConnectReplyData_2 = interface(IDispatch)
		['{352B83BD-4A3B-34FE-9907-C708633DA424}']
	end;

	// *********************************************************************//
	// DispIntf:  _ConnectReplyData_2Disp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {352B83BD-4A3B-34FE-9907-C708633DA424}
	// *********************************************************************//
	_ConnectReplyData_2Disp = dispinterface
		['{352B83BD-4A3B-34FE-9907-C708633DA424}']
	end;

	// *********************************************************************//
	// Interface: _ConnectReply_2
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {4DBE4A65-110A-3B8B-B422-8CE65AE8D407}
	// *********************************************************************//
	_ConnectReply_2 = interface(IDispatch)
		['{4DBE4A65-110A-3B8B-B422-8CE65AE8D407}']
	end;

	// *********************************************************************//
	// DispIntf:  _ConnectReply_2Disp
	// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
	// GUID:      {4DBE4A65-110A-3B8B-B422-8CE65AE8D407}
	// *********************************************************************//
	_ConnectReply_2Disp = dispinterface
		['{4DBE4A65-110A-3B8B-B422-8CE65AE8D407}']
	end;

	// *********************************************************************//
	// The Class CoCurrency provides a Create and CreateRemote method to
	// create instances of the default interface _Currency exposed by
	// the CoClass Currency. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoCurrency = class
		class function Create: _Currency;
		class function CreateRemote(const MachineName: string): _Currency;
	end;

	// *********************************************************************//
	// The Class CoNEXOSALE provides a Create and CreateRemote method to
	// create instances of the default interface _NEXOSALE exposed by
	// the CoClass NEXOSALE. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoNEXOSALE = class
		class function Create: _NEXOSALE;
		class function CreateRemote(const MachineName: string): _NEXOSALE;
	end;

	// *********************************************************************//
	// The Class CoPOISettings provides a Create and CreateRemote method to
	// create instances of the default interface _POISettings exposed by
	// the CoClass POISettings. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoPOISettings = class
		class function Create: _POISettings;
		class function CreateRemote(const MachineName: string): _POISettings;
	end;

	// *********************************************************************//
	// The Class CoCardSchemes provides a Create and CreateRemote method to
	// create instances of the default interface _CardSchemes exposed by
	// the CoClass CardSchemes. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoCardSchemes = class
		class function Create: _CardSchemes;
		class function CreateRemote(const MachineName: string): _CardSchemes;
	end;

	// *********************************************************************//
	// The Class CoSettings provides a Create and CreateRemote method to
	// create instances of the default interface _Settings exposed by
	// the CoClass Settings. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoSettings = class
		class function Create: _Settings;
		class function CreateRemote(const MachineName: string): _Settings;
	end;

	// *********************************************************************//
	// The Class CoFConfirm provides a Create and CreateRemote method to
	// create instances of the default interface _FConfirm exposed by
	// the CoClass FConfirm. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoFConfirm = class
		class function Create: _FConfirm;
		class function CreateRemote(const MachineName: string): _FConfirm;
	end;

	// *********************************************************************//
	// The Class CoFConfirmResult provides a Create and CreateRemote method to
	// create instances of the default interface _FConfirmResult exposed by
	// the CoClass FConfirmResult. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoFConfirmResult = class
		class function Create: _FConfirmResult;
		class function CreateRemote(const MachineName: string): _FConfirmResult;
	end;

	// *********************************************************************//
	// The Class CoFProcessing provides a Create and CreateRemote method to
	// create instances of the default interface _FProcessing exposed by
	// the CoClass FProcessing. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoFProcessing = class
		class function Create: _FProcessing;
		class function CreateRemote(const MachineName: string): _FProcessing;
	end;

	// *********************************************************************//
	// The Class CoFSelectPrinter provides a Create and CreateRemote method to
	// create instances of the default interface _FSelectPrinter exposed by
	// the CoClass FSelectPrinter. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoFSelectPrinter = class
		class function Create: _FSelectPrinter;
		class function CreateRemote(const MachineName: string): _FSelectPrinter;
	end;

	// *********************************************************************//
	// The Class CoFSettings provides a Create and CreateRemote method to
	// create instances of the default interface _FSettings exposed by
	// the CoClass FSettings. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoFSettings = class
		class function Create: _FSettings;
		class function CreateRemote(const MachineName: string): _FSettings;
	end;

	// *********************************************************************//
	// The Class CoFWait provides a Create and CreateRemote method to
	// create instances of the default interface _FWait exposed by
	// the CoClass FWait. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoFWait = class
		class function Create: _FWait;
		class function CreateRemote(const MachineName: string): _FWait;
	end;

	// *********************************************************************//
	// The Class CoCheckToPrint provides a Create and CreateRemote method to
	// create instances of the default interface _CheckToPrint exposed by
	// the CoClass CheckToPrint. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoCheckToPrint = class
		class function Create: _CheckToPrint;
		class function CreateRemote(const MachineName: string): _CheckToPrint;
	end;

	// *********************************************************************//
	// The Class CoNexoOperation provides a Create and CreateRemote method to
	// create instances of the default interface _NexoOperation exposed by
	// the CoClass NexoOperation. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoNexoOperation = class
		class function Create: _NexoOperation;
		class function CreateRemote(const MachineName: string): _NexoOperation;
	end;

	// *********************************************************************//
	// The Class CoReceipts provides a Create and CreateRemote method to
	// create instances of the default interface _Receipts exposed by
	// the CoClass Receipts. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoReceipts = class
		class function Create: _Receipts;
		class function CreateRemote(const MachineName: string): _Receipts;
	end;

	// *********************************************************************//
	// The Class CoConnectRequestData provides a Create and CreateRemote method to
	// create instances of the default interface _ConnectRequestData exposed by
	// the CoClass ConnectRequestData. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoConnectRequestData = class
		class function Create: _ConnectRequestData;
		class function CreateRemote(const MachineName: string): _ConnectRequestData;
	end;

	// *********************************************************************//
	// The Class CoConnectRequest provides a Create and CreateRemote method to
	// create instances of the default interface _ConnectRequest exposed by
	// the CoClass ConnectRequest. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoConnectRequest = class
		class function Create: _ConnectRequest;
		class function CreateRemote(const MachineName: string): _ConnectRequest;
	end;

	// *********************************************************************//
	// The Class CoConnectReplyData provides a Create and CreateRemote method to
	// create instances of the default interface _ConnectReplyData exposed by
	// the CoClass ConnectReplyData. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoConnectReplyData = class
		class function Create: _ConnectReplyData;
		class function CreateRemote(const MachineName: string): _ConnectReplyData;
	end;

	// *********************************************************************//
	// The Class CoConnectReply provides a Create and CreateRemote method to
	// create instances of the default interface _ConnectReply exposed by
	// the CoClass ConnectReply. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoConnectReply = class
		class function Create: _ConnectReply;
		class function CreateRemote(const MachineName: string): _ConnectReply;
	end;

	// *********************************************************************//
	// The Class CoConnectRequestData_2 provides a Create and CreateRemote method to
	// create instances of the default interface _ConnectRequestData_2 exposed by
	// the CoClass ConnectRequestData_2. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoConnectRequestData_2 = class
		class function Create: _ConnectRequestData_2;
		class function CreateRemote(const MachineName: string): _ConnectRequestData_2;
	end;

	// *********************************************************************//
	// The Class CoConnectRequest_2 provides a Create and CreateRemote method to
	// create instances of the default interface _ConnectRequest_2 exposed by
	// the CoClass ConnectRequest_2. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoConnectRequest_2 = class
		class function Create: _ConnectRequest_2;
		class function CreateRemote(const MachineName: string): _ConnectRequest_2;
	end;

	// *********************************************************************//
	// The Class CoConnectReplyData_2 provides a Create and CreateRemote method to
	// create instances of the default interface _ConnectReplyData_2 exposed by
	// the CoClass ConnectReplyData_2. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoConnectReplyData_2 = class
		class function Create: _ConnectReplyData_2;
		class function CreateRemote(const MachineName: string): _ConnectReplyData_2;
	end;

	// *********************************************************************//
	// The Class CoConnectReply_2 provides a Create and CreateRemote method to
	// create instances of the default interface _ConnectReply_2 exposed by
	// the CoClass ConnectReply_2. The functions are intended to be used by
	// clients wishing to automate the CoClass objects exposed by the
	// server of this typelibrary.
	// *********************************************************************//
	CoConnectReply_2 = class
		class function Create: _ConnectReply_2;
		class function CreateRemote(const MachineName: string): _ConnectReply_2;
	end;

implementation

uses
	System.Win.ComObj;

class function CoCurrency.Create: _Currency;
begin
	Result := CreateComObject(CLASS_Currency) as _Currency;
end;

class function CoCurrency.CreateRemote(const MachineName: string): _Currency;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_Currency) as _Currency;
end;

class function CoNEXOSALE.Create: _NEXOSALE;
begin
	Result := CreateComObject(CLASS_NEXOSALE) as _NEXOSALE;
end;

class function CoNEXOSALE.CreateRemote(const MachineName: string): _NEXOSALE;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_NEXOSALE) as _NEXOSALE;
end;

class function CoPOISettings.Create: _POISettings;
begin
	Result := CreateComObject(CLASS_POISettings) as _POISettings;
end;

class function CoPOISettings.CreateRemote(const MachineName: string): _POISettings;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_POISettings) as _POISettings;
end;

class function CoCardSchemes.Create: _CardSchemes;
begin
	Result := CreateComObject(CLASS_CardSchemes) as _CardSchemes;
end;

class function CoCardSchemes.CreateRemote(const MachineName: string): _CardSchemes;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CardSchemes) as _CardSchemes;
end;

class function CoSettings.Create: _Settings;
begin
	Result := CreateComObject(CLASS_Settings) as _Settings;
end;

class function CoSettings.CreateRemote(const MachineName: string): _Settings;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_Settings) as _Settings;
end;

class function CoFConfirm.Create: _FConfirm;
begin
	Result := CreateComObject(CLASS_FConfirm) as _FConfirm;
end;

class function CoFConfirm.CreateRemote(const MachineName: string): _FConfirm;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_FConfirm) as _FConfirm;
end;

class function CoFConfirmResult.Create: _FConfirmResult;
begin
	Result := CreateComObject(CLASS_FConfirmResult) as _FConfirmResult;
end;

class function CoFConfirmResult.CreateRemote(const MachineName: string): _FConfirmResult;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_FConfirmResult) as _FConfirmResult;
end;

class function CoFProcessing.Create: _FProcessing;
begin
	Result := CreateComObject(CLASS_FProcessing) as _FProcessing;
end;

class function CoFProcessing.CreateRemote(const MachineName: string): _FProcessing;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_FProcessing) as _FProcessing;
end;

class function CoFSelectPrinter.Create: _FSelectPrinter;
begin
	Result := CreateComObject(CLASS_FSelectPrinter) as _FSelectPrinter;
end;

class function CoFSelectPrinter.CreateRemote(const MachineName: string): _FSelectPrinter;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_FSelectPrinter) as _FSelectPrinter;
end;

class function CoFSettings.Create: _FSettings;
begin
	Result := CreateComObject(CLASS_FSettings) as _FSettings;
end;

class function CoFSettings.CreateRemote(const MachineName: string): _FSettings;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_FSettings) as _FSettings;
end;

class function CoFWait.Create: _FWait;
begin
	Result := CreateComObject(CLASS_FWait) as _FWait;
end;

class function CoFWait.CreateRemote(const MachineName: string): _FWait;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_FWait) as _FWait;
end;

class function CoCheckToPrint.Create: _CheckToPrint;
begin
	Result := CreateComObject(CLASS_CheckToPrint) as _CheckToPrint;
end;

class function CoCheckToPrint.CreateRemote(const MachineName: string): _CheckToPrint;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_CheckToPrint) as _CheckToPrint;
end;

class function CoNexoOperation.Create: _NexoOperation;
begin
	Result := CreateComObject(CLASS_NexoOperation) as _NexoOperation;
end;

class function CoNexoOperation.CreateRemote(const MachineName: string): _NexoOperation;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_NexoOperation) as _NexoOperation;
end;

class function CoReceipts.Create: _Receipts;
begin
	Result := CreateComObject(CLASS_Receipts) as _Receipts;
end;

class function CoReceipts.CreateRemote(const MachineName: string): _Receipts;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_Receipts) as _Receipts;
end;

class function CoConnectRequestData.Create: _ConnectRequestData;
begin
	Result := CreateComObject(CLASS_ConnectRequestData) as _ConnectRequestData;
end;

class function CoConnectRequestData.CreateRemote(const MachineName: string): _ConnectRequestData;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ConnectRequestData) as _ConnectRequestData;
end;

class function CoConnectRequest.Create: _ConnectRequest;
begin
	Result := CreateComObject(CLASS_ConnectRequest) as _ConnectRequest;
end;

class function CoConnectRequest.CreateRemote(const MachineName: string): _ConnectRequest;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ConnectRequest) as _ConnectRequest;
end;

class function CoConnectReplyData.Create: _ConnectReplyData;
begin
	Result := CreateComObject(CLASS_ConnectReplyData) as _ConnectReplyData;
end;

class function CoConnectReplyData.CreateRemote(const MachineName: string): _ConnectReplyData;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ConnectReplyData) as _ConnectReplyData;
end;

class function CoConnectReply.Create: _ConnectReply;
begin
	Result := CreateComObject(CLASS_ConnectReply) as _ConnectReply;
end;

class function CoConnectReply.CreateRemote(const MachineName: string): _ConnectReply;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ConnectReply) as _ConnectReply;
end;

class function CoConnectRequestData_2.Create: _ConnectRequestData_2;
begin
	Result := CreateComObject(CLASS_ConnectRequestData_2) as _ConnectRequestData_2;
end;

class function CoConnectRequestData_2.CreateRemote(const MachineName: string): _ConnectRequestData_2;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ConnectRequestData_2) as _ConnectRequestData_2;
end;

class function CoConnectRequest_2.Create: _ConnectRequest_2;
begin
	Result := CreateComObject(CLASS_ConnectRequest_2) as _ConnectRequest_2;
end;

class function CoConnectRequest_2.CreateRemote(const MachineName: string): _ConnectRequest_2;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ConnectRequest_2) as _ConnectRequest_2;
end;

class function CoConnectReplyData_2.Create: _ConnectReplyData_2;
begin
	Result := CreateComObject(CLASS_ConnectReplyData_2) as _ConnectReplyData_2;
end;

class function CoConnectReplyData_2.CreateRemote(const MachineName: string): _ConnectReplyData_2;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ConnectReplyData_2) as _ConnectReplyData_2;
end;

class function CoConnectReply_2.Create: _ConnectReply_2;
begin
	Result := CreateComObject(CLASS_ConnectReply_2) as _ConnectReply_2;
end;

class function CoConnectReply_2.CreateRemote(const MachineName: string): _ConnectReply_2;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_ConnectReply_2) as _ConnectReply_2;
end;

end.
