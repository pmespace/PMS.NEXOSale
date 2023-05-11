Imports System.Drawing
Imports System.Windows.Forms
Imports HPDF
Imports NEXO
Imports NEXO.Client
Imports COMMON
Imports COMMON.WIN32
Imports Newtonsoft.Json
Imports System.Net.Sockets
Imports System.Threading
Imports System.Text
Imports System.IO
Imports System.Drawing.Printing
Imports System.Xml.Serialization
Imports System.Xml
Imports System.Reflection
Imports Microsoft


#Const NOCOLOR = True

Public Class FProcessing

#Region "declarations"

#Region "variables"
	Private f As FConfirm
	Private priceb, infob, msgb As Boolean
	Private isInError As Boolean = False
	Private MyDialogResult As DialogResult = DialogResult.None
	Private cancelButtonText As String
	'Private clientSettings As NexoRetailerClientSettings
	Private requestedOperation As NexoOperation = Nothing
	Private Const HEADER As String = "PROCESSING WINDOW - "
	Private nexoSale As NEXOSALE
	Private actionToPerform As Action
	Private actionIsComplete As Boolean = False
	Private CANCEL_BUTTON_TEXT As String = My.Resources.CommonResources.Button_Cancel
	Private CLOSE_BUTTON_TEXT As String = My.Resources.CommonResources.Button_Close
	Private fOK As Boolean
	Private back As Color, fore As Color
	Private globalTicks As Integer = 0
	Private stackOfActions As Stack(Of Action) = New Stack(Of Action)
	Private currentAction As Action
	Private Const ONE_SECOND As Integer = 1000
	Private myLock As Object = New Object
	Private lastMessageHeader As MessageHeaderType
	Private currentactiontext As String

	Private Property Caption As String
		Get
			Return _caption
		End Get
		Set(value As String)
			'_caption = CLog.Add(HEADER & value).ToUpper
			_caption = CLog.Add(value).ToUpper
			If Not String.IsNullOrEmpty(_caption) Then
				Text = _caption
			End If
		End Set
	End Property
	Private _caption As String = Nothing

	Private canStart As Boolean = False

	Private Property canBeCancelled As Boolean
		Get
			Return canStart AndAlso _canbecancelled
		End Get
		Set(value As Boolean)
			_canbecancelled = value AndAlso nexoSale.POIInUse.SupportsAbort
		End Set
	End Property
	Private _canbecancelled As Boolean = False

	Private Property isServiceStarted As Boolean
		Get
			Return _isservicestarted
		End Get
		Set(value As Boolean)
			Monitor.Enter(myLock)
			Try
				If value AndAlso Not hasBeenCancelled AndAlso Not hasTimedOut Then
					_isservicestarted = True
					canBeCancelled = True
				Else
					_isservicestarted = False
				End If
			Catch ex As Exception
			Finally
				Monitor.Exit(myLock)
			End Try
		End Set
	End Property
	Private _isservicestarted As Boolean = False

	Private Property isStarted As Boolean
		Get
			Return _isstarted
		End Get
		Set(value As Boolean)
			Monitor.Enter(myLock)
			Try
				If value AndAlso Not hasBeenCancelled AndAlso Not hasTimedOut Then
					_isstarted = True
					canBeCancelled = True
				Else
					_isstarted = False
				End If
			Catch ex As Exception
			Finally
				Monitor.Exit(myLock)
			End Try
		End Set
	End Property
	Private _isstarted As Boolean = False

	Private Property isComplete As Boolean
		Get
			Return _iscomplete
		End Get
		Set(value As Boolean)
			Monitor.Enter(myLock)
			Try
				If value AndAlso Not hasBeenCancelled AndAlso Not hasTimedOut Then
					_iscomplete = True
					canBeCancelled = False
				Else
					_iscomplete = False
				End If
			Catch ex As Exception
			Finally
				Monitor.Exit(myLock)
			End Try
		End Set
	End Property
	Private _iscomplete As Boolean = False

	Private Property hasTimedOut As Boolean
		Get
			Return canStart AndAlso _hastimedout
		End Get
		Set(value As Boolean)
			Monitor.Enter(myLock)
			Try
				If value AndAlso Not hasBeenCancelled AndAlso isStarted AndAlso Not isComplete Then
					_hastimedout = True
					canBeCancelled = False
				Else
					_hastimedout = False
				End If
			Catch ex As Exception
			Finally
				Monitor.Exit(myLock)
			End Try
		End Set
	End Property
	Private _hastimedout As Boolean = False

	Private Property hasBeenCancelled As Boolean
		Get
			Return canStart AndAlso _hasbeencancelled
		End Get
		Set(value As Boolean)
			Monitor.Enter(myLock)
			Try
				If value AndAlso Not hasTimedOut AndAlso isStarted AndAlso Not isComplete Then
					_hasbeencancelled = True
					canBeCancelled = False
				Else
					_hasbeencancelled = False
				End If
			Catch ex As Exception
			Finally
				Monitor.Exit(myLock)
			End Try
		End Set
	End Property
	Private _hasbeencancelled As Boolean = False
#End Region

#Region "constants"
	Private Const RESULT_OK As Integer = 0
	Private Const RESULT_KO As Integer = 1
	Private Const RESULT_NEXT As Integer = 2

	Private Const WM_BASE As UInteger = Win32.WM_USER + 209
	Private Const WM_START As UInteger = WM_BASE + 1
	Private Const WM_STOP As UInteger = WM_BASE + 2
	Private Const WM_ERROR As UInteger = WM_START + 3
	Private Const WM_END As UInteger = WM_START + 4
	Private Const WM_CANCEL As UInteger = WM_START + 5

	Private Const WM_ACTION As UInteger = WM_BASE + 100
	Private Const WM_LOGIN As UInteger = WM_ACTION + 1
	Private Const WM_LOGOUT As UInteger = WM_ACTION + 2
	Private Const WM_PAYMENT As UInteger = WM_ACTION + 3
	Private Const WM_REFUND As UInteger = WM_ACTION + 4
	Private Const WM_REVERSAL As UInteger = WM_ACTION + 5
	Private Const WM_CONNECT As UInteger = WM_ACTION + 6
	Private Const WM_DISCONNECT As UInteger = WM_ACTION + 8
	Private Const WM_CHECK_READ As UInteger = WM_ACTION + 9
	Private Const WM_CHECK_PRINT As UInteger = WM_ACTION + 10
	Private Const WM_ABORT As UInteger = WM_ACTION + 11
	Private Const WM_RECONCILIATION As UInteger = WM_ACTION + 12
	Private Const WM_CONNECT_SUCCESS As UInteger = WM_ACTION + 13
	Private Const WM_CONNECT_ERROR As UInteger = WM_ACTION + 14
	Private Const WM_CONNECT_END As UInteger = WM_ACTION + 15

	Private Const WM_RECEIVED As UInteger = WM_START + 200
	Private Const WM_RECEIVED_REPLY As UInteger = WM_RECEIVED + 1
	Private Const WM_RECEIVED_REQUEST As UInteger = WM_RECEIVED + 2
	Private Const WM_RECEIVED_NOTIFICATION As UInteger = WM_RECEIVED + 3

	Private Const WM_TIMER As UInteger = WM_START + 300
	Private Const WM_TIMEOUT_START As UInteger = WM_TIMER + 1
	Private Const WM_TIMEOUT As UInteger = WM_TIMER + 2
	Private Const WM_AUTOCLOSE_START As UInteger = WM_TIMER + 3
	Private Const WM_AUTOCLOSE As UInteger = WM_TIMER + 4
#End Region

#Region "classes"
	Public Class CheckToPrint
		Public AuthorisationType As CheckAuthorisationType
		Public MerchantName As String
		Public MerchantAddress As String
		Public CheckIndex As Integer
		Public Signature As String
		Public ResponseCode As String
		Public TextPrinted As String
	End Class

	Public Class NexoOperation
		Public Action As Action = Action._none
		Public POI As POISettings = Nothing
		Public Amount As Double
		Public CMC7 As String 'check id as being read
	End Class
#End Region

#End Region

#Region "print management"
	Class Receipts
		Public Header As MessageHeaderType = Nothing
		Public SaleTransactionID As TransactionIdentificationType = Nothing
		Public POITransactionID As TransactionIdentificationType = Nothing
		Public Receipts As PaymentReceiptType() = Nothing
		Public SaleTimestamp As String
		Public POITimestamp As String
	End Class
	Private ReceiptsToPrint As Receipts = Nothing
#End Region

#Region "thread interface management"
	Private Enum ActivityEvent
		_none
		starting
		stopping
		notificationSent
		notificationReceived
		requestSent
		requestReceived
		replySent
		replyReceived
		timerTimout
		timerAutoclose
		postMessage
		sendMessage
		amount
		information
		message
		resetCancelButton
		resetCloseButton
	End Enum
	Private Class Activity
		Public Property Evt As ActivityEvent = ActivityEvent._none
		Public Property Message As String = Nothing
		Public Property WM As UInteger = 0
		Public Property wParam As Integer = 0
		Public Property lParam As Integer = 0
	End Class
	Private Delegate Sub AddActivity(Activity As Activity)
	Private myDelegate As AddActivity = New AddActivity(AddressOf ProcessUI)

	Private Sub ProcessUI(activity As Activity)
		If ActivityEvent._none <> activity.Evt Then
			Select Case activity.Evt
				Case ActivityEvent.message
					CLog.Add($"{HEADER} [MESSAGE] - {activity.Message}")
					message.Text = activity.Message
				Case ActivityEvent.information
					CLog.Add($"{HEADER} [INFORMATION] - {activity.Message}")
					information.Text = information.Text & vbCrLf & activity.Message
				Case ActivityEvent.replyReceived
				Case ActivityEvent.postMessage
					PostMessage(activity.WM, activity.wParam, activity.lParam)
				Case ActivityEvent.sendMessage
					SendMessage(activity.WM, activity.wParam, activity.lParam)
				Case ActivityEvent.resetCancelButton
					pbCancel.Text = CANCEL_BUTTON_TEXT
				Case ActivityEvent.resetCloseButton
					pbCancel.Text = CLOSE_BUTTON_TEXT
				Case ActivityEvent.notificationReceived
					CLog.Add(HEADER & activity.Message)
			End Select
		End If
	End Sub
#End Region

