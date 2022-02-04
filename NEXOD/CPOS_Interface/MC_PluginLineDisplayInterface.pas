//const Ok
unit MC_PluginLineDisplayInterface;

interface

uses   MC_pluginInterface
     , activeX
     ;

const
   //TMC_DisplayAttribute
   /// <summary>
   /// Unknown display attribute
   /// </summary>
   /// This is the undefined values in the display attribute types
   /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message actions/>
   /// <seealso cref="IMC_DisplayItem" Display item/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   daUnknown         = 0 ;
   /// <summary>
   /// Normal display attribute
   /// </summary>
   /// This value indicates that normal text should be displayed
   /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message actions/>
   /// <seealso cref="IMC_DisplayItem" Display item/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   daNormal          = 1 ;
   /// <summary>
   /// Blinking display attribute
   /// </summary>
   /// This value indicates that blinking text should be displayed
   /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message actions/>
   /// <seealso cref="IMC_DisplayItem" Display item/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   daBlink           = 2 ;
   /// <summary>
   /// Inverse video display attribute
   /// </summary>
   /// This value indicates that inverse video text should be displayed
   /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message actions/>
   /// <seealso cref="IMC_DisplayItem" Display item/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   daReverse         = 3 ;
   /// <summary>
   /// Blinking inverse video attribute
   /// </summary>
   /// This value indicates that blinking inverse video text should be displayed
   /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message actions/>
   /// <seealso cref="IMC_DisplayItem" Display item/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   daBlinkAndReverse = 4 ;

   //TMC_DisplayDirection
   /// <summary>
   /// Unknow display direction
   /// </summary>
   /// This is the undefined value in the display direction types
   /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message actions/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   ddUnknown = 0 ;
   /// <summary>
   /// Northbound scrolling
   /// </summary>
   /// This value indicates that messages should scroll to the top
   /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message actions/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   ddNorth  = 1 ;
   /// <summary>
   /// Southbound scrolling
   /// </summary>
   /// This value indicates that messages should scroll to the bottom
   /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message actions/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   ddSouth  = 2 ;
   /// <summary>
   /// Eastbound scrolling
   /// </summary>
   /// This value indicates that messages should scroll to the left
   /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message actions/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   ddEast    = 3 ;
   /// <summary>
   /// Westbound scrolling
   /// </summary>
   /// This value indicates that messages should scroll to the right
   /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message actions/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   ddWest   = 4 ;

   //TMC_DisplayMagnitude
   /// <summary>
   /// Unknown measuring unit
   /// </summary>
   /// This is the undefined value in measuring unit types
   /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message actions/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   dmUnknown = 0 ;
   /// <summary>
   /// Character measuring unit
   /// </summary>
   /// The event will be trigger when the message will have scrolled a given number of characters
   /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message actions/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   dmChars   = 1 ;
   /// <summary>
   /// Time (seconds) measuring unit
   /// </summary>
   /// The event will be trigger when the message will have scrolled during a given number of seconds
   /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message actions/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   dmSeconds = 2 ;

   //TMC_DisplayAlign
   /// <summary>
   /// Unknown alignment
   /// </summary>
   /// This is the undefined value in the text alignment types
   /// <seealso cref="IMC_DisplayItem" Display item/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   dcUnknown = 0 ;
   /// <summary>
   /// Left alignment
   /// </summary>
   /// The text will be left aligned in the display
   /// <seealso cref="IMC_DisplayItem" Display item/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   dcLeft   = 1 ;
   /// <summary>
   /// Centre alignement
   /// </summary>
   /// The text will be centered in the display
   /// <seealso cref="IMC_DisplayItem" Display item/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   dcCenter = 2 ;
   /// <summary>
   /// Right alignment
   /// </summary>
   /// The text will be right aligned in the display
   /// <seealso cref="IMC_DisplayItem" Display item/>
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   dcRight  = 3 ;

   //Capabilities
   /// <summary>
   /// Number of available display columns
   /// </summary>
   /// This value is used to determine the number of available columns in the display
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caLineDisplayHowManyColumns = ca01 ;
   /// <summary>
   /// Number of available display lines
   /// </summary>
   /// This value is used to determine the number of available lines in the display
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getCapabilities" Device feature query interface/>
   caLineDisplayHowManyRows   = ca02 ;

