unit MC_PluginICAOReaderInterface;

interface

uses   MC_PLuginInterface
     ;

const
   ///TMC_ICAOFieldId
   /// <summary>
   /// Unknown ICAO FieldId
   /// </summary>
   /// This is the undefined values in the ICAO fields enumerations
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiUnknown       =  0 ;
   /// <summary>
   /// ICAO document class
   /// </summary>
   /// This field specifiy the type of document read
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   /// <seealso cref="TMC_ICAODocumentClass" Type of document read/>
   fiDoClass       = 11 ;
   /// <summary>
   /// Document number
   /// </summary>
   /// Field containing the document number
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiDoNumber      = 12 ;
   /// <summary>
   /// Document expiration date
   /// </summary>
   /// Field containing the document's expiration date
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiDoExpDate     = 13 ;
   /// <summary>
   /// Document issue date
   /// </summary>
   /// Field containing the document's issue date
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiDoIssueDate   = 14 ;
   /// <summary>
   /// Document's issuer country code
   /// </summary>
   /// Field containing the document's issuer country code
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiDoCountryCode = 15 ;
   /// <summary>
   /// Document's issuer country
   /// </summary>
   /// Field containing the document's issuer country name
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiDoCountryName = 16 ;
   /// <summary>
   /// Document's issuer state code
   /// </summary>
   /// Field containing the document's issuer state code
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiDoStateCode   = 17 ;
   /// <summary>
   /// Document's issuer state
   /// </summary>
   /// Field containing the document's issuer state name
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiDoStateName   = 18 ;
   /// <summary>
   /// Document's issuer authority
   /// </summary>
   /// Field containing the document's issuer autorithy
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiDoIssuAuthor  = 19 ;
   /// <summary>
   /// Bearer's first name
   /// </summary>
   /// Field containing bearer's first name
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiPeFirstName   = 41 ;
   /// <summary>
   /// Bearer's last name
   /// </summary>
   /// Field containing bearer's last name
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiPeLastName    = 42 ;
   /// <summary>
   /// Bearer's personal alternate identifiant number
   /// </summary>
   /// Field containing bearer's personal alternate identifiant number
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiPeAltNumber   = 43 ;
   /// <summary>
   /// Bearer's nationality code
   /// </summary>
   /// Field containing bearer's nationality code
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiPeNacCode     = 44 ;
   /// <summary>
   /// Bearer's nationality name
   /// </summary>
   /// Field containing bearer's nationality name
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiPeNacName     = 45 ;
   /// <summary>
   /// Bearer's sex
   /// </summary>
   /// Field containing bearer's sex
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiPeSex         = 46 ;
   /// <summary>
   /// Bearer's birthdate
   /// </summary>
   /// Field containing bearer's birthdate
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiPeBirthDate   = 47 ;
   /// <summary>
   /// Bearer's birth place
   /// </summary>
   /// Field containing bearer's birth place
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiBirthPlace   = 48 ;
   /// <summary>
   /// Bearer's residence address
   /// </summary>
   /// Field containing bearer's residence address
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiPeAddress     = 49 ;
   /// <summary>
   /// Bearer's residence city
   /// </summary>
   /// Field containing bearer's residence city
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiPeCity        = 50 ;
   /// <summary>
   /// Bearer's residence state
   /// </summary>
   /// Field containing bearer's residence state
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiPeState       = 51 ;
   /// <summary>
   /// Bearer's residence postal code
   /// </summary>
   /// Field containing bearer's residence postal code
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiPePostalCode  = 52 ;
   /// <summary>
   /// Bearer's photo
   /// </summary>
   /// Field containing bearer's photo
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiPePhoto       = 53 ;
   /// <summary>
   /// Bearer's signature
   /// </summary>
   /// Field containing bearer's signature
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiPeSignature   = 54 ;
   /// <summary>
   /// ICAO document class
   /// </summary>
   /// This field specifiy the name of the type of document read
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiDoClassName   = 55 ;
   /// <summary>
   /// ICAO document class
   /// </summary>
   /// This field specifiy the serie of document read
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiDoSerie       = 56 ;
   /// <summary>
   /// Bearer's full name
   /// </summary>
   /// Field containing bearer's full name
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiPeFullName    = 57 ;
   /// <summary>
   /// Full bearer's residence address
   /// </summary>
   /// Field containing the full bearer's residence address
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiPeFullAddress = 58 ;
   /// <summary>
   /// Raw machine readable zone
   /// </summary>
   /// Field containing document's machine readable zome (MRZ) as raw characters
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   fiOtMRZ         = 99 ;


   //TMC_ICAODocumentClass
   /// <summary>
   /// Unknown ICAO document class
   /// </summary>
   /// This is the undefined values in the ICAO document class enumerations
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   dcUnknown   = 0 ;
   /// <summary>
   /// Others ICAO document class
   /// </summary>
   /// This document is a not yet enumerated class of document
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   dcOthers    = 1 ;
   /// <summary>
   /// Passport ICAO document class
   /// </summary>
   /// This document is a ICAO reconized passport
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   dcPassport  = 2 ;
   /// <summary>
   /// Visa ICAO document class
   /// </summary>
   /// This document is a ICAO reconized Visa
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   dcVisa      = 3 ;
   /// <summary>
   /// Identity card ICAO document class
   /// </summary>
   /// This document is a ICAO reconized identity card
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   dcIdentCard = 4 ;
   /// <summary>
   /// Driver licence ICAO document class
   /// </summary>
   /// This document is a ICAO reconized driver licence
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   /// <seealso cref="IMC_ICAODocumentFields" Class containing all gathered information from a document/>
   dcDriveLic  = 5 ;

   //TMC_ICAOFieldType
   /// <summary>
   /// Unknown ICAO Field type
   /// </summary>
   /// This is the undefined values in the ICAO Field type  enumerations
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   ftUnknown    = 0 ;
   /// <summary>
   /// String type
   /// </summary>
   /// Field has a string value
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   ftString     = 1 ;
   /// <summary>
   /// Integer type
   /// </summary>
   /// Field has a integer value
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   ftInteger    = 2 ;
   /// <summary>
   /// Double type
   /// </summary>
   /// Field has a double value
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   ftDouble     = 3 ;
   /// <summary>
   /// Boolean type
   /// </summary>
   /// Field has a boolean value
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   ftBoolean    = 4 ;
   /// <summary>
   /// Enumerated type
   /// </summary>
   /// Field has a enumerated value
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   ftEnumerated = 5 ;
   /// <summary>
   /// Stream type
   /// </summary>
   /// Field has a stream tvalue
   /// <seealso cref="IMC_ICAOField" Class containening ICAO field value/>
   ftStream     = 6 ;

