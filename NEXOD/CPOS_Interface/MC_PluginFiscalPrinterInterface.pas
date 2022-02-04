//const OK
unit MC_PluginFiscalPrinterInterface;

interface

uses   MC_PluginPrinterInterface
     , MC_PluginInterface
     , MC_PLuginFiscalCallbackInterface
     ;

const
   //TMC_FiscalReportType
   /// <summary>
   /// Unknown fiscal receipt
   /// </summary>
   /// This is the undefined value for report types
   /// <seealso cref="TMC_FiscalReportType" Fiscal report types/>
   /// <seealso cref="IMC_PluginFiscalPrinter.printReport" Fiscal receipt printing interface/>
   frUnknown         = 0 ;
   /// <summary>
   /// Memory registry fiscal receipts
   /// </summary>
   /// This value is used to to print memory registry fiscal receipts
   /// <seealso cref="TMC_FiscalReportType" Fiscal report types/>
   /// <seealso cref="IMC_PluginFiscalPrinter.printReport" Fiscal receipt printing interface/>
   frMemoryRegistry = 1 ;
   /// <summary>
   /// Fiscal receipts by date
   /// </summary>
   /// This value is used to print fiscal receipt by date
   /// <seealso cref="TMC_FiscalReportType" Fiscal report types/>
   /// <seealso cref="IMC_PluginFiscalPrinter.printReport" Fiscal receipt printing interface/>
   frDates          = 2 ;
   /// <summary>
   /// Closeout fiscal receipts
   /// </summary>
   /// This value is used to to print closeout fiscal receipts
   /// <seealso cref="TMC_FiscalReportType" Fiscal report types/>
   /// <seealso cref="IMC_PluginFiscalPrinter.printReport" Fiscal receipt printing interface/>
   frReport         = 3 ;

   //TMC_FiscalDataType
   /// <summary>
   /// Unknown data type
   /// </summary>
   /// This is the undefined value for printer data types
   /// <seealso cref="TMC_FiscalDataType" Fiscal data type/>
   /// <seealso cref="IMC_PluginFiscalPrinter.getData" Fiscal printer data getter interface/>
   taUnknown   = 0 ;
   /// <summary>
   /// Fiscal printer firmware ID
   /// </summary>
   /// This value is used to retrieve the fiscal printer firmware ID
   /// <seealso cref="TMC_FiscalDataType" Fiscal data type/>
   /// <seealso cref="IMC_PluginFiscalPrinter.getData" Fiscal printer data getter interface/>
   taFirmware  = 1 ;
   /// <summary>
   /// Fiscal printer ID
   /// </summary>
   /// This value is used to retrieve the fiscal printer ID
   /// <seealso cref="TMC_FiscalDataType" Fiscal data type/>
   /// <seealso cref="IMC_PluginFiscalPrinter.getData" Fiscal printer data getter interface/>
   taPrinterID = 2 ;

   //TMC_FiscalDate
   /// <summary>
   /// Unknown date type
   /// </summary>
   /// This is the undefined value for fiscal printer date types
   /// <seealso cref="TMC_FiscalDate" Fiscal date type/>
   /// <seealso cref="IMC_PluginFiscalPrinter.getDate" Fiscal printer dates getter interface/>
   fdUnknown   = 0 ;
   /// <summary>
   /// Printer configuration date
   /// </summary>
   /// This value is used to retrieve the fiscal printer configuration date
   /// <seealso cref="TMC_FiscalDate" Fiscal date type/>
   /// <seealso cref="IMC_PluginFiscalPrinter.getDate" Fiscal printer dates getter interface/>
   fdConfig    = 1 ;
   /// <summary>
   /// Date of the last settlement
   /// </summary>
   /// This value is used to retrieve the date of the last settlement
   /// <seealso cref="TMC_FiscalDate" Fiscal date type/>
   /// <seealso cref="IMC_PluginFiscalPrinter.getDate" Fiscal printer dates getter interface/>
   fdLastZ     = 2 ;
   /// <summary>
   /// Date of the last printer reset
   /// </summary>
   /// This value is used to retrieve the date of the last printer reset
   /// <seealso cref="TMC_FiscalDate" Fiscal date type/>
   /// <seealso cref="IMC_PluginFiscalPrinter.getDate" Fiscal printer dates getter interface/>
   fdLastReset = 3 ;
   /// <summary>
   /// Date of the last VAT data change
   /// </summary>
   /// This value is used to retrieve the date of the last VAT data change
   /// <seealso cref="TMC_FiscalDate" Fiscal date type/>
   /// <seealso cref="IMC_PluginFiscalPrinter.getDate" Fiscal printer dates getter interface/>
   fdTVAChange = 4 ;
   /// <summary>
   /// Date of the last fiscal opening
   /// </summary>
   /// This value is used to retrieve the date of the last fiscal opening
   /// <seealso cref="TMC_FiscalDate" Fiscal date type/>
   /// <seealso cref="IMC_PluginFiscalPrinter.getDate" Fiscal printer dates getter interface/>
   fdFiscal    = 5 ; //.OPOS 1.11
   /// <summary>
   /// Fiscal printer's internal clock date
   /// </summary>
   /// This value is used to retrieve the fiscal printer's internal clock date
   /// <seealso cref="TMC_FiscalDate" Fiscal date type/>
   /// <seealso cref="IMC_PluginFiscalPrinter.getDate" Fiscal printer dates getter interface/>
   fdRealTime  = 6 ;

   //Capabilities
   /// <summary>
   /// Capability to print fiscal documents
   /// </summary>
   /// This is used to determine the printer's capability to print fiscal documents
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalPrintFiscalDocument    = ca11 ;
   /// <summary>
   /// Capability to print non fiscal documents
   /// </summary>
   /// This is used to determine the printer's capability to print non fiscal documents
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalNotFiscalPrintAllowed  = ca12 ;
   /// <summary>
   /// Capability to print duplicates
   /// </summary>
   /// This is used to determine the printer's capability to print duplicates
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalPrintDuplicate         = ca13 ;
   /// <summary>
   /// Capability to print till X reports
   /// </summary>
   /// This is used to determine the printer's capability to print till X reports
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalPrintXReport           = ca14 ;
   /// <summary>
   /// Training mode capability
   /// </summary>
   /// This is used to determine whether the printer has training mode capabilities
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalTrainingMode           = ca15 ;
   /// <summary>
   /// Capability to print sales refund receipts
   /// </summary>
   /// This is used to determine the printer's capability to print sales refund recipts
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalRefundSaleReceipt      = ca16 ;
   /// <summary>
   /// Capability to print cash-in reports
   /// </summary>
   /// This is used to determine the printer's capability to print cash-in reports
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalCashIn                 = ca17 ;
   /// <summary>
   /// Capability to print cash-out reports
   /// </summary>
   /// This is used to determine the printer's capability to print cash-out reports
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalCashOut                = ca18 ;
   /// <summary>
   /// Message types required
   /// </summary>
   /// This value is used to dermine whether the printer needs to know the different message types.<p>
   /// Some fiscal printers, particularly OPOS ones, need to be given the types of messages they can print
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalMessageWithPrompt      = ca19 ;
   /// <summary>
   /// Capability to manage payment types
   /// </summary>
   /// This is used to determine the printer's capability to manage payment types
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalSendPaymentType        = ca20 ;
   /// <summary>
   /// Capability to store payment types in a table
   /// </summary>
   /// This is used to determine the printer's capability to store payment types in a table.<p>
   /// If the printer stores payment types in a table, the client application has to provide their codes rather than their description
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalHasPaymentTable        = ca21 ;
   /// <summary>
   /// OnDataRequest callback ID request
   /// </summary>
   /// This value is used to determine which type of callback must be used to supply data to the printer.<p>
   /// The type of callback to use generally depends on business needs rather than printer requirements.
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback.onDataRequest" data request callback/>
   caFiscalDataRequestID          = ca22 ;
   /// <summary>
   /// Maximum message length
   /// </summary>
   /// This value is used to determine the maximum message length managed by the printer.<p>
   /// This length is different depending on whether it applies to headers, sales lines, payments, etc.
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalMessageLength          = ca23 ;
   /// <summary>
   /// Maximum description length
   /// </summary>
   /// This value is used to determine the maximum lengths of the descriptions managed by the printer.<p>
   /// Given that the description lengths depend on the type of data, it must be specified in the parameter <b>asOptArgs</b>
   /// <remarks> The data types to specify in the parameter <b>asOptArgs</b> are described in the UnifiedPOS standard.</remarks>
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalDescriptionLength      = ca24 ;
   /// <summary>
   /// Percentage precison
   /// </summary>
   /// This value is used to determine the number of decimals to use for percentages (discounts and surcharge).<p>
   /// The client application needs to use the same precision when performing its own computations.
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalAdjustmentDec          = ca25 ;
   /// <summary>
   /// Maximum number of header lines
   /// </summary>
   /// This value is used to determine the maximum number of header lines that the fiscal printer can manage
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalHeaderLinesNum         = ca26 ;
   /// <summary>
   /// Maximum number of trailer lines
   /// </summary>
   /// This value is used to determine the maximum number of trailer lines that the fiscal printer can manage
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalTrailerLinesNum        = ca27 ;
   /// <summary>
   /// Does the fiscal printer require all tickets?
   /// </summary>
   /// Does the fiscal printer require all the receipts of the register whatever are its type and the methods of payment used?
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caFiscalAllReceiptsRequired    = ca28 ;

   //TMC_DescriptionLength
   /// <summary>
   /// Unknown description length
   /// </summary>
   /// This is the undefined value for types of description length
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Printer capability query interface/>
   dlUnknown                      =  0 ;
   /// <summary>
   /// Maximum merchendise item description length
   /// </summary>
   /// This value is used to determine the maximum length of item descriptions printed in transaction lines
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Printer capability query interface/>
   dlItem                         =  1 ;
   /// <summary>
   /// Maximum adjustment description length
   /// </summary>
   /// This value is used to determine the maximum length of adjustment descriptions (discounts or surcharges) in transaction lines
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Printer capability query interface/>
   dlItemAdjustment               =  2 ;
   /// <summary>
   /// Maximum fuel item description length
   /// </summary>
   /// This value is used to determine the maximum length of fuel item descriptions printed in transaction lines
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Printer capability query interface/>
   dlItemFuel                     =  3 ;
   /// <summary>
   /// Maximum fuel void description length
   /// </summary>
   /// This value is used to determine the maximum length of fuel void descriptions printed in transaction lines
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Printer capability query interface/>
   dlItemFuelVoid                 =  4 ;
   /// <summary>
   /// Maximum "not paid" description length
   /// </summary>
   /// This value is used to determine the maximum length of "not paid" descriptions printed in transaction lines
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Printer capability query interface/>
   dlNotPaid                      =  5 ;
   /// <summary>
   /// Maximum package adjustment description length
   /// </summary>
   /// This value is used to determine the maximum length of package adjustment (i.e. for a package of items booked before) descriptions printed in transaction lines
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Printer capability query interface/>
   dlPackageAdjustment            =  6 ;
   /// <summary>
   /// Maximum refund description length
   /// </summary>
   /// This value is used to determine the maximum length of merchendise refund descriptions printed in transaction lines
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Printer capability query interface/>
   dlRefund                       =  7 ;
   /// <summary>
   /// Maximum refund void description length
   /// </summary>
   /// This value is used to determine the maximum length of merchendise refund void descriptions printed in transaction lines
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Printer capability query interface/>
   dlRefundVoid                   =  8 ;
   /// <summary>
   /// Maximum subtotal adjustment description length
   /// </summary>
   /// This value is used to determine the maximum length of subtotal adjustment descriptions printed in transaction lines
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Printer capability query interface/>
   dlSubtotalAdjustment           =  9 ;
   /// <summary>
   /// Maximum total line description length
   /// </summary>
   /// This value is used to determine the maximum length of the descriptions printed in the total line
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Printer capability query interface/>
   dlTotal                        = 10 ;
   /// <summary>
   /// Maximum item void description length
   /// </summary>
   /// This value is used to determine the maximum length of void descriptions printed in transaction lines
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Printer capability query interface/>
   dlVoid                         = 11 ;
   /// <summary>
   /// Maximum merchendise void description length
   /// </summary>
   /// This value is used to determine the maximum length of merchendise void descriptions printed in transaction lines
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Printer capability query interface/>
   dlVoidItem                     = 12 ;

