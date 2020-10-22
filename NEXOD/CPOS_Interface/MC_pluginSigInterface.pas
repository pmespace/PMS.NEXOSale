                                                                                          //const Ok
unit MC_pluginSigInterface;

interface

uses   MC_PluginInterface
     , activeX   
     ;

type
   /// <summary>
   /// Interface to implement when writing a signature pad driver
   /// </summary>
   /// This interface derives from <see cref="IMC_PluginBase"/> and adds the specific features required for the implementation of a signature pad driver
   /// <seealso cref="IMC_PluginBase" Driver base interface/>
   IMC_PluginSig = interface(IMC_PluginBase)
    ['{BD88D6BD-69D0-4B26-869E-0284341B489E}']
     /// <summary>
     /// Displays a text on the signature pad
     /// </summary>
     /// This method shows a text on the signature pad display (if one is present).<p>
     /// <param name="asText"> Text to display</param>
     /// <param name="asFormName"/> Specifies the name of the form where the text should be displayed</param>
     /// <returns>True if the method was successful, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <remarks>
     /// Some signature pads offer propriety display forms to help the user (usually, the customer)
     /// </remarks>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function displayText(const asText,asFormName : wideString ) : boolean ; stdcall ;
     /// <summary>
     /// Asks the customer to choose between several options.
     /// </summary>
     /// This method shows a text in the signature pad display, asking the user to choose between several options.<p>
     /// <param name="asText"> Text to display</param>
     /// <param name="asFormName"/> Specifies the name of the form where the text should be displayed</param>
     /// <param name="zsAnswer"/> Contains the user selection</param>
     /// <returns>True if the method was successful, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <remarks>
     /// Some signature pads offer propriety display forms to help the user (usually, the customer)
     /// </remarks>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function askCustomer(const asText : wideString ; out zsAnswer : wideString ; const asFormName : wideString ) : boolean ; stdcall ;
     /// <summary>
     /// Shows the signature form
     /// </summary>
     /// This method shows the form which will be used when capturing the user signature
     /// <param name="asFormName"/> Specifies the name of the form to display</param>
     /// <returns>True if the method was successful, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <remarks>
     /// Some signature pads offer propriety display forms to help the user (usually, the customer)
     /// </remarks>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function displaySignForm(const asFormName : wideString ) : boolean ; stdcall ;
     /// <summary>
     /// Runs the signature capture process
     /// </summary>
     /// This method displays a text in the signature pad display and captures the client signature.
     /// <param name="asText"> Text to display</param>
     /// <param name="zcSignature"/> Binary data stream (usually a Jpeg or BMP image) which contains the client signature</param>
     /// <param name="asFormName"/> Specifies the name of the form to display</param>
     /// <returns>True if the method was successful, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <remarks>
     /// Some signature pads offer propriety display forms to help the user (usually, the customer)
     /// </remarks>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function captureSignature(const asText : wideString ; out zcSignature : IStream ; const asFormName : wideString ) : boolean ; stdcall ;
   end ;

implementation

end.

