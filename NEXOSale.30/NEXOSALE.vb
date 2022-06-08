Imports System.Runtime.InteropServices
Imports System.Windows.Forms
Imports System.Xml
Imports NEXO
Imports NEXO.Client
Imports COMMON
Imports COMMON.WIN32
Imports Microsoft.Win32
Imports System.IO
Imports Newtonsoft.Json
Imports System.Drawing.Printing
Imports System.Drawing

<ComVisible(True)>
Public Enum Action
	_none
	_begin
	Login
	Logout
	Payment
	_base
	Refund
	Reversal
	Reconciliation
	Abort
	_checks
	ReadCheck
	PrintCheck
	_end
End Enum

<ComVisible(True)>
Public Enum ActionResult
	_begin = -1
	unknown
	success
	decline
	cancel
	timeout
	exception
	notSupported
	incomplete
	_end
End Enum

<ComVisible(True)>
Public Enum CheckAuthorisationType
	None
	FNCI
	Guarantee
End Enum

<ComClass(NEXOSALE.ClassId, NEXOSALE.InterfaceId, NEXOSALE.EventsId)>
Public Class NEXOSALE

#Region "GUID"
	Public Shadows Const ClassId As String = "C86AC303-6A19-4FE6-91CC-99D9BE369EE5"
	Public Shadows Const InterfaceId As String = "24B500EF-FCF4-4438-9541-2EEB99BEF014"
	Public Shadows Const EventsId As String = "CAA36F19-2D91-4121-8DC9-166BFF4A3D51"
#End Region

#Region "constructor"
	Public Sub New()
		MyBase.New()
		Initialise()
	End Sub
	Private Sub Initialise()
		_nexoclient = New NexoRetailerClient()
		_login = New NexoLogin
		_payment = New NexoPayment
		_refund = New NexoPayment(PaymentTypeEnumeration.Refund)
		_logout = New NexoLogout
		LoadSettings()
		UseBackup = False
		'If Not Connect() Then
		'	UseBackup = True
		'	UseBackup = Connect()
		'End If

#If DEBUG Then
		Threading.Thread.CurrentThread.CurrentUICulture = Globalization.CultureInfo.GetCultureInfo("en")
#End If

	End Sub
#End Region

#Region "classes"
	Class ConnectRequestData
		Public Property ICCD As String
		Public Property user As String
		Public Property password As String
		Public Property port As Integer
	End Class

	Class ConnectRequest
		Public Sub New()
			connect = New ConnectRequestData
		End Sub
		Public connect As ConnectRequestData
	End Class

	Class ConnectReplyData
		Public Property Status As Integer
	End Class
	Private Const CONNECT_STATUS_OK As Integer = 0
	Private Const CONNECT_STATUS_KO As Integer = -1

	Class ConnectReply
		Public Sub New()
			connect = New ConnectReplyData
		End Sub
		Public Property connect As ConnectReplyData
	End Class
#End Region

