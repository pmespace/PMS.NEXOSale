unit PMS_COMMON_TLB;

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
// Type Lib: C:\Users\philippe\Documents\Dev\NEXOSale\bin\PMS.COMMON.tlb (1)
// LIBID: {9FB10ADB-2F33-3CE0-A35B-326C388ECCC4}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
// Parent TypeLibrary:
//   (0) v1.8 PMS_NEXOSALE30, (C:\Users\philippe\Documents\Dev\NEXOSale\bin\PMS.NEXOSALE30.tlb)
// SYS_KIND: SYS_WIN64
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  PMS_COMMONMajorVersion = 7;
  PMS_COMMONMinorVersion = 5;

  LIBID_PMS_COMMON: TGUID = '{9FB10ADB-2F33-3CE0-A35B-326C388ECCC4}';

  IID__EDisconnected: TGUID = '{CA0B69CD-764A-304C-B429-626DB65562CD}';
  IID__EInvalidFormat: TGUID = '{C55F93A5-C250-3CE4-8CEC-040BA84D26B9}';
  IID__EOutOfRange: TGUID = '{C793C680-C944-3870-8434-392142B11804}';
  IID__CLogMsg: TGUID = '{03941062-3C82-3785-9DF1-E912334E2594}';
  CLASS_CLogMsgs: TGUID = '{89BF28D1-044E-3727-B846-8A467150BEE5}';
  IID__CMiscExtensions: TGUID = '{5FADEBB6-E657-349B-BACF-C130E4657E4D}';
  IID__ENotImplemented: TGUID = '{E7726354-3384-388F-8C31-F104B248E3A7}';
  IID__CSafeBase: TGUID = '{7B1E15C6-06CE-3647-A83B-C64D44346340}';
  CLASS_CSafeStringList: TGUID = '{36E77450-B165-4F64-9B67-280D4986FCB8}';
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
  IID_ISynchronize: TGUID = '{0D6D4011-3542-4192-97B8-7B67358F6DBE}';
  CLASS_CSynchronize: TGUID = '{C6E23741-18B2-4770-AF0F-D654B98562FF}';
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
  CLASS_EDisconnected: TGUID = '{2CFAE450-1BD4-3EE1-BFDB-DA1F877FD3E3}';
  CLASS_EInvalidFormat: TGUID = '{D52BF81A-9D97-3B63-99E5-11C59464E5A6}';
  CLASS_EOutOfRange: TGUID = '{406B2CFE-01A4-3633-959C-DFCB77188E4F}';
  CLASS_CLogMsg: TGUID = '{172DF64B-4931-3F0B-82AB-F330FF1F7E6A}';
  CLASS_CMiscExtensions: TGUID = '{E291A3F5-81AF-377B-BF55-6F46D5D136E2}';
  CLASS_ENotImplemented: TGUID = '{762B5126-BA90-3C73-8A8A-0E8A09656099}';
  CLASS_CSafeBase: TGUID = '{BB8589D0-C15D-389E-868B-1E252FA2F2C7}';
  CLASS_CStreamParameters: TGUID = '{AA07E0C7-73B9-3E5A-94EC-754B4110D304}';
  CLASS_SendAsyncType: TGUID = '{FA2ECE64-2A9B-3CB4-959D-1C245F80010B}';
  CLASS_ServerOnStartDelegate: TGUID = '{B7973C37-1042-3CF3-BA92-B0337E1564E3}';
  CLASS_ServerOnConnectDelegate: TGUID = '{6BD832C2-89AE-33C2-B868-E6CD299836EF}';
  CLASS_ServerOnMessageDelegate: TGUID = '{FAC58548-C992-3934-9FDF-2612B4004323}';
  CLASS_ServerOnDisconnectDelegate: TGUID = '{DA7C7D62-7EF9-3A62-A871-54388E757A9E}';
  CLASS_ServerOnStopDelegate: TGUID = '{030BB428-54DD-3157-91B6-1D318D6D1530}';
  CLASS_ClientOnReceivedMessageDelegate: TGUID = '{24927CB6-9757-3A5D-B1E5-504D9DC02047}';
  CLASS_ClientOnSendMessageDelegate: TGUID = '{266E826A-F9D8-3004-B72D-946CBA8740F3}';
  CLASS_ClientOnReplyDelegate: TGUID = '{11DD45C9-BBE1-36B8-9487-5FFEBDFCFD9E}';
  CLASS_ClientServerOnMessageToLog: TGUID = '{25882531-0821-34C2-B98D-414C4CC640EE}';
  CLASS_ThreadFunction: TGUID = '{D415FF85-70C0-36BB-A3BB-D2521076C33F}';
  CLASS_ThreadTerminates: TGUID = '{1B0EE091-646D-3D61-8489-85A1DDFE5CEC}';
  CLASS_TimerCompleteDelegate: TGUID = '{827366AA-BE49-3D5D-8FBE-BCD487C1B3FD}';
  CLASS_Win32UIActivityDelegate: TGUID = '{DE1CE61B-CC82-3FA6-A55F-F65A04F4EDBC}';
  CLASS_FeedRecordDelegate: TGUID = '{DA35543F-139C-3ACB-9231-BF35ECDCDA0B}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum TLog
type
  TLog = TOleEnum;
