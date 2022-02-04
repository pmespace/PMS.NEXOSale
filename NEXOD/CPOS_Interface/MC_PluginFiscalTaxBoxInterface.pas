unit MC_PluginFiscalTaxBoxInterface;

interface

uses   MC_PluginInterface
     , MC_PLuginFiscalCallbackInterface
     ;

const
   /// <summary>
   /// Returns the identifier of a call back expected by the device.
   /// </summary>
   /// This enables the developpers of the business application teams to prepare data suppliers that are more specific to the requirements of the driver.<p>
   /// By default, thius capability will respond with a null string of characters.<p>
   /// --> The value to be sent back by this capability will be agreed with CEGID's business application developement team.
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caTaxBoxDataRequestID = ca11 ;
   /// <summary>
   /// Can the tax box manage sale's receipt documents?
   /// </summary>
   /// Is the tax box able to manage this kind of document?
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caTaxBoxReceiptAllowed = ca12 ;
   /// <summary>
   /// Can the tax box manage sale's receipt copies?
   /// </summary>
   /// Is the tax box able to manage this kind of document?
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caTaxBoxReceiptCopyAllowed = ca13 ;
   /// <summary>
   /// Can the tax box manage sale's invoice documents?
   /// </summary>
   /// Is the tax box able to manage this kind of document?
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caTaxBoxInvoiceAllowed = ca14 ;
   /// <summary>
   /// Can the tax box manage sale's invoice copies?
   /// </summary>
   /// Is the tax box able to manage this kind of document?
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caTaxBoxInvoiceCopyAllowed = ca15 ;
   /// <summary>
   /// Can the tax box manage return documents?
   /// </summary>
   /// Is the tax box able to manage this kind of document?
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caTaxBoxReturnAllowed = ca16 ;
   /// <summary>
   /// Can the tax box manage return copies?
   /// </summary>
   /// Is the tax box able to manage this kind of document?
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caTaxBoxReturnCopyAllowed = ca17 ;
   /// <summary>
   /// Can the tax box manage cash flow documents?
   /// </summary>
   /// Is the tax box able to manage this kind of document?
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caTaxBoxCashFlowAllowed = ca18 ;
   /// <summary>
   /// Can the tax box manage cash flow copies?
   /// </summary>
   /// Is the tax box able to manage this kind of document?
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caTaxBoxCashFlowCopyAllowed = ca19  ;
   /// <summary>
   /// Can the tax box manage pro-forma documents?
   /// </summary>
   /// Is the tax box able to manage this kind of document?
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caTaxBoxProformaAllowed = ca20 ;
   /// <summary>
   /// Can the tax box manage pro-forma copies?
   /// </summary>
   /// Is the tax box able to manage this kind of document?
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caTaxBoxProformaCopyAllowed = ca21 ;
   /// <summary>
   /// Can the tax box manage return pro-forma documents?
   /// </summary>
   /// Is the tax box able to manage this kind of document?
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caTaxBoxReturnProformaAllowed = ca22 ;
   /// <summary>
   /// Can the tax box manage return pro-forma copies?
   /// </summary>
   /// Is the tax box able to manage this kind of document?
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caTaxBoxReturnProformaCopyAllowed = ca23 ;
   /// <summary>
   /// Does the tax box require all tickets?
   /// </summary>
   /// Does the tax box require all the receipts of the register whatever are its type and the methods of payment used?
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caTaxBoxAllReceiptsRequired = ca24 ;
   /// <summary>
   /// Does the tax box require a start-of-day opening process
   /// </summary>
   /// This value is used to query the tax box as to whether it requires the client application to send a start-of-day opening command
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Driver capabilities query/>
   /// <seealso cref="IMC_PluginFiscalTaxBoxV2.dailyOpen" Fiscal session daily opening/>
   caTaxBoxOpenDay             = ca25 ;
   /// <summary>
   /// Does the tax box require a end-of-day closure process
   /// </summary>
   /// This value is used to query the tax box as to whether it requires the client application to send a send-of-day closure command before
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Driver capabilities query/>
   /// <seealso cref="IMC_PluginFiscalTaxBoxV2.dailyClose" Fiscal session daily closure/>
   caTaxBoxEndOfDay            = ca26 ;



type
   /// <summary>
   /// Interface to implement when writing a tax box driver
   /// </summary>
   /// This interface derives from <see cref="MC_PluginInterface.IMC_PluginBase"/> and adds the specific features required for the implementation of a tax box driver
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase" Driver base interface/>
   IMC_PluginFiscalTaxBox = interface(IMC_PluginBase)
    ['{7E82B3F6-C560-4D95-B9CF-698D76696ABC}']
     procedure setDataCallback ( acCallback : IMC_FiscalRequestAndSendDataCallback) ; stdcall ;
     function getDataCallback : IMC_FiscalRequestAndSendDataCallback ; stdcall ;

     /// <summary>
     /// Starts the process on the tax box to validate the current document.
     /// </summary>
     /// By this method CPOS driver is responsible to start a validation process of a document.<p>
     /// CPOS driver should request any required data to business application using the class pointed by DataCallback property.
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalRequestAndSendDataCallback" Fiscal data getter/setter callback/>
     function ValidateDocument() : boolean ; stdcall ;
     /// <summary>
     /// Is the Tax box available
     /// </summary>
     /// This method can be used by the client application whether the fiscal tax box is available.<p>
     /// Whenever the driver needs additional information, it will call <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> to get them from the client application
     /// <returns>True if the process succeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     function isAvailable() : boolean ; stdcall ;


     /// <summary>
     /// Reference to the callback used by the driver to obtain additional data and to provide return information
     /// <value>Reference to an instance of the <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> interface</value>
     /// </summary>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalRequestAndSendDataCallback" Fiscal data getter/setter callback/>
     property DataCallback : IMC_FiscalRequestAndSendDataCallback read getDataCallback write setDataCallBack ;
   end ;

   /// <summary>
   /// Version 2 of interface to be implemented by tax box drivers managing open day or closing day process
   /// </summary>
   /// This is the second version of interface for tax box that provides the specific methods to manage open day or closing day process
   /// <seealso cref="IMC_PluginFiscalTaxBox" Interface for tax box devices/>
   IMC_PluginFiscalTaxBoxV2 = interface(IMC_PluginFiscalTaxBox)
    ['{3E4CFC51-31C4-40F1-A652-8D5D2448CDF9}']

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
     /// <seealso cref="caTaxBoxOpenDay" Capability of the tax box device to manage a day opening procedure/>
     function dailyOpen(const asDate : wideString) : boolean ; stdcall ;
     
     /// <summary>
     /// Fiscal session daily closure
     /// </summary>
     /// This method instructs the tax box to close the fiscal session.<p>
     /// Whenever the driver needs additional information, it will call <see cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback"/> to get them from the client application
     /// <returns>True if the process succeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     /// <seealso cref="MC_PluginFiscalCallbackInterface.IMC_FiscalDataCallback" Fiscal data getter callback/>
     /// <seealso cref="caTaxBoxEndOfDay" Capability of the tax box device to manage a day closing procedure/>
     function dailyClose() : boolean ; stdcall ;
   end ;

implementation

end.
