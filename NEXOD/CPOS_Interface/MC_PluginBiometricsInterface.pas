unit MC_PluginBiometricsInterface;

interface

uses   MC_PluginInterface
     , ActiveX
     ;

const
   //TMC_BiometricsResult
   /// <summary>
   /// Unknown Biometrics result
   /// </summary>
   /// This is the undefined value in Biometrics results.
   /// <remarks>
   /// This value can be returned by any Biometrics command to indicate an unexpected result
   /// </remarks>
   /// <seealso cref="TMC_BiometricsResult"Device types/>
   brUnknown      = 0 ;
   /// <summary>
   /// Unmatched Biometrics result
   /// </summary>
   /// This is the unmatched value in Biometrics results.
   /// <remarks>
   /// This value can be returned by Verify Biometrics command to indicate that user has not matched provided biometrics template
   /// </remarks>
   /// <seealso cref="TMC_BiometricsResult"Device types/>
   brUnmatched    = 1 ;
   /// <summary>
   /// Matched Biometrics result
   /// </summary>
   /// This is the matched value in Biometrics results.
   /// <remarks>
   /// This value can be returned by Verify Biometrics command to indicate that user has matched provided biometrics template
   /// </remarks>
   /// <seealso cref="TMC_BiometricsResult"Device types/>
   brMatched      = 2 ;
   /// <summary>
   /// Enrollment failed Biometrics result
   /// </summary>
   /// This is the enrollment failed value in Biometrics results.
   /// <remarks>
   /// This value can be returned by enrollment Biometrics command to indicate that user has not successfully enrolled his/her biometrics template
   /// </remarks>
   /// <seealso cref="TMC_BiometricsResult"Device types/>
   brEnrollFailed = 11 ;
   /// <summary>
   /// Enrolled Biometrics result
   /// </summary>
   /// This is the enrolled value in Biometrics results.
   /// <remarks>
   /// This value can be returned by Enrollment Biometrics command to indicate that user has successfully enrolled his/her biometrics template
   /// </remarks>
   /// <seealso cref="TMC_BiometricsResult"Device types/>
   brEnrolled     = 12 ;
   /// <summary>
   /// Cancel Biometrics result
   /// </summary>
   /// This is the cancel value in Biometrics results.
   /// <remarks>
   /// This value can be returned by any Biometrics command to indicate that user has cancelled the command
   /// </remarks>
   /// <seealso cref="TMC_BiometricsResult"Device types/>
   brCancel       = 97 ;
   /// <summary>
   /// Time-out Biometrics result
   /// </summary>
   /// This is the time-out value in Biometrics results.
   /// <remarks>
   /// This value can be returned by any Biometrics command to indicate that time-out hasd been reached (and users has accepted to fails the command)
   /// </remarks>
   /// <seealso cref="TMC_BiometricsResult"Device types/>
   brTimeOut      = 98 ;
   /// <summary>
   /// Error Biometrics result
   /// </summary>
   /// This is the error value in Biometrics results.
   /// <remarks>
   /// This value can be returned by any Biometrics command to indicate that an error has been produced
   /// </remarks>
   /// <seealso cref="TMC_BiometricsResult"Device types/>
   brError        = 99 ;

   //Capabilitites
   /// <summary>
   /// Capability of the Biometrics device to interrupt a command
   /// </summary>
   /// This value is used to query the Biometrics device driver for its capability to interrupt a command execution
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Driver capabilities query/>
   caBIOInterrupt                    = ca01 ;