const
  TLog_FMNGT = $FFFFFFFE;
  TLog__begin = $FFFFFFFF;
  TLog_DEBUG = $00000000;
  TLog_INFOR = $00000001;
  TLog_TRACE = $00000002;
  TLog_WARNG = $00000003;
  TLog_ERROR = $00000004;
  TLog_EXCPT = $00000005;
  TLog__end = $00000006;
  TLog__none = $00000007;

// Constants for enum SendAsyncEnum
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

// Constants for enum ThreadResult
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

// Constants for enum VersionType
type
  VersionType = TOleEnum;
const
  VersionType_executable = $00000000;
  VersionType_assembly = $00000001;
  VersionType_assemblyFile = $00000002;

// Constants for enum DateFormat
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

// Constants for enum SWL
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
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _EDisconnected = interface;
  _EDisconnectedDisp = dispinterface;
  _EInvalidFormat = interface;
  _EInvalidFormatDisp = dispinterface;
  _EOutOfRange = interface;
  _EOutOfRangeDisp = dispinterface;
  _CLogMsg = interface;
  _CLogMsgDisp = dispinterface;
  _CMiscExtensions = interface;
  _CMiscExtensionsDisp = dispinterface;
  _ENotImplemented = interface;
  _ENotImplementedDisp = dispinterface;
  _CSafeBase = interface;
  _CSafeBaseDisp = dispinterface;
  IStreamClientIO = interface;
  IStreamServerIO = interface;
  _CStreamParameters = interface;
  _CStreamParametersDisp = dispinterface;
  IStreamServerStatistics = interface;
  IStreamServerStartSettings = interface;
  IStreamServer = interface;
  IStreamClientSettings = interface;
  IStreamServerSettings = interface;
  ISynchronize = interface;
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
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CLogMsgs = IEnumerable;
  CSafeStringList = IEnumerable;
  CStreamClientIO = IStreamClientIO;
  CStreamServerIO = IStreamServerIO;
  CStreamServerStatistics = IStreamServerStatistics;
  CStreamServerStartSettings = IStreamServerStartSettings;
  CStreamClientSettings = IStreamClientSettings;
  CStreamServerSettings = IStreamServerSettings;
  CSynchronize = ISynchronize;
  CThread = IThread;
  CThreadEvents = _Object;
  CThreadData = IThreadData;
  EDisconnected = _EDisconnected;
  EInvalidFormat = _EInvalidFormat;
  EOutOfRange = _EOutOfRange;
  CLogMsg = _CLogMsg;
  CMiscExtensions = _CMiscExtensions;
  ENotImplemented = _ENotImplemented;
  CSafeBase = _CSafeBase;
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
// Interface: _EDisconnected
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {CA0B69CD-764A-304C-B429-626DB65562CD}
// *********************************************************************//
  _EDisconnected = interface(IDispatch)
    ['{CA0B69CD-764A-304C-B429-626DB65562CD}']
  end;

// *********************************************************************//
// DispIntf:  _EDisconnectedDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {CA0B69CD-764A-304C-B429-626DB65562CD}
// *********************************************************************//
  _EDisconnectedDisp = dispinterface
    ['{CA0B69CD-764A-304C-B429-626DB65562CD}']
  end;

// *********************************************************************//
// Interface: _EInvalidFormat
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C55F93A5-C250-3CE4-8CEC-040BA84D26B9}
// *********************************************************************//
  _EInvalidFormat = interface(IDispatch)
    ['{C55F93A5-C250-3CE4-8CEC-040BA84D26B9}']
  end;

// *********************************************************************//
// DispIntf:  _EInvalidFormatDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C55F93A5-C250-3CE4-8CEC-040BA84D26B9}
// *********************************************************************//
  _EInvalidFormatDisp = dispinterface
    ['{C55F93A5-C250-3CE4-8CEC-040BA84D26B9}']
  end;

// *********************************************************************//
// Interface: _EOutOfRange
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C793C680-C944-3870-8434-392142B11804}
// *********************************************************************//
  _EOutOfRange = interface(IDispatch)
    ['{C793C680-C944-3870-8434-392142B11804}']
  end;

// *********************************************************************//
// DispIntf:  _EOutOfRangeDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C793C680-C944-3870-8434-392142B11804}
// *********************************************************************//
  _EOutOfRangeDisp = dispinterface
    ['{C793C680-C944-3870-8434-392142B11804}']
  end;

// *********************************************************************//
// Interface: _CLogMsg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {03941062-3C82-3785-9DF1-E912334E2594}
// *********************************************************************//
  _CLogMsg = interface(IDispatch)
    ['{03941062-3C82-3785-9DF1-E912334E2594}']
  end;

// *********************************************************************//
// DispIntf:  _CLogMsgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {03941062-3C82-3785-9DF1-E912334E2594}
// *********************************************************************//
  _CLogMsgDisp = dispinterface
    ['{03941062-3C82-3785-9DF1-E912334E2594}']
  end;

// *********************************************************************//
// Interface: _CMiscExtensions
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5FADEBB6-E657-349B-BACF-C130E4657E4D}
// *********************************************************************//
  _CMiscExtensions = interface(IDispatch)
    ['{5FADEBB6-E657-349B-BACF-C130E4657E4D}']
  end;

// *********************************************************************//
// DispIntf:  _CMiscExtensionsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5FADEBB6-E657-349B-BACF-C130E4657E4D}
// *********************************************************************//
  _CMiscExtensionsDisp = dispinterface
    ['{5FADEBB6-E657-349B-BACF-C130E4657E4D}']
  end;

