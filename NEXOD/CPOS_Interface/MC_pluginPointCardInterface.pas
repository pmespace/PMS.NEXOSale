unit MC_pluginPointCardInterface;

interface

uses   MC_PluginInterface
     , activeX
     ;

const
    // Capabilities
   /// <summary>
   /// A value that identifies a printer capable of read magnetic stripes
   /// </summary>
   /// This value can be used by the client application to query the driver whether the printer can read magnetic stripes
   /// <seealso cref="IMC_PluginBase.getCapabilities" Device feature query interface/>
    caPointCardCanReadMSR   = ca01 ;
   /// <summary>
   /// A value that identifies a printer capable of write magnetic stripes
    /// </summary>
   /// This value can be used by the client application to query the driver whether the printer can write magnetic stripes
   /// <seealso cref="IMC_PluginBase.getCapabilities" Device feature query interface/>
    caPointCardCanWriteMSR  = ca02 ;
   /// <summary>
   /// A value that identifies a printer capable of print out readable text by the humans
   /// </summary>
   /// This value can be used by the client application to query the driver whether the printer can print out readable text for humans
   /// <seealso cref="IMC_PluginBase.getCapabilities" Device feature query interface/>
    caPointCardCanPrint     = ca03 ;
   /// <summary>
   /// A value that identifies a printer capable of manage 1st track on magnetic stripe
   /// </summary>
   /// This value can be used by the client application to query the driver whether the printer manages 1st track on magnetic stripe
   /// <seealso cref="IMC_PluginBase.getCapabilities" Device feature query interface/>
    caPointCardManageTrack1 = ca04 ;
   /// <summary>
   /// A value that identifies a printer capable of manage 2nd track on magnetic stripe
   /// </summary>
   /// This value can be used by the client application to query the driver whether the printer manages 2nd track on magnetic stripe
   /// <seealso cref="IMC_PluginBase.getCapabilities" Device feature query interface/>
    caPointCardManageTrack2 = ca05 ;
   /// <summary>
   /// A value that identifies a printer capable of manage 3rd track on magnetic stripe
   /// </summary>
   /// This value can be used by the client application to query the driver whether the printer manages 3rd track on magnetic stripe
   /// <seealso cref="IMC_PluginBase.getCapabilities" Device feature query interface/>
    caPointCardManageTrack3 = ca06 ;
   /// <summary>
   /// A value that identifies a printer capable of manage 4th track on magnetic stripe
   /// </summary>
   /// This value can be used by the client application to query the driver whether the printer manages 4th track on magnetic stripe
   /// <seealso cref="IMC_PluginBase.getCapabilities" Device feature query interface/>
    caPointCardManageTrack4 = ca07 ;
   /// <summary>
   /// A value that identifies a printer capable of manage 5th track on magnetic stripe
   /// </summary>
   /// This value can be used by the client application to query the driver whether the printer manages 5th track on magnetic stripe
   /// <seealso cref="IMC_PluginBase.getCapabilities" Device feature query interface/>
    caPointCardManageTrack5 = ca08 ;
   /// <summary>
   /// A value that identifies a printer capable of manage 6th track on magnetic stripe
   /// </summary>
   /// This value can be used by the client application to query the driver whether the printer manages 6th track on magnetic stripe
   /// <seealso cref="IMC_PluginBase.getCapabilities" Device feature query interface/>
    caPointCardManageTrack6 = ca09 ;
   /// <summary>
   /// A value that identifies a printer capable of cleaning mechanisms of the printer (by sofwtare)
   /// </summary>
   /// This value can be used by the client application to query the driver whether the printer can clear its mechanisms (by software)
   /// <seealso cref="IMC_PluginBase.getCapabilities" Device feature query interface/>
    caPointCardClear        = ca10 ;

    //TMC_PointCPostReadAction
   /// <summary>
   /// Unknown action to be executed after a card has been read
   /// </summary>
   /// This is the undefined value about the action to be executed after a card has been read.
   /// <seealso cref="IMC_PluginPointCard.ReadMSR" Reading Point card MSR tracks/>
    arcUnknown              = 0 ;
   /// <summary>
   /// The card must be hold on Point card reader device.
   /// </summary>
   /// After the command readMSR has been executed the card must be hold in Point card reader device.
   /// <seealso cref="IMC_PluginPointCard.ReadMSR" Reading Point card MSR tracks/>
    arcHoldCard             = 1 ;
   /// <summary>
   /// The card must be ejected from Point card reader device.
   /// </summary>
   /// After the command ReadMSR has been executed the card must be ejected from Point card reader device.
   /// <seealso cref="IMC_PluginPointCard.ReadMSR" Reading Point card MSR tracks/>
    arcEjectCard            = 2 ;

   //TMC_PointCardLoadingStatus
   /// <summary>
   /// Unknown loading status.
   /// </summary>
   /// An unknown loading status is repported.
   /// <seealso cref="IMC_PluginPointCard.GetLoadingStatus" Getting card loading status/>
   clsUnknown               = 0 ;
   /// <summary>
   /// An error has occurred
   /// </summary>
   /// An error has occurred while the loading status was executed.  (<see cref="IMC_PluginBase.getLastError"/> for more detail error message)
   /// <seealso cref="IMC_PluginPointCard.GetLoadingStatus" Getting card loading status/>
   clsError                 = 1 ;
   /// <summary>
   /// There is no card loaded.
   /// </summary>
   /// No card has been loaded.
   /// <seealso cref="IMC_PluginPointCard.GetLoadingStatus" Getting card loading status/>
   clsNoCard                = 2 ;
   /// <summary>
   /// A card is ready to be removed.
   /// </summary>
   /// An unloaded card is ready to be removed.
   /// <seealso cref="IMC_PluginPointCard.GetLoadingStatus" Getting card loading status/>
   clsForRemoval            = 3 ;
   /// <summary>
   /// A card is ready.
   /// </summary>
   /// A card has been loaded and it is ready to be used.
   /// <seealso cref="IMC_PluginPointCard.GetLoadingStatus" Getting card loading status/>
   clsCardReady             = 4 ;

   //TMC_PointCardActionType
   /// <summary>
   /// An unknown update action.
   /// </summary>
   /// Unknown update action has been fired by business application.
   /// <seealso cref="TMC_PointCardActionType" Type of update fired by business application/>
   atUnknown                = 0 ;
   /// <summary>
   /// Reading a Point card.
   /// </summary>
   /// A new point card is being initialised.
   /// <seealso cref="TMC_PointCardActionType" Type of update fired by business application/>
   atReadingCard            = 1 ;
   /// <summary>
   /// Initialising a new point card.
   /// </summary>
   /// A new point card is being initialised.
   /// <seealso cref="TMC_PointCardActionType" Type of update fired by business application/>
   atNewCard                = 2 ;
   /// <summary>
   /// Updating a point card.
   /// </summary>
   /// A point card is being updated by business application.
   /// <seealso cref="TMC_PointCardActionType" Type of update fired by business application/>
   atUpdateCard             = 3 ;
   /// <summary>
   /// Clearing a point card.
   /// </summary>
   /// A Point card is being cleared by business application.
   /// <seealso cref="TMC_PointCardActionType" Type of update fired by business application/>
   atClearCard              = 4 ;
   /// <summary>
   /// Testing device.
   /// </summary>
   /// A test device process has been fired by business application.
   /// <seealso cref="TMC_PointCardActionType" Type of update fired by business application/>
   atTestingMode            = 5 ;

