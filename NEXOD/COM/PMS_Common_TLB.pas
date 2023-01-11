unit PMS_COMMON_TLB;

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

// $Rev: 98336 $
// Fichier généré le 29/11/2022 17:31:23 depuis la bibliothèque de types ci-dessous.

// ************************************************************************  //
// Biblio. types : C:\Users\philippe\Documents\Dev\NEXOSale\bin\PMS.COMMON.tlb (1)
// LIBID : {FEB22871-13FF-3553-B93B-7A34D9EEA114}
// LCID : 0
// Fichier d'aide : 
// Chaîne d'aide : 
// DepndLst : 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
// Bibliothèque de types parent :
//   (0) v1.6 PMS_NEXOSALE30, (C:\Users\philippe\Documents\Dev\NEXOSale\bin\PMS.NEXOSALE30.tlb)
// SYS_KIND: SYS_WIN64
// ************************************************************************ //
{$TYPEDADDRESS OFF} // L'unité doit être compilée sans pointeur à type contrôlé.  
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS déclarés dans la bibliothèque de types. Préfixes utilisés:        
//   Bibliothèques de types : LIBID_xxxx                                      
//   CoClasses              : CLASS_xxxx                                      
//   Interfaces DISP        : DIID_xxxx                                       
//   Interfaces Non-DISP    : IID_xxxx                                        
// *********************************************************************//
const
  // Versions mineure et majeure de la bibliothèque de types
  PMS_COMMONMajorVersion = 6;
  PMS_COMMONMinorVersion = 3;

  LIBID_PMS_COMMON: TGUID = '{FEB22871-13FF-3553-B93B-7A34D9EEA114}';

  IID__EDisconnected: TGUID = '{CA0B69CD-764A-304C-B429-626DB65562CD}';
  IID__EInvalidFormat: TGUID = '{C55F93A5-C250-3CE4-8CEC-040BA84D26B9}';
  IID__EOutOfRange: TGUID = '{C793C680-C944-3870-8434-392142B11804}';
  IID__CJsonTypeExtensions: TGUID = '{463FE163-00A7-36CF-9AFD-52C9AFE957F2}';
  IID__CMiscExtensions: TGUID = '{5FADEBB6-E657-349B-BACF-C130E4657E4D}';
  IID__ENotImplemented: TGUID = '{E7726354-3384-388F-8C31-F104B248E3A7}';
  IID_IStreamClientIO: TGUID = '{8032AC79-8819-4FD3-A4E2-A97D24D318FC}';
  CLASS_CStreamClientIO: TGUID = '{26BB1F7D-211E-4CCA-A8B1-A99A091C3176}';
  IID_IStreamServerIO: TGUID = '{DBB95FAB-171A-4DFA-BF32-6E0AC64DC506}';
  CLASS_CStreamServerIO: TGUID = '{9D87E461-0320-41E7-B88A-6F9E7D5A95A0}';
  IID__CStreamParameters: TGUID = '{918AC90A-E98B-3FB8-B977-86677DF8B582}';
  IID_IStreamServerStatistics: TGUID = '{7711DAC5-9223-4760-A93C-D2C993359A61}';
  CLASS_CStreamServerStatistics: TGUID = '{648A391F-5B00-4E95-90FD-3F5E6E9FEFD4}';
  IID_IStreamServerStartSettings: TGUID = '{8E3BBBB0-F498-47BF-AB18-5C84B80EE4B4}';
  CLASS_CStreamServerStartSettings: TGUID = '{7D25C068-E0B0-4C2E-ADC1-DE726C6E7EE5}';
  IID_IStreamServer: TGUID = '{7E3C2011-C388-4813-B9C5-B24D6A14892F}';
  IID_IStreamClientSettings: TGUID = '{BE7495F7-DA7A-4584-AEB9-789AF316C971}';
  CLASS_CStreamClientSettings: TGUID = '{990A2D0C-1A1C-4E34-9C9D-75905AC95915}';
  IID_IStreamServerSettings: TGUID = '{F4BC72B2-4375-4723-B59D-809182C8CFDE}';
  CLASS_CStreamServerSettings: TGUID = '{EF1D0636-72B9-4F21-98A2-6F0EE3B048B5}';
  IID_IThread: TGUID = '{420E0E6B-C6D4-499A-87A7-992FECBFEFC3}';
  CLASS_CThread: TGUID = '{87BB223F-6A59-4592-8A0F-057625532B8C}';
  IID_IThreadEvents: TGUID = '{3FB79C95-70A3-41DA-AEA7-02DFBFD23BB7}';
  CLASS_CThreadEvents: TGUID = '{47F2047F-D71B-4B28-BF56-3B586BF89D68}';
  IID_IThreadData: TGUID = '{CD4AB05D-ED37-493A-B658-C4D5D86B6864}';
  CLASS_CThreadData: TGUID = '{A6DA1EAA-A706-4D89-A790-B34710EB2818}';
  IID__SendAsyncType: TGUID = '{DCFE0E70-4BCF-3612-B3E9-C9B7EAF687E9}';
  IID__ServerOnStartDelegate: TGUID = '{A08079B2-47AC-36E9-8A8E-7273B55BD5D2}';
  IID__ServerOnConnectDelegate: TGUID = '{472D1DE4-CCB1-3FC5-BCE0-F6003FF187F8}';
  IID__ServerOnMessageDelegate: TGUID = '{BFA46CC8-A3DA-38CC-9BD9-7FCB40394348}';
  IID__ServerOnDisconnectDelegate: TGUID = '{4B81353D-4733-3D6B-9C90-835D1DFB0B66}';
  IID__ServerOnStopDelegate: TGUID = '{B6BAA48E-2E1B-38AB-AA93-CCD29074370E}';
  IID__ClientOnReceivedMessageDelegate: TGUID = '{684612E3-7F2F-34AA-AD46-78FBB4E99A84}';
  IID__ClientOnSendMessageDelegate: TGUID = '{37485B63-0D28-3643-B8B0-3E023FD9D4F9}';
  IID__ClientOnReplyDelegate: TGUID = '{630876F9-312A-3345-817E-E41461F337A8}';
  IID__ClientServerOnMessageToLog: TGUID = '{DE18EFE9-E9ED-31D4-8CD4-D5F8ECD14058}';
  IID__ThreadFunction: TGUID = '{28D4F472-617D-3558-8BD8-716B5AF01E18}';
  IID__ThreadTerminates: TGUID = '{07CA5805-3D55-397D-928E-3638734DFB16}';
  IID__TimerCompleteDelegate: TGUID = '{FD39B2A3-27C1-3253-A87B-B214CC3325F6}';
  IID__Win32UIActivityDelegate: TGUID = '{362514F5-AE98-3E9F-9729-E67E58A3D5D7}';
  IID__FeedRecordDelegate: TGUID = '{7E09070D-FD2E-3546-9F9D-676E61B63B16}';
  CLASS_EDisconnected: TGUID = '{460C1E2C-0860-337F-BE64-C9CD521F1BB1}';
  CLASS_EInvalidFormat: TGUID = '{B9825488-697D-389A-830B-FC4AC1DA127C}';
  CLASS_EOutOfRange: TGUID = '{8276CEA4-4331-36E6-A078-8C1F8D9BE018}';
  CLASS_CJsonTypeExtensions: TGUID = '{4D20B029-0474-3B60-8FB1-A6B1F554574E}';
  CLASS_CMiscExtensions: TGUID = '{3D63A0A5-A484-391C-9CED-3F4B4F9EFD83}';
  CLASS_ENotImplemented: TGUID = '{6CB6328A-6F6D-34EE-B6AE-B88E3AD2C35F}';
  CLASS_CStreamParameters: TGUID = '{B4E867FD-5CE6-39DA-82F2-39F02B0A5AB4}';
  CLASS_SendAsyncType: TGUID = '{C67F37B0-E55B-3B30-B751-5FAC221A38B4}';
  CLASS_ServerOnStartDelegate: TGUID = '{7F942BC9-9BF8-3554-B3B7-F47594A5EF6E}';
  CLASS_ServerOnConnectDelegate: TGUID = '{DA551792-58EA-3FDF-A576-E28586A7BF6B}';
  CLASS_ServerOnMessageDelegate: TGUID = '{8C3627C4-5B6E-3D6B-AE48-60C449DBE673}';
  CLASS_ServerOnDisconnectDelegate: TGUID = '{3AF88361-24DC-334E-BE8F-BB167CA87999}';
  CLASS_ServerOnStopDelegate: TGUID = '{2441504F-8B11-384F-B024-7648DFA9E5DD}';
  CLASS_ClientOnReceivedMessageDelegate: TGUID = '{A1460017-971D-39F0-9664-EBA118AAE95C}';
  CLASS_ClientOnSendMessageDelegate: TGUID = '{35340E99-1AEB-31C8-9081-35E2C087715F}';
  CLASS_ClientOnReplyDelegate: TGUID = '{85392FA8-F4AA-3455-883B-C58246A3B319}';
  CLASS_ClientServerOnMessageToLog: TGUID = '{F8999521-E339-3B30-8ABA-6F30843A384B}';
  CLASS_ThreadFunction: TGUID = '{580D1E69-D679-3662-A4CA-A1F28DFB112B}';
  CLASS_ThreadTerminates: TGUID = '{9F0A8B58-21C8-353B-9FB6-81A02851296E}';
  CLASS_TimerCompleteDelegate: TGUID = '{975A189D-7B7C-34A9-AA4B-1DB784C033F1}';
  CLASS_Win32UIActivityDelegate: TGUID = '{CE0742CB-5E6F-3F9B-AB3B-08102398BD47}';
  CLASS_FeedRecordDelegate: TGUID = '{7286D360-7635-3C8E-BB29-A0146C7A210B}';