// *********************************************************************//
// Interface: _ENotImplemented
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E7726354-3384-388F-8C31-F104B248E3A7}
// *********************************************************************//
  _ENotImplemented = interface(IDispatch)
    ['{E7726354-3384-388F-8C31-F104B248E3A7}']
  end;

// *********************************************************************//
// DispIntf:  _ENotImplementedDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E7726354-3384-388F-8C31-F104B248E3A7}
// *********************************************************************//
  _ENotImplementedDisp = dispinterface
    ['{E7726354-3384-388F-8C31-F104B248E3A7}']
  end;

// *********************************************************************//
// Interface: _CSafeBase
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7B1E15C6-06CE-3647-A83B-C64D44346340}
// *********************************************************************//
  _CSafeBase = interface(IDispatch)
    ['{7B1E15C6-06CE-3647-A83B-C64D44346340}']
  end;

// *********************************************************************//
// DispIntf:  _CSafeBaseDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7B1E15C6-06CE-3647-A83B-C64D44346340}
// *********************************************************************//
  _CSafeBaseDisp = dispinterface
    ['{7B1E15C6-06CE-3647-A83B-C64D44346340}']
  end;

// *********************************************************************//
// Interface: IStreamClientIO
// Flags:     (256) OleAutomation
// GUID:      {8032AC79-8819-4FD3-A4E2-A97D24D318FC}
// *********************************************************************//
  IStreamClientIO = interface(IUnknown)
    ['{8032AC79-8819-4FD3-A4E2-A97D24D318FC}']
    function Get_SizeHeader(out pRetVal: Integer): HResult; stdcall;
    function Set_SizeHeader(pRetVal: Integer): HResult; stdcall;
    function Get_UseSizeHeader(out pRetVal: WordBool): HResult; stdcall;
    function Set_UseSizeHeader(pRetVal: WordBool): HResult; stdcall;
    function Get_ToString(out pRetVal: WideString): HResult; stdcall;
    function Get_Tcp(out pRetVal: IUnknown): HResult; stdcall;
    function Get_Connected(out pRetVal: WordBool): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IStreamServerIO