#Region "constructor"
	Public Sub New(ByRef a As NEXOSALE, ope As NexoOperation)
		MyBase.New
		CLog.Add($"{HEADER} Parameters: {JsonConvert.SerializeObject(ope, Newtonsoft.Json.Formatting.None, New JsonSerializerSettings() With {.NullValueHandling = NullValueHandling.Include, .MissingMemberHandling = MissingMemberHandling.Ignore})}", TLog.INFOR)
		nexoSale = a
		CLog.DEBUG($"{HEADER} Before InitializeComponenents")
		CLog.DEBUG($"{HEADER} assembly: {Assembly.GetAssembly(GetType(Activity))}")
		InitializeComponent()
		CLog.DEBUG($"{HEADER} After InitializeComponenents")

		'clientSettings = New NexoRetailerClientSettings With
		'	{
		'	.OnSentRequestStatusChanged = AddressOf OnSentRequestStatusChanged,
		'	.OnReceivedNotification = AddressOf OnReceivedNotification,
		'	.OnReceivedRequest = AddressOf OnReceivedRequest,
		'	.OnReceivedReply = AddressOf OnReceivedReply,
		'	.OnSend = AddressOf OnSend,
		'	.StreamClientSettings = New CStreamClientSettings With
		'		{
		'		.IP = nexoSale.Settings.Primary.ServerIP,
		'		.Port = nexoSale.Settings.Primary.ServerPort
		'		}
		'	}

		canBeCancelled = Not ope.POI.Synchronous AndAlso ope.POI.SupportsCancel
		CLog.DEBUG($"{HEADER} After clientSettings")

		If (Action._begin < ope.Action AndAlso Action._end > ope.Action) AndAlso
		(Action.Refund <> ope.Action OrElse ope.POI.SupportsRefund) AndAlso
		(Action.Reversal <> ope.Action OrElse ope.POI.SupportsCancel) AndAlso
		(Action.Reconciliation <> ope.Action OrElse ope.POI.SupportsReconciliation) AndAlso
		(Action.Abort <> ope.Action OrElse ope.POI.SupportsAbort) Then 'AndAlso
			'(Action.readcheck <> ope.action OrElse ope.POI.SupportsCheck) AndAlso
			'(Action.printcheck <> ope.action OrElse ope.POI.SupportsCheck) Then
			'the action is known and can be processed
			CLog.DEBUG($"{HEADER} Action has been validated")
			stackOfActions.Push(ope.Action)
			CLog.DEBUG($"{HEADER} stackOfActions: {stackOfActions}")
			If Action.Login = ope.Action Then
			ElseIf Action.Logout = ope.Action Then
			Else
				If Not nexoSale.IsLogged OrElse nexoSale.Settings.AlwaysLogToPOI Then
					CLog.DEBUG($"{HEADER} Adding Login to stackOfActions")
					stackOfActions.Push(Action.Login)
				End If
			End If
		End If

		canStart = 0 <> stackOfActions.Count
		CLog.DEBUG($"{HEADER} stackOfActions count: {stackOfActions.Count}")
		requestedOperation = ope
		CLog.DEBUG($"{HEADER} requestedOperation: {ope}")
	End Sub
#End Region

