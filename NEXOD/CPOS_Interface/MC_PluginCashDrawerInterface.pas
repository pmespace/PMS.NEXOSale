//const Ok
unit MC_PluginCashDrawerInterface;

interface

uses   MC_PluginInterface
     ;

const
   //Capabilities
   /// <summary>
   /// Can the cash drawer detect whether it is open or closed
   /// </summary>
   /// The client application should check this value to determine whether the cash drawer can be queried to determine its state: open or closed 
   /// <seealso/>
   caCashDrawerDetectOpened = ca01 ;

type
   /// <summary>
   /// Interface to implement when writing a cash drawer driver
   /// </summary>
   /// This interface derives from <see cref="IMC_PluginBase"/> and adds the specific features required for the implementation of a cash drawer driver
   /// <seealso cref="IMC_PluginBase" Driver base interface/>
   IMC_PluginCashDrawer = interface(IMC_PluginBase)
    ['{92D85671-9217-4474-9B1D-00D529AFCE72}']
     function get_DrawerOpened : boolean ; stdcall ;
     /// <summary>
     /// Open the cash drawer
     /// </summary>
     /// This method triggers the opening of the cash drawer.
     /// <param name="aiInterval"> Specifies how long the drawer may remain open before an alarm goes off (providing the device supports this feature)</param>
     /// <returns>True if the cash drawer did open, False otherwise(<see cref="IMC_PluginBase.getLastError"/>)</returns>
     /// <seealso cref="IMC_PluginBase.getLastError" How to retrieve error messages/>
     /// <seealso cref="IMC_Error" Error management interface/>
     function openDrawer : boolean ; stdcall ;
     /// <summary>
     /// Starts watching the cash drawer
     /// </summary>
     /// This method starts watching the cash drawer and sets off an alarm when it remains open for too long.
     /// <param name="asCashDrawerID"> Cash drawer text ID</param>
     procedure startwatchCashDrawer(const asCashDrawerID : wideString) ; stdcall ;
     /// <summary>
     /// Stops watching the cash drawer
     /// </summary>
     /// This method stops watching the cash drawer.
     procedure StopWatchCashDrawer ; stdcall ;
     /// <summary>
     /// Returns whether the cash drawer is being watched
     /// </summary>
     /// Returns whether the cash drawer is being watched
     function isOpenWatched : boolean ; stdcall ;
     /// <summary>
     /// Returns the state of the cash drawer
     /// <value>True if the cash drawer is open, False otherwise</value>
     /// </summary>
     /// Indicates whether the cash drawer is still open (providing the device supports this feature).
     property drawerOpened : boolean read get_DrawerOpened ;
   end ;

implementation

end.