// *********************************************************************//
// Déclaration d'énumérations définies dans la bibliothèque de types                    
// *********************************************************************//
// Constantes pour enum TLog
type
  TLog = TOleEnum;
const
  TLog__begin = $FFFFFFFF;
  TLog_DEBUG = $00000000;
  TLog_INFOR = $00000001;
  TLog_TRACE = $00000002;
  TLog_WARNG = $00000003;
  TLog_ERROR = $00000004;
  TLog_EXCPT = $00000005;
  TLog__end = $00000006;

// Constantes pour enum SendAsyncEnum
type
  SendAsyncEnum = TOleEnum;
const
  SendAsyncEnum_NoData = $FFFFFFFB;
  SendAsyncEnum_Timeout = $FFFFFFFC;
  SendAsyncEnum_SendError = $FFFFFFFD;
  SendAsyncEnum_ReceiveError = $FFFFFFFE;
  SendAsyncEnum_KO = $FFFFFFFF;
  SendAsyncEnum_OK = $00000000;
  SendAsyncEnum_UserDefined = $00000001;

// Constantes pour enum ThreadResult
type
  ThreadResult = TOleEnum;
const
  ThreadResult__begin = $FFFFFFFF;
  ThreadResult_UNKNOWN = $00000000;
  ThreadResult_OK = $00000001;
  ThreadResult_KO = $00000002;
  ThreadResult_Exception = $00000003;
  ThreadResult__end = $00000004;
  ThreadResult__userdefined = $00000005;

// Constantes pour enum VersionType
type
  VersionType = TOleEnum;
const
  VersionType_assembly = $00000000;
  VersionType_assemblyFile = $00000001;
  VersionType_assemblyInfo = $00000002;

// Constantes pour enum DateFormat
type
  DateFormat = TOleEnum;
const
  DateFormat_GMT = $00000000;
  DateFormat_Local = $00000001;
  DateFormat_YYYYMMDD = $00000002;
  DateFormat_YYYYMMDDEx = $00000003;
  DateFormat_YYYYMMDDhhmmss = $00000004;
  DateFormat_YYYYMMDDhhmmssEx = $00000005;
  DateFormat_YYYYMMDDhhmmssfff = $00000006;
  DateFormat_YYYYMMDDhhmmssfffEx = $00000007;
  DateFormat_hhmmss = $00000008;
  DateFormat_hhmmssEx = $00000009;
  DateFormat_hhmmssmmm = $0000000A;
  DateFormat_hhmmssmmmEx = $0000000B;

// Constantes pour enum SWL
type
  SWL = TOleEnum;
const
  SWL_GWL_EXSTYLE = $FFFFFFEC;
  SWL_GWLP_HINSTANCE = $FFFFFFFA;
  SWL_GWLP_HWNDPARENT = $FFFFFFF8;
  SWL_GWL_ID = $FFFFFFF4;
  SWL_GWL_STYLE = $FFFFFFF0;
  SWL_GWL_USERDATA = $FFFFFFEB;
  SWL_GWL_WNDPROC = $FFFFFFFC;
  SWL_DWLP_USER = $00000008;
  SWL_DWLP_MSGRESULT = $00000000;
  SWL_DWLP_DLGPROC = $00000004;

type

// *********************************************************************//
// Déclaration Forward des types définis dans la bibliothèque de types                     
// *********************************************************************//
  _EDisconnected = interface;
  _EDisconnectedDisp = dispinterface;
  _EInvalidFormat = interface;
  _EInvalidFormatDisp = dispinterface;
  _EOutOfRange = interface;
  _EOutOfRangeDisp = dispinterface;
  _CJsonTypeExtensions = interface;
  _CJsonTypeExtensionsDisp = dispinterface;
  _CMiscExtensions = interface;
  _CMiscExtensionsDisp = dispinterface;
  _ENotImplemented = interface;
  _ENotImplementedDisp = dispinterface;
  IStreamClientIO = interface;
  IStreamServerIO = interface;
  _CStreamParameters = interface;
  _CStreamParametersDisp = dispinterface;
  IStreamServerStatistics = interface;
  IStreamServerStartSettings = interface;
  IStreamServer = interface;
  IStreamClientSettings = interface;
  IStreamServerSettings = interface;
  IThread = interface;
  IThreadEvents = interface;
  IThreadData = interface;
  _SendAsyncType = interface;
  _SendAsyncTypeDisp = dispinterface;
  _ServerOnStartDelegate = interface;
  _ServerOnStartDelegateDisp = dispinterface;
  _ServerOnConnectDelegate = interface;
  _ServerOnConnectDelegateDisp = dispinterface;
  _ServerOnMessageDelegate = interface;
  _ServerOnMessageDelegateDisp = dispinterface;
  _ServerOnDisconnectDelegate = interface;
  _ServerOnDisconnectDelegateDisp = dispinterface;
  _ServerOnStopDelegate = interface;
  _ServerOnStopDelegateDisp = dispinterface;
  _ClientOnReceivedMessageDelegate = interface;
  _ClientOnReceivedMessageDelegateDisp = dispinterface;
  _ClientOnSendMessageDelegate = interface;
  _ClientOnSendMessageDelegateDisp = dispinterface;
  _ClientOnReplyDelegate = interface;
  _ClientOnReplyDelegateDisp = dispinterface;
  _ClientServerOnMessageToLog = interface;
  _ClientServerOnMessageToLogDisp = dispinterface;
  _ThreadFunction = interface;
  _ThreadFunctionDisp = dispinterface;
  _ThreadTerminates = interface;
  _ThreadTerminatesDisp = dispinterface;
  _TimerCompleteDelegate = interface;
  _TimerCompleteDelegateDisp = dispinterface;
  _Win32UIActivityDelegate = interface;
  _Win32UIActivityDelegateDisp = dispinterface;
  _FeedRecordDelegate = interface;
  _FeedRecordDelegateDisp = dispinterface;

// *********************************************************************//
// Déclaration de CoClasses définies dans la bibliothèque de types        
// (REMARQUE: On affecte chaque CoClasse à son Interface par défaut)      
// *********************************************************************//
  CStreamClientIO = IStreamClientIO;
  CStreamServerIO = IStreamServerIO;
  CStreamServerStatistics = IStreamServerStatistics;
  CStreamServerStartSettings = IStreamServerStartSettings;
  CStreamClientSettings = IStreamClientSettings;
  CStreamServerSettings = IStreamServerSettings;
  CThread = IThread;
  CThreadEvents = _Object;
  CThreadData = IThreadData;
  EDisconnected = _EDisconnected;
  EInvalidFormat = _EInvalidFormat;
  EOutOfRange = _EOutOfRange;
  CJsonTypeExtensions = _CJsonTypeExtensions;
  CMiscExtensions = _CMiscExtensions;
  ENotImplemented = _ENotImplemented;
  CStreamParameters = _CStreamParameters;
  SendAsyncType = _SendAsyncType;
  ServerOnStartDelegate = _ServerOnStartDelegate;
  ServerOnConnectDelegate = _ServerOnConnectDelegate;
  ServerOnMessageDelegate = _ServerOnMessageDelegate;
  ServerOnDisconnectDelegate = _ServerOnDisconnectDelegate;
  ServerOnStopDelegate = _ServerOnStopDelegate;
  ClientOnReceivedMessageDelegate = _ClientOnReceivedMessageDelegate;
  ClientOnSendMessageDelegate = _ClientOnSendMessageDelegate;
  ClientOnReplyDelegate = _ClientOnReplyDelegate;
  ClientServerOnMessageToLog = _ClientServerOnMessageToLog;
  ThreadFunction = _ThreadFunction;
  ThreadTerminates = _ThreadTerminates;
  TimerCompleteDelegate = _TimerCompleteDelegate;
  Win32UIActivityDelegate = _Win32UIActivityDelegate;
  FeedRecordDelegate = _FeedRecordDelegate;


