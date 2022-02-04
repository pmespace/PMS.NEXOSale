unit MC_PluginMICRInterface;

interface

uses   MC_PLuginInterface
     ;

const
   //TMC_MICRDataFormat
   /// <summary>
   /// Unknown MICR data format
   /// </summary>
   /// This is the undefined value about the MICR data format (or Unknown MICR data format has been found)
   /// <seealso cref="TMC_MICRDataFormat" MICR data format/>
   /// <seealso cref="IMC_PluginPrinterV2.ReadMICRTrack" Read MICR tracks/>
   mfUnknown              = 0 ;
   /// <summary>
   /// CMC7 data format
   /// </summary>
   /// MICR data read is in CMC7 format
   /// <seealso cref="TMC_MICRDataFormat" MICR data format/>
   /// <seealso cref="IMC_PluginPrinterV2.ReadMICRTrack" Read MICR tracks/>
   mfCMC7                 = 1 ;
   /// <summary>
   /// E13B data format
   /// </summary>
   /// MICR data read is in E13B format
   /// <seealso cref="TMC_MICRDataFormat" MICR data format/>
   /// <seealso cref="IMC_PluginPrinterV2.ReadMICRTrack" Read MICR tracks/>
   mfE13B                 = 2 ;

type
   /// <summary>
   /// Format of MICR Data
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="mfUnknown" Unknown MICR data format/>
   /// <seealso cref="mfCMC7" MICR data is on CMC7 format/>
   /// <seealso cref="mfE13B" MICR data is on E13B format/>
   TMC_MICRDataFormat = integer ;


   /// <summary>
   /// Interface holding MICR data read by printer driver
   /// </summary>
   /// This interface must be implemented by classes providing MICR data details.<p>
   /// It is a base type for return MICR data from MICR readers during calls to <see cref="IMC_PluginPrinterV2.ReadMICRTracks"/>
   /// <seealso cref="IMC_PluginBase" Driver base interface/>
   IMC_MICRData = interface(IMC_VersionedInterface)
    ['{61757B47-060B-41F5-9887-B79A14C0BB95}']
     function GetMICRKind : TMC_MICRDataFormat  ; stdcall ;
     function GetRawData : widestring ; stdcall ;

     /// <summary>
     /// Returns what kind of MICR data has been read.
     /// <value>A value from <see cref="TMC_MICRDataFormat"/> enumeration</value>
     /// </summary>
     property MICRKind : TMC_MICRDataFormat read GetMICRKind ;
     /// <summary>
     /// Returns not interpreted (raw) MICR data read.
     /// <value>A string that represents MICR read data</value>
     /// </summary>
     property RawData : widestring read GetRawData ;
   end ;

   /// <summary>
   /// Interface to implement when writing a MICR reader driver
   /// </summary>
   /// This interface derives from <see cref="IMC_PluginPrinter"/> and adds the specific features required for managing MICR tracks.<p>
   /// Some printer can be equiped with special devices to read MICR tracks of cheques.
   /// <seealso cref="IMC_PluginBase" Driver base interface/>
   IMC_PluginMICR = interface(IMC_PluginBase)
    ['{32F829C4-393E-490D-B0B4-C9609A96FD23}']
     /// <summary>
     /// Eject cheque MICR reader
     /// </summary>
     /// This method eject any cheque loaded on MICR reader.
     /// <returns>True if the method was successful, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function EjectMICRCheque : boolean ; stdcall ;
     /// <summary>
     /// Read MICR track on cheque
     /// </summary>
     /// Some printers are equiped by a MICR reader device and this methos allows to read it.
     /// <param name="zcMICRTrack"> <see cref="IMC_MICRData"/> interface holding the contents of MICR tracks when it could be read</param>
     /// <returns>True if the method was successful, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function ReadMICRTrack(out zcMICRTrack : IMC_MICRData) : boolean ; stdcall ;
   end ;

   /// <summary>
   /// Specific interface used to read MICR data on <see cref="IMC_PluginCallbackV2.onMC_CPOSCommand"/> calls.
   /// </summary>
   /// This interface is specific to pass input/output parameters to read MICR data process on CPOS co-operation commands.<p>
   /// <seealso cref="IMC_CPOSCommandContext" base interface to use on <see cref="IMC_PluginCallbackV2.onMC_CPOSCommand"/> calls./>
   /// <seealso cref="IMC_PluginCallbackV2.onMC_CPOSCommand" CPOS Co-operarion interface./>
   IMC_CPOSCommandReadMICRChequeContext = interface(IMC_CPOSCommandContext)
    ['{BB765E94-1671-409A-9A4A-8F6398CAD4AA}']
    function GetMICRData : IMC_MICRData ; stdcall ;
    procedure SetMICRData (acMICRData : IMC_MICRData) ; stdcall ;

     /// <summary>
     /// Returns the MICRData read from cheque
     /// <value>A references to an structure containing MICR data</value>
     /// </summary>
     property MICRData : IMC_MICRData read GetMICRData write SetMICRData ;
   end ;

   /// <summary>
   /// Specific interface used to eject bank cheque from MICR reader.
   /// </summary>
   /// This interface is specific to pass input/output parameters to eject bank cheque from MICR reader.<p>
   /// <seealso cref="IMC_CPOSCommandContext" base interface to use on <see cref="IMC_PluginCallbackV2.onMC_CPOSCommand"/> calls./>
   /// <seealso cref="IMC_PluginCallbackV2.onMC_CPOSCommand" CPOS Co-operarion interface./>
   IMC_CPOSCommandEjectMICRChequeContext = interface(IMC_CPOSCommandContext)
    ['{043A7D27-8146-4BEF-A927-89520172625C}']
   end ;

implementation

end.
 