#Region "public properties"
	''' <summary>
	''' Indicates if the client is logged to the server (nexo login successfull)
	''' </summary>
	''' <returns></returns>
	<DispId(1)>
	Public ReadOnly Property IsLogged As Boolean
		Get
			Return _islogged
		End Get
	End Property
	Friend _islogged As Boolean = False

	''' <summary>
	''' Amount in smallest decimal part of the currency (in cents)
	''' </summary>
	''' <returns></returns>
	<DispId(2)>
	Public Property Amount As Double
		Get
			Return _amount
		End Get
		Set(value As Double)
			_amount = value
		End Set
	End Property
	Private _amount As Double = 0

	''' <summary>
	''' Transaction ID given by the merchant
	''' </summary>
	''' <returns></returns>
	<DispId(3)>
	Public ReadOnly Property SaleTransactionID As String
		Get
			Return _saletransactionid
		End Get
		'Set(value As String)
		'	_transactionid = value
		'End Set
	End Property
	Friend _saletransactionid As String = Nothing

	''' <summary>
	''' Transaction timestamp given by the merchant
	''' </summary>
	''' <returns></returns>
	<DispId(4)>
	Public ReadOnly Property SaleTransactionTimestamp As String
		Get
			Return _saletransactiontimestamp
		End Get
		'Set(value As String)
		'	_transactiontimestamp = value
		'End Set
	End Property
	Friend _saletransactiontimestamp As String = Nothing

	''' <summary>
	''' Main amerchant application window handle which will receive notifications during processing
	''' If the calling application wishes to receive notification it must set that window handle
	''' Setting that handle will also ensure the processing window will be modal over the application
	''' </summary>
	''' <returns></returns>
	<DispId(6)>
	Public Property MainWindow As IntPtr
		Get
			Return _mainwindow
		End Get
		Set(value As IntPtr)
			_mainwindow = value
		End Set
	End Property
	Private _mainwindow As IntPtr = IntPtr.Zero

	''' <summary>
	''' Settings used during processing <seealso cref="Settings"/>
	''' </summary>
	''' <returns></returns>
	<DispId(7)>
	Public Property Settings As Settings
		Get
			Return _settings
		End Get
		Set(value As Settings)
			_settings = value
			If Not IsNothing(_settings) AndAlso _settings.LogFileName <> CLog.LogFileName Then
				CLog.LogFileName = _settings.LogFileName
			End If
		End Set
	End Property
	Private _settings As Settings = Nothing

	''' <summary>
	''' Nexo SaleID of the sale
	''' </summary>
	''' <returns></returns>
	<DispId(8)>
	Public Property SaleID As String
		Get
			Return _saleid
		End Get
		Set(value As String)
			_saleid = value
		End Set
	End Property
	Private _saleid As String = String.Empty

	''' <summary>
	''' Nexo POIID of the POI to communicate with
	''' </summary>
	''' <returns></returns>
	<DispId(9)>
	Public Property POIID As String
		Get
			Return _poiid
		End Get
		Set(value As String)
			_poiid = value
		End Set
	End Property
	Private _poiid As String = String.Empty

	''' <summary>
	''' Nexo login command
	''' </summary>
	''' <returns></returns>
	<DispId(10)>
	Public ReadOnly Property Login As NexoLogin
		Get
			Return _login
		End Get
	End Property
	Friend _login As NexoLogin

	''' <summary>
	''' Nexo payment command
	''' </summary>
	''' <returns></returns>
	<DispId(11)>
	Public ReadOnly Property Payment As NexoPayment
		Get
			Return _payment
		End Get
	End Property
	Friend _payment As NexoPayment

	''' <summary>
	''' Nexo refund command
	''' </summary>
	''' <returns></returns>
	<DispId(12)>
	Public ReadOnly Property Refund As NexoPayment
		Get
			Return _refund
		End Get
	End Property
	Friend _refund As NexoPayment

	''' <summary>
	''' Nexo logout command
	''' </summary>
	''' <returns></returns>
	<DispId(13)>
	Public ReadOnly Property Logout As NexoLogout
		Get
			Return _logout
		End Get
	End Property
	Friend _logout As NexoLogout

	''' <summary>
	''' NexoClient instance <see cref="NexoRetailerClient"/>
	''' </summary>
	''' <returns></returns>
	<DispId(14)>
	Public ReadOnly Property NexoClient As NexoRetailerClient
		Get
			Return _nexoclient
		End Get
	End Property
	Private _nexoclient As NexoRetailerClient

	''' <summary>
	''' Indicate whether connected to the POI of not
	''' </summary>
	''' <returns></returns>
	<DispId(15)>
	Public ReadOnly Property Connected() As Boolean
		Get
			Return NexoClient.Connected
		End Get
	End Property

	''' <summary>
	''' True if last nexo command was successfull
	''' </summary>
	''' <returns></returns>
	<DispId(16)>
	Public ReadOnly Property Success As Boolean
		Get
			Return _success
		End Get
	End Property
	Private _success As Boolean = False

	''' <summary>
	''' POI assigned transaction ID
	''' </summary>
	''' <returns></returns>
	<DispId(17)>
	Public ReadOnly Property POITransactionID As String
		Get
			Return _poitransactionid
		End Get
	End Property
	Friend _poitransactionid As String = Nothing

	''' <summary>
	''' POI assigned transaction timestamp
	''' </summary>
	''' <returns></returns>
	<DispId(18)>
	Public ReadOnly Property POITransactionTimestamp As String
		Get
			Return _poitransactiontimestamp
		End Get
	End Property
	Friend _poitransactiontimestamp As String = Nothing

	''' <summary>
	''' Originally POI assigned transaction ID (for refund)
	''' </summary>
	''' <returns></returns>
	<DispId(19)>
	Public Property OriginalPOITransactionID As String
		Get
			Return _originalpoitransactionid
		End Get
		Set(value As String)
			_originalpoitransactionid = value
		End Set
	End Property
	Private _originalpoitransactionid As String = Nothing

	''' <summary>
	''' Origininally POI assigned transaction timestamp (for refund)
	''' </summary>
	''' <returns></returns>
	<DispId(20)>
	Public Property OriginalPOITransactionTimestamp As String
		Get
			Return _originalpoitransactiontimestamp
		End Get
		Set(value As String)
			_originalpoitransactiontimestamp = value
		End Set
	End Property
	Private _originalpoitransactiontimestamp As String = Nothing

	''' <summary>
	''' True if connecting to the POI must be done using backup <see cref="Settings"/>
	''' </summary>
	''' <returns></returns>
	<DispId(21)>
	Public Property UseBackup As Boolean
		Get
			Return _usebackup
		End Get
		Set(value As Boolean)
			_usebackup = value
		End Set
	End Property
	Private _usebackup As Boolean = False

	''' <summary>
	''' True if logout is desired after every nexo command, meaning a login must be done each time as well
	''' </summary>
	''' <returns></returns>
	<DispId(22)>
	Public Property LogoutOnTerminate As Boolean
		Get
			Return _logoutonterminate
		End Get
		Set(value As Boolean)
			_logoutonterminate = value
		End Set
	End Property
	Private _logoutonterminate As Boolean = False

	''' <summary>
	''' Nexo reversal command
	''' </summary>
	''' <returns></returns>
	<DispId(23)>
	Public ReadOnly Property Reversal As NexoReversal
		Get
			Return _reversal
		End Get
	End Property
	Friend _reversal As NexoReversal

	''' <summary>
	''' Nexo reconciliation command
	''' </summary>
	''' <returns></returns>
	<DispId(24)>
	Public ReadOnly Property Reconciliation As NexoReconciliation
		Get
			Return _reconciliation
		End Get
	End Property
	Friend _reconciliation As NexoReconciliation

	''' <summary>
	''' Nexo abort command
	''' </summary>
	''' <returns></returns>
	<DispId(25)>
	Public ReadOnly Property Abort As NexoAbort
		Get
			Return _abort
		End Get
	End Property
	Friend _abort As NexoAbort

	''' <summary>
	''' Recociliation ID (for reconciliation command)
	''' </summary>
	''' <returns></returns>
	<DispId(26)>
	Public Property ReconciliationID As String
		Get
			Return _reconciliationid
		End Get
		Set(value As String)
			_reconciliationid = value
		End Set
	End Property
	Private _reconciliationid As String

	''' <summary>
	''' So far only 1 acquirer supported at a time
	''' </summary>
	''' <returns></returns>
	<DispId(27)>
	Public Property ReconciliationAcquirerID As String
		Get
			Return _acquirerid
		End Get
		Set(value As String)
			_acquirerid = value
		End Set
	End Property
	Private _acquirerid As String

	''' <summary>
	''' Type of reconciliation requested
	''' </summary>
	''' <returns></returns>
	<DispId(28)>
	Public Property ReconciliationType As ReconciliationTypeEnumeration
		Get
			Return _acquirertype
		End Get
		Set(value As ReconciliationTypeEnumeration)
			_acquirertype = value
		End Set
	End Property
	Private _acquirertype As ReconciliationTypeEnumeration = ReconciliationTypeEnumeration.SaleReconciliation

	''' <summary>
	''' Abort reason to send to the POI
	''' </summary>
	''' <returns></returns>
	<DispId(29)>
	Public Property AbortReason As String
		Get
			Return _abortreason
		End Get
		Set(value As String)
			_abortreason = value
		End Set
	End Property
	Private _abortreason As String

	''' <summary>
	''' Message category of the message to abort
	''' </summary>
	''' <returns></returns>
	<DispId(30)>
	Public Property AbortMessageCategory As MessageCategoryEnumeration
		Get
			Return _abortmessagecategory
		End Get
		Set(value As MessageCategoryEnumeration)
			_abortmessagecategory = value
		End Set
	End Property
	Private _abortmessagecategory As MessageCategoryEnumeration

	''' <summary>
	''' Service ID of the message to abort
	''' </summary>
	''' <returns></returns>
	<DispId(31)>
	Public Property AbortServiceID As String
		Get
			Return _abortserviceid
		End Get
		Set(value As String)
			_abortserviceid = value
		End Set
	End Property
	Private _abortserviceid As String

	''' <summary>
	''' Merchant name that will be printed on a check
	''' </summary>
	''' <returns></returns>
	<DispId(32)>
	Public Property MerchantName As String
		Get
			Return _merchantname
		End Get
		Set(value As String)
			_merchantname = value
		End Set
	End Property
	Private _merchantname As String

	''' <summary>
	''' Merchant address that will be printed on a check
	''' </summary>
	''' <returns></returns>
	<DispId(33)>
	Public Property MerchantAddress As String
		Get
			Return _merchantaddress
		End Get
		Set(value As String)
			_merchantaddress = value
		End Set
	End Property
	Private _merchantaddress As String

	''' <summary>
	''' A number indexing the check
	''' That value is printed on the check and allows the merchant to keep a sequential number ID of the check
	''' That value is always incremented when printing a check, the application does not need to update it EXCEPT for resetting it
	''' If the application fails to reset it the index is incremented until the application restarts
	''' The application can disable printing that index by setting it 0 (or any negative value)
	''' </summary>
	''' <returns></returns>
	<DispId(34)>
	Public Property CheckIndex As Integer
		Get
			Return _checkindex
		End Get
		Set(value As Integer)
			_checkindex = value
		End Set
	End Property
	Private _checkindex As Integer

	''' <summary>
	''' Merchant address that will be printed on a check
	''' </summary>
	<DispId(35)>
	Public Property CheckAuthorisationSignature As String
		Get
			Return _checkauthorisationsignature
		End Get
		Set(value As String)
			_checkauthorisationsignature = value
		End Set
	End Property
	Private _checkauthorisationsignature As String

	''' <summary>
	''' Nexo input command
	''' </summary>
	<DispId(36)>
	Public ReadOnly Property Input As NexoDeviceInput
		Get
			Return _input
		End Get
	End Property
	Friend _input As NexoDeviceInput

	''' <summary>
	''' Nexo input command
	''' </summary>
	<DispId(37)>
	Public ReadOnly Property Print As NexoDevicePrint
		Get
			Return _print
		End Get
	End Property
	Friend _print As NexoDevicePrint

	''' <summary>
	''' Merchant address that will be printed on a check
	''' </summary>
	<DispId(38)>
	Public Property CheckAuthorisationResponseCode As String
		Get
			Return _checkauthorisationresponsecode
		End Get
		Set(value As String)
			_checkauthorisationresponsecode = value
		End Set
	End Property
	Private _checkauthorisationresponsecode As String

	''' <summary>
	''' Merchant reference to use for next/current transaction to process
	''' </summary>
	<DispId(39)>
	Public Property MerchantReferenceID As String
		Get
			Return _merchantreferenceid
		End Get
		Set(value As String)
			_merchantreferenceid = value
		End Set
	End Property
	Private _merchantreferenceid As String = String.Empty

	''' <summary>
	''' The currency that will be used for all transactions
	''' </summary>
	<DispId(40)>
	Public ReadOnly Property Currency As NexoCurrency
		Get
			Return New NexoCurrency With {.DecimalPlaces = Settings.Decimals, .Value = Settings.Currency}
		End Get
	End Property

	''' <summary>
	''' Indicate whether a receipt is available in the financial response
	''' </summary>
	<DispId(41)>
	Public ReadOnly Property ReceiptAvailable As Boolean
		Get
			Return _receiptavailable
		End Get
	End Property
	Friend _receiptavailable As Boolean

	''' <summary>
	''' Indicate the settings of the currently used POI
	''' </summary>
	<DispId(42)>
	Public ReadOnly Property POIInUse As POISettings
		Get
			Return _poiinuse
		End Get
	End Property
	Friend _poiinuse As POISettings

	''' <summary>
	''' Reason to use for the reversal
	''' </summary>
	<DispId(43)>
	Public Property ReversalReason As String
		Get
			Return _reversalreason
		End Get
		Set(value As String)
			_reversalreason = value
		End Set
	End Property
	Private _reversalreason As String

	''' <summary>
	''' Card brand used for financial transaction, if it is possible to determine it
	''' </summary>
	<DispId(44)>
	Public Property Brand As String
		Get
			Return _brand
		End Get
		Friend Set(value As String)
			_brand = value
		End Set
	End Property
	Friend Property _brand As String = DEFAULT_BRAND
	Public Const DEFAULT_BRAND As String = "Unknown brand"
	Public ReadOnly Property UnknownBrand As String
		Get
			Return DEFAULT_BRAND
		End Get
	End Property

	''' <summary>
	''' Instruct to indicate the card brand when financial transaction is finished
	''' </summary>
	<DispId(45)>
	Public Property IndicateBrand As Boolean
		Get
			Return _indicatebrand
		End Get
		Set(value As Boolean)
			_indicatebrand = value
		End Set
	End Property
	Private _indicatebrand As Boolean = True

	''' <summary>
	''' Indicates whether the POI is offline or not
	''' </summary>
	<DispId(46)>
	Public ReadOnly Property POIIsOffline As Boolean
		Get
			Return _poiisoffline
		End Get
	End Property
	Friend _poiisoffline As Boolean = False

	'''' <summary>
	'''' If used <see cref="StartProcessing(Action, Form, Control, Control, Integer)"/> to run the nexo processing the result will be put inside this data
	'''' That data does not pertain until the caller has received the windows message as indicated when calling the function
	'''' </summary>
	'<DispId(47)>
	'Public ReadOnly Property AsynchronousResult As ActionResult
	'	Get
	'		Return _asynchronousresult
	'	End Get
	'End Property
	'Friend _asynchronousresult As ActionResult = ActionResult.unknown

	'''' <summary>
	'''' Message that will be sent to the caller when <see cref="StartProcessing(Action, Form, Control, Control, Integer)"/> terminates
	'''' The result is stored in <see cref="AsynchronousResult"/>
	'''' </summary>
	'<DispId(48)>
	'Public Property AsynchronousTerminateMessage As Integer
	'	Get
	'		Return _asynchronousterminatemessage
	'	End Get
	'	Set(value As Integer)
	'		If WM_ASYNCHRONOUSTERMINATE <= value Then _asynchronousterminatemessage = value
	'	End Set
	'End Property
	'Friend _asynchronousterminatemessage As Integer = WM_ASYNCHRONOUSTERMINATE

	'''' <summary>
	'''' The default value of the message returned by an asynchronous nexo processing
	'''' This entry is here to allow the caller to know the message value that will be used so know if changing it is necessary
	'''' </summary>
	'<DispId(49)>
	'Public ReadOnly Property AsynchronousDefaultTerminateMessage As Integer
	'	Get
	'		Return WM_ASYNCHRONOUSTERMINATE
	'	End Get
	'End Property
	'Private Const WM_ASYNCHRONOUSTERMINATE As Integer = Win32.WM_USER + 1000

	''' <summary>
	''' Allows bypassing printing setting if the component is included inside an application already allowing printing of the receipts.
	''' In that is the case the calling application can set the "print receipts" flag to indicate the receipt is to be printed (and the sale will know it) while preventing the NEXOSALE module to it by itself, delegating the task to the caller
	''' Settings this property to TRUE will make the component to print the receipt itself, to FALSE the component delegates printing to the calling application, defualt is TRUE
	''' </summary>
	<DispId(50)>
	Public Property UseInternalPrinting As Boolean
		Get
			Return _useinternalprinting
		End Get
		Set(value As Boolean)
			_useinternalprinting = value
		End Set
	End Property
	Private _useinternalprinting As Boolean = True

	''' <summary>
	''' Name of the customer receipt saved as a PDF, if saved
	''' </summary>
	<DispId(51)>
	Public Property CustomerReceiptFileName As String
		Get
			Return _customerreceiptfilename
		End Get
		Friend Set(value As String)
			_customerreceiptfilename = value
		End Set
	End Property
	Private _customerreceiptfilename As String = Nothing

	''' <summary>
	''' Name of the merchant receipt saved as a PDF, if saved
	''' </summary>
	<DispId(52)>
	Public Property MerchantReceiptFileName As String
		Get
			Return _merchantreceiptfilename
		End Get
		Friend Set(value As String)
			_merchantreceiptfilename = value
		End Set
	End Property
	Private _merchantreceiptfilename As String = Nothing


	''' <summary>
	''' Last receipt received from POI
	''' </summary>
	<DispId(53)>
	Public Property LastReceipt As PaymentReceiptType()
		Get
			Return _lastreceipt
		End Get
		Friend Set(value As PaymentReceiptType())
			_lastreceipt = value
		End Set
	End Property
	Private _lastreceipt As PaymentReceiptType() = Nothing