// *********************************************************************//
// Interface :   _EDisconnected
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {CA0B69CD-764A-304C-B429-626DB65562CD}
// *********************************************************************//
  _EDisconnected = interface(IDispatch)
    ['{CA0B69CD-764A-304C-B429-626DB65562CD}']
  end;

// *********************************************************************//
// DispIntf :    _EDisconnectedDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {CA0B69CD-764A-304C-B429-626DB65562CD}
// *********************************************************************//
  _EDisconnectedDisp = dispinterface
    ['{CA0B69CD-764A-304C-B429-626DB65562CD}']
  end;

// *********************************************************************//
// Interface :   _EInvalidFormat
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {C55F93A5-C250-3CE4-8CEC-040BA84D26B9}
// *********************************************************************//
  _EInvalidFormat = interface(IDispatch)
    ['{C55F93A5-C250-3CE4-8CEC-040BA84D26B9}']
  end;

// *********************************************************************//
// DispIntf :    _EInvalidFormatDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {C55F93A5-C250-3CE4-8CEC-040BA84D26B9}
// *********************************************************************//
  _EInvalidFormatDisp = dispinterface
    ['{C55F93A5-C250-3CE4-8CEC-040BA84D26B9}']
  end;

// *********************************************************************//
// Interface :   _EOutOfRange
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {C793C680-C944-3870-8434-392142B11804}
// *********************************************************************//
  _EOutOfRange = interface(IDispatch)
    ['{C793C680-C944-3870-8434-392142B11804}']
  end;

// *********************************************************************//
// DispIntf :    _EOutOfRangeDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {C793C680-C944-3870-8434-392142B11804}
// *********************************************************************//
  _EOutOfRangeDisp = dispinterface
    ['{C793C680-C944-3870-8434-392142B11804}']
  end;

// *********************************************************************//
// Interface :   _CJsonTypeExtensions
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {463FE163-00A7-36CF-9AFD-52C9AFE957F2}
// *********************************************************************//
  _CJsonTypeExtensions = interface(IDispatch)
    ['{463FE163-00A7-36CF-9AFD-52C9AFE957F2}']
  end;

// *********************************************************************//
// DispIntf :    _CJsonTypeExtensionsDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {463FE163-00A7-36CF-9AFD-52C9AFE957F2}
// *********************************************************************//
  _CJsonTypeExtensionsDisp = dispinterface
    ['{463FE163-00A7-36CF-9AFD-52C9AFE957F2}']
  end;

// *********************************************************************//
// Interface :   _CMiscExtensions
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {5FADEBB6-E657-349B-BACF-C130E4657E4D}
// *********************************************************************//
  _CMiscExtensions = interface(IDispatch)
    ['{5FADEBB6-E657-349B-BACF-C130E4657E4D}']
  end;

// *********************************************************************//
// DispIntf :    _CMiscExtensionsDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {5FADEBB6-E657-349B-BACF-C130E4657E4D}
// *********************************************************************//
  _CMiscExtensionsDisp = dispinterface
    ['{5FADEBB6-E657-349B-BACF-C130E4657E4D}']
  end;

// *********************************************************************//
// Interface :   _ENotImplemented
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {E7726354-3384-388F-8C31-F104B248E3A7}
// *********************************************************************//
  _ENotImplemented = interface(IDispatch)
    ['{E7726354-3384-388F-8C31-F104B248E3A7}']
  end;

// *********************************************************************//
// DispIntf :    _ENotImplementedDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {E7726354-3384-388F-8C31-F104B248E3A7}
// *********************************************************************//
  _ENotImplementedDisp = dispinterface
    ['{E7726354-3384-388F-8C31-F104B248E3A7}']
  end;

// *********************************************************************//
// Interface :   IStreamClientIO
// Indicateurs : (256) OleAutomation
// GUID :        {8032AC79-8819-4FD3-A4E2-A97D24D318FC}
// *********************************************************************//
  IStreamClientIO = interface(IUnknown)
    ['{8032AC79-8819-4FD3-A4E2-A97D24D318FC}']
    function Get_LengthBufferSize(out pRetVal: Integer): HResult; stdcall;
    function Get_ToString(out pRetVal: WideString): HResult; stdcall;
    function Get_Tcp(out pRetVal: IUnknown): HResult; stdcall;
    function Get_Connected(out pRetVal: WordBool): HResult; stdcall;
    function Send(data: PSafeArray; addSizeHeader: WordBool; out pRetVal: WordBool): HResult; stdcall;
    function Send_2(const data: WideString; out pRetVal: WordBool): HResult; stdcall;
    function SendLine(const data: WideString; const EOT: WideString; out pRetVal: WordBool): HResult; stdcall;
    function Receive(out announcedSize: Integer; out pRetVal: PSafeArray): HResult; stdcall;
    function Receive_2(out pRetVal: WideString): HResult; stdcall;
    function ReceiveLine(const EOT: WideString; out pRetVal: WideString): HResult; stdcall;
    function Close: HResult; stdcall;
  end;