// Flags:     (256) OleAutomation
// GUID:      {DBB95FAB-171A-4DFA-BF32-6E0AC64DC506}
// *********************************************************************//
  IStreamServerIO = interface(IUnknown)
    ['{DBB95FAB-171A-4DFA-BF32-6E0AC64DC506}']
    function Get_SizeHeader(out pRetVal: Integer): HResult; stdcall;
    function Set_SizeHeader(pRetVal: Integer): HResult; stdcall;
    function Get_UseSizeHeader(out pRetVal: WordBool): HResult; stdcall;
    function Set_UseSizeHeader(pRetVal: WordBool): HResult; stdcall;
    function Get_ToString(out pRetVal: WideString): HResult; stdcall;
    function Get_Tcp(out pRetVal: IUnknown): HResult; stdcall;
    function Get_Connected(out pRetVal: WordBool): HResult; stdcall;
    function Get_Port(out pRetVal: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: _CStreamParameters
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {918AC90A-E98B-3FB8-B977-86677DF8B582}
// *********************************************************************//
  _CStreamParameters = interface(IDispatch)
    ['{918AC90A-E98B-3FB8-B977-86677DF8B582}']
  end;

// *********************************************************************//
// DispIntf:  _CStreamParametersDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {918AC90A-E98B-3FB8-B977-86677DF8B582}
// *********************************************************************//
  _CStreamParametersDisp = dispinterface
    ['{918AC90A-E98B-3FB8-B977-86677DF8B582}']
  end;

// *********************************************************************//
// Interface: IStreamServerStatistics
// Flags:     (256) OleAutomation
// GUID:      {7711DAC5-9223-4760-A93C-D2C993359A61}
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
// Interface: IStreamServerStartSettings
// Flags:     (256) OleAutomation
// GUID:      {8E3BBBB0-F498-47BF-AB18-5C84B80EE4B4}
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
// Interface: IStreamServer
// Flags:     (256) OleAutomation
// GUID:      {7E3C2011-C388-4813-B9C5-B24D6A14892F}
// *********************************************************************//
  IStreamServer = interface(IUnknown)
    ['{7E3C2011-C388-4813-B9C5-B24D6A14892F}']
    function Get_Port(out pRetVal: Integer): HResult; stdcall;
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
// Interface: IStreamClientSettings
// Flags:     (256) OleAutomation
// GUID:      {BE7495F7-DA7A-4584-AEB9-789AF316C971}
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
    function Get_DefaultServerPort(out pRetVal: Integer): HResult; stdcall;
    function Get_OnMessageToLog(out pRetVal: _ClientServerOnMessageToLog): HResult; stdcall;
    function _Set_OnMessageToLog(const pRetVal: _ClientServerOnMessageToLog): HResult; stdcall;
    function Get_LocalhostV6(out pRetVal: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IStreamServerSettings
// Flags:     (256) OleAutomation
// GUID:      {F4BC72B2-4375-4723-B59D-809182C8CFDE}
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
    function Get_DefaultServerPort(out pRetVal: Integer): HResult; stdcall;
    function Get_OnMessageToLog(out pRetVal: _ClientServerOnMessageToLog): HResult; stdcall;
    function _Set_OnMessageToLog(const pRetVal: _ClientServerOnMessageToLog): HResult; stdcall;
    function Get_LocalhostV6(out pRetVal: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ISynchronize
// Flags:     (256) OleAutomation
// GUID:      {0D6D4011-3542-4192-97B8-7B67358F6DBE}
// *********************************************************************//
  ISynchronize = interface(IUnknown)
    ['{0D6D4011-3542-4192-97B8-7B67358F6DBE}']
    function WaitAll(timer: Integer; out pRetVal: WordBool): HResult; stdcall;
    function WaitAny(timer: Integer; out pRetVal: Integer): HResult; stdcall;
    function Reset(out pRetVal: WordBool): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IThread
// Flags:     (256) OleAutomation
// GUID:      {420E0E6B-C6D4-499A-87A7-992FECBFEFC3}
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
    function Get_Name(out pRetVal: WideString): HResult; stdcall;
    function Set_Name(const pRetVal: WideString): HResult; stdcall;
    function Get_Description(out pRetVal: WideString): HResult; stdcall;
    function Get_HasBeenStarted(out pRetVal: WordBool): HResult; stdcall;
    function Get_CanStart(out pRetVal: WordBool): HResult; stdcall;
    function Wait(timer: Integer; out pRetVal: WordBool): HResult; stdcall;
    function SendNotification(value: Integer; stopped: WordBool): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IThreadEvents
// Flags:     (256) OleAutomation
// GUID:      {3FB79C95-70A3-41DA-AEA7-02DFBFD23BB7}
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
// Interface: IThreadData
// Flags:     (256) OleAutomation
// GUID:      {CD4AB05D-ED37-493A-B658-C4D5D86B6864}
// *********************************************************************//
  IThreadData = interface(IUnknown)
    ['{CD4AB05D-ED37-493A-B658-C4D5D86B6864}']
    function Get_WindowToWarn(out pRetVal: Int64): HResult; stdcall;
    function Set_WindowToWarn(pRetVal: Int64): HResult; stdcall;
    function Get_StoppedMessage(out pRetVal: Integer): HResult; stdcall;
    function Set_StoppedMessage(pRetVal: Integer): HResult; stdcall;
    function Get_InformationMessage(out pRetVal: Integer): HResult; stdcall;
    function Set_InformationMessage(pRetVal: Integer): HResult; stdcall;
    function Get_IsValid(out pRetVal: WordBool): HResult; stdcall;
    function Get_WMThreadStopped(out pRetVal: Integer): HResult; stdcall;
    function Get_WMThreadInformation(out pRetVal: Integer): HResult; stdcall;
    function Get_EventToSignal(out pRetVal: _EventWaitHandle): HResult; stdcall;
    function _Set_EventToSignal(const pRetVal: _EventWaitHandle): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: _SendAsyncType
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DCFE0E70-4BCF-3612-B3E9-C9B7EAF687E9}
// *********************************************************************//
  _SendAsyncType = interface(IDispatch)
    ['{DCFE0E70-4BCF-3612-B3E9-C9B7EAF687E9}']
  end;

// *********************************************************************//
// DispIntf:  _SendAsyncTypeDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DCFE0E70-4BCF-3612-B3E9-C9B7EAF687E9}
// *********************************************************************//
  _SendAsyncTypeDisp = dispinterface
    ['{DCFE0E70-4BCF-3612-B3E9-C9B7EAF687E9}']
  end;

// *********************************************************************//
// Interface: _ServerOnStartDelegate
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A08079B2-47AC-36E9-8A8E-7273B55BD5D2}
// *********************************************************************//
  _ServerOnStartDelegate = interface(IDispatch)
    ['{A08079B2-47AC-36E9-8A8E-7273B55BD5D2}']
  end;

// *********************************************************************//
// DispIntf:  _ServerOnStartDelegateDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A08079B2-47AC-36E9-8A8E-7273B55BD5D2}
// *********************************************************************//
  _ServerOnStartDelegateDisp = dispinterface
    ['{A08079B2-47AC-36E9-8A8E-7273B55BD5D2}']
  end;

// *********************************************************************//
// Interface: _ServerOnConnectDelegate
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {472D1DE4-CCB1-3FC5-BCE0-F6003FF187F8}
// *********************************************************************//
  _ServerOnConnectDelegate = interface(IDispatch)
    ['{472D1DE4-CCB1-3FC5-BCE0-F6003FF187F8}']
  end;

// *********************************************************************//
// DispIntf:  _ServerOnConnectDelegateDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {472D1DE4-CCB1-3FC5-BCE0-F6003FF187F8}
// *********************************************************************//
  _ServerOnConnectDelegateDisp = dispinterface
    ['{472D1DE4-CCB1-3FC5-BCE0-F6003FF187F8}']
  end;

// *********************************************************************//
// Interface: _ServerOnMessageDelegate
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BFA46CC8-A3DA-38CC-9BD9-7FCB40394348}
// *********************************************************************//
  _ServerOnMessageDelegate = interface(IDispatch)
    ['{BFA46CC8-A3DA-38CC-9BD9-7FCB40394348}']
  end;

// *********************************************************************//
// DispIntf:  _ServerOnMessageDelegateDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BFA46CC8-A3DA-38CC-9BD9-7FCB40394348}
// *********************************************************************//
  _ServerOnMessageDelegateDisp = dispinterface
    ['{BFA46CC8-A3DA-38CC-9BD9-7FCB40394348}']
  end;