type
   /// <summary>
   /// ICAO Reader Field Id
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="fiUnknown" Unknown field Id/<
   /// <seealso cref="fiDoClass" Document's class/>
   /// <seealso cref="fiDoNumber" Document's number/>
   /// <seealso cref="fiDoExpDate" Docuemnt's expiration date />
   /// <seealso cref="fiDoIssueDate" Document's issue date />
   /// <seealso cref="fiDoCountryCode" DOcument's country code/>
   /// <seealso cref="fiDoCountryName" Document's country name/>
   /// <seealso cref="fiDoStateCode" document's state code/>
   /// <seealso cref="fiDoStateName" Document's state name/"
   /// <seealso cref="fiDoIssuAuthor" Document's issuer authority/>
   /// <seealso cref="fiPeFirstName" Bearer's first name
   /// <seealso cref="fiPeLastName" Bearer's last name/>
   /// <seealso cref="fiPeAltNumber" Bearer's Alternate identification number/>
   /// <seealso cref="fiPeNacCode" Bearer's nationality code/>
   /// <seealso cref="fiPeNacName" Bearer's nationality name/>
   /// <seealso cref="fiPeSex" Bearer's sex/>
   /// <seealso cref="fiPeBirthDate" Bearer's birthdate/>
   /// <seealso cref="fiBirthPlace" Bearer's birth place/>
   /// <seealso cref="fiPeAddress" Bearer's residence address/>
   /// <seealso cref="fiPeCity" Bearer's residence city/>
   /// <seealso cref="fiPeState" Bearer's residence state/>
   /// <seealso cref="fiPePostalCode" Bearer's residence postal code/>
   /// <seealso cref="fiPePhoto" Bearer's photo/>
   /// <seealso cref="fiPeSignature" Bearer's signature/>
   /// <seealso cref="fiDoClassName" Name of the type of document read/>
   /// <seealso cref="fiDoSerie" Serie of document read/>
   /// <seealso cref="fiPeFullName" Bearer's full name/>
   /// <seealso cref="fiPeAddrLine1" First line of bearer's residence address/>
   /// <seealso cref="fiOtMRZ" Machine readable zone (MRZ)/>
   TMC_ICAOFieldId = integer ;
   /// <summary>
   /// Abstract enumeration type
   /// </summary>
   /// <remarks>
   /// This is a base type for enumeration values given by ICAO terminal.<p>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="TMC_ICAODocumentClassº" Unknown field Id/<
   TMC_ICAOEnumValue = integer ;
   /// <summary>
   /// ICAO document class type
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="dcUnknown" Unknown document class/>
   /// <seealso cref="dcOthers" Not yet enumerated ICAO document"/>
   /// <seealso cref="dcPassport" Passport/>
   /// <seealso cref="dcVisa" Visa/>
   /// <seealso cref="dcIdentCard" Identity card/>
   /// <seealso cref="dcDriveLic" Driver licence/>
   TMC_ICAODocumentClass = TMC_ICAOEnumValue ;
   /// <summary>
   /// ICAO field type
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="ftUnknown" Unknown Field type/>
   /// <seealso cref="ftString" String field type"/>
   /// <seealso cref="ftInteger" Integer field type/>
   /// <seealso cref="ftDouble" Double field type/>
   /// <seealso cref="ftBoolean" boolean field Type/>
   /// <seealso cref="ftEnumerated" Enumerated/>
   /// <seealso cref="ftStream" Stream field type/>
   TMC_ICAOFieldType = integer ;

   /// <summary>
   /// ICAO field abstract interface
   /// </summary>
   /// <remarks>
   /// Base interface for ICAO document fields
   /// </remarks>
   /// <seealso cref="IMC_ICAOStringField" String field interface/>
   /// <seealso cref="IMC_ICAOIntegerField" Integer field interface/>
   /// <seealso cref="IMC_ICAODoubleField" Double field interface/>
   /// <seealso cref="IMC_ICAOBooleanField" Boolean field interface/>
   /// <seealso cref="IMC_ICAOEnumField" Enumerate value field interface/>
   /// <seealso cref="IMC_ICAOStreamField" Stream field interface/>
   IMC_ICAOField = Interface(IMC_VersionedInterface)
    ['{C253FB15-88E1-48EB-A788-9A46F11EB411}']
     function GetFieldId : TMC_ICAOFieldId ; stdcall ;
     function GetFieldType : TMC_ICAOFieldType ; stdcall ;

     /// <summary>
     /// Returns FieldId property of field
     /// </summary>
     /// <seealso cref="TMC_ICAOFieldID" ICAO Field Id/>
     property FieldId : TMC_ICAOFieldId read getFieldId ;
     /// <summary>
     /// Returns the type of field
     /// </summary>
     /// <seealso cref="TMC_ICAOFieldID" ICAO Field Id/>
     property FieldType : TMC_ICAOFieldType read getFieldType ;
   end ;

   /// <summary>
   /// ICAO String field interface
   /// </summary>
   /// <remarks>
   /// Interface for string fields
   /// </remarks>
   /// <seealso cref="IMC_ICAOField" ICAO field interface/>
   IMC_ICAOStringField = interface(IMC_ICAOField)
    ['{B4D27588-AE35-4B22-8C60-33F5A71B48D4}']
     function GetValue : widestring ; stdcall ;

     /// <summary>
     /// Returns string value of field
     /// </summary>
     property Value : wideString read GetValue ;
   end ;

   /// <summary>
   /// ICAO Integer field interface
   /// </summary>
   /// <remarks>
   /// Interface for integer fields
   /// </remarks>
   /// <seealso cref="IMC_ICAOField" ICAO field interface/>
   IMC_ICAOIntegerField = interface(IMC_ICAOField)
    ['{7894E9FE-CB22-401E-A247-1DE14158C762}']
     function GetValue : integer ; stdcall ;

     /// <summary>
     /// Returns integer value of field
     /// </summary>
     property Value : integer read GetValue ;
   end ;

   /// <summary>
   /// ICAO Double field interface
   /// </summary>
   /// <remarks>
   /// Interface for double fields
   /// </remarks>
   /// <seealso cref="IMC_ICAOField" ICAO field interface/>
   IMC_ICAODoubleField = interface(IMC_ICAOField)
    ['{28FB20A6-0756-4EB1-8A64-5768E5A25813}']
     function GetValue : double ; stdcall ;

     /// <summary>
     /// Returns double value of field
     /// </summary>
     property Value : double read GetValue ;
   end ;

   /// <summary>
   /// ICAO Boolean field interface
   /// </summary>
   /// <remarks>
   /// Interface for boolean fields
   /// </remarks>
   /// <seealso cref="IMC_ICAOField" ICAO field interface/>
   IMC_ICAOBooleanField = interface(IMC_ICAOField)
    ['{8B869166-BB81-46C0-8247-EE0B4161C2C3}']
     function GetValue : Boolean ; stdcall ;

     /// <summary>
     /// Returns boolean value of field
     /// </summary>
     property Value : Boolean read GetValue ;
   end ;

   /// <summary>
   /// ICAO Enumerate values field interface
   /// </summary>
   /// <remarks>
   /// Interface for enumerate values field
   /// </remarks>
   /// <seealso cref="IMC_ICAOField" ICAO field interface/>
   IMC_ICAOEnumField = interface(IMC_ICAOField)
    ['{F6B4B45C-DED3-4430-A8EC-1F76EE6E09C4}']
     function GetValue : TMC_ICAOEnumValue ; stdcall ;

     /// <summary>
     /// Returns Enumerate value of field
     /// </summary>
     property Value : TMC_ICAOEnumValue read GetValue ;
   end ;

   /// <summary>
   /// ICAO Stream field interface
   /// </summary>
   /// <remarks>
   /// Interface for stream field (as pictures or signatures)
   /// </remarks>
   /// <seealso cref="IMC_ICAOField" ICAO field interface/>
   IMC_ICAOStreamField = interface(IMC_ICAOField)
    ['{9C39B5B2-FEBF-411A-8904-361AAFC7F01E}']
     function GetValue : IMC_Stream ; stdcall ;

     /// <summary>
     /// Returns stream value of field
     /// </summary>
     property Value : IMC_Stream read GetValue ;
   end ;

   /// <summary>
   /// Supports an enumération simple form a list of IMC_ICAOFields.<p>
   /// After creation current element is before first element of the list.
   /// </summary>
   IMC_ICAOFieldsEnumerator = interface
    ['{67FDC04D-4D22-4F25-B78F-89C05972EE45}']
     /// <summary>
     /// Returns current elelemnt from the list
     /// <returns>Current IMC_ICAOField element</returns>
     /// <exception cref="EInvalidOperation">An Exception is raised if current if before first element of the list.</exception>
     function Current : IMC_ICAOField ;
     /// <summary>
     /// Goes on to next element of the list
     /// <returns>True if the of the list is not reached</returns>
     function MoveNext : boolean;
     /// <summary>
     /// Reset current position of enumerator to the before first element of the list
     /// It is not necessary to call reset if enumerator is just created,
     /// this method is useful to read several times the same list of elements.
     /// </summary>
     procedure Reset;
  end;



   /// <summary>
   /// List of fields gathered
   /// </summary>
   /// <remarks>
   /// List of fields gathered from read document.<p>
   /// Every field has his own identifier. new identifier could be added when necessary.
   /// </remarks>
   /// <seealso cref="IMC_ICAOField" ICAO field interface/>
   /// <seealso cref="TMC_ICAOFieldId" ICAO fields identifers/>
   IMC_ICAODocumentFields = interface(IMC_VersionedInterface)
    ['{37085208-71CF-406A-8782-38C0FB769C65}']
     /// <summary>
     /// Allows to get a ICAO document's field
     /// </summary>
     /// Gets ICAO field by its Id.
     /// <param name="aeFieldId"> Identifier of the field to be retrieved</param>
     /// <param name="zcData"> Returns a reference to choiced field (if ecists) or null</param>
     /// <returns> A boolean value to indicate if field has been gathered (TRUE) or if it doens't exist on the list (FALSE)</returns>
     /// <seealso cref="IMC_ICAOField" ICAO field interface/>
    function TryGetField(aeFieldId : TMC_ICAOFieldId ; out zcData : IMC_ICAOField) : boolean ; stdcall ;

     /// <summary>
     /// Gets a ICAO document's field by his index
     /// </summary>
     /// Gets the ICAO field found at the given index <paramref name="aiIndex"/> in the list.
     /// <param name="aiIndex"> index of field to be retrieved</param>
     /// <returns> Solicited field</returns>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_ICAOField" ICAO field interface/>
    function GetEnumerator : IMC_ICAOFieldsEnumerator ; stdcall ;

   end ;

   /// <summary>
   /// Interface to implement for ICAO document readers drivers
   /// </summary>
   /// <remarks>
   /// This interface derives from <see cref="MC_PluginInterface.IMC_PluginBase"/> and adds the specific features required for the implementation of a ICAO document reader driver
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase" Driver base interface/>
   IMC_PluginICAOReader = interface(IMC_PLuginBase)
    ['{917380FD-B9B3-4C88-BB12-BE411C6F1FD0}']
     /// <summary>
     /// Executes the proces of capture of new document
     /// </summary>
     /// This commands reads a new document and give it back to business application as a list of Fields
     /// <param name="zcDocumentFields"> Reference to the list of fields gathered from read document</param>
     /// <returns>True if the method succeeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="MC_PluginInterface.IMC_Error" Error management interface/>
     function ReadDocument(out zcDocumentFields : IMC_ICAODocumentFields) : boolean ; stdcall ;
   End ;


implementation

end.

