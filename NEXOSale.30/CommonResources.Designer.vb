﻿'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated by a tool.
'     Runtime Version:4.0.30319.42000
'
'     Changes to this file may cause incorrect behavior and will be lost if
'     the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict On
Option Explicit On

Imports System

Namespace My.Resources
    
    'This class was auto-generated by the StronglyTypedResourceBuilder
    'class via a tool like ResGen or Visual Studio.
    'To add or remove a member, edit your .ResX file then rerun ResGen
    'with the /str option, or rebuild your VS project.
    '''<summary>
    '''  A strongly-typed resource class, for looking up localized strings, etc.
    '''</summary>
    <Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "17.0.0.0"),  _
     Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.Runtime.CompilerServices.CompilerGeneratedAttribute()>  _
    Friend Class CommonResources
        
        Private Shared resourceMan As Global.System.Resources.ResourceManager
        
        Private Shared resourceCulture As Global.System.Globalization.CultureInfo
        
        <Global.System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")>  _
        Friend Sub New()
            MyBase.New
        End Sub
        
        '''<summary>
        '''  Returns the cached ResourceManager instance used by this class.
        '''</summary>
        <Global.System.ComponentModel.EditorBrowsableAttribute(Global.System.ComponentModel.EditorBrowsableState.Advanced)>  _
        Friend Shared ReadOnly Property ResourceManager() As Global.System.Resources.ResourceManager
            Get
                If Object.ReferenceEquals(resourceMan, Nothing) Then
                    Dim temp As Global.System.Resources.ResourceManager = New Global.System.Resources.ResourceManager("NEXOSALE.CommonResources", GetType(CommonResources).Assembly)
                    resourceMan = temp
                End If
                Return resourceMan
            End Get
        End Property
        
        '''<summary>
        '''  Overrides the current thread's CurrentUICulture property for all
        '''  resource lookups using this strongly typed resource class.
        '''</summary>
        <Global.System.ComponentModel.EditorBrowsableAttribute(Global.System.ComponentModel.EditorBrowsableState.Advanced)>  _
        Friend Shared Property Culture() As Global.System.Globalization.CultureInfo
            Get
                Return resourceCulture
            End Get
            Set
                resourceCulture = value
            End Set
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to accepted.
        '''</summary>
        Friend Shared ReadOnly Property Accepted() As String
            Get
                Return ResourceManager.GetString("Accepted", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Closing.
        '''</summary>
        Friend Shared ReadOnly Property Button_AboutToClose() As String
            Get
                Return ResourceManager.GetString("Button.AboutToClose", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Cancel.
        '''</summary>
        Friend Shared ReadOnly Property Button_Cancel() As String
            Get
                Return ResourceManager.GetString("Button.Cancel", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to &amp;Cancel.
        '''</summary>
        Friend Shared ReadOnly Property Button_CancelX() As String
            Get
                Return ResourceManager.GetString("Button.CancelX", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Close.
        '''</summary>
        Friend Shared ReadOnly Property Button_Close() As String
            Get
                Return ResourceManager.GetString("Button.Close", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to &amp;Close.
        '''</summary>
        Friend Shared ReadOnly Property Button_CloseX() As String
            Get
                Return ResourceManager.GetString("Button.CloseX", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized resource of type System.Drawing.Bitmap.
        '''</summary>
        Friend Shared ReadOnly Property button_green() As System.Drawing.Bitmap
            Get
                Dim obj As Object = ResourceManager.GetObject("button_green", resourceCulture)
                Return CType(obj,System.Drawing.Bitmap)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized resource of type System.Drawing.Bitmap.
        '''</summary>
        Friend Shared ReadOnly Property button_red() As System.Drawing.Bitmap
            Get
                Dim obj As Object = ResourceManager.GetObject("button_red", resourceCulture)
                Return CType(obj,System.Drawing.Bitmap)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to declined.
        '''</summary>
        Friend Shared ReadOnly Property Declined() As String
            Get
                Return ResourceManager.GetString("Declined", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Failed to send.
        '''</summary>
        Friend Shared ReadOnly Property FailedToSend() As String
            Get
                Return ResourceManager.GetString("FailedToSend", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Are you sur you want to cancel the operation ?.
        '''</summary>
        Friend Shared ReadOnly Property FConfirm_CancelOperationRequest() As String
            Get
                Return ResourceManager.GetString("FConfirm.CancelOperationRequest", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Enter today&apos;s date (YYYYMMDD):.
        '''</summary>
        Friend Shared ReadOnly Property FConfirm_EnterTodaysDate() As String
            Get
                Return ResourceManager.GetString("FConfirm.EnterTodaysDate", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Invalid admin code.
        '''</summary>
        Friend Shared ReadOnly Property FConfirm_InvalidAdminCode() As String
            Get
                Return ResourceManager.GetString("FConfirm.InvalidAdminCode", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to CUSTOMER RECEIPT.
        '''</summary>
        Friend Shared ReadOnly Property FPrint_CustomerReceipt() As String
            Get
                Return ResourceManager.GetString("FPrint.CustomerReceipt", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to MERCHANT RECEIPT.
        '''</summary>
        Friend Shared ReadOnly Property FPrint_MerchantReceipt() As String
            Get
                Return ResourceManager.GetString("FPrint.MerchantReceipt", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Aborting transaction.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_AbortInProgress() As String
            Get
                Return ResourceManager.GetString("FProcessing.AbortInProgress", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to ABORT REQUEST.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_AbortRequest() As String
            Get
                Return ResourceManager.GetString("FProcessing.AbortRequest", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Miscellaneously modified.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_AdditionalResponseMiscellaneouslyModified() As String
            Get
                Return ResourceManager.GetString("FProcessing.AdditionalResponseMiscellaneouslyModified", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to No amount.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_Amount() As String
            Get
                Return ResourceManager.GetString("FProcessing.Amount", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to An error has occurred, transaction processing could not complete.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_AnErrorHasOccurred() As String
            Get
                Return ResourceManager.GetString("FProcessing.AnErrorHasOccurred", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to AUTOMATICALLY CLOSING WINDOW.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_AutomaticallyClosingWindow() As String
            Get
                Return ResourceManager.GetString("FProcessing.AutomaticallyClosingWindow", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to CANCELLED BY USER.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_CancelledByUser() As String
            Get
                Return ResourceManager.GetString("FProcessing.CancelledByUser", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Displaying barcode on the POI.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_DisplayingBarcode() As String
            Get
                Return ResourceManager.GetString("FProcessing.DisplayingBarcode", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Displaying predefined message %1.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_DisplayingMessageRef() As String
            Get
                Return ResourceManager.GetString("FProcessing.DisplayingMessageRef", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Displaying XHTML text.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_DisplayingXHTML() As String
            Get
                Return ResourceManager.GetString("FProcessing.DisplayingXHTML", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Error.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_Error() As String
            Get
                Return ResourceManager.GetString("FProcessing.Error", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Failed to connect to POI.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_FailedToConnectToPOI() As String
            Get
                Return ResourceManager.GetString("FProcessing.FailedToConnectToPOI", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to FROM.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_FROM() As String
            Get
                Return ResourceManager.GetString("FProcessing.FROM", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Invalid CANCELLATION processing.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_InvalidCancellationProcessing() As String
            Get
                Return ResourceManager.GetString("FProcessing.InvalidCancellationProcessing", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Device to target is invalid in this context.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_InvalidDisplayDevice() As String
            Get
                Return ResourceManager.GetString("FProcessing.InvalidDisplayDevice", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Invalid PAYMENT processing.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_InvalidPaymentProcessing() As String
            Get
                Return ResourceManager.GetString("FProcessing.InvalidPaymentProcessing", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Invalid RECONCILIATION processing.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_InvalidReconciliationProcessing() As String
            Get
                Return ResourceManager.GetString("FProcessing.InvalidReconciliationProcessing", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to LOGIN SALE.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_LoginSale() As String
            Get
                Return ResourceManager.GetString("FProcessing.LoginSale", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Login to POI.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_LoginToPOI() As String
            Get
                Return ResourceManager.GetString("FProcessing.LoginToPOI", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Logout from POI.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_LogoutFromPOI() As String
            Get
                Return ResourceManager.GetString("FProcessing.LogoutFromPOI", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to LOGOUT SALE.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_LogoutSale() As String
            Get
                Return ResourceManager.GetString("FProcessing.LogoutSale", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Message displayed on POI.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_MessageOnPOI() As String
            Get
                Return ResourceManager.GetString("FProcessing.MessageOnPOI", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Missing mandatory amount.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_MissingAmount() As String
            Get
                Return ResourceManager.GetString("FProcessing.MissingAmount", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Missing mandatory currency.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_MissingCurrency() As String
            Get
                Return ResourceManager.GetString("FProcessing.MissingCurrency", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to hasn&apos;t been processed successfully.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_NotProcessedSuccessfully() As String
            Get
                Return ResourceManager.GetString("FProcessing.NotProcessedSuccessfully", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to No transaction to process.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_NoTxnToProcess() As String
            Get
                Return ResourceManager.GetString("FProcessing.NoTxnToProcess", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to NO TRANSACTION TO PROCESS.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_NoTxnToProcessCaption() As String
            Get
                Return ResourceManager.GetString("FProcessing.NoTxnToProcessCaption", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Operation has been cancelled.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_OperationCancelled() As String
            Get
                Return ResourceManager.GetString("FProcessing.OperationCancelled", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to The operation timed out and has been cancelled.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_OperationTimedout() As String
            Get
                Return ResourceManager.GetString("FProcessing.OperationTimedout", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to The operation will not complete.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_OperationWontComplete() As String
            Get
                Return ResourceManager.GetString("FProcessing.OperationWontComplete", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Payment in progress.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_PaymentInProgress() As String
            Get
                Return ResourceManager.GetString("FProcessing.PaymentInProgress", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to PAYMENT REQUEST.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_PaymentRequest() As String
            Get
                Return ResourceManager.GetString("FProcessing.PaymentRequest", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to please check your network connection.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_PleaseCheckNetwork() As String
            Get
                Return ResourceManager.GetString("FProcessing.PleaseCheckNetwork", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Printing check.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_PrintCheckInProgress() As String
            Get
                Return ResourceManager.GetString("FProcessing.PrintCheckInProgress", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to PRINT CHECK REQUEST.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_PrintCheckRequest() As String
            Get
                Return ResourceManager.GetString("FProcessing.PrintCheckRequest", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to has been processed successfully.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_ProcessedSuccessfully() As String
            Get
                Return ResourceManager.GetString("FProcessing.ProcessedSuccessfully", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Reading check.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_ReadCheckInProgress() As String
            Get
                Return ResourceManager.GetString("FProcessing.ReadCheckInProgress", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to READ CHECK REQUEST.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_ReadCheckRequest() As String
            Get
                Return ResourceManager.GetString("FProcessing.ReadCheckRequest", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Reconciliation in progress.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_ReconciliationInProgress() As String
            Get
                Return ResourceManager.GetString("FProcessing.ReconciliationInProgress", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to RECONCILIATION REQUEST.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_ReconciliationRequest() As String
            Get
                Return ResourceManager.GetString("FProcessing.ReconciliationRequest", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Refund in progress.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_RefundInProgress() As String
            Get
                Return ResourceManager.GetString("FProcessing.RefundInProgress", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to REFUND REQUEST.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_RefundRequest() As String
            Get
                Return ResourceManager.GetString("FProcessing.RefundRequest", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Cancelling purchase.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_ReversalInProgress() As String
            Get
                Return ResourceManager.GetString("FProcessing.ReversalInProgress", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to REVERSAL REQUEST.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_ReversalRequest() As String
            Get
                Return ResourceManager.GetString("FProcessing.ReversalRequest", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Sale connected.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_SaleConnected() As String
            Get
                Return ResourceManager.GetString("FProcessing.SaleConnected", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Sale deconnected.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_SaleDeconnected() As String
            Get
                Return ResourceManager.GetString("FProcessing.SaleDeconnected", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Sale failed to connect.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_SaleFailedToConnect() As String
            Get
                Return ResourceManager.GetString("FProcessing.SaleFailedToConnect", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Sale failed to deconnect.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_SaleFailedToDeconnect() As String
            Get
                Return ResourceManager.GetString("FProcessing.SaleFailedToDeconnect", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to TIMEOUT.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_TIMEOUT() As String
            Get
                Return ResourceManager.GetString("FProcessing.TIMEOUT", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to TO.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_TO() As String
            Get
                Return ResourceManager.GetString("FProcessing.TO", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Transaction hasn&apos;t been reversed.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_TransactionNotReversed() As String
            Get
                Return ResourceManager.GetString("FProcessing.TransactionNotReversed", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Transaction has been reversed.
        '''</summary>
        Friend Shared ReadOnly Property FProcessing_TransactionReversed() As String
            Get
                Return ResourceManager.GetString("FProcessing.TransactionReversed", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to from sale.
        '''</summary>
        Friend Shared ReadOnly Property FromSale() As String
            Get
                Return ResourceManager.GetString("FromSale", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to FROM SALE.
        '''</summary>
        Friend Shared ReadOnly Property FromSaleU() As String
            Get
                Return ResourceManager.GetString("FromSaleU", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to (default printer).
        '''</summary>
        Friend Shared ReadOnly Property FSelectPrinter_DefaultPrinter() As String
            Get
                Return ResourceManager.GetString("FSelectPrinter.DefaultPrinter", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to NEXOSale settings.
        '''</summary>
        Friend Shared ReadOnly Property FSettings_Caption() As String
            Get
                Return ResourceManager.GetString("FSettings.Caption", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Image files|*.png;*.jpg;*.jpeg;*.bmp|All files|*.*.
        '''</summary>
        Friend Shared ReadOnly Property FSettings_ImagesFiles() As String
            Get
                Return ResourceManager.GetString("FSettings.ImagesFiles", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Log files|*.log|Text files|*.txt|All files|*.*.
        '''</summary>
        Friend Shared ReadOnly Property FSettings_LogsFiles() As String
            Get
                Return ResourceManager.GetString("FSettings.LogsFiles", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to No printer selected.
        '''</summary>
        Friend Shared ReadOnly Property FSettings_NoPrinter() As String
            Get
                Return ResourceManager.GetString("FSettings.NoPrinter", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Settings file hasn&apos;t been saved. Please check file name and path.
        '''</summary>
        Friend Shared ReadOnly Property FSettings_SettingsFileNotSaved() As String
            Get
                Return ResourceManager.GetString("FSettings.SettingsFileNotSaved", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Json files|*.json|Text files|*.txt|All files|*.*.
        '''</summary>
        Friend Shared ReadOnly Property FSettings_SettingsFiles() As String
            Get
                Return ResourceManager.GetString("FSettings.SettingsFiles", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Some settings have been modified.
        '''</summary>
        Friend Shared ReadOnly Property FSettings_SomeSettingsModified() As String
            Get
                Return ResourceManager.GetString("FSettings.SomeSettingsModified", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Do you want to save them ?.
        '''</summary>
        Friend Shared ReadOnly Property FSettings_SomeSettingsModifiedSaveThem() As String
            Get
                Return ResourceManager.GetString("FSettings.SomeSettingsModifiedSaveThem", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to The image file is not supported or does not contain a valid image.
        '''</summary>
        Friend Shared ReadOnly Property FSettings_UnsupportedImageFile() As String
            Get
                Return ResourceManager.GetString("FSettings.UnsupportedImageFile", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to CONNECTING TO POI.
        '''</summary>
        Friend Shared ReadOnly Property FWait_ConnectingToPOI() As String
            Get
                Return ResourceManager.GetString("FWait.ConnectingToPOI", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to CONNECTING TO POI (USING BACKUP).
        '''</summary>
        Friend Shared ReadOnly Property FWait_ConnectingToPOIBackup() As String
            Get
                Return ResourceManager.GetString("FWait.ConnectingToPOIBackup", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to CONNECTION FAILED, CHECK SETTINGS.
        '''</summary>
        Friend Shared ReadOnly Property FWait_ConnectionFailed() As String
            Get
                Return ResourceManager.GetString("FWait.ConnectionFailed", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to ERROR STARTING CONNECTION PROCESS.
        '''</summary>
        Friend Shared ReadOnly Property FWait_ErrorStartingConnectionProcess() As String
            Get
                Return ResourceManager.GetString("FWait.ErrorStartingConnectionProcess", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to FATAL ERROR CONNECTING TO PO.
        '''</summary>
        Friend Shared ReadOnly Property FWait_FatalError() As String
            Get
                Return ResourceManager.GetString("FWait.FatalError", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to hours.
        '''</summary>
        Friend Shared ReadOnly Property Hours() As String
            Get
                Return ResourceManager.GetString("Hours", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to in.
        '''</summary>
        Friend Shared ReadOnly Property InWord() As String
            Get
                Return ResourceManager.GetString("InWord", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to minutes.
        '''</summary>
        Friend Shared ReadOnly Property Minutes() As String
            Get
                Return ResourceManager.GetString("Minutes", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to POI return code.
        '''</summary>
        Friend Shared ReadOnly Property NexoErrorInformation() As String
            Get
                Return ResourceManager.GetString("NexoErrorInformation", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized resource of type System.Drawing.Bitmap.
        '''</summary>
        Friend Shared ReadOnly Property Open() As System.Drawing.Bitmap
            Get
                Dim obj As Object = ResourceManager.GetObject("Open", resourceCulture)
                Return CType(obj,System.Drawing.Bitmap)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Payment.
        '''</summary>
        Friend Shared ReadOnly Property Payment() As String
            Get
                Return ResourceManager.GetString("Payment", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Please wait.
        '''</summary>
        Friend Shared ReadOnly Property PleaseWait() As String
            Get
                Return ResourceManager.GetString("PleaseWait", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to Received.
        '''</summary>
        Friend Shared ReadOnly Property Received() As String
            Get
                Return ResourceManager.GetString("Received", resourceCulture)
            End Get
        End Property
        
        '''<summary>
        '''  Looks up a localized string similar to seconds.
        '''</summary>
        Friend Shared ReadOnly Property Seconds() As String
            Get
                Return ResourceManager.GetString("Seconds", resourceCulture)
            End Get
        End Property
    End Class
End Namespace