#End Region

#Region "public methods"
	''' <summary>
	''' Display settings and allows to set them
	''' </summary>
	<DispId(100)>
	Public Sub DisplaySettings(useAdvancedSettings As Boolean)
		Dim f As New FSettings(Me, useAdvancedSettings)
		f.UseBackup = UseBackup
		Select Case f.ShowDialog()
			Case DialogResult.OK
				Disconnect()
				Settings = f.Settings
				CLog.LogFileName = Settings.LogFileName
				UseBackup = f.UseBackup
		End Select
		f.Dispose()
	End Sub
	''' <summary>
	''' Display processing window
	''' </summary>
	''' <param name="theAction">Action to perform <see cref="Action"/></param>
	''' <returns></returns>
	<DispId(101)>
	Public Function DisplayProcessing(theAction As Action) As ActionResult
		Dim res As ActionResult = ActionResult.unknown
		If ((Action.PrintCheck = theAction OrElse Action.Payment = theAction OrElse Action.Refund = theAction) AndAlso 0 <> Amount) OrElse
		(Action.Reversal = theAction) OrElse
		(Action.Payment <> theAction AndAlso Action.Refund <> theAction AndAlso Action.Reversal <> theAction) Then
			Dim f As Boolean = True

			'Dim localCurrency As New NexoCurrency With {.DecimalPlaces = Settings.Decimals, .Value = Settings.Currency}
			'Dim localAmount As Double = Amount / 10 ^ localCurrency.DecimalPlaces

			'test action whether supported or not, eventually setting specific arguments
			Select Case theAction
				Case Action.Login, Action.Logout
				Case Action.Payment, Action.Refund, Action.Reversal
					Dim supportsRefund = SupportsAction(Action.Refund, theAction, Settings.Primary.SupportsRefund, Settings.Backup.SupportsRefund)
					Dim supportsReversal = SupportsAction(Action.Reversal, theAction, Settings.Primary.SupportsCancel, Settings.Backup.SupportsCancel)
					If Action.Reversal = theAction AndAlso supportsReversal Then
						If Settings.UseRefundForCancel Then
							If SupportsAction(Action.Refund, Action.Refund, Settings.Primary.SupportsRefund, Settings.Backup.SupportsRefund) Then
								theAction = Action.Refund
							Else
								supportsReversal = False
							End If
						End If
					End If
					f = Action.Payment = theAction OrElse supportsReversal OrElse supportsRefund
				Case Action.Reconciliation, Action.Abort
					f = SupportsAction(Action.Reconciliation, theAction, Settings.Primary.SupportsReconciliation, Settings.Backup.SupportsReconciliation) OrElse
						SupportsAction(Action.Abort, theAction, Settings.Primary.SupportsAbort, Settings.Backup.SupportsAbort)
				Case Action.ReadCheck, Action.PrintCheck
					f = SupportsAction(Action.ReadCheck, theAction, Settings.Primary.SupportsCheck, Settings.Backup.SupportsCheck) OrElse
						SupportsAction(Action.PrintCheck, theAction, Settings.Primary.SupportsCheck, Settings.Backup.SupportsCheck)
				Case Else
					f = False
			End Select

			'If Not POIIsOffline Then
			'	If f AndAlso Not POIIsOffline Then
			If UseBackup Then _poiinuse = Settings.Backup Else _poiinuse = Settings.Primary
			'prepare the operation object
			Dim operation As New FProcessing.NexoOperation With
			{
			.Action = theAction,
			.Amount = Amount,
			.POI = POIInUse
			}
			Dim fp As New FProcessing(Me, operation)
			PrepareNexosaleObject()
			Select Case fp.ShowDialog()
				Case DialogResult.Yes
					res = ActionResult.success
				Case DialogResult.No
					res = ActionResult.decline
				Case DialogResult.Cancel
					res = ActionResult.cancel
				Case DialogResult.Abort
					res = ActionResult.timeout
				Case DialogResult.Retry
					res = ActionResult.incomplete
				Case Else
					res = ActionResult.unknown
			End Select
			fp.Dispose()
		Else
			res = ActionResult.notSupported
		End If
		'	Else
		'		'POI is offline, return a timeout result to allow the application take appropriate measures
		'		res = ActionResult.incomplete
		'	End If
		'Else
		'	DisplayProcessing = DialogResult.Abort
		'End If
		Return res
	End Function
	Private Sub PrepareNexosaleObject()
		'InternalBrand = Scheme.card
	End Sub
	'''' <summary>
	'''' Display processing window
	'''' </summary>
	'''' <param name="theAction">Action to perform <see cref="Action"/></param>
	'''' <param name="form">The caller's form that will be warned when nexo processing is finished</param>
	'''' <param name="message">The control whose text will be updated when a message is to be displayed to the user, default is null meaning no message will be displayed</param>
	'''' <param name="information">The control whose text will be updated when an information message is to be displayed to the user, default is null meaning no information message will be displayed</param>
	'''' <param name="asynchronousTerminate">The message to send back to the indicated form when nexo processing is finished, default value is contained in <see cref="AsynchronousDefaultTerminateMessage"/></param>
	'''' <returns></returns>
	'<DispId(102)>
	'Public Function StartProcessing(theAction As Action, form As Form, Optional message As Control = Nothing, Optional information As Control = Nothing, Optional asynchronousTerminate As Integer = WM_ASYNCHRONOUSTERMINATE) As Boolean
	'	Dim res As ActionResult = ActionResult.unknown
	'	'If ((Action.PrintCheck = theAction OrElse Action.Payment = theAction OrElse Action.Refund = theAction) AndAlso 0 <> Amount) OrElse
	'	'(Action.Reversal = theAction) OrElse
	'	'(Action.Payment <> theAction AndAlso Action.Refund <> theAction AndAlso Action.Reversal <> theAction) Then
	'	'	Dim f As Boolean = True
	'	'	Dim localCurrency As New NexoCurrency With {.DecimalPlaces = Settings.Decimals, .Value = Settings.Currency}
	'	'	Dim localAmount As Double = Amount / 10 ^ localCurrency.DecimalPlaces

	'	'	'test action whether supported or not, eventually setting specific arguments
	'	'	Select Case theAction
	'	'		Case Action.Login, Action.Logout
	'	'		Case Action.Payment, Action.Refund, Action.Reversal
	'	'			f = Action.Payment = theAction OrElse
	'	'				SupportsAction(Action.Refund, theAction, Settings.Primary.SupportsRefund, Settings.Backup.SupportsRefund) OrElse
	'	'				SupportsAction(Action.Reversal, theAction, Settings.Primary.SupportsCancel, Settings.Backup.SupportsCancel)
	'	'		Case Action.Reconciliation, Action.Abort
	'	'			f = SupportsAction(Action.Reconciliation, theAction, Settings.Primary.SupportsReconciliation, Settings.Backup.SupportsReconciliation) OrElse
	'	'				SupportsAction(Action.Abort, theAction, Settings.Primary.SupportsAbort, Settings.Backup.SupportsAbort)
	'	'		Case Action.ReadCheck, Action.PrintCheck
	'	'			f = SupportsAction(Action.ReadCheck, theAction, Settings.Primary.SupportsCheck, Settings.Backup.SupportsCheck) OrElse
	'	'				SupportsAction(Action.PrintCheck, theAction, Settings.Primary.SupportsCheck, Settings.Backup.SupportsCheck)
	'	'		Case Else
	'	'			f = False
	'	'	End Select

	'	'	If Not POIIsOffline Then
	'	'		If f AndAlso Not POIIsOffline Then
	'	'			If UseBackup Then _poiinuse = Settings.Backup Else _poiinuse = Settings.Primary
	'	'			'prepare the operation object
	'	'			Dim operation As New FProcessing.NexoOperation With
	'	'			{
	'	'			.Action = theAction,
	'	'			.Amount = localAmount,
	'	'			.POI = POIInUse
	'	'			}
	'	'			Dim fp As New FProcessing(Me, operation)
	'	'			PrepareNexosaleObject()
	'	'			Select Case fp.ShowDialog()
	'	'				Case DialogResult.Yes
	'	'					res = ActionResult.success
	'	'				Case DialogResult.No
	'	'					res = ActionResult.decline
	'	'				Case DialogResult.Cancel
	'	'					res = ActionResult.cancel
	'	'				Case DialogResult.Abort
	'	'					res = ActionResult.timeout
	'	'				Case DialogResult.Retry
	'	'					res = ActionResult.incomplete
	'	'				Case Else
	'	'					res = ActionResult.unknown
	'	'			End Select
	'	'			fp.Dispose()
	'	'		Else
	'	'			res = ActionResult.notSupported
	'	'		End If
	'	'	Else
	'	'		'POI is offline, return a timeout result to allow the application take appropriate measures
	'	'		res = ActionResult.incomplete
	'	'	End If
	'	'Else
	'	'	StartProcessing = DialogResult.Abort
	'	'End If
	'	Return res
	'End Function
	''' <summary>
	''' request confirmation of a purchase final result
	''' </summary>
	''' <returns>True if accepted, false otherwise</returns>
	<DispId(103)>
	Public Function DisplayConfirmPurchase() As Boolean
		Dim f As New FConfirmResult
		Return DialogResult.Yes = f.ShowDialog
	End Function
	''' <summary>
	''' Try to connect to the server
	''' </summary>
	''' <returns>True is connected, false otherwise</returns>
	<DispId(200)>
	Public Function Connect() As Boolean
		If Not Connected Then
			_islogged = False
			'Dim poi As POISettings
			'If UseBackup Then poi = Settings.Backup Else poi = Settings.Primary
			If UseBackup Then _poiinuse = Settings.Backup Else _poiinuse = Settings.Primary
			'If Connected Then Disconnect()
			If (Not String.IsNullOrEmpty(_poiinuse.ServerIP)) Then
				Dim clientSettings As NexoRetailerClientSettings
				If Settings.UseGPRS Then
					clientSettings = New NexoRetailerClientSettings With {
						.StreamClientSettings = New CStreamClientSettings With {
						.IP = Settings.GatewayIP,
						.Port = Settings.GatewayPort,
						.ServerName = Settings.ServerName,
						.AllowedSslErrors = Settings.AllowedSslErrors,
						.ReceiveTimeout = _poiinuse.GeneralTimer}}
				Else
					clientSettings = New NexoRetailerClientSettings With {
						.StreamClientSettings = New CStreamClientSettings With {
						.IP = POIInUse.ServerIP,
						.Port = POIInUse.ServerPort,
						.ReceiveTimeout = _poiinuse.GeneralTimer,
						.ConnectTimeout = 5}}
				End If
				Return NexoClient.Connect(clientSettings)
			End If
		End If
		Return Connected
	End Function
	<DispId(201)>
	Public Sub Disconnect()
		If Connected Then
			NexoClient.Disconnect()
		End If
	End Sub
	''' <summary>
	''' Allows retieving the settings file name
	''' </summary>
	''' <returns>The current settings file name</returns>
	<DispId(500)>
	Public Function SettingsFileName() As String
		Return SettingsFileNameEx(Settings.REGISTRY_KEY_SETTINGS_FILE_NAME, Settings.DEFAULT_SETTINGS_FILE_NAME, False)
	End Function
	''' <summary>
	''' Returns the text associated to a DocumentQualifierEnumeration enumeration
	''' </summary>
	''' <param name="value">value to look for inside the enumeration</param>
	''' <returns>The text associated to the value or null if not found</returns>
	<DispId(501)>
	Public Function DocumentQualifierToString(value As DocumentQualifierEnumeration) As String
		Return CMisc.GetEnumName(GetType(DocumentQualifierEnumeration), value)
	End Function
	''' <summary>
	''' Returns the text associated to a AlignmentEnumeration enumeration
	''' </summary>
	''' <param name="value">value to look for inside the enumeration</param>
	''' <returns>The text associated to the value or null if not found</returns>
	<DispId(502)>
	Public Function AlignmentToString(value As AlignmentEnumeration) As String
		Return CMisc.GetEnumName(GetType(AlignmentEnumeration), value)
	End Function
	''' <summary>
	''' Returns the text associated to a AlignmentEnumeration enumeration
	''' </summary>
	''' <param name="value">value to look for inside the enumeration</param>
	''' <returns>The text associated to the value or null if not found</returns>
	<DispId(503)>
	Public Function CharacterStyleToString(value As CharacterStyleEnumeration) As String
		Return CMisc.GetEnumName(GetType(CharacterStyleEnumeration), value)
	End Function
