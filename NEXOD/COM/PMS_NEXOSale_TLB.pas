unit PMS_NEXOSALE_TLB;

// ************************************************************************ //
// AVERTISSEMENT
// -------
// Les types déclarés dans ce fichier ont été générés à partir de données lues
// depuis la bibliothèque de types. Si cette dernière (via une autre bibliothèque de types
// s'y référant) est explicitement ou indirectement ré-importée, ou la commande "Actualiser"
// de l'éditeur de bibliothèque de types est activée lors de la modification de la bibliothèque
// de types, le contenu de ce fichier sera régénéré et toutes les modifications
// manuellement apportées seront perdues.
// ************************************************************************ //

// $Rev: 52393 $
// Fichier généré le 21/10/2020 13:56:55 depuis la bibliothèque de types ci-dessous.

// ************************************************************************  //
// Biblio. types : C:\Users\philippe\Documents\Dev\NEXOSale\Debug\PMS.NEXOSALE.tlb (1)
// LIBID : {B82C79B0-4829-4E9B-BBD8-993B1D2240DC}
// LCID : 0
// Fichier d'aide :
// Chaîne d'aide : NEXO Retailer 3.0 client interface [COM compatible]
// DepndLst :
// (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
// (3) v2.4 System, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.tlb)
// (4) v2.4 System_Windows_Forms, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.Windows.Forms.tlb)
// (5) v2.0 PMS_NEXO, (C:\Users\philippe\Documents\Dev\NEXO\Release\PMS.NEXO.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //

{$TYPEDADDRESS OFF} // L'unité doit être compilée sans pointeur à type contrôlé.