// *********************************************************************//
// Interface: _ServerOnDisconnectDelegate
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4B81353D-4733-3D6B-9C90-835D1DFB0B66}
// *********************************************************************//
  _ServerOnDisconnectDelegate = interface(IDispatch)
    ['{4B81353D-4733-3D6B-9C90-835D1DFB0B66}']
  end;

// *********************************************************************//
// DispIntf:  _ServerOnDisconnectDelegateDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4B81353D-4733-3D6B-9C90-835D1DFB0B66}
// *********************************************************************//
  _ServerOnDisconnectDelegateDisp = dispinterface
    ['{4B81353D-4733-3D6B-9C90-835D1DFB0B66}']
  end;

// *********************************************************************//
// Interface: _ServerOnStopDelegate
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B6BAA48E-2E1B-38AB-AA93-CCD29074370E}
// *********************************************************************//
  _ServerOnStopDelegate = interface(IDispatch)
    ['{B6BAA48E-2E1B-38AB-AA93-CCD29074370E}']
  end;

// *********************************************************************//
// DispIntf:  _ServerOnStopDelegateDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B6BAA48E-2E1B-38AB-AA93-CCD29074370E}
// *********************************************************************//
  _ServerOnStopDelegateDisp = dispinterface
    ['{B6BAA48E-2E1B-38AB-AA93-CCD29074370E}']
  end;

// *********************************************************************//
// Interface: _ClientOnReceivedMessageDelegate
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {684612E3-7F2F-34AA-AD46-78FBB4E99A84}
// *********************************************************************//
  _ClientOnReceivedMessageDelegate = interface(IDispatch)
    ['{684612E3-7F2F-34AA-AD46-78FBB4E99A84}']
  end;

// *********************************************************************//
// DispIntf:  _ClientOnReceivedMessageDelegateDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {684612E3-7F2F-34AA-AD46-78FBB4E99A84}
// *********************************************************************//
  _ClientOnReceivedMessageDelegateDisp = dispinterface
    ['{684612E3-7F2F-34AA-AD46-78FBB4E99A84}']
  end;

// *********************************************************************//
// Interface: _ClientOnSendMessageDelegate
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {37485B63-0D28-3643-B8B0-3E023FD9D4F9}
// *********************************************************************//
  _ClientOnSendMessageDelegate = interface(IDispatch)
    ['{37485B63-0D28-3643-B8B0-3E023FD9D4F9}']
  end;

// *********************************************************************//
// DispIntf:  _ClientOnSendMessageDelegateDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {37485B63-0D28-3643-B8B0-3E023FD9D4F9}
// *********************************************************************//
  _ClientOnSendMessageDelegateDisp = dispinterface
    ['{37485B63-0D28-3643-B8B0-3E023FD9D4F9}']
  end;

// *********************************************************************//
// Interface: _ClientOnReplyDelegate
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {630876F9-312A-3345-817E-E41461F337A8}
// *********************************************************************//
  _ClientOnReplyDelegate = interface(IDispatch)
    ['{630876F9-312A-3345-817E-E41461F337A8}']
  end;

// *********************************************************************//
// DispIntf:  _ClientOnReplyDelegateDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {630876F9-312A-3345-817E-E41461F337A8}
// *********************************************************************//
  _ClientOnReplyDelegateDisp = dispinterface
    ['{630876F9-312A-3345-817E-E41461F337A8}']
  end;

// *********************************************************************//
// Interface: _ClientServerOnMessageToLog
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DE18EFE9-E9ED-31D4-8CD4-D5F8ECD14058}
// *********************************************************************//
  _ClientServerOnMessageToLog = interface(IDispatch)
    ['{DE18EFE9-E9ED-31D4-8CD4-D5F8ECD14058}']
  end;

// *********************************************************************//
// DispIntf:  _ClientServerOnMessageToLogDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DE18EFE9-E9ED-31D4-8CD4-D5F8ECD14058}
// *********************************************************************//
  _ClientServerOnMessageToLogDisp = dispinterface
    ['{DE18EFE9-E9ED-31D4-8CD4-D5F8ECD14058}']
  end;

// *********************************************************************//
// Interface: _ThreadFunction
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {28D4F472-617D-3558-8BD8-716B5AF01E18}
// *********************************************************************//
  _ThreadFunction = interface(IDispatch)
    ['{28D4F472-617D-3558-8BD8-716B5AF01E18}']
  end;

// *********************************************************************//
// DispIntf:  _ThreadFunctionDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {28D4F472-617D-3558-8BD8-716B5AF01E18}
// *********************************************************************//
  _ThreadFunctionDisp = dispinterface
    ['{28D4F472-617D-3558-8BD8-716B5AF01E18}']
  end;

// *********************************************************************//
// Interface: _ThreadTerminates
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {07CA5805-3D55-397D-928E-3638734DFB16}
// *********************************************************************//
  _ThreadTerminates = interface(IDispatch)
    ['{07CA5805-3D55-397D-928E-3638734DFB16}']
  end;

// *********************************************************************//
// DispIntf:  _ThreadTerminatesDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {07CA5805-3D55-397D-928E-3638734DFB16}
// *********************************************************************//
  _ThreadTerminatesDisp = dispinterface
    ['{07CA5805-3D55-397D-928E-3638734DFB16}']
  end;