#End Region

#Region "private properties"
	Private folder As String = String.Empty
	Private Const DEFAULT_PORT As Integer = 2018
	Private Const SETTINGS_FILE_NAME As String = "nexocom.settings.json"
#End Region

#Region "private methods"
	Friend Shared Function SettingsFileNameEx(registryKey As String, defaultFileName As String, saveRegistry As Boolean) As String
		Dim fileName As String = String.Empty

		Dim fi As FileInfo
		Dim dir As String
		Dim o As Object
		'if it doesn't let's search for it inside the registry
		Dim key As RegistryKey
		Try
			key = Registry.CurrentUser.CreateSubKey(Settings.REGISTRY_SECTION)
			If Not IsNothing(key) Then
				Try
					o = key.GetValue(registryKey)
					If o IsNot Nothing Then
						Try
							fi = New FileInfo(o.ToString)
							dir = CMisc.VerifyDirectory(fi.DirectoryName, True)
							If fi.Exists AndAlso Not String.IsNullOrEmpty(dir) Then
								'folder exsists and is writeable, we use that file name
								fileName = o.ToString
							End If
						Catch ex As Exception
							'invalid file specified
						End Try
					End If
				Catch ex As Exception
				End Try
			End If
		Catch ex As Exception
		End Try

		'let's try current folder
		If String.IsNullOrEmpty(fileName) Then
			Try
				dir = CMisc.VerifyDirectory(".\", True, True)
				If Not String.IsNullOrEmpty(dir) Then
					fileName = dir & defaultFileName
				End If
			Catch ex As Exception
			End Try
		End If

		'let's try Documents folder
		If String.IsNullOrEmpty(fileName) Then
			Try
				o = System.Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments)
				If o IsNot Nothing AndAlso Not String.IsNullOrEmpty(o.ToString) Then
					dir = CMisc.VerifyDirectory(o.ToString, True, True)
					If Not String.IsNullOrEmpty(dir) Then
						fileName = dir & defaultFileName
					End If
				End If
			Catch ex As Exception
			End Try
		End If

		'let's try TEMP folder
		If String.IsNullOrEmpty(fileName) Then
			Try
				o = Path.GetTempPath
				'if invalid try to access the TEMP folder
				If Not o Is Nothing AndAlso Not String.IsNullOrEmpty(o.ToString) Then
					dir = CMisc.VerifyDirectory(o.ToString, True, True)
					If Not String.IsNullOrEmpty(dir) Then
						fileName = dir & defaultFileName
					End If
				End If
			Catch ex As Exception
			End Try
		End If

		If Not String.IsNullOrEmpty(fileName) AndAlso saveRegistry Then
			SaveInRegistry(registryKey, fileName)
		End If

		Return fileName
	End Function

	Friend Shared Sub SaveInRegistry(registryKey As String, value As String)
		Dim key As RegistryKey
		Try
			key = Registry.CurrentUser.CreateSubKey(Settings.REGISTRY_SECTION)
			If Not IsNothing(key) Then
				key.SetValue(registryKey, value)
			End If
		Catch ex As Exception
		End Try
	End Sub

	Private Shared Function TestDir(fileNamed As String) As Boolean
		Try
			Dim fi As New FileInfo(fileNamed)
			Dim dir = CMisc.VerifyDirectory(fi.Directory.FullName, True, True)
			If Not IsNothing(dir) Then
				'folder exsists and is writeable, we use that file name
				Return True
			End If
		Catch ex As Exception
		End Try
		Return False
	End Function

	Private Sub LoadSettings()
		Dim json As New CJson(Of Settings)()
		json.FileName = SettingsFileName()
		Dim except As Boolean
		Settings = json.ReadSettings(except)
		If IsNothing(Settings) Then
			Settings = New Settings
			'Settings.SettingsFileName = json.FileName
			SaveSettings()
		End If
	End Sub

	Private Sub SaveSettings()
		Dim json As New CJson(Of Settings)()
		json.FileName = SettingsFileName()
		json.WriteSettings(Settings, True)
	End Sub

	Private Function SupportsAction(actionToTest As Action, actionSelected As Action, primarySupport As Boolean, backupSupport As Boolean) As Boolean
		Return actionToTest = actionSelected AndAlso ((UseBackup AndAlso backupSupport) Or (Not UseBackup AndAlso primarySupport))
	End Function

	Private Function CheckProcessing(theAction As Action) As FProcessing.NexoOperation
		'Dim res As ActionResult = ActionResult.unknown
		'If ((Action.PrintCheck = theAction OrElse Action.Payment = theAction OrElse Action.Refund = theAction) AndAlso 0 <> Amount) OrElse
		'(Action.Reversal = theAction) OrElse
		'(Action.Payment <> theAction AndAlso Action.Refund <> theAction AndAlso Action.Reversal <> theAction) Then
		'	Dim f As Boolean = True
		'	Dim localCurrency As New NexoCurrency With {.DecimalPlaces = Settings.Decimals, .Value = Settings.Currency}
		'	Dim localAmount As Double = Amount / 10 ^ localCurrency.DecimalPlaces

		'	'test action whether supported or not, eventually setting specific arguments
		'	Select Case theAction
		'		Case Action.Login, Action.Logout
		'		Case Action.Payment, Action.Refund, Action.Reversal
		'			f = Action.Payment = theAction OrElse
		'				SupportsAction(Action.Refund, theAction, Settings.Primary.SupportsRefund, Settings.Backup.SupportsRefund) OrElse
		'				SupportsAction(Action.Reversal, theAction, Settings.Primary.SupportsCancel, Settings.Backup.SupportsCancel)
		'		Case Action.Reconciliation, Action.Abort
		'			f = SupportsAction(Action.Reconciliation, theAction, Settings.Primary.SupportsReconciliation, Settings.Backup.SupportsReconciliation) OrElse
		'				SupportsAction(Action.Abort, theAction, Settings.Primary.SupportsAbort, Settings.Backup.SupportsAbort)
		'		Case Action.ReadCheck, Action.PrintCheck
		'			f = SupportsAction(Action.ReadCheck, theAction, Settings.Primary.SupportsCheck, Settings.Backup.SupportsCheck) OrElse
		'				SupportsAction(Action.PrintCheck, theAction, Settings.Primary.SupportsCheck, Settings.Backup.SupportsCheck)
		'		Case Else
		'			f = False
		'	End Select

		'	If Not POIIsOffline Then
		'		If f AndAlso Not POIIsOffline Then
		'			If UseBackup Then _poiinuse = Settings.Backup Else _poiinuse = Settings.Primary
		'			'prepare the operation object
		'			Dim operation As New FProcessing.NexoOperation With
		'			{
		'			.Action = theAction,
		'			.Amount = localAmount,
		'			.POI = POIInUse
		'			}
		'			Dim fp As New FProcessing(Me, operation)
		'			PrepareNexosaleObject()
		'			Select Case fp.ShowDialog()
		'				Case DialogResult.Yes
		'					res = ActionResult.success
		'				Case DialogResult.No
		'					res = ActionResult.decline
		'				Case DialogResult.Cancel
		'					res = ActionResult.cancel
		'				Case DialogResult.Abort
		'					res = ActionResult.timeout
		'				Case DialogResult.Retry
		'					res = ActionResult.incomplete
		'				Case Else
		'					res = ActionResult.unknown
		'			End Select
		'			fp.Dispose()
		'		Else
		'			res = ActionResult.notSupported
		'		End If
		'	Else
		'		'POI is offline, return a timeout result to allow the application take appropriate measures
		'		res = ActionResult.incomplete
		'	End If
		'Else
		'	StartProcessing = DialogResult.Abort
		'End If

		Return New FProcessing.NexoOperation
	End Function