#Region "processing"
	Private Sub PostMessage(msg As UInteger, Optional wparam As Integer = 0, Optional lparam As Integer = 0, Optional wnd As Form = Nothing)
		Dim hwnd As IntPtr = Me.Handle
		If Not IsNothing(wnd) Then hwnd = wnd.Handle
		Win32.PostMessage(hwnd, msg, wparam, lparam)
	End Sub

	Private Sub SendMessage(msg As Integer, Optional wparam As Integer = 0, Optional lparam As Integer = 0)
		Win32.SendMessage(Me.Handle, msg, wparam, lparam)
	End Sub

	Private Sub FProcessing_Load(sender As Object, e As EventArgs) Handles MyBase.Load
		CLog.Add(HEADER & "Start")
		'Text = LIBHPDF.HPdfDoc.HPdfGetVersion()
		priceb = infob = msgb = False
		nexoSale.SetOwner(Me)
		message.Text = ""
		information.Text = ""
		back = message.BackColor
		fore = message.ForeColor
		If nexoSale.Settings.HideNexoMessagesWhenProcessing Then
			information.Visible = False
			Dim row As Integer = TableLayoutMain.GetRow(information)
			TableLayoutMain.RowStyles(row).SizeType = SizeType.Absolute
			TableLayoutMain.RowStyles(row).Height = 0
		End If
		'determine
		If canBeCancelled Then
			cancelButtonText = pbCancel.Text = CANCEL_BUTTON_TEXT
		Else
			cancelButtonText = pbCancel.Text = CLOSE_BUTTON_TEXT
		End If
		pbCancel.Enabled = canBeCancelled
		'display transaction amount if necessary
		If 0 <> nexoSale.Amount AndAlso Not IsNothing(nexoSale.Currency) AndAlso Not String.IsNullOrEmpty(nexoSale.Currency.Value) Then
			price.Text = requestedOperation.Amount.ToString("N" & nexoSale.Currency.DecimalPlaces) & " " & nexoSale.Currency.Value
		Else
			price.Text = requestedOperation.Action.ToString
		End If
		'start processing
		If canStart Then
			PostMessage(WM_START)
		Else
			PostMessage(WM_STOP)
		End If
	End Sub

	Private Function RealPaymentTimer() As Integer
		If requestedOperation.POI.SupportsAbort Then
			Return requestedOperation.POI.PaymentTimer
		Else
			Return 0
		End If
	End Function

	Protected Overrides Sub WndProc(ByRef m As Message)
		Select Case (m.Msg)
			Case WM_START
				CLog.Add(HEADER & "WM_START")
				'reset resqult data
				nexoSale._receiptavailable = False
				nexoSale._poitransactionid = String.Empty
				nexoSale._poitransactiontimestamp = String.Empty
				'reset timer data
				timerGlobal = New Windows.Forms.Timer
				timerGlobal.Interval = ONE_SECOND
				timerGlobal.Start()
				'If nexoSale.Connected Then
				'	PostMessage(WM_ACTION)
				'Else
				'	PostMessage(WM_CONNECT)
				'End If
				PostMessage(WM_CONNECT)

			Case WM_STOP
				CLog.Add(HEADER & "WM_STOP")
				isInError = True
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = My.Resources.CommonResources.FProcessing_NoTxnToProcess})
				Caption = My.Resources.CommonResources.FProcessing_NoTxnToProcessCaption
				MyDialogResult = DialogResult.Cancel
				PostMessage(WM_AUTOCLOSE_START)

			Case WM_ERROR
				CLog.Add(HEADER & "WM_ERROR")
				isInError = True
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = My.Resources.CommonResources.FProcessing_AnErrorHasOccurred})
				PostMessage(WM_AUTOCLOSE_START)

			Case WM_CONNECT
				CLog.Add(HEADER & "WM_CONNECT")

				Dim clientSettings = New NexoRetailerClientSettings With
				{
				.OnSentRequestStatusChanged = AddressOf OnSentRequestStatusChanged,
				.OnReceivedNotification = AddressOf OnReceivedNotification,
				.OnReceivedRequest = AddressOf OnReceivedRequest,
				.OnReceivedReply = AddressOf OnReceivedReply,
				.OnSend = AddressOf OnSend
				}
				'clientSettings.StreamClientSettings = New CStreamClientSettings With
				'{
				'.IP = nexoSale.Settings.Primary.ServerIP,
				'.Port = nexoSale.Settings.Primary.ServerPort
				'}

				If nexoSale.Connected Then
					With nexoSale.NexoClient.Settings
						.OnSentRequestStatusChanged = clientSettings.OnSentRequestStatusChanged
						.OnReceivedNotification = clientSettings.OnReceivedNotification
						.OnReceivedRequest = clientSettings.OnReceivedRequest
						.OnReceivedReply = clientSettings.OnReceivedReply
						.OnSend = clientSettings.OnSend
					End With
					PostMessage(WM_ACTION)
				Else
					Dim frm As New FWait(nexoSale, clientSettings)
					Select Case frm.ShowDialog()
						Case DialogResult.Yes
							PostMessage(WM_ACTION)

						Case Else
							nexoSale._poiisoffline = True
							isInError = True
							message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = My.Resources.CommonResources.FProcessing_FailedToConnectToPOI})
							PostMessage(WM_AUTOCLOSE_START)
					End Select
					frm.Dispose()
				End If

			Case WM_DISCONNECT
				CLog.Add(HEADER & "WM_DISCONNECT")
				nexoSale.Disconnect()
				PostMessage(WM_END)

			Case WM_TIMEOUT_START
				CLog.Add(HEADER & "WM_TIMEOUT_START")
				If canBeCancelled And 0 <> timerBeforeTimeout.Tag Then
					timerBeforeTimeout.Interval = ONE_SECOND
					timerBeforeTimeout.Start()
					pbCancel.Enabled = True
				Else
					pbCancel.Enabled = False
				End If

			Case WM_TIMEOUT
				CLog.Add(HEADER & "WM_TIMEOUT")
				isInError = True
				stackOfActions.Clear()
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = My.Resources.CommonResources.FProcessing_TIMEOUT & vbCrLf & My.Resources.CommonResources.FProcessing_OperationCancelled})
				MyDialogResult = DialogResult.Abort
				SendMessage(WM_AUTOCLOSE_START)

			Case WM_CANCEL
				CLog.Add(HEADER & "WM_CANCEL")
				timerBeforeTimeout.Stop()
				isInError = True
				hasBeenCancelled = True
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = My.Resources.CommonResources.FProcessing_CancelledByUser & vbCrLf & My.Resources.CommonResources.FProcessing_OperationWontComplete})
				MyDialogResult = DialogResult.Cancel
				PostMessage(WM_AUTOCLOSE_START)

			Case WM_ACTION
				Try
					currentAction = stackOfActions.Pop()
				Catch ex As Exception
					currentAction = Action._none
				End Try
				CLog.Add(HEADER & "WM_ACTION: " & currentAction.ToString)
				'will be false only if the action can't be processed
				Dim t As UInteger
				Dim ms As UInteger = 0
				If Not IsNothing(currentAction) Then
					Select Case currentAction
						Case Action.Login
							t = requestedOperation.POI.GeneralTimer
							ms = WM_LOGIN
						Case Action.Logout
							t = requestedOperation.POI.GeneralTimer
							ms = WM_LOGOUT
						Case Action.Payment
							t = RealPaymentTimer()
							ms = WM_PAYMENT
						Case Action.Refund
							t = RealPaymentTimer()
							ms = WM_REFUND
						Case Action.Reversal
							t = RealPaymentTimer()
							ms = WM_REVERSAL
						Case Action.Reconciliation
							t = RealPaymentTimer()
							ms = WM_RECONCILIATION
						Case Action.Abort
							t = RealPaymentTimer()
							ms = WM_ABORT

							'Case Action.readcheck
							'	t = requestedOperation.POI.CheckTimer
							'	ms = WM_CHECK_READ
							'Case Action.printcheck
							'	t = requestedOperation.POI.CheckTimer
							'	ms = WM_CHECK_PRINT

					End Select
					'if the action can be processed
					If 0 <> ms Then
						'clear the last receipt
						nexoSale.LastReceipt = Nothing
						hasTimedOut = hasTimedOut Or False
						hasBeenCancelled = hasBeenCancelled Or False
						timerBeforeTimeout = New Windows.Forms.Timer()
						timerBeforeTimeout.Tag = t
						isStarted = True
						isComplete = False
						isServiceStarted = WM_LOGIN <> ms AndAlso WM_LOGOUT <> ms
						PostMessage(ms)
					Else
						PostMessage(WM_AUTOCLOSE)
					End If
				End If

			Case WM_LOGIN
				CLog.Add(HEADER & "WM_LOGIN")
				currentactiontext = My.Resources.CommonResources.FProcessing_LoginToPOI
				Me.Text = Caption = $"{My.Resources.CommonResources.FProcessing_LoginSale} {nexoSale.Settings.SaleID} {My.Resources.CommonResources.FProcessing_TO} {nexoSale.Settings.POIID}"
				pbCancel.Enabled = canBeCancelled
				nexoSale._login = New NexoLogin()
				Dim o = nexoSale.Login
				o.SaleID = GetSaleID()
				o.POIID = GetPOIID()
				o.RequestApplicationName = nexoSale.Settings.ApplicationName
				o.RequestManufacturerID = nexoSale.Settings.ManufacturerName
				o.RequestData.OperatorID = New NexoOperatorID().DefaultValue
				o.RequestCertificationCode = nexoSale.Settings.CertificationCode
				o.RequestSoftwareVersion = nexoSale.Settings.SoftwareVersion
				'timerBeforeTimeout.Tag = requestedOperation.POI.GeneralTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag) ', clientSettings)
				TestSendResult(result, o.MessageCategory.ToString, currentactiontext)

			Case WM_LOGOUT
				CLog.Add(HEADER & "WM_LOGOUT")
				Me.Text = Caption = $"{My.Resources.CommonResources.FProcessing_LogoutSale} {nexoSale.Settings.SaleID} {My.Resources.CommonResources.FProcessing_FROM} {nexoSale.Settings.POIID}"
				pbCancel.Enabled = canBeCancelled
				nexoSale._logout = New NexoLogout()
				Dim o = nexoSale.Logout
				o.SaleID = GetSaleID()
				o.POIID = GetPOIID()
				'timerBeforeTimeout.Tag = requestedOperation.POI.GeneralTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag) ', clientSettings)
				TestSendResult(result, o.MessageCategory.ToString, My.Resources.CommonResources.FProcessing_LogoutFromPOI)

			Case WM_PAYMENT
				CLog.Add(HEADER & "WM_PAYMENT")
				Me.Text = Caption = $"{My.Resources.CommonResources.FProcessing_PaymentRequest} {My.Resources.CommonResources.FromSaleU} {nexoSale.Settings.SaleID}  {My.Resources.CommonResources.FProcessing_TO} {nexoSale.Settings.POIID}"
				If IsNothing(nexoSale.Currency) OrElse String.IsNullOrEmpty(nexoSale.Currency.Value) Then
					CLog.Add(HEADER & My.Resources.CommonResources.FProcessing_MissingCurrency, TLog.ERROR)
					PostMessage(WM_ERROR)
				ElseIf IsNothing(requestedOperation.Amount) Then
					CLog.Add(HEADER & My.Resources.CommonResources.FProcessing_MissingAmount, TLog.ERROR)
					PostMessage(WM_ERROR)
				Else
					nexoSale._payment = New NexoPayment()
					Dim o = nexoSale.Payment
					o.SaleID = GetSaleID()
					o.POIID = GetPOIID()
					PrepareFinancialTransactionIDS(o)
					o.RequestSaleReferenceID = nexoSale.MerchantReferenceID
					o.RequestSaleTransactionID = nexoSale.SaleTransactionID
					o.RequestSaleTransactionTimestamp = nexoSale.SaleTransactionTimestamp
					o.RequestCurrency = nexoSale.Currency.Value
					o.RequestRequestedAmount = requestedOperation.Amount
					o.RequestData.PaymentDataSpecified = True

					'timerBeforeTimeout.Tag = RealPaymentTimer()
					Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag) ', clientSettings)
					currentactiontext = My.Resources.CommonResources.FProcessing_PaymentInProgress
					TestSendResult(result, o.MessageCategory.ToString, currentactiontext & vbCrLf & My.Resources.CommonResources.PleaseWait & "...")

					''if sending is OK and abort is supported the cancel button is made available
					'If Not IsNothing(result) AndAlso nexoSale.POIInUse.SupportsAbort Then
					'	canBeCancelled = True
					'	SetCancelButtonText(False)
					'End If
				End If

			Case WM_REFUND
				CLog.Add(HEADER & "WM_REFUND")
				Me.Text = Caption = $"{My.Resources.CommonResources.FProcessing_RefundRequest} {My.Resources.CommonResources.FromSaleU} {nexoSale.Settings.SaleID}  {My.Resources.CommonResources.FProcessing_TO} {nexoSale.Settings.POIID}"
				If IsNothing(nexoSale.Currency) OrElse String.IsNullOrEmpty(nexoSale.Currency.Value) Then
					CLog.Add(HEADER & My.Resources.CommonResources.FProcessing_MissingCurrency, TLog.ERROR)
					PostMessage(WM_ERROR)
				ElseIf IsNothing(requestedOperation.Amount) Then
					CLog.Add(HEADER & My.Resources.CommonResources.FProcessing_MissingAmount, TLog.ERROR)
					PostMessage(WM_ERROR)
				Else
					nexoSale._refund = New NexoPayment(PaymentTypeEnumeration.Refund)
					Dim o = nexoSale.Refund
					o.SaleID = GetSaleID()
					o.POIID = GetPOIID()
					PrepareFinancialTransactionIDS(o)
					o.RequestSaleReferenceID = nexoSale.MerchantReferenceID
					o.RequestSaleTransactionID = nexoSale.SaleTransactionID
					o.RequestSaleTransactionTimestamp = nexoSale.SaleTransactionTimestamp
					o.RequestOriginalPOITransactionID = nexoSale.OriginalPOITransactionID
					o.RequestOriginalPOITransactionTimestamp = nexoSale.OriginalPOITransactionTimestamp
					o.RequestCurrency = nexoSale.Currency.Value
					o.RequestRequestedAmount = requestedOperation.Amount
					'timerBeforeTimeout.Tag = RealPaymentTimer()
					Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag) ', clientSettings)
					currentactiontext = My.Resources.CommonResources.FProcessing_RefundInProgress
					TestSendResult(result, o.MessageCategory.ToString, currentactiontext & vbCrLf & My.Resources.CommonResources.PleaseWait & "...")
				End If

			Case WM_REVERSAL
				CLog.Add(HEADER & "WM_REVERSAL")
				Me.Text = Caption = $"{My.Resources.CommonResources.FProcessing_ReversalRequest} {My.Resources.CommonResources.FromSaleU} {nexoSale.Settings.SaleID}  {My.Resources.CommonResources.FProcessing_TO} {nexoSale.Settings.POIID}"
				pbCancel.Enabled = canBeCancelled
				nexoSale._reversal = New NexoReversal()
				Dim o = nexoSale.Reversal
				o.SaleID = GetSaleID()
				o.POIID = GetPOIID()
				PrepareFinancialTransactionIDS(o)
				If Not CMisc.IsEnumValue(GetType(ReversalReasonEnumeration), o.RequestReversalReason) Then
					o.RequestReversalReason = ReversalReasonEnumeration.MerchantCancel
				End If
				'If 0 = requestedOperation.Amount Then

				'#If Not DEBUG Then
				o.RequestData.ReversedAmountSpecified = False
				'#Else
				'				o.RequestReversedAmount = requestedOperation.Amount
				'#End If

				'Else
				'	o.RequestReversedAmount = requestedOperation.Amount
				'	o.RequestSaleReferenceID = nexoSale.MerchantReferenceID
				'End If
				o.RequestOriginalPOITransactionID = nexoSale.OriginalPOITransactionID
				o.RequestOriginalPOITransactionTimestamp = nexoSale.OriginalPOITransactionTimestamp
				'timerBeforeTimeout.Tag = RealPaymentTimer()
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag) ', clientSettings)
				currentactiontext = My.Resources.CommonResources.FProcessing_ReversalInProgress
				TestSendResult(result, o.MessageCategory.ToString, currentactiontext & vbCrLf & My.Resources.CommonResources.PleaseWait & "...")

			Case WM_RECONCILIATION
				CLog.Add(HEADER & "WM_RECONCILIATION")
				Me.Text = Caption = $"{My.Resources.CommonResources.FProcessing_ReconciliationRequest} [{nexoSale.ReconciliationType}] {My.Resources.CommonResources.FromSaleU} {nexoSale.Settings.SaleID}  {My.Resources.CommonResources.FProcessing_TO} {nexoSale.Settings.POIID}"
				pbCancel.Enabled = canBeCancelled
				nexoSale._reconciliation = New NexoReconciliation()
				Dim o = nexoSale.Reconciliation
				o.SaleID = GetSaleID()
				o.POIID = GetPOIID()
				o.RequestReconciliationType = nexoSale.ReconciliationType
				o.RequestData.POIReconciliationID = New NexoDigitString(nexoSale.ReconciliationID).Value
				If Not String.IsNullOrEmpty(nexoSale.ReconciliationAcquirerID) Then
					o.RequestData.AcquirerIDAddItem(New NexoDigitString(nexoSale.ReconciliationAcquirerID).Value)
				End If
				'timerBeforeTimeout.Tag = requestedOperation.POI.GeneralTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag) ', clientSettings)
				currentactiontext = My.Resources.CommonResources.FProcessing_ReconciliationInProgress
				TestSendResult(result, o.MessageCategory.ToString, $"{currentactiontext} [{nexoSale.ReconciliationType}] {vbCrLf} {My.Resources.CommonResources.PleaseWait}...")

			Case WM_ABORT
				CLog.Add(HEADER & "WM_ABORT")
				Me.Text = Caption = $"{My.Resources.CommonResources.FProcessing_AbortRequest} [{nexoSale.AbortReason}] {My.Resources.CommonResources.FromSaleU} {nexoSale.Settings.SaleID}  {My.Resources.CommonResources.FProcessing_TO} {nexoSale.Settings.POIID}"
				pbCancel.Enabled = canBeCancelled
				nexoSale._abort = New NexoAbort()
				Dim o = nexoSale.Abort
				o.AbortSaleID = GetSaleID()
				o.SaleID = o.AbortSaleID
				o.AbortPOIID = GetPOIID()
				o.POIID = o.AbortPOIID
				o.AbortReason = nexoSale.AbortReason
				o.AbortMessageCategory = nexoSale._payment.MessageCategory
				o.AbortServiceID = nexoSale._payment.ServiceID
				o.AbortDeviceID = nexoSale._payment.DeviceID
				'timerBeforeTimeout.Tag = requestedOperation.POI.GeneralTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag) ', clientSettings)
				currentactiontext = My.Resources.CommonResources.FProcessing_AbortInProgress
				TestSendResult(result, o.MessageCategory.ToString, $"{currentactiontext} [{nexoSale.AbortReason}] {vbCrLf} {My.Resources.CommonResources.PleaseWait}...", True)

			Case WM_CHECK_READ
				CLog.Add(HEADER & "WM_CHECK_READ")
				Me.Text = Caption = $"{My.Resources.CommonResources.FProcessing_ReadCheckRequest} {My.Resources.CommonResources.FromSaleU} {nexoSale.Settings.SaleID}  {My.Resources.CommonResources.FProcessing_TO} {nexoSale.Settings.POIID}"
				pbCancel.Enabled = canBeCancelled
				nexoSale._input = New NexoDeviceInput()
				Dim o = nexoSale.Input
				o.SaleID = GetSaleID()
				o.POIID = GetPOIID()
				o.RequestDevice = DeviceEnumeration.CashierInput
				o.RequestInfoQualify = InfoQualifyEnumeration.Document
				o.RequestInputCommand = InputCommandEnumeration.TextString
				timerBeforeTimeout.Tag = requestedOperation.POI.CheckTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag) ', clientSettings)
				currentactiontext = My.Resources.CommonResources.FProcessing_ReadCheckInProgress
				TestSendResult(result, o.MessageCategory.ToString, currentactiontext & vbCrLf & My.Resources.CommonResources.PleaseWait)

			Case WM_CHECK_PRINT
				CLog.Add(HEADER & "WM_CHECK_PRINT")
				Me.Text = Caption = $"{My.Resources.CommonResources.FProcessing_PrintCheckRequest} {My.Resources.CommonResources.FromSaleU} {nexoSale.Settings.SaleID}  {My.Resources.CommonResources.FProcessing_TO} {nexoSale.Settings.POIID}"
				pbCancel.Enabled = canBeCancelled
				nexoSale._print = New NexoDevicePrint()
				Dim o = nexoSale.Print
				o.SaleID = GetSaleID()
				o.POIID = GetPOIID()
				o.RequestDocumentQualifier = DocumentQualifierEnumeration.Document
				o.RequestResponseMode = ResponseModeEnumeration.PrintEnd
				o.RequestOutputFormat = OutputFormatEnumeration.Text
				'set text to print
				Dim texttoprint As New OutputTextType() With {.Value = Encoding.UTF8.GetString(Encoding.UTF8.GetBytes(PrepareStringToPrint(New CheckToPrint With {.MerchantName = nexoSale.MerchantName, .MerchantAddress = nexoSale.MerchantAddress, .CheckIndex = nexoSale.CheckIndex, .Signature = nexoSale.CheckAuthorisationSignature, .ResponseCode = nexoSale.CheckAuthorisationResponseCode}, requestedOperation.Amount).ToUpper))}
				o.RequestData.PrintOutput.OutputContent.OutputTextAddItem(texttoprint)
				timerBeforeTimeout.Tag = requestedOperation.POI.CheckTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag) ', clientSettings)
				currentactiontext = My.Resources.CommonResources.FProcessing_PrintCheckInProgress
				TestSendResult(result, o.MessageCategory.ToString, currentactiontext & vbCrLf & My.Resources.CommonResources.PleaseWait)
				If 0 < nexoSale.CheckIndex Then nexoSale.CheckIndex += 1

			Case WM_RECEIVED_NOTIFICATION

				CLog.Add(HEADER & "WM_RECEIVED_NOTIFICATION")
				If RESULT_OK = m.WParam Then
					'do nothing and keep ongoing processing
					CLog.TRACE($"Notification has no impact on current {currentAction}")
				Else
					stackOfActions.Clear()
					'check current action and decide what to do next
					If nexoSale.POIInUse.SupportsAbort AndAlso
						(currentAction = Action.Payment OrElse
						currentAction = Action.Refund OrElse
						currentAction = Action.Reconciliation) Then
						'abort current operation
						CLog.WARNING($"Notification brings to abort current {currentAction}")
						stackOfActions.Push(Action.Abort)
						nexoSale.AbortReason = "Abort following notification"
						'run the next action
						PostMessage(WM_ACTION)
					Else
						'set the text of the close button indicating processing can be cancelled
						'CLog.WARNING($"Notification brings to stopping processing of current {currentAction} [POI supports abort = {nexoSale.POIInUse.SupportsAbort}]")
						'pbCancel.Text = CANCEL_BUTTON_TEXT
						'isInError = True
						'nexoSale.NexoClient.Error = True
						'PostMessage(WM_AUTOCLOSE_START)
					End If
				End If

			Case WM_RECEIVED_REQUEST
				CLog.Add(HEADER & "WM_RECEIVED_REQUEST")

			Case WM_RECEIVED_REPLY
				CLog.Add(HEADER & "WM_RECEIVED_REPLY")
				If 0 < stackOfActions.Count Then
					pbCancel.Text = CANCEL_BUTTON_TEXT
					'run the next action
					PostMessage(WM_ACTION)
				Else
					isInError = Not CBool(m.WParam)
					PostMessage(WM_AUTOCLOSE_START)
				End If

			Case WM_AUTOCLOSE_START
				CLog.Add(HEADER & "WM_AUTOCLOSE_START")
				PostMessage(FConfirm.WM_CANCEL_CANCEL, wnd:=f)
				SetMessageColors()
				pbCancel.Enabled = True
				pbCancel.Focus()
				If (nexoSale.Settings.Autoclose AndAlso Not isInError) OrElse (isInError AndAlso nexoSale.Settings.Autoclose And Not nexoSale.Settings.NoAutocloseOnError) Then
					timerBeforeAutoClose = New Windows.Forms.Timer
					timerBeforeAutoClose.Interval = ONE_SECOND
					timerBeforeAutoClose.Tag = nexoSale.Settings.AutocloseDelay
					SetCancelButtonText(True)
					timerBeforeAutoClose.Start()
				Else
					SetCancelButtonText(False)
				End If

			Case WM_AUTOCLOSE
				CLog.Add(HEADER & "WM_AUTOCLOSE")
				PostMessage(WM_END)

			Case WM_END
				CLog.Add(HEADER & "WM_END")
				Close()

		End Select
		MyBase.WndProc(m)
	End Sub

	Public Sub OnReceivedReply(xml As String, obj As NexoObjectToProcess, tcp As TcpClient, thread As CThread, o As Object)
		isComplete = True
		canBeCancelled = False
		timerBeforeTimeout.Stop()
		Dim res As Boolean = obj.CurrentObject.Success
		Dim replyIsKnown As Boolean = True
		Dim printReceipts As Boolean = False

		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.information, .Message = MessageDescription(obj.Item, xml)})

		'Dim res As ResultEnumeration = CMisc.GetEnumValue(GetType(ResultEnumeration), obj.CurrentObject.Response.Result)
		If MessageCategoryEnumeration.Login = obj.Category Then
			'processing login
			Dim nxo As NexoLogin = obj.CurrentObject
			nexoSale._islogged = nxo.Success
			If nexoSale._islogged Then
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = My.Resources.CommonResources.FProcessing_SaleConnected})
			Else
				'unable to connect no more actions to start
				stackOfActions.Clear()
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = My.Resources.CommonResources.FProcessing_SaleFailedToConnect & vbCrLf & DescribeError(nxo.Response)})
			End If

		ElseIf MessageCategoryEnumeration.Logout = obj.Category Then
			'processing logout
			Dim nxo As NexoLogout = obj.CurrentObject
			nexoSale._islogged = nexoSale._islogged And Not nxo.Success
			If Not nexoSale._islogged Then
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = My.Resources.CommonResources.FProcessing_SaleDeconnected})
			Else
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = My.Resources.CommonResources.FProcessing_SaleFailedToDeconnect & vbCrLf & DescribeError(nxo.Response)})
			End If
			'after a logout no more actions to start
			stackOfActions.Clear()
			'this is a logout, whatever happened let's consider it OK
			res = True

		ElseIf MessageCategoryEnumeration.Payment = obj.Category Then
			Try
				Dim nxo As NexoPayment = obj.CurrentObject
				Dim act As String = nxo.PaymentType.ToString
				'processing financial operation
				If PaymentTypeEnumeration.Normal = nxo.PaymentType Then
					'processing payment
					nexoSale._receiptavailable = 0 <> nxo.ReplyData.PaymentReceiptLength
					act = My.Resources.CommonResources.Payment
					If nxo.Success Then
						message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = $"{act} {My.Resources.CommonResources.Accepted}"})
						nexoSale._poitransactionid = nxo.ReplyPOITransactionID
						nexoSale._poitransactiontimestamp = nxo.ReplyPOITransactionTimestamp
						printReceipts = requestedOperation.POI.PrintReceipt
						nexoSale.Brand = nexoSale.GetSchemeFromAvailableData(nxo)
						nexoSale.MaskedPAN = nexoSale.GetPANFromAvailableData(nxo)
					Else
						'test reason of failure
						If nxo.Refusal AndAlso nxo.LoggedOut Then
							'not logged, let's try to login before trying again
							stackOfActions.Push(Action.Payment)
							stackOfActions.Push(Action.Login)
							'we're going through another set of commands, let's consider it OK
							res = True
						Else
							stackOfActions.Clear()
							message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = $"{act} {My.Resources.CommonResources.Declined}" & vbCrLf & DescribeError(nxo.Response)})
							printReceipts = requestedOperation.POI.PrintReceipt
						End If
					End If
					nexoSale.LastReceipt = nxo.ReplyData.PaymentReceipt
					If printReceipts Then
						PreparePDF(New Receipts With {.Header = nxo.Reply.MessageHeader, .POITransactionID = nxo.ReplyData.POIData.POITransactionID, .Receipts = nxo.ReplyData.PaymentReceipt, .SaleTimestamp = nxo.RequestSaleTransactionTimestamp, .POITimestamp = nxo.ReplyPOITransactionTimestamp})
					End If

				ElseIf PaymentTypeEnumeration.Refund = nxo.PaymentType Then
					'processing refund
					nexoSale._receiptavailable = 0 <> nxo.ReplyData.PaymentReceiptLength
					If nxo.Success Then
						message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = $"{act} {My.Resources.CommonResources.Accepted}"})
						nexoSale._poitransactionid = nxo.ReplyPOITransactionID
						nexoSale._poitransactiontimestamp = nxo.ReplyPOITransactionTimestamp
						nexoSale.Brand = nexoSale.GetSchemeFromAvailableData(nxo)
						nexoSale.MaskedPAN = nexoSale.GetPANFromAvailableData(nxo)
					Else
						'test reason of failure
						If nxo.Refusal AndAlso nxo.LoggedOut Then
							'not logged, let's try to login before trying again
							stackOfActions.Push(Action.Refund)
							stackOfActions.Push(Action.Login)
							'we're going through another set of commands, let's consider it OK
							res = True
						Else
							stackOfActions.Clear()
							message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = $"{act} {My.Resources.CommonResources.Declined}" & vbCrLf & DescribeError(nxo.Response)})
						End If
					End If
				End If

			Catch ex As Exception
				res = False
				stackOfActions.Clear()
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = My.Resources.CommonResources.FProcessing_InvalidPaymentProcessing})
			End Try

		ElseIf MessageCategoryEnumeration.Reversal = obj.Category Then
			Try
				'processing reversal
				Dim nxo As NexoReversal = obj.CurrentObject
				nexoSale._receiptavailable = 0 <> nxo.ReplyData.PaymentReceiptLength
				If res Then
					message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = My.Resources.CommonResources.FProcessing_TransactionReversed})
				Else
					'test reason of failure
					If nxo.Refusal AndAlso nxo.LoggedOut Then
						'not logged, let's try to login before trying again
						stackOfActions.Push(Action.Reversal)
						stackOfActions.Push(Action.Login)
						'we're going through another set of commands, let's consider it OK
						res = True
					Else
						stackOfActions.Clear()
						message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = My.Resources.CommonResources.FProcessing_TransactionNotReversed & vbCrLf & DescribeError(nxo.Response)})
					End If
				End If
			Catch ex As Exception
				res = False
				stackOfActions.Clear()
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = My.Resources.CommonResources.FProcessing_InvalidCancellationProcessing})
			End Try

			'ElseIf MessageCategoryEnumeration.Input = obj.Category Then
			'	Dim nxo As NexoDeviceInput = obj.CurrentObject
			'	If res Then
			'		Dim cmc7 As String = nxo.ReplyData.InputResult.Input.TextInput
			'		cmc7 = cmc7.Replace("&lt;", "D") 'S3
			'		cmc7 = cmc7.Replace("<", "D") 'S3
			'		cmc7 = cmc7.Replace(">", "F") 'S5
			'		cmc7 = cmc7.Replace(":", "B") 'S1
			'		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "The check has been successfully read" & vbCrLf & "CheckID: " & cmc7})
			'	Else
			'		stackOfActions.Clear()
			'		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "The check has not been read" & vbCrLf & DescribeError(nxo.Response)})
			'	End If

			'ElseIf MessageCategoryEnumeration.Print = obj.Category Then
			'	Dim nxo As NexoDevicePrint = obj.CurrentObject
			'	If res Then
			'		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "The check has been successfully printed"})
			'	Else
			'		stackOfActions.Clear()
			'		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "The check has not been printed" & vbCrLf & DescribeError(nxo.Response)})
			'	End If

		ElseIf MessageCategoryEnumeration.Reconciliation = obj.Category Then
			Try
				Dim nxo As NexoReconciliation = obj.CurrentObject
				If res Then
					message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = $"{obj.Category} {My.Resources.CommonResources.FProcessing_ProcessedSuccessfully}"})
				Else
					stackOfActions.Clear()
					message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = $"{obj.Category} {My.Resources.CommonResources.FProcessing_NotProcessedSuccessfully}" & vbCrLf & DescribeError(nxo.Response)})
				End If
			Catch ex As Exception
				res = False
				stackOfActions.Clear()
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = My.Resources.CommonResources.FProcessing_InvalidReconciliationProcessing})
			End Try
		Else
			replyIsKnown = False
		End If

		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.postMessage, .WM = WM_RECEIVED_REPLY, .wParam = res})
	End Sub

	Public Sub OnReceivedRequest(xml As String, obj As NexoObjectToProcess, tcp As TcpClient, thread As CThread, o As Object)
		Dim wParam As Integer = RESULT_OK

		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.requestReceived, .Message = $"{My.Resources.CommonResources.Received} {MessageDescription(obj.Item, xml)}"})

		Try
			'Dim res As ResultEnumeration = CMisc.GetEnumValue(GetType(ResultEnumeration), obj.CurrentObject.Response.Result)
			If MessageCategoryEnumeration.Display = obj.Category Then
				'processing display message
				Dim nxo As NexoDeviceDisplay = obj.CurrentObject
				'fetch the message to display, initialising it to nothing to display and looping on all messages to display
				Dim s As String = Nothing
				For i As Integer = 0 To nxo.RequestData.DisplayOutputLength - 1
					Dim ort As New OutputResultType With {.Device = nxo.RequestData.DisplayOutput(i).Device, .InfoQualify = nxo.RequestData.DisplayOutput(i).InfoQualify, .Response = New ResponseType With {.Result = ResultEnumeration.Success.ToString}}
					'it has to be a message to display on the cashier's display
					If 0 = String.Compare(DeviceEnumeration.CashierDisplay.ToString, nxo.RequestData.DisplayOutput(i).Device, True) Then
						'if it is some text
						If 0 = String.Compare(OutputFormatEnumeration.Text.ToString, nxo.RequestData.DisplayOutput(i).OutputContent.OutputFormat, True) _
							AndAlso 0 <> nxo.RequestData.DisplayOutput(i).OutputContent.OutputTextLength Then
							'loop on all lines to display
							Dim sq As String = Nothing
							For j As Integer = 0 To nxo.RequestData.DisplayOutput(i).OutputContent.OutputTextLength - 1
								If Not nxo.RequestData.DisplayOutput(i).OutputContent.OutputText(j).Value.IsNullOrEmpty() Then
									sq &= vbCrLf & nxo.RequestData.DisplayOutput(i).OutputContent.OutputText(j).Value.ToUpper
								End If
							Next
							'add the text to display to the current text to display
							s &= sq
						ElseIf 0 = String.Compare(OutputFormatEnumeration.BarCode.ToString, nxo.RequestData.DisplayOutput(i).OutputContent.OutputFormat, True) _
							AndAlso Not IsNothing(nxo.RequestData.DisplayOutput(i).OutputContent.OutputBarcode) Then
							s &= vbCrLf & My.Resources.CommonResources.FProcessing_DisplayingBarcode
						ElseIf 0 = String.Compare(OutputFormatEnumeration.MessageRef.ToString, nxo.RequestData.DisplayOutput(i).OutputContent.OutputFormat, True) _
							AndAlso Not IsNothing(nxo.RequestData.DisplayOutput(i).OutputContent.PredefinedContent) Then
							Dim sq As String = My.Resources.CommonResources.FProcessing_DisplayingMessageRef.Replace("%1", nxo.RequestData.DisplayOutput(i).OutputContent.PredefinedContent.ReferenceID)
							s &= vbCrLf & sq
						ElseIf 0 = String.Compare(OutputFormatEnumeration.XHTML.ToString, nxo.RequestData.DisplayOutput(i).OutputContent.OutputFormat, True) _
							AndAlso Not IsNothing(nxo.RequestData.DisplayOutput(i).OutputContent.OutputXHTML) Then
							s &= vbCrLf & My.Resources.CommonResources.FProcessing_DisplayingXHTML
						Else
							'the message can't be understood
							ort.Response.Result = ResultEnumeration.Failure.ToString
							ort.Response.ErrorCondition = ErrorConditionEnumeration.Refusal.ToString
							ort.Response.AdditionalResponse = ErrorConditionEnumeration.Refusal.ToString
						End If
					Else 'If 0 = String.Compare(DeviceEnumeration.CashierDisplay.ToString, nxo.RequestData.DisplayOutput(i).Device, True) Then
						'the message won't be displayed
						ort.Response.Result = ResultEnumeration.Failure.ToString
						ort.Response.ErrorCondition = ErrorConditionEnumeration.Refusal.ToString
						ort.Response.AdditionalResponse = My.Resources.CommonResources.FProcessing_InvalidDisplayDevice
					End If

					'miscellaneous processing
					If nexoSale.Settings.DeviceDisplayAlwaysReturnsOK Then
						ort.Response.Result = ResultEnumeration.Success.ToString
						ort.Response.ErrorCondition = Nothing
						ort.Response.AdditionalResponse = My.Resources.CommonResources.FProcessing_AdditionalResponseMiscellaneouslyModified
					End If

					'add the result of displaying this message
					nxo.ReplyData.OutputResultAddItem(ort)
				Next
				'if there's a message to display, let's do it
				If (Not s.IsNullOrEmpty) Then
					message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = My.Resources.CommonResources.FProcessing_MessageOnPOI & s})
				End If
			End If
		Catch ex As Exception
			CLog.EXCEPT(ex)
		End Try

		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.postMessage, .WM = WM_RECEIVED_REQUEST, .wParam = wParam})
	End Sub

	Public Sub OnReceivedNotification(xml As String, obj As NexoObjectToProcess, tcp As TcpClient, thread As CThread, o As Object)
		Dim wParam As Integer = RESULT_OK

		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.notificationReceived, .Message = $"{My.Resources.CommonResources.Received} {MessageDescription(obj.Item, xml)}"})

		Try
			Dim notification As String = Nothing
			Dim nxo As NexoEvent = obj.CurrentObject
			notification = $"[{nxo.EventToNotify}] {nxo.EventDetails}"
			For i As Integer = 0 To nxo.RequestData.DisplayOutput.OutputContent.OutputTextLength - 1
				If Not nxo.RequestData.DisplayOutput.OutputContent.OutputTextGetItem(i).Value.IsNullOrEmpty() Then
					notification &= vbCrLf & $"{nxo.RequestData.DisplayOutput.OutputContent.OutputTextGetItem(i).Value}"
				End If
			Next
			CLog.TRACE($"Received an {nxo.EventToNotify} notification - Message: {notification}")

			'decide what to do depending on the received event
			If EventToNotifyEnumeration.Completed = nxo.EventToNotify Then
				'an abort message arrived too late to be processed
				wParam = RESULT_OK
				CLog.TRACE($"Abort has been cancelled by POI")
			ElseIf nexoSale.Settings.NotificationAlwaysReturnsOK Then
				wParam = RESULT_OK
				CLog.TRACE($"Notification processed through miscellaneous processing")
			ElseIf 0 = nxo.RequestData.EventToNotify.CompareTo(EventToNotifyEnumeration.OutOfOrder.ToString) OrElse
					0 = nxo.RequestData.EventToNotify.CompareTo(EventToNotifyEnumeration.Reject.ToString) OrElse
					0 = nxo.RequestData.EventToNotify.CompareTo(EventToNotifyEnumeration.SecurityAlarm.ToString) Then
				wParam = RESULT_KO
				CLog.TRACE($"Stopping processing on {nxo.EventToNotify} notification")
			Else
				wParam = RESULT_OK
				CLog.TRACE($"Notification processed normally")
			End If
		Catch ex As Exception
			CLog.EXCEPT(ex)
		End Try

		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.postMessage, .WM = WM_RECEIVED_NOTIFICATION, .wParam = wParam})
	End Sub

	Private Sub ResetCancelButton()
		If 0 = stackOfActions.Count Then
			message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.resetCancelButton})
		Else
			message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.resetCancelButton})
		End If
	End Sub

	Private Sub PrepareFinancialTransactionIDS(o As NexoObject)
		nexoSale.MerchantReferenceID = o.SetDefaultStringValue(nexoSale.MerchantReferenceID, NexoAutoID.ID)
		If nexoSale.Settings.ReuseMerchantReferenceIDAsTransactionID Then
			nexoSale._saletransactionid = nexoSale.MerchantReferenceID
		Else
			nexoSale._saletransactionid = NexoAutoID.ID
		End If
		nexoSale._saletransactiontimestamp = NexoDateTime.CurrentDateTime
		nexoSale._poitransactionid = Nothing
		nexoSale._poitransactiontimestamp = Nothing
	End Sub

	Private Sub SetMessageColors()
		'no more actions, let's display the reseult
		If Not isInError Then
			message.BackColor = Color.Green
			message.ForeColor = Color.Yellow
			MyDialogResult = DialogResult.Yes
		Else
			message.BackColor = Color.Red
			message.ForeColor = Color.Yellow
			If isServiceStarted Then
				If hasBeenCancelled Then
					MyDialogResult = DialogResult.Cancel
				ElseIf hasTimedOut Then
					MyDialogResult = DialogResult.Abort
				ElseIf Not isStarted Then
					MyDialogResult = DialogResult.Retry
				Else
					MyDialogResult = DialogResult.No
				End If
			Else
				'If hasTimedOut Then
				'	MyDialogResult = DialogResult.Abort
				'Else
				MyDialogResult = DialogResult.Retry
				'End If
			End If
			CLog.Add(HEADER & $"{MyDialogResult}")
		End If
	End Sub

	Private Function GetSaleID() As String
		If nexoSale.Settings.SaleIDUseIP Then Return CStream.Localhost Else Return nexoSale.SaleID
	End Function

	Private Function GetPOIID() As String
		If nexoSale.Settings.POIIDUseIP AndAlso Not String.IsNullOrEmpty(requestedOperation.POI.ServerIP) Then Return requestedOperation.POI.ServerIP Else Return nexoSale.POIID
	End Function

	Private Sub TestSendResult(result As NexoRetailerClientHandle, cat As String, msg As String, Optional wait As Boolean = False)
		If IsNothing(result) Then
			message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.information, .Message = CLog.Add($"{My.Resources.CommonResources.FailedToSend} {cat}, {My.Resources.CommonResources.FProcessing_PleaseCheckNetwork}")})
			PostMessage(WM_ERROR)
		ElseIf Not wait Then
			message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = CLog.Add(msg)})
			PostMessage(WM_TIMEOUT_START)
		Else
			message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = CLog.Add(msg)})
		End If
	End Sub

	Private Function MessageDescription(o As NexoItem, xml As String)
		Return $"{o.Category.ToString.ToUpper} {o.Type.ToString.ToUpper} [{xml.Length}]" & vbCrLf & xml
	End Function

	Private Function DescribeError(response As ResponseType) As String
		DescribeError = $"{My.Resources.CommonResources.NexoErrorInformation}: {response.AdditionalResponse}"
	End Function

	Public Sub OnSentRequestStatusChanged(xml As String, obj As NexoObjectToProcess, status As NexoMessageStatus, tcp As TcpClient, thread As CThread, o As Object)
		'Dim hasTimedOut As Boolean = NexoMessageStatus.timeout = status
		hasTimedOut = NexoMessageStatus.timeout = status
		If hasTimedOut Then
			message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.timerTimout, .Message = My.Resources.CommonResources.FProcessing_OperationTimedout})
			Dim msg As String = String.Empty
			'verifying current processing
			If MessageCategoryEnumeration.Login = obj.Category Then
			ElseIf MessageCategoryEnumeration.Logout = obj.Category Then
			ElseIf MessageCategoryEnumeration.Payment = obj.Category Then
			ElseIf MessageCategoryEnumeration.Reversal = obj.Category Then
			End If
			message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.postMessage, .WM = WM_TIMEOUT})
		End If
	End Sub

	Public Sub OnSend(xml As String, item As NexoItem, tcp As TcpClient, thread As CThread, threadData As CThreadData, o As Object)
		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.information, .Message = MessageDescription(item, xml)})
	End Sub

	Private Sub pbCancel_Click(sender As Object, e As EventArgs) Handles pbCancel.Click
		If canBeCancelled AndAlso DialogResult.None = MyDialogResult Then
			PostMessage(WM_CANCEL)
		Else
			'arrived it can only be a close button which was pressed
			PostMessage(WM_END)
		End If
	End Sub

	Private Sub timerBeforeTimeout_Tick(sender As Object, e As EventArgs) Handles timerBeforeTimeout.Tick
		'allows displaying remaining time before timeout
		If Not hasTimedOut AndAlso 0 < CInt(timerBeforeTimeout.Tag) Then
			timerBeforeTimeout.Tag = CInt(timerBeforeTimeout.Tag) - 1
		Else
			hasTimedOut = True
			timerBeforeTimeout.Tag = 0
			timerBeforeTimeout.Stop()
			timerBeforeTimeout.Dispose()
			pbCancel.Enabled = True
		End If
		If Not hasTimedOut Then
			pbCancel.Text = $"{CANCEL_BUTTON_TEXT} {My.Resources.CommonResources.InWord} {CInt(timerBeforeTimeout.Tag)} {My.Resources.CommonResources.Seconds}"
		Else
			pbCancel.Text = $"{My.Resources.CommonResources.Button_AboutToClose} {My.Resources.CommonResources.InWord} {CInt(timerBeforeTimeout.Tag)} {My.Resources.CommonResources.Seconds}"
		End If
	End Sub

	Private Sub StartAutocloseTimer()
		pbCancel.Focus()
		If (hasTimedOut OrElse isComplete) AndAlso nexoSale.Settings.Autoclose Then
			SetCancelButtonText(True)
			timerBeforeAutoClose = New Windows.Forms.Timer
			timerBeforeAutoClose.Interval = ONE_SECOND
			timerBeforeAutoClose.Tag = nexoSale.Settings.AutocloseDelay
		Else
			SetCancelButtonText(False)
		End If
	End Sub

	Private Sub SetCancelButtonText(autoclose As Boolean)
		If autoclose Then
			pbCancel.Text = $"{My.Resources.CommonResources.Button_AboutToClose} {My.Resources.CommonResources.InWord} {CInt(timerBeforeAutoClose.Tag)} {My.Resources.CommonResources.Seconds}"
		ElseIf canBeCancelled Then
			pbCancel.Text = CANCEL_BUTTON_TEXT
		Else
			canBeCancelled = False
			pbCancel.Text = CLOSE_BUTTON_TEXT
		End If
	End Sub

	'display to delay before window autoclose
	Private Sub timerBeforeAutoClose_Tick(sender As Object, e As EventArgs) Handles timerBeforeAutoClose.Tick
		If 0 <= CInt(timerBeforeAutoClose.Tag) Then
			SetCancelButtonText(True)
			timerBeforeAutoClose.Tag = CInt(timerBeforeAutoClose.Tag) - 1
		Else
			Caption = My.Resources.CommonResources.FProcessing_AutomaticallyClosingWindow
			Close()
		End If
	End Sub

	'display the global duration of the operation until the window is closed
	Private Sub timerGlobal_Tick(sender As Object, e As EventArgs) Handles timerGlobal.Tick
		Dim minutes As Integer
		Dim hours As Integer
		Dim seconds As Integer
		Dim delay As String = ""
		globalTicks += 1
		hours = (globalTicks \ 60) \ 60
		minutes = (globalTicks - (hours * 60)) \ 60
		seconds = globalTicks Mod 60
		If hours <> 0 Then delay = $"{hours} {My.Resources.CommonResources.Hours}"
		If minutes <> 0 Then delay &= $"{minutes} {My.Resources.CommonResources.Minutes}"
		delay &= $"{seconds} {My.Resources.CommonResources.Seconds}"
		Me.Text = Caption & " - " & delay
	End Sub

	Private Sub FProcessing_FormClosing(sender As Object, e As FormClosingEventArgs) Handles MyBase.FormClosing
		timerBeforeAutoClose.Stop()
		timerBeforeTimeout.Stop()
		timerGlobal.Stop()
	End Sub

	Private Sub price_DoubleClick(sender As Object, e As EventArgs) Handles price.DoubleClick, message.DoubleClick, information.DoubleClick
		If sender Is price Then priceb = Not infob And Not msgb
		If sender Is information Then infob = priceb And Not msgb
		If sender Is message Then msgb = priceb And (infob Or nexoSale.Settings.HideNexoMessagesWhenProcessing)
		If priceb AndAlso (infob OrElse nexoSale.Settings.HideNexoMessagesWhenProcessing) AndAlso msgb Then
			f = New FConfirm
			If nexoSale.Settings.UseDate Or String.IsNullOrEmpty(nexoSale.Settings.AdminCode) Then
				f.Code = Nothing
			Else
				f.Code = nexoSale.Settings.AdminCode
			End If
			Dim DialogResult As DialogResult = f.ShowDialog()
			f.Dispose()
			f = Nothing
			If DialogResult.OK = DialogResult Then
				PostMessage(WM_CANCEL)
			End If
			If TypeOf sender Is TextBox Then
				DirectCast(sender, TextBox).SelectionLength = 0
			End If
		End If
		pbCancel.Focus()
	End Sub

	Private Sub FProcessing_FormClosed(sender As Object, e As FormClosedEventArgs) Handles MyBase.FormClosed
		CLog.Add(HEADER & "RESULT CODE: " & DialogResult.ToString)
		nexoSale.ResetOwner(Me)
		DialogResult = MyDialogResult
	End Sub