// *********************************************************************//
// Interface :   IStreamServerIO
// Indicateurs : (256) OleAutomation
// GUID :        {DBB95FAB-171A-4DFA-BF32-6E0AC64DC506}
// *********************************************************************//
  IStreamServerIO = interface(IUnknown)
    ['{DBB95FAB-171A-4DFA-BF32-6E0AC64DC506}']
    function Get_LengthBufferSize(out pRetVal: Integer): HResult; stdcall;
    function Get_ToString(out pRetVal: WideString): HResult; stdcall;
    function Get_Tcp(out pRetVal: IUnknown): HResult; stdcall;
    function Get_Connected(out pRetVal: WordBool): HResult; stdcall;
    function Send(data: PSafeArray; addSizeHeader: WordBool; out pRetVal: WordBool): HResult; stdcall;
    function Send_2(const data: WideString; out pRetVal: WordBool): HResult; stdcall;
    function SendLine(const data: WideString; const EOT: WideString; out pRetVal: WordBool): HResult; stdcall;
    function Receive(out announcedSize: Integer; out pRetVal: PSafeArray): HResult; stdcall;
    function Receive_2(out pRetVal: WideString): HResult; stdcall;
    function ReceiveLine(const EOT: WideString; out pRetVal: WideString): HResult; stdcall;
    function Close: HResult; stdcall;
    function Get_Port(out pRetVal: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface :   _CStreamParameters
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {918AC90A-E98B-3FB8-B977-86677DF8B582}
// *********************************************************************//
  _CStreamParameters = interface(IDispatch)
    ['{918AC90A-E98B-3FB8-B977-86677DF8B582}']
  end;

// *********************************************************************//
// DispIntf :    _CStreamParametersDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {918AC90A-E98B-3FB8-B977-86677DF8B582}
// *********************************************************************//
  _CStreamParametersDisp = dispinterface
    ['{918AC90A-E98B-3FB8-B977-86677DF8B582}']
  end;

// *********************************************************************//
// Interface :   IStreamServerStatistics
// Indicateurs : (256) OleAutomation
// GUID :        {7711DAC5-9223-4760-A93C-D2C993359A61}
// *********************************************************************//
  IStreamServerStatistics = interface(IUnknown)
    ['{7711DAC5-9223-4760-A93C-D2C993359A61}']
    function Get_EndPoint(out pRetVal: IUnknown): HResult; stdcall;
    function Get_ConnectTimestamp(out pRetVal: TDateTime): HResult; stdcall;
    function Get_ReceivedMessages(out pRetVal: Integer): HResult; stdcall;
    function Get_SentMessages(out pRetVal: Integer): HResult; stdcall;
    function Get_ReceivedBytes(out pRetVal: TDecimal): HResult; stdcall;
    function Get_SentBytes(out pRetVal: TDecimal): HResult; stdcall;
    function Get_ToString(out pRetVal: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface :   IStreamServerStartSettings
// Indicateurs : (256) OleAutomation
// GUID :        {8E3BBBB0-F498-47BF-AB18-5C84B80EE4B4}
// *********************************************************************//
  IStreamServerStartSettings = interface(IUnknown)
    ['{8E3BBBB0-F498-47BF-AB18-5C84B80EE4B4}']
    function Get_IsValid(out pRetVal: WordBool): HResult; stdcall;
    function Get_ThreadData(out pRetVal: IThreadData): HResult; stdcall;
    function _Set_ThreadData(const pRetVal: IThreadData): HResult; stdcall;
    function Get_StreamServerSettings(out pRetVal: IStreamServerSettings): HResult; stdcall;
    function _Set_StreamServerSettings(const pRetVal: IStreamServerSettings): HResult; stdcall;
    function Get_Parameters(out pRetVal: OleVariant): HResult; stdcall;
    function _Set_Parameters(pRetVal: OleVariant): HResult; stdcall;
    function Get_Synchronous(out pRetVal: WordBool): HResult; stdcall;
    function Set_Synchronous(pRetVal: WordBool): HResult; stdcall;
    function Get_OnStart(out pRetVal: _ServerOnStartDelegate): HResult; stdcall;
    function _Set_OnStart(const pRetVal: _ServerOnStartDelegate): HResult; stdcall;
    function Get_OnConnect(out pRetVal: _ServerOnConnectDelegate): HResult; stdcall;
    function _Set_OnConnect(const pRetVal: _ServerOnConnectDelegate): HResult; stdcall;
    function Get_OnMessage(out pRetVal: _ServerOnMessageDelegate): HResult; stdcall;
    function _Set_OnMessage(const pRetVal: _ServerOnMessageDelegate): HResult; stdcall;
    function Get_OnDisconnect(out pRetVal: _ServerOnDisconnectDelegate): HResult; stdcall;
    function _Set_OnDisconnect(const pRetVal: _ServerOnDisconnectDelegate): HResult; stdcall;
    function Get_OnStop(out pRetVal: _ServerOnStopDelegate): HResult; stdcall;
    function _Set_OnStop(const pRetVal: _ServerOnStopDelegate): HResult; stdcall;
  end;

// *********************************************************************//
// Interface :   IStreamServer
// Indicateurs : (256) OleAutomation
// GUID :        {7E3C2011-C388-4813-B9C5-B24D6A14892F}
// *********************************************************************//
  IStreamServer = interface(IUnknown)
    ['{7E3C2011-C388-4813-B9C5-B24D6A14892F}']
    function Get_Port(out pRetVal: LongWord): HResult; stdcall;
    function Get_Address(out pRetVal: WideString): HResult; stdcall;
    function Get_FullAddress(out pRetVal: WideString): HResult; stdcall;
    function Get_ID(out pRetVal: Integer): HResult; stdcall;
    function Set_ID(pRetVal: Integer): HResult; stdcall;
    function Get_UniqueID(out pRetVal: Integer): HResult; stdcall;
    function Get_Name(out pRetVal: WideString): HResult; stdcall;
    function Set_Name(const pRetVal: WideString): HResult; stdcall;
    function Get_IsRunning(out pRetVal: WordBool): HResult; stdcall;
    function Get_Description(out pRetVal: WideString): HResult; stdcall;
    function Get_Result(out pRetVal: Integer): HResult; stdcall;
    function Get_TextMessages(out pRetVal: WordBool): HResult; stdcall;
    function Set_TextMessages(pRetVal: WordBool): HResult; stdcall;
    function StartServer(const settings: IStreamServerStartSettings; out pRetVal: WordBool): HResult; stdcall;
    function StopServer: HResult; stdcall;
    function Send1WayNotification(msg: PSafeArray; addBufferSize: WordBool; 
                                  const process: WideString; o: OleVariant; out pRetVal: WordBool): HResult; stdcall;
  end;

// *********************************************************************//
// Interface :   IStreamClientSettings
// Indicateurs : (256) OleAutomation
// GUID :        {BE7495F7-DA7A-4584-AEB9-789AF316C971}
// *********************************************************************//
  IStreamClientSettings = interface(IUnknown)
    ['{BE7495F7-DA7A-4584-AEB9-789AF316C971}']
    function Get_IP(out pRetVal: WideString): HResult; stdcall;
    function Set_IP(const pRetVal: WideString): HResult; stdcall;
    function Get_Port(out pRetVal: LongWord): HResult; stdcall;
    function Set_Port(pRetVal: LongWord): HResult; stdcall;
    function Get_FoundOnDNS(out pRetVal: WordBool): HResult; stdcall;
    function Get_IsValid(out pRetVal: WordBool): HResult; stdcall;
    function Get_ServerName(out pRetVal: WideString): HResult; stdcall;
    function Set_ServerName(const pRetVal: WideString): HResult; stdcall;
    function Get_CheckCertificate(out pRetVal: WordBool): HResult; stdcall;
    function Set_CheckCertificate(pRetVal: WordBool): HResult; stdcall;
    function Get_FullIP(out pRetVal: WideString): HResult; stdcall;
    function GhostMethod_IStreamClientSettings_56_1: HResult; stdcall;
    function GhostMethod_IStreamClientSettings_60_2: HResult; stdcall;
    function Get_ConnectTimeout(out pRetVal: Integer): HResult; stdcall;
    function Set_ConnectTimeout(pRetVal: Integer): HResult; stdcall;
    function Get_ToString(out pRetVal: WideString): HResult; stdcall;
    function Get_NoTimeout(out pRetVal: Integer): HResult; stdcall;
    function Get_ReceiveTimeout(out pRetVal: Integer): HResult; stdcall;
    function Set_ReceiveTimeout(pRetVal: Integer): HResult; stdcall;
    function Get_SendTimeout(out pRetVal: Integer): HResult; stdcall;
    function Set_SendTimeout(pRetVal: Integer): HResult; stdcall;
    function Get_ReceiveBufferSize(out pRetVal: Integer): HResult; stdcall;
    function Set_ReceiveBufferSize(pRetVal: Integer): HResult; stdcall;
    function Get_SendBufferSize(out pRetVal: Integer): HResult; stdcall;
    function Set_SendBufferSize(pRetVal: Integer): HResult; stdcall;
    function Get_UseSsl(out pRetVal: WordBool): HResult; stdcall;
    function Get_Localhost(out pRetVal: WideString): HResult; stdcall;
    function Get_DefaultServerPort(out pRetVal: LongWord): HResult; stdcall;
    function Get_OnMessageToLog(out pRetVal: _ClientServerOnMessageToLog): HResult; stdcall;
    function _Set_OnMessageToLog(const pRetVal: _ClientServerOnMessageToLog): HResult; stdcall;
    function Get_LocalhostV6(out pRetVal: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface :   IStreamServerSettings
// Indicateurs : (256) OleAutomation
// GUID :        {F4BC72B2-4375-4723-B59D-809182C8CFDE}
// *********************************************************************//
  IStreamServerSettings = interface(IUnknown)
    ['{F4BC72B2-4375-4723-B59D-809182C8CFDE}']
    function Get_IsValid(out pRetVal: WordBool): HResult; stdcall;
    function Get_Port(out pRetVal: LongWord): HResult; stdcall;
    function Set_Port(pRetVal: LongWord): HResult; stdcall;
    function Get_ServerCertificate(out pRetVal: _X509Certificate): HResult; stdcall;
    function _Set_ServerCertificate(const pRetVal: _X509Certificate): HResult; stdcall;
    function GhostMethod_IStreamServerSettings_32_1: HResult; stdcall;
    function GhostMethod_IStreamServerSettings_36_2: HResult; stdcall;
    function Get_ToString(out pRetVal: WideString): HResult; stdcall;
    function Get_NoTimeout(out pRetVal: Integer): HResult; stdcall;
    function Get_ReceiveTimeout(out pRetVal: Integer): HResult; stdcall;
    function Set_ReceiveTimeout(pRetVal: Integer): HResult; stdcall;
    function Get_SendTimeout(out pRetVal: Integer): HResult; stdcall;
    function Set_SendTimeout(pRetVal: Integer): HResult; stdcall;
    function Get_ReceiveBufferSize(out pRetVal: Integer): HResult; stdcall;
    function Set_ReceiveBufferSize(pRetVal: Integer): HResult; stdcall;
    function Get_SendBufferSize(out pRetVal: Integer): HResult; stdcall;
    function Set_SendBufferSize(pRetVal: Integer): HResult; stdcall;
    function Get_UseSsl(out pRetVal: WordBool): HResult; stdcall;
    function Get_Localhost(out pRetVal: WideString): HResult; stdcall;
    function Get_DefaultServerPort(out pRetVal: LongWord): HResult; stdcall;
    function Get_OnMessageToLog(out pRetVal: _ClientServerOnMessageToLog): HResult; stdcall;
    function _Set_OnMessageToLog(const pRetVal: _ClientServerOnMessageToLog): HResult; stdcall;
    function Get_LocalhostV6(out pRetVal: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface :   IThread
// Indicateurs : (256) OleAutomation
// GUID :        {420E0E6B-C6D4-499A-87A7-992FECBFEFC3}
// *********************************************************************//
  IThread = interface(IUnknown)
    ['{420E0E6B-C6D4-499A-87A7-992FECBFEFC3}']
    function Get_IsRunning(out pRetVal: WordBool): HResult; stdcall;
    function Get_Result(out pRetVal: Integer): HResult; stdcall;
    function Get_UniqueID(out pRetVal: Integer): HResult; stdcall;
    function Get_NoThread(out pRetVal: Integer): HResult; stdcall;
    function Get_FinalDelayWhenThreadTerminates(out pRetVal: Integer): HResult; stdcall;
    function Set_FinalDelayWhenThreadTerminates(pRetVal: Integer): HResult; stdcall;
    function Get_Thread(out pRetVal: _Thread): HResult; stdcall;
    function Get_ID(out pRetVal: Integer): HResult; stdcall;
    function Set_ID(pRetVal: Integer): HResult; stdcall;
    function Get_Name(out pRetVal: WideString): HResult; stdcall;
    function Set_Name(const pRetVal: WideString): HResult; stdcall;
    function Get_Description(out pRetVal: WideString): HResult; stdcall;
    function Get_HasBeenStarted(out pRetVal: WordBool): HResult; stdcall;
    function Get_CanStart(out pRetVal: WordBool): HResult; stdcall;
    function Wait(timer: Integer; out pRetVal: WordBool): HResult; stdcall;
    function SendNotification(value: Integer; stopped: WordBool): HResult; stdcall;
  end;

// *********************************************************************//
// Interface :   IThreadEvents
// Indicateurs : (256) OleAutomation
// GUID :        {3FB79C95-70A3-41DA-AEA7-02DFBFD23BB7}
// *********************************************************************//
  IThreadEvents = interface(IUnknown)
    ['{3FB79C95-70A3-41DA-AEA7-02DFBFD23BB7}']
    function Get_Started(out pRetVal: _ManualResetEvent): HResult; stdcall;
    function Get_stopped(out pRetVal: _ManualResetEvent): HResult; stdcall;
    function SetStarted(out pRetVal: WordBool): HResult; stdcall;
    function SetStopped(out pRetVal: WordBool): HResult; stdcall;
    function WaitStarted(timer: Integer; out pRetVal: WordBool): HResult; stdcall;
    function WaitStopped(timer: Integer; out pRetVal: WordBool): HResult; stdcall;
    function ResetStarted(out pRetVal: WordBool): HResult; stdcall;
    function ResetStopped(out pRetVal: WordBool): HResult; stdcall;
    function Reset(out pRetVal: WordBool): HResult; stdcall;
  end;

// *********************************************************************//
// Interface :   IThreadData
// Indicateurs : (256) OleAutomation
// GUID :        {CD4AB05D-ED37-493A-B658-C4D5D86B6864}
// *********************************************************************//
  IThreadData = interface(IUnknown)
    ['{CD4AB05D-ED37-493A-B658-C4D5D86B6864}']
    function Get_WindowToWarn(out pRetVal: Int64): HResult; stdcall;
    function Set_WindowToWarn(pRetVal: Int64): HResult; stdcall;
    function Get_StoppedMessage(out pRetVal: LongWord): HResult; stdcall;
    function Set_StoppedMessage(pRetVal: LongWord): HResult; stdcall;
    function Get_InformationMessage(out pRetVal: LongWord): HResult; stdcall;
    function Set_InformationMessage(pRetVal: LongWord): HResult; stdcall;
    function Get_IsValid(out pRetVal: WordBool): HResult; stdcall;
    function Get_WMThreadStopped(out pRetVal: LongWord): HResult; stdcall;
    function Get_WMThreadInformation(out pRetVal: LongWord): HResult; stdcall;
    function Get_EventToSignal(out pRetVal: _EventWaitHandle): HResult; stdcall;
    function _Set_EventToSignal(const pRetVal: _EventWaitHandle): HResult; stdcall;
  end;

// *********************************************************************//
// Interface :   _SendAsyncType
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {DCFE0E70-4BCF-3612-B3E9-C9B7EAF687E9}
// *********************************************************************//
  _SendAsyncType = interface(IDispatch)
    ['{DCFE0E70-4BCF-3612-B3E9-C9B7EAF687E9}']
  end;

// *********************************************************************//
// DispIntf :    _SendAsyncTypeDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {DCFE0E70-4BCF-3612-B3E9-C9B7EAF687E9}
// *********************************************************************//
  _SendAsyncTypeDisp = dispinterface
    ['{DCFE0E70-4BCF-3612-B3E9-C9B7EAF687E9}']
  end;

// *********************************************************************//
// Interface :   _ServerOnStartDelegate
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {A08079B2-47AC-36E9-8A8E-7273B55BD5D2}
// *********************************************************************//
  _ServerOnStartDelegate = interface(IDispatch)
    ['{A08079B2-47AC-36E9-8A8E-7273B55BD5D2}']
  end;

// *********************************************************************//
// DispIntf :    _ServerOnStartDelegateDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {A08079B2-47AC-36E9-8A8E-7273B55BD5D2}
// *********************************************************************//
  _ServerOnStartDelegateDisp = dispinterface
    ['{A08079B2-47AC-36E9-8A8E-7273B55BD5D2}']
  end;

// *********************************************************************//
// Interface :   _ServerOnConnectDelegate
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {472D1DE4-CCB1-3FC5-BCE0-F6003FF187F8}
// *********************************************************************//
  _ServerOnConnectDelegate = interface(IDispatch)
    ['{472D1DE4-CCB1-3FC5-BCE0-F6003FF187F8}']
  end;

// *********************************************************************//
// DispIntf :    _ServerOnConnectDelegateDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {472D1DE4-CCB1-3FC5-BCE0-F6003FF187F8}
// *********************************************************************//
  _ServerOnConnectDelegateDisp = dispinterface
    ['{472D1DE4-CCB1-3FC5-BCE0-F6003FF187F8}']
  end;

// *********************************************************************//
// Interface :   _ServerOnMessageDelegate
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {BFA46CC8-A3DA-38CC-9BD9-7FCB40394348}
// *********************************************************************//
  _ServerOnMessageDelegate = interface(IDispatch)
    ['{BFA46CC8-A3DA-38CC-9BD9-7FCB40394348}']
  end;

// *********************************************************************//
// DispIntf :    _ServerOnMessageDelegateDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {BFA46CC8-A3DA-38CC-9BD9-7FCB40394348}
// *********************************************************************//
  _ServerOnMessageDelegateDisp = dispinterface
    ['{BFA46CC8-A3DA-38CC-9BD9-7FCB40394348}']
  end;

// *********************************************************************//
// Interface :   _ServerOnDisconnectDelegate
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {4B81353D-4733-3D6B-9C90-835D1DFB0B66}
// *********************************************************************//
  _ServerOnDisconnectDelegate = interface(IDispatch)
    ['{4B81353D-4733-3D6B-9C90-835D1DFB0B66}']
  end;

// *********************************************************************//
// DispIntf :    _ServerOnDisconnectDelegateDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {4B81353D-4733-3D6B-9C90-835D1DFB0B66}
// *********************************************************************//
  _ServerOnDisconnectDelegateDisp = dispinterface
    ['{4B81353D-4733-3D6B-9C90-835D1DFB0B66}']
  end;

// *********************************************************************//
// Interface :   _ServerOnStopDelegate
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {B6BAA48E-2E1B-38AB-AA93-CCD29074370E}
// *********************************************************************//
  _ServerOnStopDelegate = interface(IDispatch)
    ['{B6BAA48E-2E1B-38AB-AA93-CCD29074370E}']
  end;

// *********************************************************************//
// DispIntf :    _ServerOnStopDelegateDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {B6BAA48E-2E1B-38AB-AA93-CCD29074370E}
// *********************************************************************//
  _ServerOnStopDelegateDisp = dispinterface
    ['{B6BAA48E-2E1B-38AB-AA93-CCD29074370E}']
  end;

// *********************************************************************//
// Interface :   _ClientOnReceivedMessageDelegate
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {684612E3-7F2F-34AA-AD46-78FBB4E99A84}
// *********************************************************************//
  _ClientOnReceivedMessageDelegate = interface(IDispatch)
    ['{684612E3-7F2F-34AA-AD46-78FBB4E99A84}']
  end;

// *********************************************************************//
// DispIntf :    _ClientOnReceivedMessageDelegateDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {684612E3-7F2F-34AA-AD46-78FBB4E99A84}
// *********************************************************************//
  _ClientOnReceivedMessageDelegateDisp = dispinterface
    ['{684612E3-7F2F-34AA-AD46-78FBB4E99A84}']
  end;

// *********************************************************************//
// Interface :   _ClientOnSendMessageDelegate
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {37485B63-0D28-3643-B8B0-3E023FD9D4F9}
// *********************************************************************//
  _ClientOnSendMessageDelegate = interface(IDispatch)
    ['{37485B63-0D28-3643-B8B0-3E023FD9D4F9}']
  end;

// *********************************************************************//
// DispIntf :    _ClientOnSendMessageDelegateDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {37485B63-0D28-3643-B8B0-3E023FD9D4F9}
// *********************************************************************//
  _ClientOnSendMessageDelegateDisp = dispinterface
    ['{37485B63-0D28-3643-B8B0-3E023FD9D4F9}']
  end;

// *********************************************************************//
// Interface :   _ClientOnReplyDelegate
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {630876F9-312A-3345-817E-E41461F337A8}
// *********************************************************************//
  _ClientOnReplyDelegate = interface(IDispatch)
    ['{630876F9-312A-3345-817E-E41461F337A8}']
  end;

// *********************************************************************//
// DispIntf :    _ClientOnReplyDelegateDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {630876F9-312A-3345-817E-E41461F337A8}
// *********************************************************************//
  _ClientOnReplyDelegateDisp = dispinterface
    ['{630876F9-312A-3345-817E-E41461F337A8}']
  end;

// *********************************************************************//
// Interface :   _ClientServerOnMessageToLog
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {DE18EFE9-E9ED-31D4-8CD4-D5F8ECD14058}
// *********************************************************************//
  _ClientServerOnMessageToLog = interface(IDispatch)
    ['{DE18EFE9-E9ED-31D4-8CD4-D5F8ECD14058}']
  end;

// *********************************************************************//
// DispIntf :    _ClientServerOnMessageToLogDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {DE18EFE9-E9ED-31D4-8CD4-D5F8ECD14058}
// *********************************************************************//
  _ClientServerOnMessageToLogDisp = dispinterface
    ['{DE18EFE9-E9ED-31D4-8CD4-D5F8ECD14058}']
  end;

// *********************************************************************//
// Interface :   _ThreadFunction
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {28D4F472-617D-3558-8BD8-716B5AF01E18}
// *********************************************************************//
  _ThreadFunction = interface(IDispatch)
    ['{28D4F472-617D-3558-8BD8-716B5AF01E18}']
  end;

// *********************************************************************//
// DispIntf :    _ThreadFunctionDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {28D4F472-617D-3558-8BD8-716B5AF01E18}
// *********************************************************************//
  _ThreadFunctionDisp = dispinterface
    ['{28D4F472-617D-3558-8BD8-716B5AF01E18}']
  end;

// *********************************************************************//
// Interface :   _ThreadTerminates
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {07CA5805-3D55-397D-928E-3638734DFB16}
// *********************************************************************//
  _ThreadTerminates = interface(IDispatch)
    ['{07CA5805-3D55-397D-928E-3638734DFB16}']
  end;

// *********************************************************************//
// DispIntf :    _ThreadTerminatesDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {07CA5805-3D55-397D-928E-3638734DFB16}
// *********************************************************************//
  _ThreadTerminatesDisp = dispinterface
    ['{07CA5805-3D55-397D-928E-3638734DFB16}']
  end;

// *********************************************************************//
// Interface :   _TimerCompleteDelegate
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {FD39B2A3-27C1-3253-A87B-B214CC3325F6}
// *********************************************************************//
  _TimerCompleteDelegate = interface(IDispatch)
    ['{FD39B2A3-27C1-3253-A87B-B214CC3325F6}']
  end;

// *********************************************************************//
// DispIntf :    _TimerCompleteDelegateDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {FD39B2A3-27C1-3253-A87B-B214CC3325F6}
// *********************************************************************//
  _TimerCompleteDelegateDisp = dispinterface
    ['{FD39B2A3-27C1-3253-A87B-B214CC3325F6}']
  end;

// *********************************************************************//
// Interface :   _Win32UIActivityDelegate
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {362514F5-AE98-3E9F-9729-E67E58A3D5D7}
// *********************************************************************//
  _Win32UIActivityDelegate = interface(IDispatch)
    ['{362514F5-AE98-3E9F-9729-E67E58A3D5D7}']
  end;

// *********************************************************************//
// DispIntf :    _Win32UIActivityDelegateDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {362514F5-AE98-3E9F-9729-E67E58A3D5D7}
// *********************************************************************//
  _Win32UIActivityDelegateDisp = dispinterface
    ['{362514F5-AE98-3E9F-9729-E67E58A3D5D7}']
  end;

// *********************************************************************//
// Interface :   _FeedRecordDelegate
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {7E09070D-FD2E-3546-9F9D-676E61B63B16}
// *********************************************************************//
  _FeedRecordDelegate = interface(IDispatch)
    ['{7E09070D-FD2E-3546-9F9D-676E61B63B16}']
  end;

// *********************************************************************//
// DispIntf :    _FeedRecordDelegateDisp
// Indicateurs : (4432) Hidden Dual OleAutomation Dispatchable
// GUID :        {7E09070D-FD2E-3546-9F9D-676E61B63B16}
// *********************************************************************//
  _FeedRecordDelegateDisp = dispinterface
    ['{7E09070D-FD2E-3546-9F9D-676E61B63B16}']
  end;

// *********************************************************************//
// La classe CoCStreamClientIO fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut IStreamClientIO exposée
// par la CoClasse CStreamClientIO. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoCStreamClientIO = class
    class function Create: IStreamClientIO;
    class function CreateRemote(const MachineName: string): IStreamClientIO;
  end;

// *********************************************************************//
// La classe CoCStreamServerIO fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut IStreamServerIO exposée
// par la CoClasse CStreamServerIO. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoCStreamServerIO = class
    class function Create: IStreamServerIO;
    class function CreateRemote(const MachineName: string): IStreamServerIO;
  end;

// *********************************************************************//
// La classe CoCStreamServerStatistics fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut IStreamServerStatistics exposée
// par la CoClasse CStreamServerStatistics. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoCStreamServerStatistics = class
    class function Create: IStreamServerStatistics;
    class function CreateRemote(const MachineName: string): IStreamServerStatistics;
  end;

// *********************************************************************//
// La classe CoCStreamServerStartSettings fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut IStreamServerStartSettings exposée
// par la CoClasse CStreamServerStartSettings. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoCStreamServerStartSettings = class
    class function Create: IStreamServerStartSettings;
    class function CreateRemote(const MachineName: string): IStreamServerStartSettings;
  end;

// *********************************************************************//
// La classe CoCStreamClientSettings fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut IStreamClientSettings exposée
// par la CoClasse CStreamClientSettings. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoCStreamClientSettings = class
    class function Create: IStreamClientSettings;
    class function CreateRemote(const MachineName: string): IStreamClientSettings;
  end;

// *********************************************************************//
// La classe CoCStreamServerSettings fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut IStreamServerSettings exposée
// par la CoClasse CStreamServerSettings. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoCStreamServerSettings = class
    class function Create: IStreamServerSettings;
    class function CreateRemote(const MachineName: string): IStreamServerSettings;
  end;

// *********************************************************************//
// La classe CoCThread fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut IThread exposée
// par la CoClasse CThread. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoCThread = class
    class function Create: IThread;
    class function CreateRemote(const MachineName: string): IThread;
  end;

// *********************************************************************//
// La classe CoCThreadEvents fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _Object exposée
// par la CoClasse CThreadEvents. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoCThreadEvents = class
    class function Create: _Object;
    class function CreateRemote(const MachineName: string): _Object;
  end;

// *********************************************************************//
// La classe CoCThreadData fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut IThreadData exposée
// par la CoClasse CThreadData. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoCThreadData = class
    class function Create: IThreadData;
    class function CreateRemote(const MachineName: string): IThreadData;
  end;

// *********************************************************************//
// La classe CoEDisconnected fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _EDisconnected exposée
// par la CoClasse EDisconnected. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoEDisconnected = class
    class function Create: _EDisconnected;
    class function CreateRemote(const MachineName: string): _EDisconnected;
  end;

// *********************************************************************//
// La classe CoEInvalidFormat fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _EInvalidFormat exposée
// par la CoClasse EInvalidFormat. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoEInvalidFormat = class
    class function Create: _EInvalidFormat;
    class function CreateRemote(const MachineName: string): _EInvalidFormat;
  end;

// *********************************************************************//
// La classe CoEOutOfRange fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _EOutOfRange exposée
// par la CoClasse EOutOfRange. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoEOutOfRange = class
    class function Create: _EOutOfRange;
    class function CreateRemote(const MachineName: string): _EOutOfRange;
  end;

// *********************************************************************//
// La classe CoCJsonTypeExtensions fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _CJsonTypeExtensions exposée
// par la CoClasse CJsonTypeExtensions. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoCJsonTypeExtensions = class
    class function Create: _CJsonTypeExtensions;
    class function CreateRemote(const MachineName: string): _CJsonTypeExtensions;
  end;

// *********************************************************************//
// La classe CoCMiscExtensions fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _CMiscExtensions exposée
// par la CoClasse CMiscExtensions. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoCMiscExtensions = class
    class function Create: _CMiscExtensions;
    class function CreateRemote(const MachineName: string): _CMiscExtensions;
  end;

// *********************************************************************//
// La classe CoENotImplemented fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _ENotImplemented exposée
// par la CoClasse ENotImplemented. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoENotImplemented = class
    class function Create: _ENotImplemented;
    class function CreateRemote(const MachineName: string): _ENotImplemented;
  end;

// *********************************************************************//
// La classe CoCStreamParameters fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _CStreamParameters exposée
// par la CoClasse CStreamParameters. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoCStreamParameters = class
    class function Create: _CStreamParameters;
    class function CreateRemote(const MachineName: string): _CStreamParameters;
  end;

// *********************************************************************//
// La classe CoSendAsyncType fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _SendAsyncType exposée
// par la CoClasse SendAsyncType. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoSendAsyncType = class
    class function Create: _SendAsyncType;
    class function CreateRemote(const MachineName: string): _SendAsyncType;
  end;

// *********************************************************************//
// La classe CoServerOnStartDelegate fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _ServerOnStartDelegate exposée
// par la CoClasse ServerOnStartDelegate. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoServerOnStartDelegate = class
    class function Create: _ServerOnStartDelegate;
    class function CreateRemote(const MachineName: string): _ServerOnStartDelegate;
  end;

// *********************************************************************//
// La classe CoServerOnConnectDelegate fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _ServerOnConnectDelegate exposée
// par la CoClasse ServerOnConnectDelegate. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoServerOnConnectDelegate = class
    class function Create: _ServerOnConnectDelegate;
    class function CreateRemote(const MachineName: string): _ServerOnConnectDelegate;
  end;

// *********************************************************************//
// La classe CoServerOnMessageDelegate fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _ServerOnMessageDelegate exposée
// par la CoClasse ServerOnMessageDelegate. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoServerOnMessageDelegate = class
    class function Create: _ServerOnMessageDelegate;
    class function CreateRemote(const MachineName: string): _ServerOnMessageDelegate;
  end;

// *********************************************************************//
// La classe CoServerOnDisconnectDelegate fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _ServerOnDisconnectDelegate exposée
// par la CoClasse ServerOnDisconnectDelegate. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoServerOnDisconnectDelegate = class
    class function Create: _ServerOnDisconnectDelegate;
    class function CreateRemote(const MachineName: string): _ServerOnDisconnectDelegate;
  end;

// *********************************************************************//
// La classe CoServerOnStopDelegate fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _ServerOnStopDelegate exposée
// par la CoClasse ServerOnStopDelegate. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoServerOnStopDelegate = class
    class function Create: _ServerOnStopDelegate;
    class function CreateRemote(const MachineName: string): _ServerOnStopDelegate;
  end;

// *********************************************************************//
// La classe CoClientOnReceivedMessageDelegate fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _ClientOnReceivedMessageDelegate exposée
// par la CoClasse ClientOnReceivedMessageDelegate. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoClientOnReceivedMessageDelegate = class
    class function Create: _ClientOnReceivedMessageDelegate;
    class function CreateRemote(const MachineName: string): _ClientOnReceivedMessageDelegate;
  end;

// *********************************************************************//
// La classe CoClientOnSendMessageDelegate fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _ClientOnSendMessageDelegate exposée
// par la CoClasse ClientOnSendMessageDelegate. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoClientOnSendMessageDelegate = class
    class function Create: _ClientOnSendMessageDelegate;
    class function CreateRemote(const MachineName: string): _ClientOnSendMessageDelegate;
  end;

// *********************************************************************//
// La classe CoClientOnReplyDelegate fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _ClientOnReplyDelegate exposée
// par la CoClasse ClientOnReplyDelegate. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoClientOnReplyDelegate = class
    class function Create: _ClientOnReplyDelegate;
    class function CreateRemote(const MachineName: string): _ClientOnReplyDelegate;
  end;

// *********************************************************************//
// La classe CoClientServerOnMessageToLog fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _ClientServerOnMessageToLog exposée
// par la CoClasse ClientServerOnMessageToLog. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoClientServerOnMessageToLog = class
    class function Create: _ClientServerOnMessageToLog;
    class function CreateRemote(const MachineName: string): _ClientServerOnMessageToLog;
  end;

// *********************************************************************//
// La classe CoThreadFunction fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _ThreadFunction exposée
// par la CoClasse ThreadFunction. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoThreadFunction = class
    class function Create: _ThreadFunction;
    class function CreateRemote(const MachineName: string): _ThreadFunction;
  end;

// *********************************************************************//
// La classe CoThreadTerminates fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _ThreadTerminates exposée
// par la CoClasse ThreadTerminates. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoThreadTerminates = class
    class function Create: _ThreadTerminates;
    class function CreateRemote(const MachineName: string): _ThreadTerminates;
  end;

// *********************************************************************//
// La classe CoTimerCompleteDelegate fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _TimerCompleteDelegate exposée
// par la CoClasse TimerCompleteDelegate. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoTimerCompleteDelegate = class
    class function Create: _TimerCompleteDelegate;
    class function CreateRemote(const MachineName: string): _TimerCompleteDelegate;
  end;

// *********************************************************************//
// La classe CoWin32UIActivityDelegate fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _Win32UIActivityDelegate exposée
// par la CoClasse Win32UIActivityDelegate. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoWin32UIActivityDelegate = class
    class function Create: _Win32UIActivityDelegate;
    class function CreateRemote(const MachineName: string): _Win32UIActivityDelegate;
  end;

// *********************************************************************//
// La classe CoFeedRecordDelegate fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut _FeedRecordDelegate exposée
// par la CoClasse FeedRecordDelegate. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoFeedRecordDelegate = class
    class function Create: _FeedRecordDelegate;
    class function CreateRemote(const MachineName: string): _FeedRecordDelegate;
  end;

implementation

uses System.Win.ComObj;

class function CoCStreamClientIO.Create: IStreamClientIO;
begin
  Result := CreateComObject(CLASS_CStreamClientIO) as IStreamClientIO;
end;

class function CoCStreamClientIO.CreateRemote(const MachineName: string): IStreamClientIO;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CStreamClientIO) as IStreamClientIO;
end;

class function CoCStreamServerIO.Create: IStreamServerIO;
begin
  Result := CreateComObject(CLASS_CStreamServerIO) as IStreamServerIO;
end;

class function CoCStreamServerIO.CreateRemote(const MachineName: string): IStreamServerIO;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CStreamServerIO) as IStreamServerIO;
end;

class function CoCStreamServerStatistics.Create: IStreamServerStatistics;
begin
  Result := CreateComObject(CLASS_CStreamServerStatistics) as IStreamServerStatistics;
end;

class function CoCStreamServerStatistics.CreateRemote(const MachineName: string): IStreamServerStatistics;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CStreamServerStatistics) as IStreamServerStatistics;
end;

class function CoCStreamServerStartSettings.Create: IStreamServerStartSettings;
begin
  Result := CreateComObject(CLASS_CStreamServerStartSettings) as IStreamServerStartSettings;
end;

class function CoCStreamServerStartSettings.CreateRemote(const MachineName: string): IStreamServerStartSettings;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CStreamServerStartSettings) as IStreamServerStartSettings;
end;