#End Region

#Region "friend methods"
	''' <summary>
	''' Tries to determine the scheme base on a <see cref="NexoPayment"/> object
	''' Determination is done by:
	'''  1/ analysing the <see cref="NexoPayment.ReplyPaymentBrand"/> looking for a scheme name
	'''  2/ analysing all receipts looking for a scheme name
	''' </summary>
	''' <param name="nxo">The <see cref="NexoPayment"/> object to analyse</param>
	''' <returns>The scheme if one found or a default value <see cref="DEFAULT_BRAND"/> if no scheme could be found</returns>
	Friend Function GetSchemeFromAvailableData(nxo As NexoPayment) As String
		Dim sz As String = Nothing
		GetSchemeFromAvailableData = Nothing
		'look for brand returned by nexo
		If Not String.IsNullOrEmpty(nxo.ReplyPaymentBrand) Then
			sz = nxo.ReplyPaymentBrand
			GetSchemeFromAvailableData = TryDeterminingScheme(sz)
		End If
		'if no scheme look inside the receipts
		If IsNothing(GetSchemeFromAvailableData) And 0 <> nxo.ReplyData.PaymentReceiptLength Then
			'loop on all available receipts
			For i As Integer = 0 To nxo.ReplyData.PaymentReceiptLength - 1
				Dim receipt = nxo.ReplyData.PaymentReceiptGetItem(i)
				If Not IsNothing(receipt) AndAlso Not IsNothing(receipt.OutputContent) AndAlso 0 <> receipt.OutputContent.OutputTextLength Then
					'loop on all available lines inside the receipt
					For j As Integer = 0 To receipt.OutputContent.OutputTextLength - 1
						Dim outputtext = receipt.OutputContent.OutputTextGetItem(j)
						'try to determine the scheme
						If Not IsNothing(outputtext) AndAlso Not IsNothing(outputtext.Value) Then
							GetSchemeFromAvailableData = TryDeterminingScheme(outputtext.Value)
							If Not IsNothing(GetSchemeFromAvailableData) Then Exit For
						End If
					Next
				End If
				If 0 <> String.Compare(GetSchemeFromAvailableData, DEFAULT_BRAND, True) Then Exit For
			Next
		End If

		If IsNothing(GetSchemeFromAvailableData) Then
			GetSchemeFromAvailableData = DEFAULT_BRAND
		End If

		CLog.Add($"Transaction brand: {GetSchemeFromAvailableData}")
		Return GetSchemeFromAvailableData
	End Function

	'''' <summary>
	'''' Returns the scheme name if available (defined in <see cref="Scheme"/> enum
	'''' </summary>
	'''' <param name="scheme">The scheme to look for</param>
	'''' <returns>The name of the scheme in lowercase if found, <see cref="Scheme.card"/> if not found</returns>
	'Friend Function SchemeToString(scheme As Scheme) As String
	'	Dim sz As String = CMisc.GetEnumName(GetType(Scheme), scheme)
	'	If String.IsNullOrEmpty(sz) Then Return scheme.card.ToString.ToLower
	'	Return sz.ToLower
	'End Function

	''' <summary>
	''' Determines the scheme based on a string
	''' Determination is made by analysing the beginning of the string, looking for identifiable data which may give way to determine the scheme
	''' </summary>
	''' <param name="sz">The string to analyse to determine the scheme</param>
	''' <returns>The scheme as determined or a default value <see cref="DEFAULT_BRAND"/> if unable to determine it</returns>
	Friend Function TryDeterminingScheme(sz As String) As String
		TryDeterminingScheme = Nothing
		Try
			sz = CMisc.Trimmed(sz)
			For Each cs As KeyValuePair(Of String, List(Of String)) In Settings.CardSchemes
				For Each tag As String In cs.Value
					If 0 = String.Compare(sz, CMisc.Trimmed(tag), True) Then
						TryDeterminingScheme = cs.Key
						Exit For
					End If
				Next
				If Not IsNothing(TryDeterminingScheme) Then
					Exit For
				End If
			Next

			If IsNothing(TryDeterminingScheme) Then
				Dim sc As StringComparison = StringComparison.CurrentCultureIgnoreCase
				For Each cs As KeyValuePair(Of String, List(Of String)) In Settings.CardSchemes
					For Each tag As String In cs.Value
						If sz.StartsWith(CMisc.Trimmed(tag), sc) Then
							TryDeterminingScheme = cs.Key
							Exit For
						End If
					Next
					If Not IsNothing(TryDeterminingScheme) Then
						Exit For
					End If
				Next
			End If
		Catch ex As Exception

		End Try
		Return TryDeterminingScheme
	End Function
#End Region

#Region "window stack management"
	Private Class StackOfWindows
		Private lifo As Stack
		Public Sub New()
			lifo = New Stack
		End Sub
		Public Sub Push(value As IntPtr)
			If IntPtr.Zero <> value Then
				lifo.Push(value)
			End If
		End Sub
		Public Function Pop() As IntPtr
			Pop = IntPtr.Zero
			If 0 <> lifo.Count Then
				Pop = CType(lifo.Pop, IntPtr)
			End If
		End Function
		Public Function Peek() As IntPtr
			Peek = IntPtr.Zero
			If 0 <> lifo.Count Then
				Peek = CType(lifo.Peek, IntPtr)
			End If
		End Function
		ReadOnly Property Count() As Integer
			Get
				Return lifo.Count
			End Get
		End Property
	End Class
	Private windowsStack As New StackOfWindows
	Friend Function SetOwner(f As Form) As Boolean
		If IntPtr.Zero <> f.Handle Then
			If 0 <> windowsStack.Count Then
				Win32.SetWindowLongPtr(f.Handle, Win32.SWL.GWLP_HWNDPARENT, windowsStack.Peek)
			Else
				Win32.SetWindowLongPtr(f.Handle, Win32.SWL.GWLP_HWNDPARENT, MainWindow)
			End If
			SetOwner = True
			windowsStack.Push(f.Handle)
		Else
			SetOwner = False
		End If
	End Function
	Friend Sub ResetOwner(f As Form)
		If 0 <> windowsStack.Count Then
			windowsStack.Pop()
		End If
	End Sub
#End Region

End Class