#End Region

#Region "PDF and print"
	Private Function PrepareStringToPrint(check As CheckToPrint, amount As UInteger) As String
		Const SEP As String = "*"
		Dim maxprintwithamount As Integer = 80
		Dim maxprintwithoutamount As Integer = 60
		Dim minprintlocation As Integer = 1
		Dim dt As DateTime = DateTime.Now
		Dim sdt As String = dt.ToString("dd/MM/yy") & SEP
		Dim samount As String = SEP & (amount / 100).ToString("0.00") & SEP
		Dim toprint As String = Nothing
		Dim fmt As String = Nothing
		Dim sindex As String = Nothing

		If 0 < check.CheckIndex Then
			sindex = check.CheckIndex.ToString("00") & " "
		End If

		If CheckAuthorisationType.Guarantee = check.AuthorisationType Then
			'guarantee number + guarantee rc + amount + check index + space
			fmt = "  {0,6}" + SEP + "{1,3}" + samount + sindex
			toprint = String.Format(fmt, New Object() {check.Signature, check.ResponseCode})
		ElseIf CheckAuthorisationType.FNCI = check.AuthorisationType Then
			'fnci number + fnci rc + amount + check index + space
			fmt = "  {0,4}" + SEP + "{1,2}" + samount + sindex
			toprint = String.Format(fmt, New Object() {check.Signature, check.ResponseCode})
		Else
			toprint = $"  {samount}{sindex}"
		End If

		'add merchant name
		Dim maxprint As Integer = maxprintwithoutamount - toprint.Length - SEP.Length - sdt.Length - minprintlocation
		toprint &= check.MerchantName.Substring(0, Math.Min(maxprint, check.MerchantName.Length)) + SEP + sdt
		'add merchant location
		maxprint = maxprintwithoutamount - toprint.Length
		toprint &= check.MerchantAddress.Substring(0, Math.Min(maxprint, check.MerchantAddress.Length))
		'align on right boundary
		toprint &= String.Format("{0," + (maxprintwithoutamount - toprint.Length).ToString() + "}", String.Empty)
		'add amount
		fmt = "{0," + (maxprintwithamount - maxprintwithoutamount).ToString() + "}"
		toprint &= String.Format(fmt, New Object() {samount})
		'trim the resulting string
		toprint = toprint.Trim()
		'suppress diacritic characters
		Try
			toprint = Encoding.UTF8.GetString(Encoding.GetEncoding("ISO-8859-8").GetBytes(toprint))
		Catch ex As Exception
		End Try
		check.TextPrinted = toprint
		Return toprint
	End Function

	Private Function GetReceiptRect(receipt As PaymentReceiptType, page As HPDFPage) As HPDFSizeStruct
		Dim lineSpacing = page.CurrentFontSize
		GetReceiptRect = New HPDFSizeStruct With {.Width = 0, .Height = 0}
		If Not IsNothing(receipt.OutputContent) AndAlso Not IsNothing(receipt.OutputContent.OutputText) Then
			'verify lines
			Dim newt As New OutputContentType
			Dim crandlf = New Char() {vbCr, vbLf}
			For i As Integer = 0 To receipt.OutputContent.OutputTextLength - 1
				Dim s As String = receipt.OutputContent.OutputTextGetItem(i).Value
				Dim previousc As Char = ""
				Do
					Dim pos = s.IndexOfAny(crandlf)
					If -1 <> pos Then
						Dim currentc = s.Chars(pos)
						Dim v = s.Substring(0, pos)
						'add the line only if
						'- there are some characters
						'- OR no characters but the control character to go to next line is the first one (CR or LF)
						'- OR no characters but the control character to go to next line is not the first one but is not différent from the previous one (CRLF won't give 2 lines but 1 while CRCR or LFLF give 2 lines)
						If Not String.IsNullOrEmpty(v) OrElse (String.IsNullOrEmpty(v) AndAlso (previousc = "" OrElse previousc = currentc)) Then
							newt.OutputTextAddItem(New OutputTextType(receipt.OutputContent.OutputTextGetItem(i)) With {.Value = v})
						End If
						previousc = currentc
						If s.Length - 1 > pos Then
							s = s.Substring(pos + 1)
						Else
							s = Nothing
						End If
					Else
						'If Not String.IsNullOrEmpty(s) Then
						newt.OutputTextAddItem(New OutputTextType(receipt.OutputContent.OutputTextGetItem(i)) With {.Value = s})
						s = Nothing
						'End If
					End If
				Loop Until String.IsNullOrEmpty(s)
			Next
			receipt.OutputContent = newt
			For i = 0 To receipt.OutputContent.OutputText.Length - 1
				GetReceiptRect.Width = Math.Max(GetReceiptRect.Width, page.GetTextWidth(receipt.OutputContent.OutputText(i).Value))
				GetReceiptRect.Height += lineSpacing
			Next
		End If
		'If (GetReceiptRect.Width > page.Width) Then GetReceiptRect.Reset()
		'If (GetReceiptRect.Height > page.Height) Then GetReceiptRect.Reset()
	End Function

	Private Function CreateReceiptPDF(analysis As ReceiptAnalysis, receipts As Receipts) As Boolean
		Try
			'if no receipt to print return immediately
			If 0 = analysis.receipt.OutputContent.OutputTextLength Then Return False

			Dim receiptFontSize = 12
			Dim margin = 10.0F

			'create the PDF document and load fonts
			Dim document As New HPDFDocument
			Dim receiptFont As HPDFFont = document.GetFont(StandardFonts.Courier, HPDFSingleByteEncoders.WinAnsiEncoding.ToString)

			'create the pdf page to write the receipt into
			Dim page = document.AddPage()

			'prepare receipt itself
			page.SetFont(receiptFont, receiptFontSize)
			Dim receiptRect = GetReceiptRect(analysis.receipt, page)
			If Not receiptRect.IsNull Then
				'get final text width for outline
				Dim textWidth = receiptRect.Width

				'resize the page
				page.SetSize(HPDFPageSizes.A4, HPDFPageDirections.Portrait)
				page.Height = receiptRect.Height + margin * 2
				page.Width = textWidth + margin * 2

				'arrived here we can determine the position and size of the logo (if any)
				Dim fi As FileInfo

				'print the logo
				If DocumentQualifierEnumeration.CustomerReceipt = analysis.target AndAlso Not String.IsNullOrEmpty(nexoSale.Settings.Picture) Then
					fi = New FileInfo(nexoSale.Settings.Picture)
					If fi.Exists Then
						Dim image As HPDFImage = Nothing
						Select Case fi.Extension.ToLower
							Case ".png"
								image = document.LoadPNGImageFromFile(nexoSale.Settings.Picture)
							Case ".jpg", ".jpeg"
								image = document.LoadJpegImageFromFile(nexoSale.Settings.Picture)
								'Case ".bmp"
								'	image = document.LoadRawImageFromFile(nexoSale.Settings.Picture)
						End Select
						If Not IsNothing(image) Then
							Dim size As New HPDFSizeStruct
							'determine ratio between width and size of the image
							Dim imagewidth As Single = textWidth + margin * 2
							Dim f As Single = imagewidth / image.GetWidth
							Dim imageheight As Single = f * image.GetHeight

							'resize the page
							page.Height = receiptRect.Height + imageheight + margin * 3

							page.DrawImage(image, New HPDFPointStruct With {.x = (page.Width - imagewidth) / 2, .y = page.Height - margin - imageheight}, New HPDFSizeStruct With {.Width = imagewidth, .Height = imageheight})
							'move all subsequent text by the height of the image
							page.TextRaise = -imageheight - margin
						End If
					End If
				End If

				'starting point of the receipt on the page
				Dim receiptPos As New HPDFPointStruct() With {.x = (page.Width - textWidth) / 2, .y = page.Height - margin}

				'print the receipt
				page.BeginText()
				page.SetFont(receiptFont, receiptFontSize)
				'Set position on the page to start printing the receipt
				Dim receiptCurrentPos As New HPDFPointStruct() With {.x = (page.Width - receiptRect.Width) / 2, .y = receiptPos.y - receiptFontSize}
				receiptPos = New HPDFPointStruct(receiptCurrentPos)
				page.MoveTextPos(receiptCurrentPos)
				receiptCurrentPos.Reset()
				'print the receipt 
				For i As Integer = 0 To analysis.receipt.OutputContent.OutputTextLength - 1
					Dim txt = analysis.receipt.OutputContent.OutputTextGetItem(i).Value
					Dim tw = page.GetTextWidth(txt)
					Dim linePos As New HPDFPointStruct(receiptCurrentPos)
					Dim alignment As AlignmentEnumeration = New NexoEnumeration(TagsEnumeration.Alignment.ToString).GetLabel(analysis.receipt.OutputContent.OutputTextGetItem(i).Alignment)
					Select Case alignment
						Case AlignmentEnumeration.Justified, AlignmentEnumeration.Centred
							'justification not supported here
							linePos.x = (textWidth - tw) / 2
						Case AlignmentEnumeration.Left
							linePos.x = linePos.x
						Case AlignmentEnumeration.Right
							linePos.x = linePos.x + textWidth - tw
					End Select
					page.MoveTextPos(linePos)
					page.ShowText(analysis.receipt.OutputContent.OutputText(i).Value)
					'page.ShowTextAt(analysis.receipt.OutputContent.OutputText(i).Value, receiptPos)
					receiptCurrentPos.y = -receiptFontSize
				Next
				'get the final lower left point
				page.EndText()

				'save file
				Dim dt As DateTime = Now
				'Dim fname As String = $"{title}-{receipts.POITimestamp}-{receipts.SaleTransactionID}-{receipts.POITransactionID}"
				'get forlder to save files in
				Dim folder As String = Path.GetTempPath
				If analysis.save Then
					Try
						Dim di As New DirectoryInfo(nexoSale.Settings.ReceiptFolder)
						If di.Exists Then
							folder = di.FullName
						End If
					Catch ex As Exception
					End Try
				End If
				If Not folder.EndsWith(Path.DirectorySeparatorChar) Then
					folder = folder & Path.DirectorySeparatorChar
				End If
				Dim fname As String = $"{folder}{analysis.target}-{receipts.Header.SaleID}-{receipts.Header.POIID}-{dt.ToString("yyyyMMdd HHmmss")}"
				Dim exists As Boolean
				Dim created As Boolean = document.SaveToFile(fname, exists, False)
				fi = New FileInfo(fname)

				'#If DEBUG Then
				'				Try
				'					If DocumentQualifierEnumeration.CustomerReceipt = analysis.target Then
				'						If created Then
				'							Dim si As New ProcessStartInfo()
				'							si.UseShellExecute = True
				'							si.FileName = fi.FullName
				'							si.Verb = "Open"
				'							Dim prsok = Process.Start(si)
				'							Try
				'								If Not IsNothing(prsok) Then
				'									prsok.WaitForExit(nexoSale.POIInUse.GeneralTimer * 1000)
				'								End If
				'							Catch ex As Exception
				'							End Try
				'						End If
				'					End If
				'				Catch ex As Exception
				'				End Try
				'#End If

				If created Then
					If DocumentQualifierEnumeration.CustomerReceipt = analysis.target Then
						nexoSale.CustomerReceiptFileName = fi.FullName
					Else
						nexoSale.MerchantReceiptFileName = fi.FullName
					End If
					Dim canDelete As Boolean = Not analysis.save
					If analysis.print And 0 <> PrinterSettings.InstalledPrinters.Count Then
						Dim myprinter As New PrinterSettings
						Try
							'get printer to use, a psecified one or the defualt one
							If Not String.IsNullOrEmpty(nexoSale.Settings.Printer) Then
								myprinter = New PrinterSettings
								myprinter.PrinterName = nexoSale.Settings.Printer
							End If
							If IsNothing(myprinter) OrElse Not myprinter.IsValid Then
								myprinter = New PrinterSettings()
							End If
							If Not IsNothing(myprinter) Then
								'arrived here we've got a valid printer
								Dim usingDefPrinter As Boolean = (0 = String.Compare(myprinter.PrinterName, New PrinterSettings().PrinterName, True))

								Dim si As New ProcessStartInfo(fname)
								si.Arguments = """" & myprinter.PrinterName & """"
								si.Verb = "PrintTo"
								si.CreateNoWindow = True
								si.WindowStyle = ProcessWindowStyle.Hidden
								si.UseShellExecute = True 'usingDefPrinter
								Dim prc = Process.Start(si)
								Try
									If Not IsNothing(prc) Then
										canDelete = prc.WaitForExit(nexoSale.POIInUse.GeneralTimer * 1000)
									End If
								Catch ex As Exception
									canDelete = False
								End Try
							End If
						Catch ex As Exception
							CLog.Add(HEADER & $"Printing {analysis.target} receipt ({fname}) on {myprinter.PrinterName} has failed", TLog.ERROR)
						End Try
					End If

					If canDelete Then
						Try
							fi.Delete()
						Catch ex As Exception
						End Try
					End If
				Else
					If DocumentQualifierEnumeration.CustomerReceipt = analysis.target Then
						nexoSale.CustomerReceiptFileName = Nothing
					Else
						nexoSale.MerchantReceiptFileName = Nothing
					End If
				End If
				Return created
			End If
		Catch ex As Exception
		End Try
		'arrived here no receipt has been printed
		Return False
	End Function

	Private Function AnalyseReceipt(type As DocumentQualifierEnumeration, receipts As PaymentReceiptType()) As ReceiptAnalysis
		Dim analysis As New ReceiptAnalysis With {.OK = False, .lines = 0, .maxline = 0, .receipt = Nothing}
		If IsNothing(receipts) OrElse 0 = receipts.Count Then Return analysis
		'search the requested receipt
		For i As Integer = 0 To receipts.Count - 1
			Dim receipt = receipts(i)
			If 0 = String.Compare(receipt.DocumentQualifier, type.ToString, True) Then
				'the requested receipt is present, let's analyse it
				analysis.OK = True
				analysis.receipt = receipt
				analysis.target = CMisc.GetEnumValue(GetType(DocumentQualifierEnumeration), receipt.DocumentQualifier)
				'count number of lines and maximum line size
				analysis.lines = receipt.OutputContent.OutputText.Length
				For j As Integer = 0 To receipt.OutputContent.OutputText.Length - 1
					analysis.maxline = Math.Max(analysis.maxline, receipt.OutputContent.OutputText(j).Value.Length)
				Next
				Exit For
			End If
		Next
		Return analysis
	End Function

	Private Structure ReceiptAnalysis
		Public OK As Boolean
		Public lines As Integer
		Public maxline As Integer
		Public save As Boolean
		Public print As Boolean
		Public receipt As PaymentReceiptType
		Public target As DocumentQualifierEnumeration
	End Structure

	Private Function PrepareSpecificPDF(type As DocumentQualifierEnumeration, receipts As Receipts) As Boolean
		Select Case type
			Case DocumentQualifierEnumeration.CustomerReceipt, DocumentQualifierEnumeration.CashierReceipt
				Dim analysis = AnalyseReceipt(type, receipts.Receipts)
				If Not IsNothing(analysis) AndAlso analysis.OK Then
					analysis.save = nexoSale.Settings.SaveReceipts
					If DocumentQualifierEnumeration.CustomerReceipt = type Then
						analysis.print = requestedOperation.POI.PrintReceipt AndAlso requestedOperation.POI.PrintCustomerReceipt
					Else
						analysis.print = requestedOperation.POI.PrintReceipt AndAlso requestedOperation.POI.PrintMerchantReceipt
					End If
					analysis.print = analysis.print AndAlso nexoSale.UseInternalPrinting
					Return CreateReceiptPDF(analysis, receipts)
				End If
		End Select
		Return False
	End Function

	Private Function PreparePDF(receipts As Receipts) As Boolean
		Try
			If Not HPDFClass.IsReady Then Return False
			If PrepareSpecificPDF(DocumentQualifierEnumeration.CustomerReceipt, receipts) Then
				If PrepareSpecificPDF(DocumentQualifierEnumeration.CashierReceipt, receipts) Then
					Return True
				End If
			End If
		Catch ex As Exception
		End Try
		Return False
	End Function