type
   /// <summary>
   /// Action to be executed after point card reading operation
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="arcUnknown" Unknown action/>
   /// <seealso cref="arcHoldCard" hold point card loaded/>
   /// <seealso cref="arcEjectCard" Eject point card/>
   TMC_PointCAfterReadAction = integer ;
   /// <summary>
   /// Enumeration of available values about loading status of the terminal
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="clsUnknown" Unknown status/>
   /// <seealso cref="clsError" An error has occurred while status was requested/>
   /// <seealso cref="clsNoCard" the is no card loaded/>
   /// <seealso cref="clsForRemoval" A card is loaded but not ready/>
   /// <seealso cref="clsCardReady" A card is loaded a ready to be used/>
   TMC_PointCardLoadingStatus = integer ;
   /// <summary>
   /// Describes the type of update fired by business application
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="atUnknown" Unknown update type/>
   /// <seealso cref="atReadingCard" A point card is being read/>
   /// <seealso cref="atNewCard" A new Point card is being produced/>
   /// <seealso cref="atUpdateCard" A Point card is being updated/>
   /// <seealso cref="atClearCard" A Point card is being cleared/>
   /// <seealso cref="atTestingMode" A testing device process is being executed/>
   TMC_PointCardActionType = integer ;

   /// <summary>
   /// Interface used as a parameter holding MSR stripe information
   /// </summary>
   /// This interface is used as a parameter holding MSR stripe information within calls to ReadMSR processing methods
   /// <seealso cref="IMC_PluginPointCardInterface" Point Card Driver interface/>
   IMC_PCPOTracks = interface(IMC_VersionedInterface)
    ['{897B8733-987E-4D7B-BCBE-D94E92A9CAB8}']
     function get_Track1 : wideString ; stdcall ;
     function get_Track2 : wideString ; stdcall ;
     function get_Track3 : wideString ; stdcall ;
     function get_Track4 : wideString ; stdcall ;
     function get_Track5 : wideString ; stdcall ;
     function get_Track6 : wideString ; stdcall ;

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
     /// <summary>
     /// Returns the content of MSR stripe number 5
     /// </summary>
     property track5 : wideString read get_Track5 ;
     /// <summary>
     /// Returns the content of MSR stripe number 6
     /// </summary>
     property track6 : wideString read get_Track6 ;
   end ;

   /// <summary>
   /// Interface to implement when writing an Point Card driver
   /// </summary>
   /// This interface derives from <see cref="IMC_PluginBase"/> and adds the specific features required for the implementation of an Point Card driver
   /// <seealso cref="IMC_PluginPrinter" Driver base interface/>
   /// <seealso cref="IMC_PluginBase" Driver base interface/>
   IMC_PluginPointCard = interface(IMC_PluginBase)
    ['{6CD7CEE8-F99E-4A91-968C-08185D47002D}']
     /// <summary>
     /// Sends a stream containing the data to be printed
     /// </summary>
     /// This method sends the XML data stream containing the necessary information to produce a printout
     /// <param name="acFlux"> IStream interface holding the input data stream</param>
     /// <returns>True if the method was successful, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function print(abUseCurrentLoadedCard : boolean ; aeActionType : TMC_PointCardActionType ; acFlux : IStream) : boolean ; stdcall ;
     /// <summary>
     /// Read the stripes
     /// </summary>
     /// This command requests that the Point Card device read the stripes
     /// <param name="aeAfterReadAction"> Indicates to the driver which action must be performed after MSR tracks has been read</param>
     /// <param name="zcTracks"> interface holding the information that have been read</param>
     /// <returns>True if the stripes could be read, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function ReadMSR ( aeActionType : TMC_PointCardActionType ; abUseCurrentLoadedCard : boolean ; aeAfterReadAction : TMC_PointCAfterReadAction ; out zcTracks : IMC_PCPOTracks) : boolean ; stdcall ;
     /// <summary>
     /// Eject card
     /// </summary>
     /// This command is aimed to eject any previusly loaded card
     /// <returns>True if the request has benn successful, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function EjectCard() : boolean ; stdcall ;
     /// <summary>
     /// Get is a card has been loaded
     /// </summary>
     /// This command requests if a card has been loaded and if it is ready to be used
     /// <returns>One of available values of enumeration (<see cref="TMC_PointCardLoadingStatus"/>). If a error occurs get a detailed error message <see cref="IMC_PluginBase.getLastError"/></returns>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function GetLoadingStatus() : TMC_PointCardLoadingStatus ; stdcall ;
     /// <summary>
     /// Clear a card
     /// </summary>
     /// This command allows the terminal to clear any card to bring it as an unused card
     /// <returns>True if the request has benn successful, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function clearCard() : boolean ; stdcall ;
     /// <summary>
     /// Clear device mechanisms
     /// </summary>
     /// This command requests to the device to clear its mechanisms
     /// <returns>True if the request has benn successful, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function clear() : boolean ; stdcall ;
   end ;

implementation

end.
