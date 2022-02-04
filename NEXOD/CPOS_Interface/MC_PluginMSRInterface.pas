//const  Ok
unit MC_PluginMSRInterface;

interface

uses   MC_PluginInterface
     ;

const
   //TMC_MSRTracks
   /// <summary>
   /// Unknown MSR stripe type
   /// </summary>
   /// This is the undefined value in the MSR types
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrUnknown      =  0 ;
   /// <summary>
   /// No stripe should be processed
   /// </summary>
   /// Cette valeur sert ? signaler qu'on ne veut pas traiter des pistes MSR
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrNone         =  1 ;
   /// <summary>
   /// Only stripe number 1 should be processed
   /// </summary>
   /// This value indicates that only stripe number 1 should be processed
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrTrack1       =  2 ;
   /// <summary>
   /// Only stripe number 1 should be processed
   /// </summary>
   /// This value indicates that only stripe number 2 should be processed
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrTrack2       =  3 ;
   /// <summary>
   /// Only stripe number 3 should be processed
   /// </summary>
   /// This value indicates that only stripe number 3 should be processed
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrTrack3       =  4 ;
   /// <summary>
   /// Only stripe number 4 should be processed
   /// </summary>
   /// This value indicates that only stripe number 4 should be processed
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrTrack4       =  5 ;
   /// <summary>
   /// Only stripes number 1 and 2 should be processed
   /// </summary>
   /// This value indicates that only stripes number 1 and 2 should be processed
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrTrack1_2     =  6 ;
   /// <summary>
   /// Only stripes number 1 and 3 should be processed
   /// </summary>
   /// This value indicates that only stripes number 1 and 3 should be processed
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrTrack1_3     =  7 ;
   /// <summary>
   /// Only stripes number 2 and 3 should be processed
   /// </summary>
   /// This value indicates that only stripes number 2 and 3 should be processed
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrTrack2_3     =  8 ;
   /// <summary>
   /// Only stripes number 1, 2 and 3 should be processed
   /// </summary>
   /// This value indicates that only stripes number 1, 2 and 3 should be processed
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrTrack1_2_3   =  9 ;
   /// <summary>
   /// Only stripes number 1 and 4 should be processed
   /// </summary>
   /// This value indicates that only stripes number 1 and 4 should be processed
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrTrack1_4     = 10 ;
   /// <summary>
   /// Only stripes number 2 and 4 should be processed
   /// </summary>
   /// This value indicates that only stripes number 2 and 4 should be processed
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrTrack2_4     = 11 ;
   /// <summary>
   /// Only stripes number 3 and 4 should be processed
   /// </summary>
   /// This value indicates that only stripes number 3 and 4 should be processed
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrTrack3_4     = 12 ;
   /// <summary>
   /// Only stripes number 1, 2 and 4 should be processed
   /// </summary>
   /// This value indicates that only stripes number 1, 2 and 4 should be processed
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrTrack1_2_4   = 13 ;
   /// <summary>
   /// Only stripes number 1, 3 and 4 should be processed
   /// </summary>
   /// This value indicates that only stripes number 1, 3 and 4 should be processed
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrTrack1_3_4   = 14 ;
   /// <summary>
   /// Only stripes number 2, 3 and 4 should be processed
   /// </summary>
   /// This value indicates that only stripes number 2, 3 and 4 should be processed
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrTrack2_3_4   = 15 ;
   /// <summary>
   /// Only stripes from number 1 to number 4 should be processed
   /// </summary>
   /// This value indicates that only stripes from number 1 to number 4 should be processed
   /// <seealso cref="TMC_MSRTracks" Indicates which magnetic stripes need to be read/>
   /// <seealso cref="IMC_PluginMSR.readMSR" Magnetic stripes reader/>
   /// <seealso cref="IMC_PluginMSR.writeMSR" Magnetic stripes writer/>
   /// <seealso cref="IMC_PluginMSR.readAsyncMSR" Magnetic stripes asynchronous reader/>
   msrTrack1_2_3_4 = 16 ;

   //Capabilities
   /// <summary>
   /// Value identifying an MSR device capable of writing magnetic stripes
   /// </summary>
   /// This value can be used by the client application to query the driver whether the MSR is capable of writing magnetic stripes
   /// <seealso cref="IMC_PluginBase.getCapabilities" Device feature query interface/>
   caMSRWriteTracks = ca01 ;

   //Capabilities
   /// <summary>
   /// Value identifying an hybrid MSR device capable of reading encrypted credit card number
   /// </summary>
   /// This value can be used by the client application to query the driver whether the MSR is capable of reading encrypted credit card number
   /// <seealso cref="IMC_PluginBase.getCapabilities" Device feature query interface/>
   caMSRReadEncryptedData = ca02 ;