type
   /// <summary>
   /// This interface implements an enveloppe to manage enrollement templates.
   /// </summary>
   /// An implementation of this interface allows to encapsulate an enrollement template
   IMC_BiometricsTemplate = interface (IMC_VersionedInterface)
    ['{27793FC9-C521-40E7-8201-AA5E2B48C12F}']
     function GetID : widestring ; stdcall ;
     function GetDescription : widestring ; stdcall ;
     function GetTemplate : IMC_Stream ; stdcall ;

     /// <summary>
     /// Gives access to the ID of the enrollement template
     /// </summary>
     /// This property provides access to the ID of the enrollement template
     property Id : widestring read GetId ;
     /// <summary>
     /// Gives access to the description of the enrollement template
     /// </summary>
     /// This property provides access to the description of the enrollement template
     property Description : widestring read GetDescription ;
     /// <summary>
     /// Gives access to the enrollement template stream
     /// </summary>
     /// This property provides access to the enrollement template stream
     property Template : IMC_Stream read GetTemplate ;
   end ;

   /// <summary>
   /// This interface implements a list of <see cref="IMC_BiometricsTemplate"/>
   /// </summary>
   /// An implementation of this interface must be able to manage a list of enrollment templates.<p>
   /// The property <see cref="items"/> gives access to every enrollment template in the list
   /// <remarks>
   /// An exception in raised if the index is out of the list bounds
   /// </remarks>
   IMC_BiometricsTemplatesList = interface(IMC_ListVersionedInterface)
    ['{4CCDD4F3-2EDC-4FE7-BE92-CD182307A0B9}']
     function get_Item(aiIndex : integer) : IMC_BiometricsTemplate ; stdcall ;
     function get_Count : integer ; stdcall ;

     /// <summary>
     /// Adds a enrollement template to the list
     /// </summary>
     /// Adds a reference to the enrollement template to the list
     /// <param name="acItem"> A reference to <see cref="IMC_BiometricsTemplate"/> to add to the list</param>
     /// <returns> The index of the element added to the list</returns>
     /// <seealso cref="IMC_BiometricsTemplate" Enrolled templates element/>
     function add(acItem : IMC_BiometricsTemplate ) : integer ; stdcall ;
     /// <summary>
     /// Gets a enrollement template
     /// </summary>
     /// Gets a reference to the enrollement template interface found at the position <paramref name="aiIndex"/> in the list.
     /// <param name="aiIndex"> Index of the element to get</param>
     /// <returns> A reference to <see cref="IMC_BiometricsTemplate"/></returns>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_BiometricsTemplate" Enrolled templates element/>
     function get(aiIndex : integer) : IMC_BiometricsTemplate ; stdcall ;
     /// <summary>
     /// Puts the enrollement template
     /// </summary>
     /// Puts the reference to an enrollement template interface <paramref name="acItem"/> at the position <paramref name="aiIndex"/> in the list
     /// <param name="aiIndex"> Index in the list</param>
     /// zparam name="acItem"> Reference <see cref="IMC_BiometricsTemplate"/> to put in the list </param>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_BiometricsTemplate" Enrolled templates element/>
     procedure put(aiIndex : integer ; acItem : IMC_BiometricsTemplate) ; stdcall ;
     /// <summary>
     /// Clears the list
     /// </summary>
     /// Clears all the references contained in the list.
     procedure clear() ; stdcall ;
     /// <summary>
     /// Deletes an enrollement template
     /// </summary>
     /// Deletes the reference to an enrollement remplate interface found at position <c aiIndex/> in the list
     /// <param name="aiIndex"> Index in the list</param>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     procedure delete(aiIndex : integer) ; stdcall ;
     /// <summary>
     /// Returns the first enrollement template
     /// </summary>
     /// Returns a reference to the first enrollement template interface managed by the list
     /// <returns> Returns a reference to the first interface of the list, or Nil if the list is empty</returns>
     /// <seealso cref="IMC_BiometricsTemplate"Enrolled templates element/>
     function first() : IMC_BiometricsTemplate ; stdcall ;
     /// <summary>
     /// Returns the index of a given enrollement template
     /// </summary>
     /// Returns the index of the element which matches the parameter <paramref name="acItem"/>
     /// <param name="acItem"> Reference to an enrollement template interface </param>
     /// <returns> The index of the reference to the device information, if it was found, -1 otherwise</returns>
     /// <seealso cref="IMC_BiometricsTemplate"Enrolled templates element/>
     function indexOf(acItem : IMC_BiometricsTemplate) : integer ; stdcall ;
     /// <summary>
     /// Inserts an enrollement template in the list
     /// </summary>
     /// Inserts the reference to an enrollement template <paramref name="acItem"/> at the index specified by <paramref name="aiIndex"/>.
     /// <param name="aiIndex"> Index in the list.</param>
     /// <param name="acItem"> Reference to the enrollement template interface to insert</param>
     /// <seealso cref="IMC_BiometricsTemplate"Enrolled templates element/>
     procedure insert(aiIndex : integer ; acItem : IMC_BiometricsTemplate) ; stdcall ;
     /// <summary>
     /// Returns the last enrollement template
     /// </summary>
     /// Returns a reference to the last enrollement template interface managed by the list
     /// <returns> Returns a reference to the last interface of the list, or Nil if the list is empty</returns>
     /// <seealso cref="IMC_BiometricsTemplate"Enrolled templates element/>
     function last() : IMC_BiometricsTemplate ; stdcall ;
     /// <summary>
     /// Removes an enrollement template
     /// </summary>
     /// Removes the reference to the enrollement template corresponding to  <paramref name="acItem"/>
     /// <param name="acItem"> Reference to enrollement template</param>
     /// <seealso cref="IMC_BiometricsTemplate"Enrolled templates element/>
     procedure remove(acItem : IMC_BiometricsTemplate) ; stdcall ;

     /// <summary>
     /// Gives access to the list elements
     /// </summary>
     /// This property provides a reference to the enrollment templates interface found at position <paramref name="aiIndex"/> in the list.<p>
     /// The value of <paramref name="aiIndex"/> must be between 0 and <see cref="count"/>-1.
     /// <param name="aiIndex"> Index in the list</param>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_BiometricsTemplate"Enrolled templates element/>
     property items[aiIndex : integer ] : IMC_BiometricsTemplate read get_Item ; default ;
     /// <summary>
     /// Returns the element count
     /// </summary>
     /// Returns the number of device information references present in the list
     property count : integer read get_Count ;
   end ;


   /// <summary>
   /// Biometrics operation result
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="brUnknown" Unknown result/>
   /// <seealso cref="brUnmatched" Unmatched result/>
   /// <seealso cref="brMatched" Matched result/>
   /// <seealso cref="brEnrollFailed" Enroll operation failed/>
   /// <seealso cref="brEnrolled" Enrool operation succesfull/>
   /// <seealso cref="brCancel" Operation canceled/>
   /// <seealso cref="brTimeOut" timeout result/>
   /// <seealso cref="brError" error result/>
   TMC_BiometricsResult = integer ;

   /// <summary>
   /// Interface to implement when writing a biometrics device driver
   /// </summary>
   /// This interface derives from <see cref="IMC_PluginBase"/> and adds the specific features required for the implementation of a biometrics device driver.
   /// <seealso cref="IMC_PluginBase" Driver base interface/>
   IMC_PluginBiometrics = interface(IMC_PluginBase)
    ['{BF28E824-74A2-421D-914B-9C9D9B740ED9}']
     /// <summary>
     /// This method will be able to capture a template, to be stored by business application, which would allow to verify (or match) a user identity
     /// </summary>
     /// This method receives (and get back) an enrollement template about an user
     /// <param name="zcTemplate"> Interface holding the enrollement template. null if enrollment has not success.</param>
     /// <param name="zeResult"> Sends back the result of enrollement action.</param>
     /// <returns>True if the driver could manage the action, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function Enroll ( out zcTemplate : IMC_Stream ; out zeResult : TMC_BiometricsResult) : boolean  ; stdcall ;
     /// <summary>
     /// This method will be able to verify if a capture (to be read) match provided enrollement template.
     /// </summary>
     /// This method receives an enrollement template to be compare with a new read of biometrics parameters (to be done by the driver)
     /// <param name="acTemplate"> Interface holding the enrollement template.</param>
     /// <param name="aiHowManyChecks"> Business application could require a specif number of differetns checks to be done by the device to accepts a positive match.</param>
     /// <param name="zeResult"> Sends back the result of verification action.</param>
     /// <returns>True if the driver could manage the action, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function Verify ( acTemplate : IMC_Stream ; aiHowManyChecks : integer ; out zeResult : TMC_BiometricsResult) : boolean  ; stdcall ;
     /// <summary>
     /// This method will be able to match a capture (to be read) among a provided list of enrollement templates.
     /// </summary>
     /// This method receives a list of enrollement templatea and it will try to match a new rcapture of biometrics parameters to one of enrollement templates holded by the list.
     /// <param name="acTemplateList"> List of enrollement templates to be matched to a new capture of Biometrics parameters.</param>
     /// <param name="aiHowManyChecks"> Business application could require a specif number of differetns checks to be done by the device to accepts a positive match.</param>
     /// <param name="zcMatchedTemplate"> Sends back the enrrollment template that has been matched by the user. If no enrollement template has been matched, returns null</param>
     /// <returns>True if the driver could manage the action, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="IMC_BiometricsTemplatesList" List of enrolled templates/>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function Match (acTemplatesList : IMC_BiometricsTemplatesList ; aiHowManyChecks : integer ; out zcMatchedTemplate : IMC_BiometricsTemplate) : boolean ; stdcall ;
   end ;

implementation

end.