class function CoCStreamClientSettings.Create: IStreamClientSettings;
begin
  Result := CreateComObject(CLASS_CStreamClientSettings) as IStreamClientSettings;
end;

class function CoCStreamClientSettings.CreateRemote(const MachineName: string): IStreamClientSettings;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CStreamClientSettings) as IStreamClientSettings;
end;

class function CoCStreamServerSettings.Create: IStreamServerSettings;
begin
  Result := CreateComObject(CLASS_CStreamServerSettings) as IStreamServerSettings;
end;

class function CoCStreamServerSettings.CreateRemote(const MachineName: string): IStreamServerSettings;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CStreamServerSettings) as IStreamServerSettings;
end;

class function CoCThread.Create: IThread;
begin
  Result := CreateComObject(CLASS_CThread) as IThread;
end;

class function CoCThread.CreateRemote(const MachineName: string): IThread;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CThread) as IThread;
end;

class function CoCThreadEvents.Create: _Object;
begin
  Result := CreateComObject(CLASS_CThreadEvents) as _Object;
end;

class function CoCThreadEvents.CreateRemote(const MachineName: string): _Object;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CThreadEvents) as _Object;
end;

class function CoCThreadData.Create: IThreadData;
begin
  Result := CreateComObject(CLASS_CThreadData) as IThreadData;