#End Region

#Region "GPRS processing"
	Class ConnectRequestData
		Public Property ICCD As String
		Public Property User As String
		Public Property Password As String
		Public Property Port As Integer
	End Class

	Class ConnectRequest
		Public Sub New()
			connect = New ConnectRequestData
		End Sub
		Public connect As ConnectRequestData
	End Class

	<Serializable, XmlRoot(ElementName:="connect")>
	Class ConnectReplyData
		Public Property Status As Integer
	End Class
	Private Const CONNECT_STATUS_OK As Integer = 0
	Private Const CONNECT_STATUS_KO As Integer = -1

	Class ConnectReply
		Public Sub New()
			Connect = New ConnectReplyData
		End Sub
		Public Property Connect As ConnectReplyData
	End Class

	'Private Function PrepareGPRSConnection(request As ConnectRequest) As String
	'	Dim xml As XmlDocument = JsonConvert.DeserializeXmlNode(JsonConvert.SerializeObject(request))
	'	Dim clientSettings As New CStreamClientSettings() With
	'		{
	'		.IP = nexoSale.Settings.GatewayIP,
	'		.Port = nexoSale.Settings.GatewayPort,
	'		.ReceiveTimeout = 0,
	'		.ServerName = "sslstca.lyra-network.com"
	'		}
	'	'send xml request waiting for an xml reply
	'	Dim err As Boolean
	'	Dim s As String = xml.InnerXml
	'	Dim xmls As String = CStream.ConnectSendReceiveLine(clientSettings, s, err)
	'	If Not String.IsNullOrEmpty(xmls) Then
	'		Try
	'			'deserialize the reply to a structure

	'			''remove version
	'			'Dim xmlSetting As New XmlReaderSettings()
	'			'xmlSetting.IgnoreComments = True
	'			'xmlSetting.IgnoreProcessingInstructions = True
	'			'xmlSetting.IgnoreWhitespace = True
	'			'xmlSetting.CloseInput = True

	'			'Dim xsSubmit As New XmlSerializer(GetType(ConnectReplyData))
	'			'Dim stream As New StreamReader(New MemoryStream(Encoding.UTF8.GetBytes(xmls)), Encoding.UTF8, False)
	'			'Dim reader As XmlReader = XmlReader.Create(stream, xmlSetting)
	'			'Dim reply As ConnectReplyData = xsSubmit.Deserialize(reader)
	'			'If Not IsNothing(reply) Then
	'			'	'test the result
	'			'	If 0 = reply.status Then
	'			'		lblResult.Text = "OK"
	'			'	Else
	'			'		lblResult.Text = $"KO [{reply.status}]"
	'			'	End If
	'			'Else
	'			'	'error, not a valid object
	'			'End If
	'		Catch ex As Exception

	'		End Try
	'		'test the returned status

	'	Else
	'		'error connecting to the gateway
	'	End If

	'End Function

#End Region

End Class