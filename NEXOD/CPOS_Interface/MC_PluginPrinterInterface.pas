                                                                                             //const Ok
unit MC_PluginPrinterInterface;

interface

uses   MC_PluginInterface
     , activeX
     ;

const
   //TMC_PrinterState
   /// <summary>
   /// The printer's state is Unknown
   /// </summary>
   /// This is the undefined value about the printer's state
   /// <seealso cref="IMC_PluginPrinter.getPrinterState" Printer management/>
   psUnknown             = 0 ;
   /// <summary>
   /// The printer is available
   /// </summary>
   /// The printer is available and ready to run
   /// <seealso cref="IMC_PluginPrinter.getPrinterState" Printer management/>
   psAvailable           = 1 ;
   /// <summary>
   /// The printer is Unavailable
   /// </summary>
   /// The printer is not available, it might be damaged or off
   /// <seealso cref="IMC_PluginPrinter.getPrinterState" Printer management/>
   psUnavailable         = 2 ;
   /// <summary>
   /// Recepit paper is empty
   /// </summary>
   /// The printer is available but receipt is out of paper
   /// <seealso cref="IMC_PluginPrinter.getPrinterState" Printer management/>
   psRecPaperEmpty          = 3 ;
   /// <summary>
   /// Receipt paper is near the end
   /// </summary>
   /// The printer is available but receipt paper is low
   /// <seealso cref="IMC_PluginPrinter.getPrinterState" Printer management/>
   psRecPaperNearEnd        = 4 ;


   //Capabilities
   /// <summary>
   /// Value identifying a fiscal printer
   /// </summary>
   /// This value can be used by the client application to query the driver whether this is a fiscal printer
   /// <seealso cref="IMC_PluginBase.getCapabilities" Device feature query interface/>
   caPrinterFiscalPrinter   = ca01 ;
   /// <summary>
   /// Value identifying a printer been capable of printing cheques
   /// </summary>
   /// This value can be used by the client application to query the driver whether the printer can print cheques
   /// <seealso cref="IMC_PluginBase.getCapabilities" Device feature query interface/>
   caPrinterManageCheques   = ca02 ;
   /// <summary>
   /// Value identifying a printer been capable of read MICR tracks
   /// </summary>
   /// This value can be used by the client application to query the driver whether the printer can print cheques.<p>
   /// The answer to request of this capability must be formatted as a tokenized string of every MICR format read by the device.<p>
   /// exemple:<p>
   ///    A MICR reader able to read CMC7 and E13B MICR tracks should return "CMC7;E13B;"
   /// <seealso cref="IMC_PluginBase.getCapabilities" Device feature query interface/>
   caPrinterManageMICRReader = ca03 ;

type
   /// <summary>
   /// State of the printer
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="psUnknown" The printer's state is Unknown/>
   /// <seealso cref="psAvailable" The printer is available/>
   /// <seealso cref="psUnavailable" The printer is unavailable/>
   /// <seealso cref="psRecPaperEmpty" The receipt paper is empty/>
   /// <seealso cref="psRecPaperNearEnd" The receipt paper is near end/>
   TMC_PrinterState = integer ;

   /// <summary>
   /// Interface to implement when writing a receipt printer driver
   /// </summary>
   /// This interface derives from <see cref="IMC_PluginBase"/> and adds the specific features required for the implementation of a printer driver
   /// <seealso cref="IMC_PluginBase" Driver base interface/>
   IMC_PluginPrinter = interface (IMC_PluginBase)
    ['{87DEE3DD-F73B-4957-8830-1C3AE7F6C382}']
     /// <summary>
     /// Sends a stream containing the data to be printed
     /// </summary>
     /// This method sends the XML data stream containing the necessary information to produce a printout
     /// <param name="acFlux"> IStream interface holding the input data stream</param>
     /// <returns>True if the method was successful, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function print(acFlux : IStream) : boolean ; stdcall ;
     /// <summary>
     /// Request the current state of the printer
     /// </summary>
     /// This method request the current state of the printer
     /// <returns>One of the values of <see cref="TMC_PrinterState"/>)</returns>
     /// <seealso cref="TMC_PrinterState" states of the printer possibles/>
     function getPrinterState : TMC_PrinterState ; stdcall ;
   end ;

   /// <summary>
   /// Specific interface used to print cheques on <see cref="IMC_PluginCallbackV2.onMC_CPOSCommand"/> calls.
   /// </summary>
   /// This interface is specific to pass input/output parameters to the printing of cheques CPOS co-operation commands.<p>
   /// <seealso cref="IMC_CPOSCommandContext" base interface to use on <see cref="IMC_PluginCallbackV2.onMC_CPOSCommand"/> calls./>
   /// <seealso cref="IMC_PluginCallbackV2.onMC_CPOSCommand" CPOS Co-operarion interface./>
   IMC_CPOSCommandPrintChequeContext = interface(IMC_CPOSCommandContext)
    ['{BB765E94-1671-409A-9A4A-8F6398CAD4AA}']
     function GetLayoutNature : widestring ; stdcall ;
     function GetLayoutCode : widestring ; stdcall ;
     function GetXMLData : IMC_Stream ; stdcall ;

     /// <summary>
     /// Returns the nature of the layout to be used to print out cheques
     /// <value>A string value that identifies the nature of the layout</value>
     /// </summary>
     property LayoutNature : widestring read GetLayoutNature ;
     /// <summary>
     /// Returns the code of the layout to be used to print out cheques
     /// <value>A string value that identifies the code of the layout</value>
     /// </summary>
     property LayoutCode : widestring read GetLayoutCode ;
     /// <summary>
     /// Returns a data to be used on printig of cheques
     /// <value>A XML Stream with data expected by used layout to print out cheques</value>
     /// </summary>
     property XMLData : IMC_Stream read GetXMLData ;
   end ;


implementation

end.