type
   /// <summary>
   /// Fiscal receipt type
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="frUnknown" unknown report identifier/>
   /// <seealso cref="frMemoryRegistry" memory registry fiscal receipts/>
   /// <seealso cref="frDates" fiscal receipt by dates/>
   /// <seealso cref="frReport" closeout fiscal receipts/>
   TMC_FiscalReportType = integer ;
   /// <summary>
   /// Fiscal data type
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="taUnknown" unknown data type/>
   /// <seealso cref="taFirmware" Fiscal printer firmware ID/>
   /// <seealso cref="taPrinterID" Fiscal printer ID/>
   TMC_FiscalDataType = integer ;
   /// <summary>
   /// Fiscal date type
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="fdUnknown" unknown date type/>
   /// <seealso cref="fdConfig" printer configuration date/>
   /// <seealso cref="fdLastZ" date of the last settlement/>
   /// <seealso cref="fdLastReset" date of the last printer reset/>
   /// <seealso cref="fdTVAChange" date of the last VAT data change/>
   /// <seealso cref="fdFiscal" date of the last fiscal opening/>
   /// <seealso cref="fdRealTime" fiscal printer's internal clock date/>
   TMC_FiscalDate = integer ;
   /// <summary>
   /// Types of item descriptions for which the maximum length can be retrieved
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="dlItem" maximum merchendise item description length/>
   /// <seealso cref="dlItemAdjustment" maximum adjustment description length/>
   /// <seealso cref="dlItemFuel" maximum fuel item description length/>
   /// <seealso cref="dlItemFuelVoid" maximum fuel void description length/>
   /// <seealso cref="dlNotPaid" maximum "not paid" description length/>
   /// <seealso cref="dlPackageAdjustment" maximum package adjustment description length/>
   /// <seealso cref="dlRefund" maximum refund description length/>
   /// <seealso cref="dlRefundVoid" maximum refund void description length/>
   /// <seealso cref="dlSubtotalAdjustment" maximum subtotal adjustment description length/>
   /// <seealso cref="dlTotal" maximum total line description length/>
   /// <seealso cref="dlVoid" maximum item void description length/>
   /// <seealso cref="dlVoidItem" maximum merchendise void description length/>
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Printer capability query/>
   TMC_DescriptionLength = integer ;


   /// <summary>
   /// Interface to implement when writing a fiscal printer driver
   /// </summary>
   /// This interface derives from <see cref="MC_PluginInterface.IMC_PluginBase"/> and adds the specific features required for the implementation of a fiscal printer driver
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase" Driver base interface/>
   IMC_PluginFiscalPrinter = interface(IMC_PluginPrinter)
    ['{83AE38F7-43BF-41BD-A3FD-4638BE2106C4}']
     procedure set_DataRequest (acDataRequest : IMC_FiscalDataCallback) ; stdcall ;
     function get_DataRequest : IMC_FiscalDataCallback ; stdcall ;

     /// <summary>
     /// Fiscal session daily opening
     /// </summary>
     /// This method performs the processes required to open the daily fiscal session
     /// <remarks>
     /// If the driver needs additional information, it will call <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> to get them from the client application
     /// </remarks>
     /// <param name="asDate">Date of the fiscal session to open</param>
     /// <returns>True if the process succeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     function dailyOpen(const asDate : wideString) : boolean ; stdcall ;
     /// <summary>
     /// Prints a fiscal receipt
     /// </summary>
     /// This method instructs the printer to start printing a fiscal receipt.<p>
     /// Whenever the driver needs additional information, it will call <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> to get them from the client application
     /// <returns>True if the process succeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     function printFiscalReceipt() : boolean ; stdcall ;
     /// <summary>
     /// Prints a fiscal document
     /// </summary>
     /// This method instructs the printer to start printing a fiscal document.<p>
     /// Whenever the driver needs additional information, it will call <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> to get them from the client application
     /// <returns>True if the process succeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     function printFiscalDocument() : boolean ; stdcall ;
     /// <summary>
     /// Prints a fiscal receipt duplicate
     /// </summary>
     /// This method instructs the printer to start printing a fiscal receipt duplicate.<p>
     /// Whenever the driver needs additional information, it will call <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> to get them from the client application
     /// <returns>True if the process succeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     function printDuplicateReceipt() : boolean ; stdcall ;
     /// <summary>
     /// Prints a till X receipt
     /// </summary>
     /// This method instructs the printer to start printing a till X receipt.<p>
     /// Whenever the driver needs additional information, it will call <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> to get them from the client application
     /// <returns>True if the process succeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     function printXReport() : boolean ; stdcall ;
     /// <summary>
     /// Prints a till closeout (settlement) receipt
     /// </summary>
     /// This method instructs the printer to start printing a till closeout (settlement) receipt.<p>
     /// Whenever the driver needs additional information, it will call <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> to get them from the client application
     /// <returns>True if the process succeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     function printZReport() : boolean ; stdcall ;
     /// <summary>
     /// Prints a fiscal report
     /// </summary>
     /// This method instructs the printer to start printing a fiscal report.<p>
     /// Whenever the driver needs additional information, it will call <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> to get them from the client application
     /// <param name="aeReportType"> Type of the report to print</param>
     /// <param name="asStart"> Starting point of the selection to print</param>
     /// <param name="asEnd"> Ending point of the selection to print</param>
     /// <returns>True if the process succeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     /// <seealso cref="TMC_FiscalReportType" Fiscal report types/>
     function printReport(aeReportType : TMC_FiscalReportType ; const asStart,asEnd : wideString) : boolean ; stdcall ;
     /// <summary>
     /// Sets the printer training mode
     /// </summary>
     /// Turns the printer training mode ON or OFF.<p>
     /// Whenever the driver needs additional information, it will call <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> to get them from the client application
     /// <param name="abNewState"> Training mode state: True to activate, False to deactivate</param>
     /// <returns>True if the process succeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     function setTrainingMode(abNewState : boolean ) : boolean ; stdcall ;
     /// <summary>
     /// Gets the printer training mode
     /// </summary>
     /// Returns the current state of the printer training mode.<p>
     /// Whenever the driver needs additional information, it will call <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> to get them from the client application
     /// <param name="zbIsTrainigMode">Returns the training mode current state</param>
     /// <returns>True if the process succeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     function getTrainingMode(out zbIsTraining : boolean) : boolean ; stdcall ;
     /// <summary>
     /// Indicates whether a fiscal session is open
     /// </summary>
     /// This method is used to determine whether a fiscal session has already be opened.<p>
     /// Whenever the driver needs additional information, it will call <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> to get them from the client application
     /// <param name="zbIsOPened"> Returns True if the fiscal session is alread open, False otherwise</param>
     /// <returns>True if the process succeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     function getDayOpened(out zbIsOpened : boolean) : boolean ; stdcall ;
     /// <summary>
     /// Gets a given fiscal date
     /// </summary>
     /// This method returns different dates or timestamps managed by the printer
     /// Whenever the driver needs additional information, it will call <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> to get them from the client application
     /// <param name="aeFiscal"> Type of fiscal date to get</param>
     /// <param name="zsDate"> Text value containing the requested date</param>
     /// <returns>True if the process succeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     function getDate(aeFiscalDate : TMC_FiscalDate ; out zsDate : wideString) : boolean ; stdcall ;
     /// <summary>
     /// Gets a given type of data
     /// </summary>
     /// This method returns different types of data managed by the printer.<p>
     /// Whenever the driver needs additional information, it will call <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> to get them from the client application
     /// <param name="aeDataType"> Type of data to get</param>
     /// <param name="asOptArgs"> Optional parameter needed for some types of data</param>
     /// <param name="zsData"> Requested data, starting from the last elements</param>
     /// <returns>True if the process succeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     function getData(aeDataType : TMC_FiscalDataType ; const asOptArgs : wideString ; out zsData : wideString) : boolean ; stdcall ;
     /// <summary>
     /// Is the printer available
     /// </summary>
     /// This method can be used by the client application whether the fiscal printer is available.<p>
     /// Whenever the driver needs additional information, it will call <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> to get them from the client application
     /// <returns>True if the process succeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     function isAvailable() : boolean ; stdcall ;

     /// <summary>
     /// Reference to the callback used by the driver to obtain additional data
     /// <value>Reference to an instance of the <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> interface</value>
     /// </summary>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalRequestAndSendDataCallback" Fiscal data getter/setter callback/>
     property dataRequest : IMC_FiscalDataCallback read get_DataRequest write set_DataRequest ;
   end ;

implementation

end.