end;

class function CoCThreadData.CreateRemote(const MachineName: string): IThreadData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CThreadData) as IThreadData;
end;

class function CoEDisconnected.Create: _EDisconnected;
begin
  Result := CreateComObject(CLASS_EDisconnected) as _EDisconnected;
end;

class function CoEDisconnected.CreateRemote(const MachineName: string): _EDisconnected;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EDisconnected) as _EDisconnected;
end;

class function CoEInvalidFormat.Create: _EInvalidFormat;
begin
  Result := CreateComObject(CLASS_EInvalidFormat) as _EInvalidFormat;
end;

class function CoEInvalidFormat.CreateRemote(const MachineName: string): _EInvalidFormat;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EInvalidFormat) as _EInvalidFormat;
end;

class function CoEOutOfRange.Create: _EOutOfRange;
begin
  Result := CreateComObject(CLASS_EOutOfRange) as _EOutOfRange;
end;

class function CoEOutOfRange.CreateRemote(const MachineName: string): _EOutOfRange;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EOutOfRange) as _EOutOfRange;
end;

class function CoCJsonTypeExtensions.Create: _CJsonTypeExtensions;
begin
  Result := CreateComObject(CLASS_CJsonTypeExtensions) as _CJsonTypeExtensions;
end;

class function CoCJsonTypeExtensions.CreateRemote(const MachineName: string): _CJsonTypeExtensions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CJsonTypeExtensions) as _CJsonTypeExtensions;
end;

