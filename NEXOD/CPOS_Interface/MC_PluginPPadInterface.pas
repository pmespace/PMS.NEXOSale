//const Ok
unit MC_PluginPPadInterface;

interface

uses   MC_PluginInterface
     ;

type
   /// <summary>
   /// Interface used as an input parameter for PIN capture
   /// </summary>
   /// This interface holds the necessary information to realise a PIN capture
   /// <seealso cref="IMC_PluginBase" Driver base interface/>
   IMC_PPadInputData = interface(IMC_VersionedInterface)
    ['{986CC1A2-8F3E-4D37-8B3E-F47131051541}']
     function get_AccountNumber : wideString ; stdcall ;
     function get_Amount : double ; stdcall ;
     function get_MerchantID : wideString ; stdcall ;
     function get_TerminalID : wideString ; stdcall ;
     function get_Track1 : wideString ; stdcall ;
     function get_Track2 : wideString ; stdcall ;
     function get_Track3 : wideString ; stdcall ;
     function get_Track4 : wideString ; stdcall ;

     /// <summary>
     /// Returns the account number or the card number
     /// </summary>
     property accountNumber : wideString read get_AccountNumber ;
     /// <summary>
     /// Returns the amount of the transaction
     /// </summary>
     property amount : double read get_Amount ;
     /// <summary>
     /// Returns the store ID
     /// </summary>
     property merchantID : wideString read get_MerchantID ;
     /// <summary>
     /// Returns the terminal ID
     /// </summary>
     property terminalID : wideString read get_TerminalID ;
     /// <summary>
     /// Returns the content of the card's first magnetic stripe
     /// </summary>
     property track1 : wideString read get_Track1 ;
     /// <summary>
     /// Returns the content of the card's second magnetic stripe
     /// </summary>
     property track2 : wideString read get_Track2 ;
     /// <summary>
     /// Returns the content of the card's third magnetic stripe
     /// </summary>
     property track3 : wideString read get_Track3 ;
     /// <summary>
     /// Returns the content of the card's fourth magnetic stripe
     /// </summary>
     property track4 : wideString read get_Track4 ;
   end ;

   /// <summary>
   /// Interface used as an output parameter for PIN capture
   /// </summary>
   /// This interface is used to return the driver results after completing a PIN capture
   /// <seealso cref="IMC_PluginBase" Driver base interface/>
   IMC_PPadOutputData = interface(IMC_PPadInputData)
    ['{A7FCDFA3-9DF7-4578-8386-699C74F9504F}']
     function get_EncryptedPIN : wideString ; stdcall ;
     function get_SecurityInfo : wideString ; stdcall ;

    /// <summary>
    /// Returns the encrypted customer PIN
    /// </summary>
     property encryptedPIN : wideString read get_EncryptedPIN ;
     /// <summary>
     /// Returns additional security information relative to the capture PIN.
     /// </summary>
     property securityInfo : wideString read get_SecurityInfo ;
   end ;

   /// <summary>
   /// Interface to implement when writing a PIN pad driver
   /// </summary>
   /// This interface derives from <see cref="IMC_PluginBase"/> and adds the specific features required for the implementation of a PIN pad driver
   /// <seealso cref="IMC_PluginBase" Driver base interface/>
   IMC_PluginPinPad = interface(IMC_PluginBase)
    ['{2CD0BED3-6040-4EE1-98BA-64496B2F655A}']
     /// <summary>
     /// Runs the pin pad capture process
     /// </summary>
     /// This method executes the pin pad capture process
     /// <param name="acInputData"> Interface used as an input parameter for PIN capture </param>
     /// <param name="zcOutputData"> Interface used as an output parameter for PIN capture</param>
     /// <returns>True if the method was successful, False otherwise (<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// This value can be used by the client application to query the driver whether this is a fiscal printer
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function getEncriptedPin ( acInputData : IMC_PPadInputData ; out zcOutputData : IMC_PPadOutputData) : boolean ; stdcall ;
   end ;

implementation

end.