// *********************************************************************//
// Interface: _TimerCompleteDelegate
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FD39B2A3-27C1-3253-A87B-B214CC3325F6}
// *********************************************************************//
  _TimerCompleteDelegate = interface(IDispatch)
    ['{FD39B2A3-27C1-3253-A87B-B214CC3325F6}']
  end;

// *********************************************************************//
// DispIntf:  _TimerCompleteDelegateDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FD39B2A3-27C1-3253-A87B-B214CC3325F6}
// *********************************************************************//
  _TimerCompleteDelegateDisp = dispinterface
    ['{FD39B2A3-27C1-3253-A87B-B214CC3325F6}']
  end;

// *********************************************************************//
// Interface: _Win32UIActivityDelegate
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {362514F5-AE98-3E9F-9729-E67E58A3D5D7}
// *********************************************************************//
  _Win32UIActivityDelegate = interface(IDispatch)
    ['{362514F5-AE98-3E9F-9729-E67E58A3D5D7}']
  end;

// *********************************************************************//
// DispIntf:  _Win32UIActivityDelegateDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {362514F5-AE98-3E9F-9729-E67E58A3D5D7}
// *********************************************************************//
  _Win32UIActivityDelegateDisp = dispinterface
    ['{362514F5-AE98-3E9F-9729-E67E58A3D5D7}']
  end;

// *********************************************************************//
// Interface: _FeedRecordDelegate
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7E09070D-FD2E-3546-9F9D-676E61B63B16}
// *********************************************************************//
  _FeedRecordDelegate = interface(IDispatch)
    ['{7E09070D-FD2E-3546-9F9D-676E61B63B16}']
  end;

// *********************************************************************//
// DispIntf:  _FeedRecordDelegateDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {7E09070D-FD2E-3546-9F9D-676E61B63B16}
// *********************************************************************//
  _FeedRecordDelegateDisp = dispinterface
    ['{7E09070D-FD2E-3546-9F9D-676E61B63B16}']
  end;

// *********************************************************************//
// The Class CoCLogMsgs provides a Create and CreateRemote method to          
// create instances of the default interface IEnumerable exposed by              
// the CoClass CLogMsgs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCLogMsgs = class
    class function Create: IEnumerable;
    class function CreateRemote(const MachineName: string): IEnumerable;
  end;

// *********************************************************************//
// The Class CoCSafeStringList provides a Create and CreateRemote method to          
// create instances of the default interface IEnumerable exposed by              
// the CoClass CSafeStringList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCSafeStringList = class
    class function Create: IEnumerable;
    class function CreateRemote(const MachineName: string): IEnumerable;
  end;

// *********************************************************************//
// The Class CoCStreamClientIO provides a Create and CreateRemote method to          
// create instances of the default interface IStreamClientIO exposed by              
// the CoClass CStreamClientIO. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCStreamClientIO = class
    class function Create: IStreamClientIO;
    class function CreateRemote(const MachineName: string): IStreamClientIO;
  end;

// *********************************************************************//
// The Class CoCStreamServerIO provides a Create and CreateRemote method to          
// create instances of the default interface IStreamServerIO exposed by              
// the CoClass CStreamServerIO. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCStreamServerIO = class
    class function Create: IStreamServerIO;
    class function CreateRemote(const MachineName: string): IStreamServerIO;
  end;

// *********************************************************************//
// The Class CoCStreamServerStatistics provides a Create and CreateRemote method to          
// create instances of the default interface IStreamServerStatistics exposed by              
// the CoClass CStreamServerStatistics. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCStreamServerStatistics = class
    class function Create: IStreamServerStatistics;
    class function CreateRemote(const MachineName: string): IStreamServerStatistics;
  end;

// *********************************************************************//
// The Class CoCStreamServerStartSettings provides a Create and CreateRemote method to          
// create instances of the default interface IStreamServerStartSettings exposed by              
// the CoClass CStreamServerStartSettings. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCStreamServerStartSettings = class
    class function Create: IStreamServerStartSettings;
    class function CreateRemote(const MachineName: string): IStreamServerStartSettings;
  end;

// *********************************************************************//
// The Class CoCStreamClientSettings provides a Create and CreateRemote method to          
// create instances of the default interface IStreamClientSettings exposed by              
// the CoClass CStreamClientSettings. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCStreamClientSettings = class
    class function Create: IStreamClientSettings;
    class function CreateRemote(const MachineName: string): IStreamClientSettings;
  end;

// *********************************************************************//
// The Class CoCStreamServerSettings provides a Create and CreateRemote method to          
// create instances of the default interface IStreamServerSettings exposed by              
// the CoClass CStreamServerSettings. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCStreamServerSettings = class
    class function Create: IStreamServerSettings;
    class function CreateRemote(const MachineName: string): IStreamServerSettings;
  end;

// *********************************************************************//
// The Class CoCSynchronize provides a Create and CreateRemote method to          
// create instances of the default interface ISynchronize exposed by              
// the CoClass CSynchronize. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCSynchronize = class
    class function Create: ISynchronize;
    class function CreateRemote(const MachineName: string): ISynchronize;
  end;

// *********************************************************************//
// The Class CoCThread provides a Create and CreateRemote method to          
// create instances of the default interface IThread exposed by              
// the CoClass CThread. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCThread = class
    class function Create: IThread;
    class function CreateRemote(const MachineName: string): IThread;
  end;