class function CoCMiscExtensions.Create: _CMiscExtensions;
begin
  Result := CreateComObject(CLASS_CMiscExtensions) as _CMiscExtensions;
end;

class function CoCMiscExtensions.CreateRemote(const MachineName: string): _CMiscExtensions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CMiscExtensions) as _CMiscExtensions;
end;

class function CoENotImplemented.Create: _ENotImplemented;
begin
  Result := CreateComObject(CLASS_ENotImplemented) as _ENotImplemented;
end;

class function CoENotImplemented.CreateRemote(const MachineName: string): _ENotImplemented;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ENotImplemented) as _ENotImplemented;
end;

class function CoCStreamParameters.Create: _CStreamParameters;
begin
  Result := CreateComObject(CLASS_CStreamParameters) as _CStreamParameters;
end;

class function CoCStreamParameters.CreateRemote(const MachineName: string): _CStreamParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CStreamParameters) as _CStreamParameters;
end;

class function CoSendAsyncType.Create: _SendAsyncType;
begin
  Result := CreateComObject(CLASS_SendAsyncType) as _SendAsyncType;
end;

class function CoSendAsyncType.CreateRemote(const MachineName: string): _SendAsyncType;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SendAsyncType) as _SendAsyncType;
end;

class function CoServerOnStartDelegate.Create: _ServerOnStartDelegate;
begin
  Result := CreateComObject(CLASS_ServerOnStartDelegate) as _ServerOnStartDelegate;