{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses
	Winapi.Windows, mscorlib_TLB, PMS_NEXO_TLB, System.Classes, System.Variants, System.Win.StdVCL, System_TLB, System_Windows_Forms_TLB, Vcl.Graphics,
	Vcl.OleServer, Winapi.ActiveX;

// *********************************************************************//
// GUIDS déclarés dans la bibliothèque de types. Préfixes utilisés:
// Bibliothèques de types : LIBID_xxxx
// CoClasses              : CLASS_xxxx
// Interfaces DISP        : DIID_xxxx
// Interfaces Non-DISP    : IID_xxxx
// *********************************************************************//
const
	// Versions mineure et majeure de la bibliothèque de types
	PMS_NEXOSALEMajorVersion = 1;
	PMS_NEXOSALEMinorVersion = 0;

	LIBID_PMS_NEXOSALE: TGUID = '{B82C79B0-4829-4E9B-BBD8-993B1D2240DC}';

	IID__Currency: TGUID       = '{9457A49D-F7C7-4F70-A712-9F2652E09C3A}';
	IID__FProcessing: TGUID    = '{A90D2E54-B13B-3238-B283-F3BE59B41045}';
	IID__FSettings: TGUID      = '{BB400D29-BA2E-3F5E-A67B-686A37C25322}';
	IID__NEXOSALE: TGUID       = '{24B500EF-FCF4-4438-9541-2EEB99BEF014}';
	IID__POISettings: TGUID    = '{78192CA7-AD36-408B-B822-A2FDAA6FA65C}';
	IID__Settings: TGUID       = '{56D0D286-89A1-403D-A3CD-F73F2173D7AB}';
	CLASS_Currency: TGUID      = '{A0F233DB-6682-4DC2-9C06-107077CC6717}';
	IID__NexoOperation: TGUID  = '{984CF177-D8A1-3AD7-8B13-2C31985D17BF}';
	CLASS_NEXOSALE: TGUID      = '{C86AC303-6A19-4FE6-91CC-99D9BE369EE5}';
	CLASS_POISettings: TGUID   = '{0ACB497E-FD2B-48D5-A602-EDEC63137A2C}';
	CLASS_Settings: TGUID      = '{CA6F62F3-0D1D-49C0-A8C4-BB46E5390931}';
	CLASS_FProcessing: TGUID   = '{C82C9B0C-47EC-31CE-B560-7D9418780D00}';
	CLASS_FSettings: TGUID     = '{7EC7A609-D3C4-3B3B-AF63-E64B0E72EC8A}';
	CLASS_NexoOperation: TGUID = '{06F0EF87-25C3-35DC-AB80-3C043C19020B}';

	// *********************************************************************//
	// Déclaration d'énumérations définies dans la bibliothèque de types
	// *********************************************************************//
	// Constantes pour enum Action
type
	Action = TOleEnum;

const
	Action__begin         = $FFFFFFFF;
	Action__none          = $00000000;
	Action_payment        = $00000001;
	Action_refund         = $00000002;
	Action_login          = $00000003;
	Action_logout         = $00000004;
	Action_reversal       = $00000005;
	Action_reconciliation = $00000006;
	Action_abort          = $00000007;
	Action_readcheck      = $00000008;
	Action_printcheck     = $00000009;
	Action__end           = $0000000A;

	// Constantes pour enum ActionResult
type
	ActionResult = TOleEnum;

const
	ActionResult__begin    = $FFFFFFFF;
	ActionResult_unknown   = $00000000;
	ActionResult_success   = $00000001;
	ActionResult_decline   = $00000002;
	ActionResult_cancel    = $00000003;
	ActionResult_timeout   = $00000004;
	ActionResult_exception = $00000005;
	ActionResult__end      = $00000006;

type

	// *********************************************************************//
	// Déclaration Forward des types définis dans la bibliothèque de types
	// *********************************************************************//
	_Currency          = interface;
	_CurrencyDisp      = dispinterface;
	_FProcessing       = interface;
	_FProcessingDisp   = dispinterface;
	_FSettings         = interface;
	_FSettingsDisp     = dispinterface;
	_NEXOSALE          = interface;
	_NEXOSALEDisp      = dispinterface;
	_POISettings       = interface;
	_POISettingsDisp   = dispinterface;
	_Settings          = interface;
	_SettingsDisp      = dispinterface;
	_NexoOperation     = interface;
	_NexoOperationDisp = dispinterface;

	// *********************************************************************//
	// Déclaration de CoClasses définies dans la bibliothèque de types
	// (REMARQUE: On affecte chaque CoClasse à son Interface par défaut)
	// *********************************************************************//
	Currency      = _Currency;
	NEXOSALE      = _NEXOSALE;
	POISettings   = _POISettings;
	Settings      = _Settings;
	FProcessing   = _FProcessing;
	FSettings     = _FSettings;
	NexoOperation = _NexoOperation;

	// *********************************************************************//
	// Interface :   _Currency
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {9457A49D-F7C7-4F70-A712-9F2652E09C3A}
	// *********************************************************************//
	_Currency = interface(IDispatch)
		['{9457A49D-F7C7-4F70-A712-9F2652E09C3A}']
		function Get_Name: WideString; safecall;
		procedure Set_Name(const pRetVal: WideString); safecall;
		function Get_Decimals: LongWord; safecall;
		procedure Set_Decimals(pRetVal: LongWord); safecall;
		function Get_ToString: WideString; safecall;
		property name: WideString read Get_Name write Set_Name;
		property Decimals: LongWord read Get_Decimals write Set_Decimals;
		property ToString: WideString read Get_ToString;
	end;

	// *********************************************************************//
	// DispIntf :    _CurrencyDisp
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {9457A49D-F7C7-4F70-A712-9F2652E09C3A}
	// *********************************************************************//
	_CurrencyDisp = dispinterface
		['{9457A49D-F7C7-4F70-A712-9F2652E09C3A}']
		property name: WideString dispid 1;
		property Decimals: LongWord dispid 2;
		property ToString: WideString readonly dispid 100;
	end;

	// *********************************************************************//
	// Interface :   _FProcessing
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {A90D2E54-B13B-3238-B283-F3BE59B41045}
	// *********************************************************************//
	_FProcessing = interface(IDispatch)
		['{A90D2E54-B13B-3238-B283-F3BE59B41045}']
	end;

	// *********************************************************************//
	// DispIntf :    _FProcessingDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {A90D2E54-B13B-3238-B283-F3BE59B41045}
	// *********************************************************************//
	_FProcessingDisp = dispinterface
		['{A90D2E54-B13B-3238-B283-F3BE59B41045}']
	end;

	// *********************************************************************//
	// Interface :   _FSettings
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {BB400D29-BA2E-3F5E-A67B-686A37C25322}
	// *********************************************************************//
	_FSettings = interface(IDispatch)
		['{BB400D29-BA2E-3F5E-A67B-686A37C25322}']
	end;

	// *********************************************************************//
	// DispIntf :    _FSettingsDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {BB400D29-BA2E-3F5E-A67B-686A37C25322}
	// *********************************************************************//
	_FSettingsDisp = dispinterface
		['{BB400D29-BA2E-3F5E-A67B-686A37C25322}']
	end;

	// *********************************************************************//
	// Interface :   _NEXOSALE
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {24B500EF-FCF4-4438-9541-2EEB99BEF014}
	// *********************************************************************//
	_NEXOSALE = interface(IDispatch)
		['{24B500EF-FCF4-4438-9541-2EEB99BEF014}']
		function Get_IsLogged: WordBool; safecall;
		function Get_Amount: LongWord; safecall;
		procedure Set_Amount(pRetVal: LongWord); safecall;
		function Get_TransactionID: WideString; safecall;
		procedure Set_TransactionID(const pRetVal: WideString); safecall;
		function Get_TransactionTimestamp: WideString; safecall;
		procedure Set_TransactionTimestamp(const pRetVal: WideString); safecall;
		function Get_MainWindow: Integer; safecall;
		procedure Set_MainWindow(pRetVal: Integer); safecall;
		function Get_Settings: _Settings; safecall;
		procedure _Set_Settings(const pRetVal: _Settings); safecall;
		function Get_SaleID: WideString; safecall;
		procedure Set_SaleID(const pRetVal: WideString); safecall;
		function Get_POIID: WideString; safecall;
		procedure Set_POIID(const pRetVal: WideString); safecall;
		function Get_Login: INexoLogin; safecall;
		function Get_Payment: INexoFinancial; safecall;
		function Get_Refund: INexoFinancial; safecall;
		function Get_Logout: INexoLogout; safecall;
		function Get_NexoClient: INexoRetailerClient; safecall;
		function Get_Connected: WordBool; safecall;
		function Get_Success: WordBool; safecall;
		function Get_POITransactionID: WideString; safecall;
		function Get_POITransactionTimestamp: WideString; safecall;
		function Get_OriginalPOITransactionID: WideString; safecall;
		function Get_OriginalPOITransactionTimestamp: WideString; safecall;
		function Get_UseBackup: WordBool; safecall;
		procedure Set_UseBackup(pRetVal: WordBool); safecall;
		function Get_LogoutOnTerminate: WordBool; safecall;
		procedure Set_LogoutOnTerminate(pRetVal: WordBool); safecall;
		procedure DisplaySettings(useAdvancedSettings: WordBool); safecall;
		function DisplayProcessing(theAction: Action): ActionResult; safecall;
		function Connect: WordBool; safecall;
		procedure Disconnect; safecall;
		function SettingsFileName: WideString; safecall;
		property IsLogged: WordBool read Get_IsLogged;
		property Amount: LongWord read Get_Amount write Set_Amount;
		property TransactionID: WideString read Get_TransactionID write Set_TransactionID;
		property TransactionTimestamp: WideString read Get_TransactionTimestamp write Set_TransactionTimestamp;
		property MainWindow: Integer read Get_MainWindow write Set_MainWindow;
		property Settings: _Settings read Get_Settings write _Set_Settings;
		property SaleID: WideString read Get_SaleID write Set_SaleID;
		property POIID: WideString read Get_POIID write Set_POIID;
		property Login: INexoLogin read Get_Login;
		property Payment: INexoFinancial read Get_Payment;
		property Refund: INexoFinancial read Get_Refund;
		property Logout: INexoLogout read Get_Logout;
		property NexoClient: INexoRetailerClient read Get_NexoClient;
		property Connected: WordBool read Get_Connected;
		property Success: WordBool read Get_Success;
		property POITransactionID: WideString read Get_POITransactionID;
		property POITransactionTimestamp: WideString read Get_POITransactionTimestamp;
		property OriginalPOITransactionID: WideString read Get_OriginalPOITransactionID;
		property OriginalPOITransactionTimestamp: WideString read Get_OriginalPOITransactionTimestamp;
		property UseBackup: WordBool read Get_UseBackup write Set_UseBackup;
		property LogoutOnTerminate: WordBool read Get_LogoutOnTerminate write Set_LogoutOnTerminate;
	end;

	// *********************************************************************//
	// DispIntf :    _NEXOSALEDisp
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {24B500EF-FCF4-4438-9541-2EEB99BEF014}
	// *********************************************************************//
	_NEXOSALEDisp = dispinterface
		['{24B500EF-FCF4-4438-9541-2EEB99BEF014}']
		property IsLogged: WordBool readonly dispid 1;
		property Amount: LongWord dispid 2;
		property TransactionID: WideString dispid 3;
		property TransactionTimestamp: WideString dispid 4;
		property MainWindow: Integer dispid 6;
		property Settings: _Settings dispid 7;
		property SaleID: WideString dispid 8;
		property POIID: WideString dispid 9;
		property Login: INexoLogin readonly dispid 10;
		property Payment: INexoFinancial readonly dispid 11;
		property Refund: INexoFinancial readonly dispid 12;
		property Logout: INexoLogout readonly dispid 13;
		property NexoClient: INexoRetailerClient readonly dispid 14;
		property Connected: WordBool readonly dispid 15;
		property Success: WordBool readonly dispid 16;
		property POITransactionID: WideString readonly dispid 17;
		property POITransactionTimestamp: WideString readonly dispid 18;
		property OriginalPOITransactionID: WideString readonly dispid 19;
		property OriginalPOITransactionTimestamp: WideString readonly dispid 20;
		property UseBackup: WordBool dispid 21;
		property LogoutOnTerminate: WordBool dispid 22;
		procedure DisplaySettings(useAdvancedSettings: WordBool); dispid 100;
		function DisplayProcessing(theAction: Action): ActionResult; dispid 101;
		function Connect: WordBool; dispid 200;
		procedure Disconnect; dispid 201;
		function SettingsFileName: WideString; dispid 500;
	end;

	// *********************************************************************//
	// Interface :   _POISettings
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {78192CA7-AD36-408B-B822-A2FDAA6FA65C}
	// *********************************************************************//
	_POISettings = interface(IDispatch)
		['{78192CA7-AD36-408B-B822-A2FDAA6FA65C}']
		function Get_ServerIP: WideString; safecall;
		procedure Set_ServerIP(const pRetVal: WideString); safecall;
		function Get_ServerPort: TDecimal; safecall;
		procedure Set_ServerPort(pRetVal: TDecimal); safecall;
		function Get_PrintReceipt: WordBool; safecall;
		procedure Set_PrintReceipt(pRetVal: WordBool); safecall;
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
		function Get_SupportsReversal: WordBool; safecall;
		procedure Set_SupportsReversal(pRetVal: WordBool); safecall;
		function Get_GeneralTimer: Integer; safecall;
		procedure Set_GeneralTimer(pRetVal: Integer); safecall;
		function Get_PaymentTimer: Integer; safecall;
		procedure Set_PaymentTimer(pRetVal: Integer); safecall;
		function Get_CheckTimer: Integer; safecall;
		procedure Set_CheckTimer(pRetVal: Integer); safecall;
		property ServerIP: WideString read Get_ServerIP write Set_ServerIP;
		property ServerPort: TDecimal read Get_ServerPort write Set_ServerPort;
		property PrintReceipt: WordBool read Get_PrintReceipt write Set_PrintReceipt;
		property Synchronous: WordBool read Get_Synchronous write Set_Synchronous;
		property SupportsCancel: WordBool read Get_SupportsCancel write Set_SupportsCancel;
		property SupportsAbort: WordBool read Get_SupportsAbort write Set_SupportsAbort;
		property SupportsRefund: WordBool read Get_SupportsRefund write Set_SupportsRefund;
		property SupportsReconciliation: WordBool read Get_SupportsReconciliation write Set_SupportsReconciliation;
		property SupportsCheck: WordBool read Get_SupportsCheck write Set_SupportsCheck;
		property SupportsReversal: WordBool read Get_SupportsReversal write Set_SupportsReversal;
		property GeneralTimer: Integer read Get_GeneralTimer write Set_GeneralTimer;
		property PaymentTimer: Integer read Get_PaymentTimer write Set_PaymentTimer;
		property CheckTimer: Integer read Get_CheckTimer write Set_CheckTimer;
	end;

	// *********************************************************************//
	// DispIntf :    _POISettingsDisp
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {78192CA7-AD36-408B-B822-A2FDAA6FA65C}
	// *********************************************************************//
	_POISettingsDisp = dispinterface
		['{78192CA7-AD36-408B-B822-A2FDAA6FA65C}']
		property ServerIP: WideString dispid 1;
		property ServerPort: { NOT_OLEAUTO(TDecimal) }OleVariant dispid 2;
		property PrintReceipt: WordBool dispid 10;
		property Synchronous: WordBool dispid 20;
		property SupportsCancel: WordBool dispid 30;
		property SupportsAbort: WordBool dispid 31;
		property SupportsRefund: WordBool dispid 32;
		property SupportsReconciliation: WordBool dispid 33;
		property SupportsCheck: WordBool dispid 34;
		property SupportsReversal: WordBool dispid 35;
		property GeneralTimer: Integer dispid 50;
		property PaymentTimer: Integer dispid 51;
		property CheckTimer: Integer dispid 52;
	end;

	// *********************************************************************//
	// Interface :   _Settings
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {56D0D286-89A1-403D-A3CD-F73F2173D7AB}
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
		function Get_SettingsFileName: WideString; safecall;
		procedure Set_SettingsFileName(const pRetVal: WideString); safecall;
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
		function RegistryEntry: WideString; safecall;
		function RegistryKeySettingsFileName: WideString; safecall;
		function DefaultSettingsFileName: WideString; safecall;
		function DefaultSettingsFolder: WideString; safecall;
		property SaleID: WideString read Get_SaleID write Set_SaleID;
		property SaleIDUseIP: WordBool read Get_SaleIDUseIP write Set_SaleIDUseIP;
		property POIID: WideString read Get_POIID write Set_POIID;
		property POIIDUseIP: WordBool read Get_POIIDUseIP write Set_POIIDUseIP;
		property ApplicationName: WideString read Get_ApplicationName write Set_ApplicationName;
		property ManufacturerName: WideString read Get_ManufacturerName write Set_ManufacturerName;
		property SoftwareVersion: WideString read Get_SoftwareVersion write Set_SoftwareVersion;
		property CertificationCode: WideString read Get_CertificationCode write Set_CertificationCode;
		property Currency: WideString read Get_Currency write Set_Currency;
		property Decimals: LongWord read Get_Decimals write Set_Decimals;
		property SettingsFileName: WideString read Get_SettingsFileName write Set_SettingsFileName;
		property LogFileName: WideString read Get_LogFileName write Set_LogFileName;
		property Autoclose: WordBool read Get_Autoclose write Set_Autoclose;
		property AutocloseDelay: LongWord read Get_AutocloseDelay write Set_AutocloseDelay;
		property Primary: _POISettings read Get_Primary write _Set_Primary;
		property Backup: _POISettings read Get_Backup write _Set_Backup;
	end;

	// *********************************************************************//
	// DispIntf :    _SettingsDisp
	// Indicateurs : (4416) Dual OleAutomation Dispatchable
	// GUID :        {56D0D286-89A1-403D-A3CD-F73F2173D7AB}
	// *********************************************************************//
	_SettingsDisp = dispinterface
		['{56D0D286-89A1-403D-A3CD-F73F2173D7AB}']
		property SaleID: WideString dispid 1;
		property SaleIDUseIP: WordBool dispid 2;
		property POIID: WideString dispid 3;
		property POIIDUseIP: WordBool dispid 4;
		property ApplicationName: WideString dispid 10;
		property ManufacturerName: WideString dispid 11;
		property SoftwareVersion: WideString dispid 12;
		property CertificationCode: WideString dispid 13;
		property Currency: WideString dispid 20;
		property Decimals: LongWord dispid 21;
		property SettingsFileName: WideString dispid 30;
		property LogFileName: WideString dispid 31;
		property Autoclose: WordBool dispid 50;
		property AutocloseDelay: LongWord dispid 51;
		property Primary: _POISettings dispid 1610743836;
		property Backup: _POISettings dispid 1610743838;
		function RegistryEntry: WideString; dispid 500;
		function RegistryKeySettingsFileName: WideString; dispid 501;
		function DefaultSettingsFileName: WideString; dispid 502;
		function DefaultSettingsFolder: WideString; dispid 503;
	end;

	// *********************************************************************//
	// Interface :   _NexoOperation
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {984CF177-D8A1-3AD7-8B13-2C31985D17BF}
	// *********************************************************************//
	_NexoOperation = interface(IDispatch)
		['{984CF177-D8A1-3AD7-8B13-2C31985D17BF}']
	end;

	// *********************************************************************//
	// DispIntf :    _NexoOperationDisp
	// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
	// GUID :        {984CF177-D8A1-3AD7-8B13-2C31985D17BF}
	// *********************************************************************//
	_NexoOperationDisp = dispinterface
		['{984CF177-D8A1-3AD7-8B13-2C31985D17BF}']
	end;

	// *********************************************************************//
	// La classe CoCurrency fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _Currency exposée
	// par la CoClasse Currency. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoCurrency = class
		class function Create: _Currency;
		class function CreateRemote(const MachineName: string): _Currency;
	end;

	// *********************************************************************//
	// La classe CoNEXOSALE fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _NEXOSALE exposée
	// par la CoClasse NEXOSALE. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoNEXOSALE = class
		class function Create: _NEXOSALE;
		class function CreateRemote(const MachineName: string): _NEXOSALE;
	end;

	// *********************************************************************//
	// La classe CoPOISettings fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _POISettings exposée
	// par la CoClasse POISettings. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoPOISettings = class
		class function Create: _POISettings;
		class function CreateRemote(const MachineName: string): _POISettings;
	end;

	// *********************************************************************//
	// La classe CoSettings fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _Settings exposée
	// par la CoClasse Settings. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoSettings = class
		class function Create: _Settings;
		class function CreateRemote(const MachineName: string): _Settings;
	end;

	// *********************************************************************//
	// La classe CoFProcessing fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _FProcessing exposée
	// par la CoClasse FProcessing. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoFProcessing = class
		class function Create: _FProcessing;
		class function CreateRemote(const MachineName: string): _FProcessing;
	end;

	// *********************************************************************//
	// La classe CoFSettings fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _FSettings exposée
	// par la CoClasse FSettings. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoFSettings = class
		class function Create: _FSettings;
		class function CreateRemote(const MachineName: string): _FSettings;
	end;

	// *********************************************************************//
	// La classe CoNexoOperation fournit une méthode Create et CreateRemote pour
	// créer des instances de l'interface par défaut _NexoOperation exposée
	// par la CoClasse NexoOperation. Les fonctions sont destinées à être utilisées par
	// les clients désirant automatiser les objets CoClasse exposés par
	// le serveur de cette bibliothèque de types.
	// *********************************************************************//
	CoNexoOperation = class
		class function Create: _NexoOperation;
		class function CreateRemote(const MachineName: string): _NexoOperation;
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

class function CoSettings.Create: _Settings;
begin
	Result := CreateComObject(CLASS_Settings) as _Settings;
end;

class function CoSettings.CreateRemote(const MachineName: string): _Settings;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_Settings) as _Settings;
end;

class function CoFProcessing.Create: _FProcessing;
begin
	Result := CreateComObject(CLASS_FProcessing) as _FProcessing;
end;

class function CoFProcessing.CreateRemote(const MachineName: string): _FProcessing;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_FProcessing) as _FProcessing;
end;

class function CoFSettings.Create: _FSettings;
begin
	Result := CreateComObject(CLASS_FSettings) as _FSettings;
end;

class function CoFSettings.CreateRemote(const MachineName: string): _FSettings;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_FSettings) as _FSettings;
end;

class function CoNexoOperation.Create: _NexoOperation;
begin
	Result := CreateComObject(CLASS_NexoOperation) as _NexoOperation;
end;

class function CoNexoOperation.CreateRemote(const MachineName: string): _NexoOperation;
begin
	Result := CreateRemoteComObject(MachineName, CLASS_NexoOperation) as _NexoOperation;
end;

end.