// *********************************************************************//
// The Class CoCThreadEvents provides a Create and CreateRemote method to          
// create instances of the default interface _Object exposed by              
// the CoClass CThreadEvents. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCThreadEvents = class
    class function Create: _Object;
    class function CreateRemote(const MachineName: string): _Object;
  end;

// *********************************************************************//
// The Class CoCThreadData provides a Create and CreateRemote method to          
// create instances of the default interface IThreadData exposed by              
// the CoClass CThreadData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCThreadData = class
    class function Create: IThreadData;
    class function CreateRemote(const MachineName: string): IThreadData;
  end;

// *********************************************************************//
// The Class CoEDisconnected provides a Create and CreateRemote method to          
// create instances of the default interface _EDisconnected exposed by              
// the CoClass EDisconnected. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEDisconnected = class
    class function Create: _EDisconnected;
    class function CreateRemote(const MachineName: string): _EDisconnected;
  end;

// *********************************************************************//
// The Class CoEInvalidFormat provides a Create and CreateRemote method to          
// create instances of the default interface _EInvalidFormat exposed by              
// the CoClass EInvalidFormat. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEInvalidFormat = class
    class function Create: _EInvalidFormat;
    class function CreateRemote(const MachineName: string): _EInvalidFormat;
  end;

// *********************************************************************//
// The Class CoEOutOfRange provides a Create and CreateRemote method to          
// create instances of the default interface _EOutOfRange exposed by              
// the CoClass EOutOfRange. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEOutOfRange = class
    class function Create: _EOutOfRange;
    class function CreateRemote(const MachineName: string): _EOutOfRange;
  end;

// *********************************************************************//
// The Class CoCLogMsg provides a Create and CreateRemote method to          
// create instances of the default interface _CLogMsg exposed by              
// the CoClass CLogMsg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCLogMsg = class
    class function Create: _CLogMsg;
    class function CreateRemote(const MachineName: string): _CLogMsg;
  end;

// *********************************************************************//
// The Class CoCMiscExtensions provides a Create and CreateRemote method to          
// create instances of the default interface _CMiscExtensions exposed by              
// the CoClass CMiscExtensions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCMiscExtensions = class
    class function Create: _CMiscExtensions;
    class function CreateRemote(const MachineName: string): _CMiscExtensions;
  end;

// *********************************************************************//
// The Class CoENotImplemented provides a Create and CreateRemote method to          
// create instances of the default interface _ENotImplemented exposed by              
// the CoClass ENotImplemented. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoENotImplemented = class
    class function Create: _ENotImplemented;
    class function CreateRemote(const MachineName: string): _ENotImplemented;
  end;

// *********************************************************************//
// The Class CoCSafeBase provides a Create and CreateRemote method to          
// create instances of the default interface _CSafeBase exposed by              
// the CoClass CSafeBase. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCSafeBase = class
    class function Create: _CSafeBase;
    class function CreateRemote(const MachineName: string): _CSafeBase;
  end;

// *********************************************************************//
// The Class CoCStreamParameters provides a Create and CreateRemote method to          
// create instances of the default interface _CStreamParameters exposed by              
// the CoClass CStreamParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCStreamParameters = class
    class function Create: _CStreamParameters;
    class function CreateRemote(const MachineName: string): _CStreamParameters;
  end;

// *********************************************************************//
// The Class CoSendAsyncType provides a Create and CreateRemote method to          
// create instances of the default interface _SendAsyncType exposed by              
// the CoClass SendAsyncType. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSendAsyncType = class
    class function Create: _SendAsyncType;
    class function CreateRemote(const MachineName: string): _SendAsyncType;
  end;

// *********************************************************************//
// The Class CoServerOnStartDelegate provides a Create and CreateRemote method to          
// create instances of the default interface _ServerOnStartDelegate exposed by              
// the CoClass ServerOnStartDelegate. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServerOnStartDelegate = class
    class function Create: _ServerOnStartDelegate;
    class function CreateRemote(const MachineName: string): _ServerOnStartDelegate;
  end;

// *********************************************************************//
// The Class CoServerOnConnectDelegate provides a Create and CreateRemote method to          
// create instances of the default interface _ServerOnConnectDelegate exposed by              
// the CoClass ServerOnConnectDelegate. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServerOnConnectDelegate = class
    class function Create: _ServerOnConnectDelegate;
    class function CreateRemote(const MachineName: string): _ServerOnConnectDelegate;
  end;

// *********************************************************************//
// The Class CoServerOnMessageDelegate provides a Create and CreateRemote method to          
// create instances of the default interface _ServerOnMessageDelegate exposed by              
// the CoClass ServerOnMessageDelegate. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServerOnMessageDelegate = class
    class function Create: _ServerOnMessageDelegate;
    class function CreateRemote(const MachineName: string): _ServerOnMessageDelegate;
  end;

// *********************************************************************//
// The Class CoServerOnDisconnectDelegate provides a Create and CreateRemote method to          
// create instances of the default interface _ServerOnDisconnectDelegate exposed by              
// the CoClass ServerOnDisconnectDelegate. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServerOnDisconnectDelegate = class
    class function Create: _ServerOnDisconnectDelegate;
    class function CreateRemote(const MachineName: string): _ServerOnDisconnectDelegate;
  end;