type
   /// <summary>
   /// Value indicating which stripes should be processed
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="msrUnknown" Unknown MSR stripe type/>
   /// <seealso cref="msrNone" No stripe should be processed/>
   /// <seealso cref="msrTrack1" Only stripe number 1 should be processed/>
   /// <seealso cref="msrTrack2" Only stripe number 2 should be processed/>
   /// <seealso cref="msrTrack3" Only stripe number 3 should be processed/>
   /// <seealso cref="msrTrack4" Only stripe number 4 should be processed/>
   /// <seealso cref="msrTrack1_2" Only stripes number 1 and 2 should be processed/>
   /// <seealso cref="msrTrack1_3" Only stripes number 1 and 3 should be processed/>
   /// <seealso cref="msrTrack2_3" Only stripes number 1 and 3 should be processed/>
   /// <seealso cref="msrTrack1_2_3" Only stripes number 1, 2 and 3 should be processed/>
   /// <seealso cref="msrTrack1_4" Only stripes number 1 and 4 should be processed/>
   /// <seealso cref="msrTrack2_4" Only stripes number 2 and 4 should be processed/>
   /// <seealso cref="msrTrack3_4" Only stripes number 3 and 4 should be processed/>
   /// <seealso cref="msrTrack1_2_4" Only stripes number 1, 2 and 4 should be processed/>
   /// <seealso cref="msrTrack1_3_4" Only stripes number 1, 3 and 4 should be processed/>
   /// <seealso cref="msrTrack2_3_4" Only stripes number 2, 3 and 4 should be processed/>
   /// <seealso cref="msrTrack1_2_3_4" Only stripes number 1 to number 4 should be processed/>
   TMC_MSRTracks = integer ;

   /// <summary>
   /// Interface used as a parameter holding MSR stripe information
   /// </summary>
   /// This interface is used as a parameter holding MSR stripe information within calls to MSR processing methods
   /// <seealso cref="IMC_PluginBase" Driver base interface/>
   IMC_MSRData = interface(IMC_VersionedInterface)
    ['{2D45BD86-3E85-4464-A656-BC9CE99CBEEB}']
     function get_Track1 : wideString ; stdcall ;
     function get_Track2 : wideString ; stdcall ;
     function get_Track3 : wideString ; stdcall ;
     function get_Track4 : wideString ; stdcall ;

     /// <summary>
     /// Returns the content of MSR stripe number 1
     /// </summary>
     property track1 : wideString read get_Track1 ;
     /// <summary>
     /// Returns the content of MSR stripe number 2
     /// </summary>
     property track2 : wideString read get_Track2 ;
     /// <summary>
     /// Returns the content of MSR stripe number 3
     /// </summary>
     property track3 : wideString read get_Track3 ;
     /// <summary>
     /// Returns the content of MSR stripe number 4
     /// </summary>
     property track4 : wideString read get_Track4 ;
   end ;

   /// <summary>
   /// Interface used as a parameter holding bank information
   /// </summary>
   /// This interface is used as a parameter holding bank information within calls to MSR processing methods
   /// <seealso cref="IMC_PluginBase" Driver base interface/>
   IMC_MSRReadDataBank = interface(IMC_MSRData)
    ['{356C009E-5313-45BF-BC8A-74737EDBEFF4}']
     function get_Accountname : wideString ; stdcall ;
     function get_ExpirationDate : wideString ; stdcall ;
     function get_FirstName : wideString ; stdcall ;
     function get_SurName : wideString ; stdcall ;
     function get_MiddleInitial : wideString ; stdcall ;
     function get_ServiceCode : wideString ; stdcall ;
     function get_Suffix : wideString ; stdcall ;
     function get_Title : wideString ; stdcall ;

     /// <summary>
     /// Returns the account number or the card number
     /// </summary>
     property accountname : wideString read get_Accountname ;
     /// <summary>
     /// Returns the card expiration date
     /// </summary>
     property expirationDate : wideString read get_ExpirationDate;
     /// <summary>
     /// Returns the cardholder first name
     /// </summary>
     property firstName : wideString read get_FirstName ;
     /// <summary>
     /// Returns the cardholder surname
     /// </summary>
     property surName : wideString read get_SurName ;
     /// <summary>
     /// Returns the cardholder middle name initial
     /// </summary>
     property middleInitial : wideString read get_MiddleInitial ;
     /// <summary>
     /// Returns the service code
     /// </summary>
     property serviceCode : wideString read get_ServiceCode ;
     /// <summary>
     /// Returns the cardholder suffix
     /// </summary>
     property suffix : wideString read get_Suffix ;
     /// <summary>
     /// Returns the cardholder title
     /// </summary>
     property title : wideString read get_Title ;
   end ;

   /// <summary>
   /// Interface used as a parameter reading a hybrid card reader, encrypted credit card number
   /// </summary>
   /// This interface is used as a parameter reading a hybrid card reader within calls to hybrid MSR processing methods
   /// <seealso cref="IMC_PluginBase" Driver base interface/>
   IMC_MSRReadEncryptedData = interface(IMC_MSRData)
    ['{9D747699-9DF2-4201-BF80-07923B72048E}']
     function get_MaskedPAN : wideString ; stdcall ;
     function get_CardHolderName : wideString ; stdcall ;
     function get_ExpirationDate : wideString ; stdcall ;
     function get_HashedPAN : wideString ; stdcall ;
     function get_DeviceSerialNumber : wideString ; stdcall ;
     function get_AuthenticatedEncryptedCardData : wideString ; stdcall ;
     function get_EncryptedFullPAN : wideString ; stdcall ;
     function get_MAC : wideString ; stdcall ;
     /// <summary>
     /// Returns the MaskedPAN of the credit card number
     /// </summary>
     property maskedPAN : wideString read get_MaskedPAN ;
     /// <summary>
     /// Returns the holder name of the credit card
     /// </summary>
     property cardHolderName : WideString read get_CardHolderName ;
     /// <summary>
     /// Returns the expiration date of the credit card, format AAAAMM
     /// </summary>
     property expirationDate : WideString read get_ExpirationDate ;
     /// <summary>
     /// Returns the hashed pan value of the credit card number
     /// </summary>
     property hashedPAN : WideString read get_HashedPAN ;
     /// <summary>
     /// Returns the serial number of the hybrid card reader device
     /// </summary>
     property deviceSerialNumber : WideString read get_DeviceSerialNumber ;
     /// <summary>
     /// Returns the authenticated encrypted Card Data of the credit card number
     /// </summary>
     property authenticatedEncryptedCardData : WideString read get_AuthenticatedEncryptedCardData ;
     /// <summary>
     /// Returns the full encrypted credit card number 
     /// </summary>
     property encryptedFullPAN : WideString read get_EncryptedFullPAN ;
     /// <summary>
     /// Returns the MAC address of the hybrid card reader device
     /// </summary>
     property MAC : WideString read get_MAC ;
   end;


   /// <summary>
   /// Interface managing the callback when performing asynchronous reading
   /// </summary>
   /// This interface is used to manage callback when performing asynchronous reading
   /// <seealso cref="IMC_PluginMSR" MSR driver/>
   IMC_MSRAsyncRead = interface
    ['{34F4C36A-2D26-42A0-A67A-420C176CC80D}']
     /// <summary>
     /// This method is used as a callback when the driver performs asynchronous reading
     /// </summary>
     /// The driver calls this method when:
     /// * an asynchronous reading was performed,
     /// * the reading failed.
     /// <param name="sender"> reference to the MSR driver which called this method</param>
     /// <param name="abResult"> Indicates whether the operation was successful or not</param>
     /// <param name="acData"> The data captured by the MSR device</param>
     /// <seealso cref="IMC_MSRData" Interface used to exchange data with the MSR driver/>
     procedure onAsyncRead(sender : IMC_PluginBase ; abResult : Boolean ; acData : IMC_MSRData) ; stdcall ;
   end ;

   /// <summary>
   /// Interface to implement when writing an MSR driver
   /// </summary>
   /// This interface derives from <see cref="IMC_PluginBase"/> and adds the specific features required for the implementation of an MSR driver
   /// <seealso cref="IMC_PluginBase" Driver base interface/>
   IMC_PluginMSR = interface(IMC_PluginBase)
    ['{0D9DEBAE-BEB4-4FFF-ADE4-DAB984A7F975}']
     procedure set_MSRAsyncRead (acMSRAsyncRead : IMC_MSRAsyncRead) ; stdcall ;
     function get_MSRAsyncRead : IMC_MSRAsyncRead ; stdcall ;

     /// <summary>
     /// Reads the stripes
     /// </summary>
     /// This command requests that the MSR read the stripes
     /// <param name="aeTracksToRead"> indicates which stripes should be read</param>
     /// <param name="zcData"> interface holding the information that have been read</param>
     /// <returns>True if the stripes could be read, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function readMSR(aeTracksToRead : TMC_MSRTracks ; out zcData : IMC_MSRData) : boolean ; stdcall ;
     /// <summary>
     /// Writes the stripes
     /// </summary>
     /// This command requests that the MSR write the stripes
     /// <param name="zcData"> interface holding the information to write</param>
     /// <param name="aeTracksToWrite"> indicates which stripes should be written</param>
     /// <returns>True if the stripes could be written, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function writeMSR(acData : IMC_MSRData ; aeTracksToWrite : TMC_MSRTracks) : boolean ; stdcall ;
     /// <summary>
     /// Starts asynchronous reading of the stripes
     /// </summary>
     /// This command starts the asynchronous reading of the stripes and returns immediately.<p>
     /// An event <see cref="IMC_MSRAsyncRead.onAsyncRead"/> is trigger when a read is performed or when the process is completed
     /// <param name="aiTimeout"> Timeout before the automatic reading is canceled.</param>
     /// <param name="aeTracksToRead"> indicates which stripes should be read</param>
     /// <returns>True if the stripes could be read, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function readAsyncMSR(aiTimeOut : integer ; aeTracksToRead : TMC_MSRTracks) : boolean ; stdcall ;

     /// <summary>
     /// This property is used to get or set the interface which receives the MSR data during asynchronous reading operations
     /// </summary>
     /// <seealso cref="IMC_MSRAsyncRead" Plugin des pilotes MSR/>
     property MSRAsyncRead : IMC_MSRAsyncRead read get_MSRAsyncRead write set_MSRAsyncRead ;
   end ;

implementation

end.