end;

class function CoServerOnStartDelegate.CreateRemote(const MachineName: string): _ServerOnStartDelegate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServerOnStartDelegate) as _ServerOnStartDelegate;
end;

class function CoServerOnConnectDelegate.Create: _ServerOnConnectDelegate;
begin
  Result := CreateComObject(CLASS_ServerOnConnectDelegate) as _ServerOnConnectDelegate;
end;

class function CoServerOnConnectDelegate.CreateRemote(const MachineName: string): _ServerOnConnectDelegate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServerOnConnectDelegate) as _ServerOnConnectDelegate;
end;

class function CoServerOnMessageDelegate.Create: _ServerOnMessageDelegate;
begin
  Result := CreateComObject(CLASS_ServerOnMessageDelegate) as _ServerOnMessageDelegate;
end;

class function CoServerOnMessageDelegate.CreateRemote(const MachineName: string): _ServerOnMessageDelegate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServerOnMessageDelegate) as _ServerOnMessageDelegate;
end;

class function CoServerOnDisconnectDelegate.Create: _ServerOnDisconnectDelegate;
begin
  Result := CreateComObject(CLASS_ServerOnDisconnectDelegate) as _ServerOnDisconnectDelegate;
end;

class function CoServerOnDisconnectDelegate.CreateRemote(const MachineName: string): _ServerOnDisconnectDelegate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServerOnDisconnectDelegate) as _ServerOnDisconnectDelegate;
end;

class function CoServerOnStopDelegate.Create: _ServerOnStopDelegate;
begin
  Result := CreateComObject(CLASS_ServerOnStopDelegate) as _ServerOnStopDelegate;
end;

class function CoServerOnStopDelegate.CreateRemote(const MachineName: string): _ServerOnStopDelegate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServerOnStopDelegate) as _ServerOnStopDelegate;
end;

class function CoClientOnReceivedMessageDelegate.Create: _ClientOnReceivedMessageDelegate;
begin
  Result := CreateComObject(CLASS_ClientOnReceivedMessageDelegate) as _ClientOnReceivedMessageDelegate;
end;

class function CoClientOnReceivedMessageDelegate.CreateRemote(const MachineName: string): _ClientOnReceivedMessageDelegate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClientOnReceivedMessageDelegate) as _ClientOnReceivedMessageDelegate;
end;

class function CoClientOnSendMessageDelegate.Create: _ClientOnSendMessageDelegate;
begin
  Result := CreateComObject(CLASS_ClientOnSendMessageDelegate) as _ClientOnSendMessageDelegate;
end;

class function CoClientOnSendMessageDelegate.CreateRemote(const MachineName: string): _ClientOnSendMessageDelegate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClientOnSendMessageDelegate) as _ClientOnSendMessageDelegate;
end;

class function CoClientOnReplyDelegate.Create: _ClientOnReplyDelegate;
begin
  Result := CreateComObject(CLASS_ClientOnReplyDelegate) as _ClientOnReplyDelegate;
end;

class function CoClientOnReplyDelegate.CreateRemote(const MachineName: string): _ClientOnReplyDelegate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClientOnReplyDelegate) as _ClientOnReplyDelegate;
end;

class function CoClientServerOnMessageToLog.Create: _ClientServerOnMessageToLog;
begin
  Result := CreateComObject(CLASS_ClientServerOnMessageToLog) as _ClientServerOnMessageToLog;
end;

class function CoClientServerOnMessageToLog.CreateRemote(const MachineName: string): _ClientServerOnMessageToLog;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClientServerOnMessageToLog) as _ClientServerOnMessageToLog;
end;

class function CoThreadFunction.Create: _ThreadFunction;
begin
  Result := CreateComObject(CLASS_ThreadFunction) as _ThreadFunction;
end;

class function CoThreadFunction.CreateRemote(const MachineName: string): _ThreadFunction;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ThreadFunction) as _ThreadFunction;
end;

class function CoThreadTerminates.Create: _ThreadTerminates;
begin
  Result := CreateComObject(CLASS_ThreadTerminates) as _ThreadTerminates;
end;

class function CoThreadTerminates.CreateRemote(const MachineName: string): _ThreadTerminates;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ThreadTerminates) as _ThreadTerminates;
end;

class function CoTimerCompleteDelegate.Create: _TimerCompleteDelegate;
begin
  Result := CreateComObject(CLASS_TimerCompleteDelegate) as _TimerCompleteDelegate;
end;

class function CoTimerCompleteDelegate.CreateRemote(const MachineName: string): _TimerCompleteDelegate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TimerCompleteDelegate) as _TimerCompleteDelegate;
end;

class function CoWin32UIActivityDelegate.Create: _Win32UIActivityDelegate;
begin
  Result := CreateComObject(CLASS_Win32UIActivityDelegate) as _Win32UIActivityDelegate;
end;

class function CoWin32UIActivityDelegate.CreateRemote(const MachineName: string): _Win32UIActivityDelegate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Win32UIActivityDelegate) as _Win32UIActivityDelegate;
end;

class function CoFeedRecordDelegate.Create: _FeedRecordDelegate;
begin
  Result := CreateComObject(CLASS_FeedRecordDelegate) as _FeedRecordDelegate;
end;

class function CoFeedRecordDelegate.CreateRemote(const MachineName: string): _FeedRecordDelegate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FeedRecordDelegate) as _FeedRecordDelegate;
end;

end.