// *********************************************************************//
// The Class CoServerOnStopDelegate provides a Create and CreateRemote method to          
// create instances of the default interface _ServerOnStopDelegate exposed by              
// the CoClass ServerOnStopDelegate. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServerOnStopDelegate = class
    class function Create: _ServerOnStopDelegate;
    class function CreateRemote(const MachineName: string): _ServerOnStopDelegate;
  end;

// *********************************************************************//
// The Class CoClientOnReceivedMessageDelegate provides a Create and CreateRemote method to          
// create instances of the default interface _ClientOnReceivedMessageDelegate exposed by              
// the CoClass ClientOnReceivedMessageDelegate. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClientOnReceivedMessageDelegate = class
    class function Create: _ClientOnReceivedMessageDelegate;
    class function CreateRemote(const MachineName: string): _ClientOnReceivedMessageDelegate;
  end;

// *********************************************************************//
// The Class CoClientOnSendMessageDelegate provides a Create and CreateRemote method to          
// create instances of the default interface _ClientOnSendMessageDelegate exposed by              
// the CoClass ClientOnSendMessageDelegate. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClientOnSendMessageDelegate = class
    class function Create: _ClientOnSendMessageDelegate;
    class function CreateRemote(const MachineName: string): _ClientOnSendMessageDelegate;
  end;

// *********************************************************************//
// The Class CoClientOnReplyDelegate provides a Create and CreateRemote method to          
// create instances of the default interface _ClientOnReplyDelegate exposed by              
// the CoClass ClientOnReplyDelegate. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClientOnReplyDelegate = class
    class function Create: _ClientOnReplyDelegate;
    class function CreateRemote(const MachineName: string): _ClientOnReplyDelegate;
  end;

// *********************************************************************//
// The Class CoClientServerOnMessageToLog provides a Create and CreateRemote method to          
// create instances of the default interface _ClientServerOnMessageToLog exposed by              
// the CoClass ClientServerOnMessageToLog. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClientServerOnMessageToLog = class
    class function Create: _ClientServerOnMessageToLog;
    class function CreateRemote(const MachineName: string): _ClientServerOnMessageToLog;
  end;

// *********************************************************************//
// The Class CoThreadFunction provides a Create and CreateRemote method to          
// create instances of the default interface _ThreadFunction exposed by              
// the CoClass ThreadFunction. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoThreadFunction = class
    class function Create: _ThreadFunction;
    class function CreateRemote(const MachineName: string): _ThreadFunction;
  end;

// *********************************************************************//
// The Class CoThreadTerminates provides a Create and CreateRemote method to          
// create instances of the default interface _ThreadTerminates exposed by              
// the CoClass ThreadTerminates. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoThreadTerminates = class
    class function Create: _ThreadTerminates;
    class function CreateRemote(const MachineName: string): _ThreadTerminates;
  end;

// *********************************************************************//
// The Class CoTimerCompleteDelegate provides a Create and CreateRemote method to          
// create instances of the default interface _TimerCompleteDelegate exposed by              
// the CoClass TimerCompleteDelegate. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTimerCompleteDelegate = class
    class function Create: _TimerCompleteDelegate;
    class function CreateRemote(const MachineName: string): _TimerCompleteDelegate;
  end;

// *********************************************************************//
// The Class CoWin32UIActivityDelegate provides a Create and CreateRemote method to          
// create instances of the default interface _Win32UIActivityDelegate exposed by              
// the CoClass Win32UIActivityDelegate. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWin32UIActivityDelegate = class
    class function Create: _Win32UIActivityDelegate;
    class function CreateRemote(const MachineName: string): _Win32UIActivityDelegate;
  end;

// *********************************************************************//
// The Class CoFeedRecordDelegate provides a Create and CreateRemote method to          
// create instances of the default interface _FeedRecordDelegate exposed by              
// the CoClass FeedRecordDelegate. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFeedRecordDelegate = class
    class function Create: _FeedRecordDelegate;
    class function CreateRemote(const MachineName: string): _FeedRecordDelegate;
  end;

implementation

uses System.Win.ComObj;

class function CoCLogMsgs.Create: IEnumerable;
begin
  Result := CreateComObject(CLASS_CLogMsgs) as IEnumerable;
end;

class function CoCLogMsgs.CreateRemote(const MachineName: string): IEnumerable;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CLogMsgs) as IEnumerable;
end;

class function CoCSafeStringList.Create: IEnumerable;
begin
  Result := CreateComObject(CLASS_CSafeStringList) as IEnumerable;
end;

class function CoCSafeStringList.CreateRemote(const MachineName: string): IEnumerable;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CSafeStringList) as IEnumerable;
end;

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

class function CoCSynchronize.Create: ISynchronize;
begin
  Result := CreateComObject(CLASS_CSynchronize) as ISynchronize;
end;

class function CoCSynchronize.CreateRemote(const MachineName: string): ISynchronize;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CSynchronize) as ISynchronize;
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

class function CoCLogMsg.Create: _CLogMsg;
begin
  Result := CreateComObject(CLASS_CLogMsg) as _CLogMsg;
end;

class function CoCLogMsg.CreateRemote(const MachineName: string): _CLogMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CLogMsg) as _CLogMsg;
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

class function CoCSafeBase.Create: _CSafeBase;
begin
  Result := CreateComObject(CLASS_CSafeBase) as _CSafeBase;
end;

class function CoCSafeBase.CreateRemote(const MachineName: string): _CSafeBase;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CSafeBase) as _CSafeBase;
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
