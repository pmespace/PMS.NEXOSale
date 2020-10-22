PMS.NEXOSALE is a NEXO v3.0 client implementation allowing to initiate transactions on a NEXO POI without having to worry about NEXO messages.

To build a solution with PMS.NEXOSALE 3 steps:

1. Create a NEXOSALE object
2. Call the DisplaySettings method to set the settings that will apply to the object. If this is not done default settings will apply (and no POI will be reachable).
3. [Set the amount of a payment transaction] Call the DisplayProcessing method (indicating the action you want to make) and receive a result

And you're done !

Please note that Refund, Reversal, Reconciliation and Abort haven't been thoroughly tested but will in a near future.
Login, Logout and Payment work perfectly.

Also please note that PMS.NEXOSALE also exists as a COM component you can use in any project not accepting .NET libraries (Delphi,...)