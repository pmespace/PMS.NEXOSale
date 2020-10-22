unit MC_PluginFiscalCallbackInterface;

interface

uses   MC_PluginInterface
     ;

const
   //TMC_FiscalDataCallbackResult
   /// <summary>
   /// This is the undefined value for fiscal callback results
   /// </summary>
   /// The data callback function called by the driver to retrieve data from the application
   /// returns a completion flag among the possible TMC_FiscalDataCallbackResult values.
   /// <seealso cref="TMC_FiscalDataCallbackResult" Fiscal callback result type/>
   /// <seealso cref="IMC_FiscalDataCallback" Fiscal data getter callback/>
   dcrUnknown    = 0 ;
   /// <summary>
   /// Fiscal callback OK
   /// </summary>
   /// This value is used to indicate that the callback successfully provided the requested data
   /// <seealso cref="TMC_FiscalDataCallbackResult" Fiscal callback result type/>
   /// <seealso cref="IMC_FiscalDataCallback" Fiscal data getter callback/>
   dcrOk         = 1 ;
   /// <summary>
   /// Fiscal callback NOT OK
   /// </summary>
   /// This value is used to indicate that the callback failed to provide the requested data
   /// <seealso cref="TMC_FiscalDataCallbackResult" Fiscal callback result type/>
   /// <seealso cref="IMC_FiscalDataCallback" Fiscal data getter callback/>
   dcrKo         = 2 ;
   /// <summary>
   /// No more data available
   /// </summary>
   /// This value is used to indicate that no more data can be provided in the callback.<p>
   /// This applies when the client application has no items left to send to the printer
   /// <seealso cref="TMC_FiscalDataCallbackResult" Fiscal callback result type/>
   /// <seealso cref="IMC_FiscalDataCallback" Fiscal data getter callback/>
   dcrNoMoreData = 3 ;

type
   /// <summary>
   /// Fiscal callback result type
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="dcrUnknown" this is the undefined value for fiscal callback results/>
   /// <seealso cref="dcrOk" fiscal callback OK/>
   /// <seealso cref="dcrKo" fiscal callback NOT OK/>
   /// <seealso cref="dcrNoMoreData" no more data available/>
   TMC_FiscalDataCallbackResult = integer ;

   /// <summary>
   /// Interface to implement when writing a data getter callback
   /// </summary>
   /// A class must implement this interface in order to provide the driver with the data required for fiscal receipts.<p>
   /// The driver manages the fiscal logic but during the printing process, it requires some data
   /// which must be provided by the client application through this callback.
   /// <seealso cref="MC_PluginFiscalPrinterInterface.IMC_PluginFiscalPrinter" Fiscal receipt printing interface/>
   /// <seealso cref="TMC_FiscalDataCallbackResult" Fiscal callback result type/>
   IMC_FiscalDataCallback = interface
    ['{B0C8AD3A-8449-41BC-A20F-0B10C960D4F9}']
     /// <summary>
     /// Fiscal device data getter callback
     /// </summary>
     /// This callback is used by the printer driver during the printing process to retrieve necessary data
     /// <param name="sender">Reference to the driver which is calling the callback</param>
     /// <param name="asDataID">Type of data to be provided by the callback</param>
     /// <param name="zsDataValue">Actual data provided by the client application</param>
     /// <returns>A value among <see cref="TMC_FiscalDataCallbackResult"/>,
     /// which indicates whether the requested data could be provided </returns>
     /// <seealso cref="MC_PluginFiscalPrinterInterface.IMC_PluginFiscalPrinter" Fiscal receipt printing interface/>
     /// <seealso cref="TMC_FiscalDataCallbackResult" Fiscal callback result type/>
     function onDataRequest(sender : IMC_PluginBase ; const asDataID : wideString ; out zsDataValue : wideString) : TMC_FiscalDataCallbackResult ; stdcall ;
   end ;

   /// <summary>
   /// Interface to implement when writing a callback that can get and send data to business application
   /// </summary>
   /// A class must implement this interface in order to receive from the driver any data.<p>
   /// Sometimes fiscal logic imposes that fiscal data comming form fiscal printer must be stored by business application in order to show that sales operations has correctly been printd out.
   /// <seealso cref="MC_PluginFiscalPrinterInterface.IMC_PluginFiscalPrinter" Fiscal receipt printing interface/>
   /// <seealso cref="IMC_FiscalDataCallback" Fiscal callback interface/>
   IMC_FiscalRequestAndSendDataCallback = interface(IMC_FiscalDataCallback)
    ['{5C3D6E09-B4F4-46AF-A732-6F0F85E42FC6}']
     /// <summary>
     /// Fiscal device data sender event
     /// </summary>
     /// This callback is used by the printer driver during the printing process to send any relevant data to business application
     /// <param name="sender">Reference to the driver which is calling the callback</param>
     /// <param name="asDataID">Type of data being provided by the fiscal printer driver</param>
     /// <param name="asDataValue">Data provided by the fiscal printer driver</param>
     /// <returns>A boolean value signaling if data has been correctly managed</returns>
     /// <seealso cref="MC_PluginFiscalPrinterInterface.IMC_PluginFiscalPrinter" Fiscal receipt printing interface/>
     function onGivingData(sender : IMC_PluginBase ; const asDataID : wideString ; const asDataValue : wideString) : boolean ; stdcall ;
   end ;
implementation

end.
 