type
   /// <summary>
   /// Text attribute
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="daUnknown" unknow text attribute/>
   /// <seealso cref="daNormal" normal text/>
   /// <seealso cref="daBlink" blinking text/>
   /// <seealso cref="daReverse" inverse video text/>
   /// <seealso cref="daBlinkAndReverse" blinking inverse video text/>
   TMC_DisplayAttribute = integer ;
   /// <summary>
   /// Scrolling direction
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="ddUnknown" unknown scrolling direction/>
   /// <seealso cref="ddNorth" northbound scrolling/>
   /// <seealso cref="ddSouth" southbound scrolling/>
   /// <seealso cref="ddEast" eastbound scrolling/>
   /// <seealso cref="ddWest" westbound scrolling/>
   TMC_DisplayDirection = integer ;
   /// <summary>
   /// Measuring unit
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="dmUnknown" unknown measuring unit/>
   /// <seealso cref="dmChars" character measuring unit/>
   /// <seealso cref="dmSeconds" seconds measuring unit/>
   /// <seealso cref="IMC_DisplayScrollingAction.magnitude" magnitude property of IMC_DisplayScrollingAction/>
   TMC_DisplayMagnitude = integer ;
   /// <summary>
   /// Text alignment
   /// </summary>
   /// <remarks>
   /// For compatibility reasons, the enumerated types had to be replaced by numeric values.<p>
   /// Constants were introduced for better code readability.
   /// </remarks>
   /// <seealso cref="dcUnknown" identifiant d'alignement inconnu/>
   /// <seealso cref="dcLeft" identifiant d'alignement ? gauche/>
   /// <seealso cref="dcCenter" identifiant d'alignement centr?/>
   /// <seealso cref="dcRight" identifiant d'alignement ? droite/>
   TMC_DisplayAlign = integer ;

   /// <summary>
   /// Interface used to manage scrolling message actions
   /// </summary>
   /// This interface is used to provide the information necessary when executing a scrolling message action
   /// <seealso cref="IMC_PluginLineDisplay" Line display driver/>
   /// <seealso cref="TMC_DisplayDirection" Scrolling direction/>
   /// <seealso cref="TMC_DisplayMagnitude" Scrolling measuring unit/>
   /// <seealso cref="TMC_DisplayAttribute" Text attribute/>
   IMC_DisplayScrollingAction = interface(IMC_VersionedInterface)
    ['{02AE3843-BAE4-4BD9-82D4-6201D56E7C82}']
     function get_Direction : TMC_DisplayDirection ; stdcall ;
     function get_Interval : integer ; stdcall ;
     function get_Magnitude : TMC_DisplayMagnitude ; stdcall ;
     function get_Attribute : TMC_DisplayAttribute ; stdcall ;

     /// <summary>
     /// Returns the display scrolling direction
     /// </summary>
     /// <seealso cref="TMC_DisplayDirection" Scrolling direction/>
     property direction : TMC_DisplayDirection read get_Direction ;
     /// <summary>
     /// Returns the interval (in number of characters or seconds) between consecutive actions
     /// </summary>
     property interval : integer read get_Interval ;
     /// <summary>
     /// Returns the measuring unit for the interval between consecutive actions
     /// </summary>
     /// <seealso cref="TMC_DisplayMagnitude" Scrolling measuring unit/>
     property magnitude : TMC_DisplayMagnitude read get_Magnitude ;
     /// <summary>
     /// Returns the text attribute
     /// </summary>
     /// <seealso cref="TMC_DisplayAttribute" Text attribute/>
     property attribute : TMC_DisplayAttribute read get_Attribute ;
   end ;

   /// <summary>
   /// This interface manages a list of actions for scrolling messages
   /// </summary>
   /// An implementation of this interface will be able to manage a list of actions to perform on scrolling messages
   /// <example> The following example shows how the different actions can be added to prepare a scrolling message
   /// <code>
   /// ...
   /// lcActions:=TMC_DisplayScrollingActionsListFactory.createInstance(nil) ;
   /// lcActions.add(TMC_DisplayScrollingActionFactory.createInstance(TMC_DisplayScrollingActionParams.create(ddNorth,3,dmSeconds,daNormal))) ;
   /// lcActions.add(TMC_DisplayScrollingActionFactory.createInstance(TMC_DisplayScrollingActionParams.create(ddSouth,3,dmSeconds,daBlink))) ;
   /// lcActions.add(TMC_DisplayScrollingActionFactory.createInstance(TMC_DisplayScrollingActionParams.create(ddEast,50,dmChars,daBlinkAndReverse))) ;
   /// lcActions.add(TMC_DisplayScrollingActionFactory.createInstance(TMC_DisplayScrollingActionParams.create(ddWest,50,dmChars,daNormal))) ;
   ///
   /// cAff.displayScrolledMessage('cegid',lcActions) ;
   /// ...
   /// </code>
   /// </example>
   /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message action/>
   IMC_DisplayScrollingActionsList = interface (IMC_ListVersionedInterface)
    ['{0C33FDB3-DB0C-47A7-8473-0EB38D5AA14D}']
     function get_Item(aiIndex : integer) : IMC_DisplayScrollingAction ; stdcall ;
     function get_Count : integer ; stdcall ;

     /// <summary>
     /// Adds an action to the list
     /// </summary>
     /// Adds a reference to the action to the list
     /// <param name="acItem"> A reference to <see cref="IMC_DisplayScrollingAction"/></param>
     /// <returns> The index of the element in the list</returns>
     /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message action/>
     function add(acItem : IMC_DisplayScrollingAction ) : integer ; stdcall ;
     /// <summary>
     /// Gets an action from the list
     /// </summary>
     /// Gets the action found at the given index <paramref name="aiIndex"/> in the list.
     /// <param name="aiIndex"> Index in the list</param>
     /// <returns> A reference to <see cref="IMC_DisplayScrollingAction"/></returns>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_DisplayScrollingAction" Interface des paramp?tres d'un message d?roulant/>
     function get(aiIndex : integer) : IMC_DisplayScrollingAction ; stdcall ;
     /// <summary>
     /// Puts a new action at the given index
     /// </summary>
     /// Puts the reference to <paramref name="acItem"/> at the index <paramref name="aiIndex"/> in the list
     /// <param name="aiIndex"> Index in the list</param>
     /// zparam name="acItem"> Reference to <see cref="IMC_DisplayScrollingAction"/></param>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message action/>
     procedure put(aiIndex : integer ; acItem : IMC_DisplayScrollingAction) ; stdcall ;
     /// <summary>
     /// Clears the list
     /// </summary>
     /// Clears all the references contained in the list.
     procedure clear() ; stdcall ;
     /// <summary>
     /// Deletes an action
     /// </summary>
     /// Deletes the action found at the index <c aiIndex/> in the list
     /// <param name="aiIndex"> Index in the list</param>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message action/>
     procedure delete(aiIndex : integer) ; stdcall ;
     /// <summary>
     /// Returns the first action
     /// </summary>
     /// Returns a reference to the first action managed by the list
     /// <returns> Returns a reference to the first interface of the list, or Nil if the list is empty</returns>
     /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message action/>
     function first() : IMC_DisplayScrollingAction ; stdcall ;
     /// <summary>
     /// Returns the index of the element given as a parameter
     /// </summary>
     /// Returns the index of the element given in <paramref name="acItem"/>
     /// <param name="acItem"> Reference to the interface</param>
     /// <returns> The index of the reference found in the list, -1 otherwise</returns>
     /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message action/>
     function indexOf(acItem : IMC_DisplayScrollingAction) : integer ; stdcall ;
     /// <summary>
     /// Inserts an element at the given index
     /// </summary>
     /// Inserts the element given in <paramref name="acItem"/> at the index specified by <paramref name="aiIndex"/>.
     /// <param name="aiIndex"> Index in the list.</param>
     /// <param name="acItem"> Reference to the interface</param>
     /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message action/>
     procedure insert(aiIndex : integer ; acItem : IMC_DisplayScrollingAction) ; stdcall ;
     /// <summary>
     /// Returns the last action
     /// </summary>
     /// Returns a reference to the last action managed by the list
     /// <returns> Returns a reference to the last interface of the list, or Nil if the list is empty</returns>
     /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message action/>
     function last() : IMC_DisplayScrollingAction ; stdcall ;
     /// <summary>
     /// Removes an element from the list
     /// </summary>
     /// Removes the element given in <paramref name="acItem"/>
     /// <param name="acItem"> Reference to <see cref="IMC_DisplayScrollingAction"/> to be removed from the list</param>
     /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message action/>
     procedure remove(acItem : IMC_DisplayScrollingAction) ; stdcall ;

     /// <summary>
     /// Gives access to the elements
     /// </summary>
     /// This property returns a reference to the interface found at the index <paramref name="aiIndex"/>.<p>
     /// The value <paramref name="aiIndex"/> must be between 0 and <see cref="count"/>-1.
     /// <param name="aiIndex"> Index in the list</param>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_DisplayScrollingAction" Scrolling message action/>
     property items[aiIndex : integer ] : IMC_DisplayScrollingAction read get_Item ; default ;
     /// <summary>
     /// Element count
     /// </summary>
     /// Returns the number of elements in the list
     property count : integer read get_Count ;
   end ;

   /// <summary>
   /// Interface used to manage display information
   /// </summary>
   /// This interface holds all the information to manage each action performed on a scrolling message
   /// <seealso cref="TMC_DisplayAlign" Display alignment/>
   /// <seealso cref="TMC_DisplayAttribute" Display attribute/>
   IMC_DisplayItem = interface(IMC_VersionedInterface)
    ['{FC3E929A-AD09-4547-99F5-65FBF1304369}']
     function get_value : wideString ; stdcall ;
     function get_FieldNum : integer ; stdcall ;

     /// <summary>
     /// Returns the formatted text to display
     /// </summary>
     property value : wideString read get_value ;
     /// <summary>
     /// Returns the field or module number associated with the value
     /// </summary>
     property FieldNum : integer read get_FieldNum ;
   end ;

   /// <summary>
   /// This interface manages a list of fields to display
   /// </summary>
   /// An implementation of this interface must be able to manage a list of fields composing a message
   /// <seealso cref="IMC_DisplayItem" Display item interface/>
   IMC_DisplayItemsList = interface(IMC_ListVersionedInterface)
    ['{6C11F194-CD52-4B09-99C9-DDCC7D7F626E}']
     function Get_Item(aiIndex: Integer): IMC_DisplayItem;  stdcall ;
     function get_Count : integer ; stdcall ;

     /// <summary>
     /// Adds a display item
     /// </summary>
     /// Adds a reference to a display item to the list
     /// <param name="acItem"> A reference to <see cref="IMC_DisplayItem"/></param>
     /// <returns>The index of the element in the list</returns>
     /// <seealso cref="IMC_DisplayItem" Display item interface/>
     function add(acItem : IMC_DisplayItem ) : integer ; stdcall ;
     /// <summary>
     /// Gets the display item at the given index
     /// </summary>
     /// Gets the display item at the given index <paramref name="aiIndex"/> in the list.
     /// <param name="aiIndex"> Index in the list</param>
     /// <returns> A reference to<see cref="IMC_DisplayItem"/></returns>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_DisplayItem" Display item interface/>
     function get(aiIndex : integer) : IMC_DisplayItem ; stdcall ;
     /// <summary>
     /// Puts a new element at the given index
     /// </summary>
     /// Puts the reference to <paramref name="acItem"/> at the index <paramref name="aiIndex"/> in the list
     /// <param name="aiIndex"> Index in the list</param>
     /// zparam name="acItem"> Reference to <see cref="IMC_DisplayItem"/></param>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_DisplayItem" Display item interface/>
     procedure put(aiIndex : integer ; acItem : IMC_DisplayItem) ; stdcall ;
     /// <summary>
     /// Clears the list
     /// </summary>
     /// Clears all the references contained in the list.
     procedure clear() ; stdcall ;
     /// <summary>
     /// Deletes an element
     /// </summary>
     /// Deletes the element found at the index <c aiIndex/> in the list
     /// <param name="aiIndex"> Index in the list</param>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_DisplayItem" Display item interface/>
     procedure delete(aiIndex : integer) ; stdcall ;
     /// <summary>
     /// Returns the first element
     /// </summary>
     /// Returns a reference to the first interface managed by the list
     /// <returns> Returns a reference to the first interface of the list, or Nil if the list is empty</returns>
     /// <seealso cref="IMC_DisplayItem" Display item interface/>
     function first() : IMC_DisplayItem ; stdcall ;
     /// <summary>
     /// Returns the index of the element given as a parameter
     /// </summary>
     /// Returns the index of the element given in <paramref name="acItem"/>
     /// <param name="acItem"> Reference to the interface</param>
     /// <returns> The index of the reference found in the list, -1 otherwise</returns>
     /// <seealso cref="IMC_DisplayItem" Display item interface/>
     function indexOf(acItem : IMC_DisplayItem) : integer ; stdcall ;
     /// <summary>
     /// Inserts an element at the given index
     /// </summary>
     /// Inserts the element given in <paramref name="acItem"/> at the index specified by <paramref name="aiIndex"/>.
     /// <param name="aiIndex"> Index in the list.</param>
     /// <param name="acItem"> Reference to the interface</param>
     /// <seealso cref="IMC_DisplayItem" Display item interface/>
     procedure insert(aiIndex : integer ; acItem : IMC_DisplayItem) ; stdcall ;
     /// <summary>
     /// Returns the last element
     /// </summary>
     /// Returns a reference to the last interface managed by the list
     /// <returns> Returns a reference to the last interface of the list, or Nil if the list is empty</returns>
     /// <seealso cref="IMC_DisplayItem" Display item interface/>
     function last() : IMC_DisplayItem ; stdcall ;
     /// <summary>
     /// Removes an element from the list
     /// </summary>
     /// Removes the element given in <paramref name="acItem"/>
     /// <param name="acItem"> Reference to <see cref="IMC_DisplayItem"/></param>
     /// <seealso cref="IMC_DisplayItem" Display item interface/>
     procedure remove(acItem : IMC_DisplayItem) ; stdcall ;

     /// <summary>
     /// Sorts the elements
     /// </summary>
     /// Sorts the elements of the list
     procedure sort ; stdcall ;

     /// <summary>
     /// Searches for an element
     /// </summary>
     /// Searches the element which matches the field number given as a parameter
     /// <param name="aiFieldNum"> Field number</param>
     /// <returns> Reference to the element found, Nil if no element was found</returns>
     function search(aiFieldNum : integer ) : IMC_DisplayItem ; stdcall ;

     /// <summary>
     /// Gives access to the elements
     /// </summary>
     /// This property returns a reference to the interface found at the index <paramref name="aiIndex"/>.<p>
     /// The value <paramref name="aiIndex"/> must be between 0 and <see cref="count"/>-1.
     /// <param name="aiIndex"> Index in the list</param>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_DisplayItem" Display item interface/>
     property items[aiIndex : integer ] : IMC_DisplayItem read get_Item ; default ;
     /// <summary>
     /// Element count
     /// </summary>
     /// Returns the number of elements in the list
     property count : integer read get_Count ;
   end ;

   /// <summary>
   /// Interface used to manage all the elements of a line
   /// </summary>
   /// This interface manage all the elements to be displayed in the same line
   /// <seealso cref="IMC_DisplayItemsList" Display item list/>
   IMC_DisplayCompoundItem = interface(IMC_VersionedInterface)
    ['{3D9FD449-FA03-4224-9534-F5F1958CBF4F}']
     function get_ModelID : wideString ; stdcall ;
     function get_TimeDisplay : integer ; stdcall ;
     function get_List : IMC_DisplayItemsList ; stdcall ;

     /// <summary>
     /// Line display module ID
     /// <value> A character string identifies the line display module to use
     /// </summary>
     property ModelID : wideString read get_ModelID ;
     /// <summary>
     /// Time during which a message is shown before displaying another one
     /// <value> Time, in milliseconds, to wait before proceeding with the next display</value>
     /// </summary>
     property TimeDisplay : integer read get_TimeDisplay ;
     /// <summary>
     /// List of the different text items to display on a line
     /// <value> A reference to <see cref="IMC_DisplayItemsList"/></value>
     /// </summary>
     /// <seealso cref="IMC_DisplayItemsList" Interface Display item list/>
     property list : IMC_DisplayItemsList read get_List ;
   end ;

   /// <summary>
   /// Interface used to manage all the information regarding a display
   /// </summary>
   /// This interface is used to hold all the information required to manage a display
   /// <seealso cref="MC_PluginLineDisplayInterface.IMC_PluginLineDisplay.DisplayCompoundMessage" Compound message display/>
   /// <seealso cref="MC_PluginLineDisplayInterface.IMC_PluginLineDisplay.DisplayExpressMessage" Express message display/>
   IMC_DisplayModelItem = interface(IMC_VersionedInterface)
    ['{4D543478-9891-4F01-AD8B-4B65E5FEDF70}']
     function get_Row : integer ; stdcall ;
     function get_Col : integer ; stdcall ;
     function get_length : integer ; stdcall ;
     function get_align : TMC_DisplayAlign ; stdcall ;
     function get_attribute : TMC_DisplayAttribute ; stdcall ;
     function get_FieldNum : integer ; stdcall ;

     /// <summary>
     /// Display line
     /// <value>An integer value greather than zero</value>
     /// </summary>
     property Row : integer read get_Row ;
     /// <summary>
     /// Display column
     /// <value>An integer value greather than zero</value>
     /// </summary>
     property Col : integer read get_Col ;
     /// <summary>
     /// Field length
     /// </summary>
     property length : integer read get_Length ;
     /// <summary>
     /// Text alignment
     /// </summary>
     /// <seealso cref="TMC_DisplayAlign" Display alignment/>
     property align : TMC_DisplayAlign read get_Align ;
     /// <summary>
     /// Text attribute
     /// </summary>
     /// <seealso cref="TMC_DisplayAttribute" Display attribute/>
     property attribute : TMC_DisplayAttribute read get_Attribute ;
     /// <summary>
     /// Identifier of the field to display
     /// </summary>
     property fieldNum : integer read get_FieldNum ;
   end ;

   /// <summary>
   /// This interface a list of parameters composing a display
   /// </summary>
   /// An implementation of the interface will be able to manage a list of displays
   /// <seealso cref="MC_PluginLineDisplayInterface.IMC_PluginLineDisplay.DisplayCompoundMessage" Compound message display/>
   /// <seealso cref="MC_PluginLineDisplayInterface.IMC_PluginLineDisplay.DisplayExpressMessage" Express message display/>
   IMC_DisplayModelItemsList = interface(IMC_ListVersionedInterface)
    ['{227BC292-F497-4D94-9FC9-62B1949C397F}']
     function get_Item(aiIndex : integer) : IMC_DisplayModelItem ; stdcall ;
     procedure set_Item(Index: Integer; AObject: IMC_DisplayModelItem); stdcall ;
     function get_Count : integer ; stdcall ;

     /// <summary>
     /// Adds an element to the list
     /// </summary>
     /// Adds the reference to a display model interface to the list
     /// <param name="acItem"> A reference to <see cref="IMC_DisplayModelItem"/> </param>
     /// <returns> The index of the element in the list</returns>
     /// <seealso cref="IMC_DisplayModelItem" Display model interface/>
     function add(acItem : IMC_DisplayModelItem ) : integer ; stdcall ;
     /// <summary>
     /// Gets the element at the given index
     /// </summary>
     /// Gets the element at the given index <paramref name="aiIndex"/> in the list.
     /// <param name="aiIndex"> Index in the list</param>
     /// <returns> A reference to <see cref="IMC_DisplayModelItem"/></returns>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_DisplayModelItem" Display model interface/>
     function get(aiIndex : integer) : IMC_DisplayModelItem ; stdcall ;
     /// <summary>
     /// Puts a new element at the given index
     /// </summary>
     /// Puts the reference to <paramref name="acItem"/> at the index <paramref name="aiIndex"/> in the list
     /// <param name="aiIndex"> Index in the list</param>
     /// zparam name="acItem"> Reference to <see cref="IMC_DisplayModelItem"/></param>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_DisplayModelItem" Display model interface/>
     procedure put(aiIndex : integer ; acItem : IMC_DisplayModelItem) ; stdcall ;
     /// <summary>
     /// Element count
     /// </summary>
     /// Returns the number of elements in the list
     procedure clear() ; stdcall ;
     /// <summary>
     /// Deletes an element
     /// </summary>
     /// Deletes the element found at the index <c aiIndex/> in the list
     /// <param name="aiIndex"> Index in the list</param>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_DisplayModelItem" Display model interface/>
     procedure delete(aiIndex : integer) ; stdcall ;
     /// <summary>
     /// Returns the first element
     /// </summary>
     /// Returns a reference to the first interface managed by the list
     /// <returns> Returns a reference to the first interface of the list, or Nil if the list is empty</returns>
     /// <seealso cref="IMC_DisplayModelItem" Display model interface/>
     function first() : IMC_DisplayModelItem ; stdcall ;
     /// <summary>
     /// Returns the index of the element given as a parameter
     /// </summary>
     /// Returns the index of the element given in <paramref name="acItem"/>
     /// <param name="acItem"> Reference to the interface</param>
     /// <returns> The index of the reference found in the list, -1 otherwise</returns>
     /// <seealso cref="IMC_DisplayModelItem" Display model interface/>
     function indexOf(acItem : IMC_DisplayModelItem) : integer ; stdcall ;
     /// <summary>
     /// Inserts an element at the given index
     /// </summary>
     /// Inserts the element given in <paramref name="acItem"/> at the index specified by <paramref name="aiIndex"/>.
     /// <param name="aiIndex"> Index in the list.</param>
     /// <param name="acItem"> Reference to the interface</param>
     /// <seealso cref="IMC_DisplayModelItem" Display model interface/>
     procedure insert(aiIndex : integer ; acItem : IMC_DisplayModelItem) ; stdcall ;
     /// <summary>
     /// Returns the last element
     /// </summary>
     /// Returns a reference to the last interface managed by the list
     /// <returns> Returns a reference to the last interface of the list, or Nil if the list is empty</returns>
     /// <seealso cref="IMC_DisplayModelItem" Display model interface/>
     function last() : IMC_DisplayModelItem ; stdcall ;
     /// <summary>
     /// Removes an element from the list
     /// </summary>
     /// Removes the element given in <paramref name="acItem"/>
     /// <param name="acItem"> Reference to <see cref="IMC_DisplayModelItem"/></param>
     /// <seealso cref="IMC_DisplayModelItem" Display model interface/>
     procedure remove(acItem : IMC_DisplayModelItem) ; stdcall ;

     /// <summary>
     /// Sorts the elements
     /// </summary>
     /// Sorts the elements of the list
     procedure sort ; stdcall ;

     /// <summary>
     /// Gives access to the elements
     /// </summary>
     /// This property returns a reference to the interface found at the index <paramref name="aiIndex"/>.<p>
     /// The value <paramref name="aiIndex"/> must be between 0 and <see cref="count"/>-1.
     /// <param name="aiIndex"> Index in the list</param>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_DisplayModelItem" Display model interface/>
     property items[aiIndex : integer ] : IMC_DisplayModelItem read get_Item ; default ;
     /// <summary>
     /// Element count
     /// </summary>
     /// Returns the number of elements in the list
     property count : integer read get_Count ;
   end ;

   /// <summary>
   /// Interface used to manage the information relative to a display module
   /// </summary>
   /// This interface is used to manage all the information relative to a display module
   /// <seealso cref="MC_PluginLineDisplayInterface.IMC_PluginLineDisplay.DisplayCompoundMessage" Compound message display/>
   /// <seealso cref="MC_PluginLineDisplayInterface.IMC_PluginLineDisplay.DisplayExpressMessage" Express message display/>
   IMC_DisplayModel = interface(IMC_VersionedInterface)
    ['{01E7A6A4-5E9F-44B4-811C-4FA93C40BB56}']
     function get_ModelID : wideString ; stdcall ;
     function get_Items : IMC_DisplayModelItemsList ; stdcall ;

     /// <summary>
     /// Module ID
     /// <value>Character string which idenfies the module</value>
     /// </summary>
     property ModelID : wideString read get_ModelID ;
     /// <summary>
     /// List of the elements which compose the display module
     /// <value>Reference to IMC_DisplayModelItemsList</value>
     /// </summary>
     property list: IMC_DisplayModelItemsList read get_Items ;
    end ;

   /// <summary>
   /// This interface manages a list of display modules
   /// </summary>
   /// An implementation of this interface will be able to manage a list of display modules
   /// <example> The following example shows how the list of parameters for a composed message are constituted
   /// <code>
   /// ...
   /// // Prepare the models
   /// lcModelsList:=TMC_DisplayModelsListFactory.createInstance(nil) ;
   /// //Model 1
   /// lcModel:=TMC_DisplayModelFactory.createInstance(TMC_DisplayModelParams.create('1',nil)) ;
   /// lcModelItem:=TMC_DisplayModelItemFactory.createInstance(TMC_DisplayModelItemParams.create(daNormal,dcLeft,8,1,1,1)) ;
   /// lcModel.list.add(lcModelItem) ;
   ///
   /// lcModelItem:=TMC_DisplayModelItemFactory.createInstance(TMC_DisplayModelItemParams.create(daReverse,dcRight,8,1,9,2)) ;
   /// lcModel.list.add(lcModelItem) ;
   ///
   /// lcModelsList.add(lcModel) ;
   ///
   /// //Model 2
   /// lcModel:=TMC_DisplayModelFactory.createInstance(TMC_DisplayModelParams.create('2',nil)) ;
   /// lcModelItem:=TMC_DisplayModelItemFactory.createInstance(TMC_DisplayModelItemParams.create(daNormal,dcLeft,20,1,1,1)) ;
   /// lcModel.list.add(lcModelItem) ;
   ///
   /// lcModelItem:=TMC_DisplayModelItemFactory.createInstance(TMC_DisplayModelItemParams.create(daReverse,dcRight,20,2,1,2)) ;
   /// lcModel.list.add(lcModelItem) ;
   ///
   /// lcModelsList.add(lcModel) ;
   ///
   /// lbOk:=TMC_Manager.V_MC.loadModels(aiNumDevice,lcModelsList,lcErr) ;
   /// ...
   /// </code>
   /// </example>
   /// <remarks>
   /// An exception in raised if the index is out of the list bounds
   /// </remarks>
   /// <seealso cref="MC_PluginLineDisplayInterface.IMC_PluginLineDisplay.DisplayCompoundMessage" Compound message display/>
   /// <seealso cref="MC_PluginLineDisplayInterface.IMC_PluginLineDisplay.DisplayExpressMessage" Express message display/>
   IMC_DisplayModelsList = interface(IMC_ListVersionedInterface)
    ['{D9792E2B-500B-48E9-A51B-6CD206A0E377}']
     function get_Item(aiIndex : integer) : IMC_DisplayModel ; stdcall ;
     procedure set_Item(Index: Integer; AObject: IMC_DisplayModel); stdcall ;
     function get_Count : integer ; stdcall ;

     /// <summary>
     /// Adds a module information to the list
     /// </summary>
     /// Adds a reference to a display model interface manager interface
     /// <param name="acItem"> A reference to <see cref="IMC_DisplayModel"/></param>
     /// <returns> The index of the element in the list</returns>
     /// <seealso cref="IMC_DisplayModel" Display module information interface/>
     function add(acItem : IMC_DisplayModel ) : integer ; stdcall ;
     /// <summary>
     /// Gets the element at the given index
     /// </summary>
     /// Gets the element at the given index <paramref name="aiIndex"/> in the list.
     /// <param name="aiIndex"> Index in the list</param>
     /// <returns>A reference to <see cref="IMC_DisplayModel"/></returns>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_DisplayModel" Display module information interface/>
     function get(aiIndex : integer) : IMC_DisplayModel ; stdcall ;
     /// <summary>
     /// Puts a new element at the given index
     /// </summary>
     /// Puts the reference to <paramref name="acItem"/> at the index <paramref name="aiIndex"/> in the list
     /// <param name="aiIndex"> Index in the list</param>
     /// zparam name="acItem"> Reference to <see cref="IMC_DisplayModel"/> </param>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_DisplayModel" Display module information interface/>
     procedure put(aiIndex : integer ; acItem : IMC_DisplayModel) ; stdcall ;
     /// <summary>
     /// Clears the list
     /// </summary>
     /// Clears all the references contained in the list.
     procedure clear() ; stdcall ;
     /// <summary>
     /// Deletes an element
     /// </summary>
     /// Deletes the element found at the index <c aiIndex/> in the list
     /// <param name="aiIndex"> Index in the list</param>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_DisplayModel" Display module information interface/>
     procedure delete(aiIndex : integer) ; stdcall ;
     /// <summary>
     /// Returns the first element
     /// </summary>
     /// Returns a reference to the first interface managed by the list
     /// <returns> Returns a reference to the first interface of the list, or Nil if the list is empty</returns>
     /// <seealso cref="IMC_DisplayModel" Display module information interface/>
     function first() : IMC_DisplayModel ; stdcall ;
     /// <summary>
     /// Returns the index of the element given as a parameter
     /// </summary>
     /// Returns the index of the element given in <paramref name="acItem"/>
     /// <param name="acItem"> Reference to the interface</param>
     /// <returns> The index of the reference found in the list, -1 otherwise</returns>
     /// <seealso cref="IMC_DisplayModel" Display module information interface/>
     function indexOf(acItem : IMC_DisplayModel) : integer ; stdcall ;
     /// <summary>
     /// Inserts an element at the given index
     /// </summary>
     /// Inserts the element given in <paramref name="acItem"/> at the index specified by <paramref name="aiIndex"/>.
     /// <param name="aiIndex"> Index in the list.</param>
     /// <param name="acItem"> Reference to the interface</param>
     /// <seealso cref="IMC_DisplayModel" Display module information interface/>
     procedure insert(aiIndex : integer ; acItem : IMC_DisplayModel) ; stdcall ;
     /// <summary>
     /// Returns the last element
     /// </summary>
     /// Returns a reference to the last interface managed by the list
     /// <returns> Returns a reference to the last interface of the list, or Nil if the list is empty</returns>
     /// <seealso cref="IMC_DisplayModel" Display module information interface/>
     function last() : IMC_DisplayModel ; stdcall ;
     /// <summary>
     /// Removes an element from the list
     /// </summary>
     /// Removes the element given in <paramref name="acItem"/>
     /// <param name="acItem"> Reference to <see cref="IMC_DisplayModel"/></param>
     /// <seealso cref="IMC_DisplayModel" Display module information interface/>
     procedure remove(acItem : IMC_DisplayModel) ; stdcall ;

     /// <summary>
     /// Searches for an element
     /// </summary>
     /// Searches the element which matches the identifier given as a parameter
     /// <param name="asModelID"> Display module identifier</param>
     /// <returns> Reference to </returns>
     function search ( const asModelID : wideString) : IMC_DisplayModel ; stdcall ;

     /// <summary>
     /// Gives access to the elements
     /// </summary>
     /// This property returns a reference to the interface found at the index <paramref name="aiIndex"/>.<p>
     /// The value <paramref name="aiIndex"/> must be between 0 and <see cref="count"/>-1.
     /// <param name="aiIndex"> Index in the list</param>
     /// <remarks>
     /// An exception in raised if the index is out of the list bounds
     /// </remarks>
     /// <seealso cref="IMC_DisplayModel" Display module information interface/>
     property items[aiIndex : integer ] : IMC_DisplayModel read get_Item write set_Item ;
     /// <summary>
     /// Element count
     /// </summary>
     /// Returns the number of elements in the list
     property count : integer read get_Count ;
   end ;

   /// <summary>
   /// Interface to implement for customer line display drivers
   /// </summary>
   /// This interface derives from <see cref="MC_PluginInterface.IMC_PluginBase"/> and adds the specific features required for the implementation of a customer line display driver
   /// <seealso cref="MC_PluginInterface.IMC_PluginBase" Driver base interface/>
   IMC_PluginLineDisplay = interface(IMC_PluginBase)
    ['{DD15B35A-92B0-4351-8B1C-F5F10E34681D}']
     /// <summary>
     /// Load all the display information modules
     /// </summary>
     /// This commands loads all the modules, which are help in <see cref="IMC_DisplayModelsList"/>
     /// <param name="acModels"> Reference to the display information module list</param>
     /// <returns>True if the method succeeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="MC_PluginInterface.IMC_Error" Error management interface/>
     function loadModels ( acModels : IMC_DisplayModelsList ) : boolean ; stdcall ;
     /// <summary>
     /// Clears the display
     /// </summary>
     /// This command clears the display
     /// <returns>True if the method succeeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="MC_PluginInterface.IMC_Error" Error management interface/>
     function clearText() : boolean ; stdcall ;
     /// <summary>
     /// Displays a simple message
     /// </summary>
     /// This command displays a simple message
     /// <param name="asMessage"> Message text</param>
     /// <param name="aeAttribute"> Text attributes</param>
     /// <param name="aiMinTimeDisplay"> Minimum time during which the message must be shown</param>
     /// <returns>True if the method succeeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="MC_PluginInterface.IMC_Error" Error management interface/>
     function displayMessage(const asMessage : wideString ; aeAttribute : TMC_DisplayAttribute ; aiMinTimeDisplay : integer ) : boolean ; stdcall ;
     /// <summary>
     /// Displays a scrolling message
     /// </summary>
     /// This command displays a scrolling message
     /// <param name="asMessage"> Message text</param>
     /// <param name="acAction"> List of display action to execute</param>
     /// <returns>True if the method succeeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="MC_PluginInterface.IMC_Error" Error management interface/>
     function displayScrolledMessage(const asMessage : wideString ; acAction : IMC_DisplayScrollingActionsList ) : boolean ; stdcall ;
     /// <summary>
     /// Displays a waiting message
     /// </summary>
     /// This command displays a waiting message
     /// <param name="asMessage"> Message text</param>
     /// <param name="aeAttribute"> Text attributes</param>
     /// <returns>True if the method succeeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="MC_PluginInterface.IMC_Error" Error management interface/>
     function displayWaitingMessage(const asMessage : wideString ; aeAttribute : TMC_DisplayAttribute) : boolean ; stdcall ;
     /// <summary>
     /// Displays a compound message
     /// </summary>
     /// This command displays a compound message
     /// <param name="asItemList"> List of items to display</param>
     /// <returns>True if the method succeeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="MC_PluginInterface.IMC_Error" Error management interface/>
     function displayCompoundMessage(acItemList : IMC_DisplayCompoundItem) : boolean ; stdcall ;
     /// <summary>
     /// Displays an express message
     /// </summary>
     /// This command displays an express message
     /// The main difference with the displayCompoundMessage command is that the message
     /// will be displayed instead of the current message, for a given duration.
     /// <param name="asItemList">Liste des informations ? afficher</param>
     /// <returns>True if the method succeeded, False otherwise (<see cref="MC_PluginInterface.IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="MC_PluginInterface.IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="MC_PluginInterface.IMC_Error" Error management interface/>
     function displayExpressMessage(acItemList : IMC_DisplayCompoundItem) : boolean ; stdcall ;
   end ;

implementation

end.
