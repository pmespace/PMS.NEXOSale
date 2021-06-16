Imports System.Drawing
Imports System.Windows.Forms
Imports NEXO
Imports NEXO.Client
Imports COMMON
Imports Newtonsoft.Json
Imports System.Net.Sockets
Imports System.Threading
Imports System.Text
Imports System.IO
Imports System.Drawing.Printing
Imports System.Xml.Serialization
Imports System.Xml
'Imports iText.Kernel.Pdf
'Imports iText.Layout
'Imports iText.Layout.Element
'Imports iText.Kernel.Font
'Imports iText.IO.Font
'Imports iText.IO.Image

'Imports LIBHPDF

#Const NOCOLOR = True

Public Class FProcessing

#Region "declarations"
	Private f As FConfirmCancel
	Private priceb, infob, msgb As Boolean
	Private isInError As Boolean = False
	Private MyDialogResult As DialogResult = DialogResult.None
	Private cancelButtonText As String
	Private clientSettings As NexoRetailerClientSettings
	Private requestedOperation As NexoOperation = Nothing
	Private Const HEADER As String = "PROCESSING WINDOW - "
	Private nexoSale As NEXOSALE
	Private actionToPerform As Action
	Private actionIsComplete As Boolean = False
	Private Const CANCEL_BUTTON_TEXT As String = "Cancel"
	Private Const CLOSE_BUTTON_TEXT As String = "Close"
	Private fOK As Boolean
	Private back As Color, fore As Color
	Private globalTicks As Integer = 0
	Private stackOfActions As Stack(Of Action) = New Stack(Of Action)
	Private currentAction As Action
	Private Const ONE_SECOND As Integer = 1000
	Private myLock As Object = New Object

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
			_canbecancelled = value
		End Set
	End Property
	Private _canbecancelled As Boolean = False

	Private Property isComplete As Boolean
		Get
			Return _iscomplete
		End Get
		Set(value As Boolean)
			Monitor.Enter(myLock)
			Try
				If value AndAlso Not hasBeenCancelled And Not hasTimedOut Then
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
				If value AndAlso Not hasBeenCancelled And Not isComplete Then
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
				If value AndAlso Not hasTimedOut And Not isComplete Then
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

	Private Const RESULT_OK As Integer = 0
	Private Const RESULT_KO As Integer = 1

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

#Region "print management"
	Class Receipts
		Public Header As MessageHeaderType = Nothing
		Public SaleTransactionID As TransactionIdentificationType = Nothing
		Public POITransactionID As TransactionIdentificationType = Nothing
		Public ReceiptsToPrint As PaymentReceiptType() = Nothing
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
					CLog.Add(HEADER & activity.Message)
					message.Text = vbCrLf & activity.Message
				Case ActivityEvent.information
					CLog.Add(HEADER & activity.Message)
					information.Text = information.Text & vbCrLf & activity.Message
					information.Select(information.Text.Length - 1, 0)
					information.ScrollToCaret()
				Case ActivityEvent.replyReceived
				Case ActivityEvent.postMessage
					PostMessage(activity.WM, activity.wParam, activity.lParam)
				Case ActivityEvent.sendMessage
					SendMessage(activity.WM, activity.wParam, activity.lParam)
				Case ActivityEvent.resetCancelButton
					pbCancel.Text = CANCEL_BUTTON_TEXT
				Case ActivityEvent.resetCloseButton
					pbCancel.Text = CLOSE_BUTTON_TEXT
			End Select
		End If
	End Sub
#End Region

#Region "constructor"
	Public Sub New(ByRef a As NEXOSALE, ope As NexoOperation)
		MyBase.New
		nexoSale = a
		InitializeComponent()
		clientSettings = New NexoRetailerClientSettings With
			{
			.OnSentRequestStatusChanged = AddressOf OnSentRequestStatusChanged,
			.OnReceivedNotification = AddressOf OnReceivedNotification,
			.OnReceivedRequest = AddressOf OnReceivedRequest,
			.OnReceivedReply = AddressOf OnReceivedReply,
			.OnSend = AddressOf OnSend,
			.StreamClientSettings = New CStreamClientSettings With
				{
				.IP = nexoSale.Settings.Primary.ServerIP,
				.Port = nexoSale.Settings.Primary.ServerPort
				}
			}
		canBeCancelled = Not ope.POI.Synchronous AndAlso ope.POI.SupportsCancel

		If (Action._begin < ope.Action AndAlso Action._end > ope.Action) AndAlso
			(Action.Refund <> ope.Action OrElse ope.POI.SupportsRefund) AndAlso
			(Action.Reversal <> ope.Action OrElse ope.POI.SupportsCancel) AndAlso
			(Action.Reconciliation <> ope.Action OrElse ope.POI.SupportsReconciliation) AndAlso
			(Action.Abort <> ope.Action OrElse ope.POI.SupportsAbort) Then 'AndAlso
			'(Action.readcheck <> ope.action OrElse ope.POI.SupportsCheck) AndAlso
			'(Action.printcheck <> ope.action OrElse ope.POI.SupportsCheck) Then
			'the action is known and can be processed
			stackOfActions.Push(ope.Action)
			If Action.Login = ope.Action Then
			ElseIf Action.Logout = ope.Action Then
			Else
				If Not nexoSale.IsLogged Then
					stackOfActions.Push(Action.Login)
				End If
			End If
		End If

		canStart = 0 <> stackOfActions.Count
		requestedOperation = ope
	End Sub
#End Region

#Region "processing"
	Private Sub PostMessage(msg As UInteger, Optional wparam As Integer = 0, Optional lparam As Integer = 0, Optional wnd As Form = Nothing)
		Dim hwnd As IntPtr = Me.Handle
		If Not IsNothing(wnd) Then hwnd = wnd.Handle
		Win32.PostMessage(hwnd, msg, wparam, lparam)
	End Sub

	Private Sub SendMessage(msg As UInteger, Optional wparam As Integer = 0, Optional lparam As Integer = 0)
		Win32.SendMessage(Me.Handle, msg, wparam, lparam)
	End Sub

	Private Sub FProcessing_Load(sender As Object, e As EventArgs) Handles MyBase.Load
		'Text = LIBHPDF.HPdfDoc.HPdfGetVersion()
		priceb = infob = msgb = False
		nexoSale.SetOwner(Me)
		message.Text = ""
		information.Text = ""
		back = message.BackColor
		fore = message.ForeColor
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
		If requestedOperation.POI.SupportsCancel Then Return requestedOperation.POI.PaymentTimer Else Return 0
	End Function

	Protected Overrides Sub WndProc(ByRef m As Message)
		Select Case (m.Msg)
			Case WM_START
				CLog.Add("WM_START")
				'reset resqult data
				nexoSale._receiptavailable = False
				nexoSale._poitransactionid = String.Empty
				nexoSale._poitransactiontimestamp = String.Empty
				'reset timer data
				timerGlobal = New Windows.Forms.Timer
				timerGlobal.Interval = ONE_SECOND
				timerGlobal.Start()
				If nexoSale.Connected Then
					PostMessage(WM_ACTION)
				Else
					PostMessage(WM_CONNECT)
				End If

			Case WM_STOP
				CLog.Add("WM_STOP")
				isInError = True
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "No transaction to process"})
				Caption = "NO TRANSACTION TO PROCESS"
				MyDialogResult = DialogResult.Cancel
				PostMessage(WM_AUTOCLOSE_START)

			Case WM_ERROR
				CLog.Add("WM_ERROR")
				isInError = True
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "An error has occurred, transaction processing could not complete"})
				PostMessage(WM_AUTOCLOSE_START)

			Case WM_CONNECT
				CLog.Add("WM_CONNECT")
				'If nexoSale.UseBackup Then
				'	Caption = "CONNECTING TO POI (USING BACKUP)"
				'Else
				'	Caption = "CONNECTING TO POI"
				'End If
				'If Not nexoSale.Connect() Then
				'	isInError = True
				'	message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "Failed to connect to POI"})
				'	PostMessage(WM_AUTOCLOSE_START)
				'Else
				'	PostMessage(WM_ACTION)
				'End If

				Dim frm As New FWait(nexoSale)
				Select Case frm.ShowDialog()
					Case DialogResult.Yes
						PostMessage(WM_ACTION)

					Case Else
						nexoSale._poiisoffline = True
						isInError = True
						message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "Failed to connect to POI"})
						PostMessage(WM_AUTOCLOSE_START)
				End Select

			Case WM_DISCONNECT
				CLog.Add("WM_DISCONNECT")
				nexoSale.Disconnect()
				PostMessage(WM_END)

			Case WM_TIMEOUT_START
				CLog.Add("WM_TIMEOUT_START")
				If canBeCancelled Then
					timerBeforeTimeout.Interval = ONE_SECOND
					timerBeforeTimeout.Start()
				End If

			Case WM_TIMEOUT
				CLog.Add("WM_TIMEOUT")
				isInError = True
				stackOfActions.Clear()
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "TIMEOUT" & vbCrLf & "Operation has been cancelled"})
				MyDialogResult = DialogResult.Abort
				SendMessage(WM_AUTOCLOSE_START)

			Case WM_CANCEL
				CLog.Add("WM_CANCEL")
				isInError = True
				hasBeenCancelled = True
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "CANCELLED BY USER" & vbCrLf & "The operation will not complete"})
				MyDialogResult = DialogResult.Cancel
				PostMessage(WM_AUTOCLOSE_START)

			Case WM_ACTION
				Try
					currentAction = stackOfActions.Pop()
				Catch ex As Exception
					currentAction = Action._none
				End Try
				CLog.Add("WM_ACTION: " & currentAction.ToString)
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
							t = RealPaymentTimer() ' requestedOperation.POI.GeneralTimer
							ms = WM_REVERSAL
						Case Action.Reconciliation
							t = RealPaymentTimer() 'requestedOperation.POI.GeneralTimer
							ms = WM_RECONCILIATION
						Case Action.Abort
							t = RealPaymentTimer() 'requestedOperation.POI.GeneralTimer
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
						isComplete = False
						hasTimedOut = hasTimedOut Or False
						hasBeenCancelled = hasBeenCancelled Or False
						timerBeforeTimeout = New Windows.Forms.Timer()
						PostMessage(ms)
					Else
						PostMessage(WM_AUTOCLOSE)
					End If
				End If

			Case WM_LOGIN
				Caption = "LOGGING IN SALE " & nexoSale.Settings.SaleID & " TO " & nexoSale.Settings.POIID
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
				timerBeforeTimeout.Tag = requestedOperation.POI.GeneralTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
				TestSendResult(result, o.MessageCategory.ToString, "Logging in to POI")

			Case WM_LOGOUT
				CLog.Add("WM_LOGOUT")
				Caption = "LOGGING OUT SALE " & nexoSale.Settings.SaleID & " FROM " & nexoSale.Settings.POIID
				pbCancel.Enabled = canBeCancelled
				nexoSale._logout = New NexoLogout()
				Dim o = nexoSale.Logout
				o.SaleID = GetSaleID()
				o.POIID = GetPOIID()
				timerBeforeTimeout.Tag = requestedOperation.POI.GeneralTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
				TestSendResult(result, o.MessageCategory.ToString, "Logging out from POI")

			Case WM_PAYMENT
				CLog.Add("WM_PAYMENT")
				Caption = "PAYMENT REQUEST FROM SALE " & nexoSale.Settings.SaleID & " TO " & nexoSale.Settings.POIID
				If IsNothing(nexoSale.Currency) OrElse String.IsNullOrEmpty(nexoSale.Currency.Value) Then
					CLog.Add("Missing mandatory currency", TLog.ERROR)
					PostMessage(WM_ERROR)
				ElseIf IsNothing(requestedOperation.Amount) Then
					CLog.Add("Missing mandatory amount", TLog.ERROR)
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
					timerBeforeTimeout.Tag = RealPaymentTimer()
					Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
					TestSendResult(result, o.MessageCategory.ToString, "Payment in progress" & vbCrLf & "Please wait...")
				End If

			Case WM_REFUND
				CLog.Add("WM_REFUND")
				Me.Text = Caption = "REFUND REQUEST FROM SALE " & nexoSale.Settings.SaleID & " TO " & nexoSale.Settings.POIID
				If IsNothing(nexoSale.Currency) OrElse String.IsNullOrEmpty(nexoSale.Currency.Value) Then
					CLog.Add("Missing mandatory currency", TLog.ERROR)
					PostMessage(WM_ERROR)
				ElseIf IsNothing(requestedOperation.Amount) Then
					CLog.Add("Missing mandatory amount", TLog.ERROR)
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
					timerBeforeTimeout.Tag = RealPaymentTimer()
					Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
					TestSendResult(result, o.MessageCategory.ToString, "Refund in progress" & vbCrLf & "Please wait...")
				End If

			Case WM_REVERSAL
				CLog.Add("WM_REFUND")
				Me.Text = Caption = "REVERSAL REQUEST FROM SALE " & nexoSale.Settings.SaleID & " TO " & nexoSale.Settings.POIID
				pbCancel.Enabled = canBeCancelled
				nexoSale._reversal = New NexoReversal()
				Dim o = nexoSale.Reversal
				o.SaleID = GetSaleID()
				o.POIID = GetPOIID()
				PrepareFinancialTransactionIDS(o)
				If Not CMisc.IsEnumValue(GetType(ReversalReasonEnumeration), o.RequestReversalReason) Then
					o.RequestReversalReason = ReversalReasonEnumeration.MerchantCancel
				End If
				If 0 = requestedOperation.Amount Then
					o.RequestData.ReversedAmountSpecified = False
				Else
					o.RequestSaleReferenceID = nexoSale.MerchantReferenceID
				End If
				o.RequestOriginalPOITransactionID = nexoSale.OriginalPOITransactionID
				o.RequestOriginalPOITransactionTimestamp = nexoSale.OriginalPOITransactionTimestamp
				timerBeforeTimeout.Tag = RealPaymentTimer()
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
				TestSendResult(result, o.MessageCategory.ToString, "Cancelling transaction" & vbCrLf & "Please wait")

			Case WM_RECONCILIATION
				CLog.Add("WM_RECONCILIATION")
				Me.Text = Caption = "RECONCILIATION REQUEST [" & nexoSale.ReconciliationType.ToString & "] FROM SALE " & nexoSale.Settings.SaleID & " TO " & nexoSale.Settings.POIID
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
				timerBeforeTimeout.Tag = requestedOperation.POI.GeneralTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
				TestSendResult(result, o.MessageCategory.ToString, "Reconciliating transaction [" & nexoSale.ReconciliationType.ToString & "]" & vbCrLf & "Please wait")

			Case WM_ABORT
				CLog.Add("WM_ABORT")
				Me.Text = Caption = "ABORT REQUEST [" & nexoSale.AbortReason & "] FROM SALE " & nexoSale.Settings.SaleID & " TO " & nexoSale.Settings.POIID
				pbCancel.Enabled = canBeCancelled
				nexoSale._abort = New NexoAbort()
				Dim o = nexoSale.Abort
				o.SaleID = o.AbortSaleID = GetSaleID()
				o.POIID = o.AbortPOIID = GetPOIID()
				o.AbortReason = nexoSale.AbortReason
				o.AbortServiceID = nexoSale.AbortServiceID
				o.AbortMessageCategory = nexoSale.AbortMessageCategory
				timerBeforeTimeout.Tag = requestedOperation.POI.GeneralTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
				TestSendResult(result, o.MessageCategory.ToString, "Aborting transaction [" & nexoSale.AbortReason & "]" & vbCrLf & "Please wait")

			Case WM_CHECK_READ
				Me.Text = Caption = "READING CHECK REQUEST FROM SALE " & nexoSale.Settings.SaleID & " TO " & nexoSale.Settings.POIID
				pbCancel.Enabled = canBeCancelled
				nexoSale._input = New NexoDeviceInput()
				Dim o = nexoSale.Input
				o.SaleID = GetSaleID()
				o.POIID = GetPOIID()
				o.RequestDevice = DeviceEnumeration.CashierInput
				o.RequestInfoQualify = InfoQualifyEnumeration.Document
				o.RequestInputCommand = InputCommandEnumeration.TextString
				timerBeforeTimeout.Tag = requestedOperation.POI.CheckTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
				TestSendResult(result, o.MessageCategory.ToString, "Reading check" & vbCrLf & "Please wait")

			Case WM_CHECK_PRINT
				Me.Text = Caption = "PRINT CHECK REQUEST FROM SALE " & nexoSale.Settings.SaleID & " TO " & nexoSale.Settings.POIID
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
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
				TestSendResult(result, o.MessageCategory.ToString, "Printing check" & vbCrLf & "Please wait")
				If 0 < nexoSale.CheckIndex Then nexoSale.CheckIndex += 1

			Case WM_RECEIVED_NOTIFICATION
				CLog.Add("WM_RECEIVED_NOTIFICATION")

			Case WM_RECEIVED_REQUEST

			Case WM_RECEIVED_REPLY
				CLog.Add("WM_RECEIVED_REPLY")
				If 0 < stackOfActions.Count Then
					pbCancel.Text = CANCEL_BUTTON_TEXT
					'run the next action
					PostMessage(WM_ACTION)
				Else
					isInError = Not CBool(m.WParam)
					PostMessage(WM_AUTOCLOSE_START)
				End If

			Case WM_AUTOCLOSE_START
				CLog.Add("WM_AUTOCLOSE_START")
				PostMessage(FConfirmCancel.WM_CANCEL_CANCEL, wnd:=f)
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
				CLog.Add("WM_AUTOCLOSE")
				PostMessage(WM_END)

			Case WM_END
				CLog.Add("WM_END")
				Close()

		End Select
		MyBase.WndProc(m)
	End Sub

	Public Sub OnReceivedReply(xml As String, obj As NexoObjectToProcess, tcp As TcpClient, threadData As CThreadData, o As Object)
		isComplete = True
		canBeCancelled = False
		timerBeforeTimeout.Stop()
		Dim res As Boolean = obj.CurrentObject.Success
		Dim replyIsKnown As Boolean = True
		Dim printReceipt As Boolean = False

		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.information, .Message = MessageDescription(obj.Item, xml)})

		'Dim res As ResultEnumeration = CMisc.GetEnumValue(GetType(ResultEnumeration), obj.CurrentObject.Response.Result)
		If MessageCategoryEnumeration.Login = obj.Category Then
			'processing login
			Dim nxo As NexoLogin = obj.CurrentObject
			nexoSale._islogged = nxo.Success
			If nexoSale._islogged Then
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "SaleID is connected"})
			Else
				'unable to connect no more actions to start
				stackOfActions.Clear()
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "SaleID failed to connect" & vbCrLf & DescribeError(nxo.Response)})
			End If

		ElseIf MessageCategoryEnumeration.Logout = obj.Category Then
			'processing logout
			Dim nxo As NexoLogout = obj.CurrentObject
			nexoSale._islogged = nexoSale._islogged And Not nxo.Success
			If Not nexoSale._islogged Then
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "SaleID is disconnected"})
			Else
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "SaleID failed to disconnect" & vbCrLf & DescribeError(nxo.Response)})
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
					nexoSale._receiptavailable = 0 <> nxo.ReplyData.PaymentReceiptSize
					act = "Payment"
					If nxo.Success Then
						message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = act & " accepted"})
						nexoSale._poitransactionid = nxo.ReplyPOITransactionID
						nexoSale._poitransactiontimestamp = nxo.ReplyPOITransactionTimestamp
						printReceipt = requestedOperation.POI.PrintReceipt
						nexoSale.InternalBrand = nexoSale.GetSchemeFromAvailableData(nxo)
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
							message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = act & " declined" & vbCrLf & DescribeError(nxo.Response)})
							printReceipt = requestedOperation.POI.PrintReceipt
						End If
					End If
					If printReceipt Then
						ReceiptsToPrint = New Receipts With {.Header = nxo.Reply.MessageHeader, .POITransactionID = nxo.ReplyData.POIData.POITransactionID, .ReceiptsToPrint = nxo.ReplyData.PaymentReceipt} ', .SaleTransactionID = nxo.ReplyData.SaleData.SaleTransactionID}
						PreparePDF()
					End If

				ElseIf PaymentTypeEnumeration.Refund = nxo.PaymentType Then
					'processing refund
					nexoSale._receiptavailable = 0 <> nxo.ReplyData.PaymentReceiptSize
					If nxo.Success Then
						message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = act & " accepted"})
						nexoSale._poitransactionid = nxo.ReplyPOITransactionID
						nexoSale._poitransactiontimestamp = nxo.ReplyPOITransactionTimestamp
						nexoSale.InternalBrand = nexoSale.GetSchemeFromAvailableData(nxo)
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
							message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = act & " declined" & vbCrLf & DescribeError(nxo.Response)})
						End If
					End If
				End If

			Catch ex As Exception
				res = False
				stackOfActions.Clear()
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "Invalid PAYMENT processing"})
			End Try

		ElseIf MessageCategoryEnumeration.Reversal = obj.Category Then
			Try
				'processing reversal
				Dim nxo As NexoReversal = obj.CurrentObject
				nexoSale._receiptavailable = 0 <> nxo.ReplyData.PaymentReceiptSize
				If res Then
					message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "Transaction has been reversed"})
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
						message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "Transaction not reversed" & vbCrLf & DescribeError(nxo.Response)})
					End If
				End If
			Catch ex As Exception
				res = False
				stackOfActions.Clear()
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "Invalid CANCELLATION processing"})
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
					message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = obj.Category.ToString & " was processed successfully"})
				Else
					stackOfActions.Clear()
					message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = obj.Category.ToString & " was not processed successfully" & vbCrLf & DescribeError(nxo.Response)})
				End If
			Catch ex As Exception
				res = False
				stackOfActions.Clear()
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "Invalid RECONCILIATION processing"})
			End Try
		Else
			replyIsKnown = False
		End If

		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.postMessage, .WM = WM_RECEIVED_REPLY, .wParam = res})
	End Sub

	Public Sub OnReceivedRequest(xml As String, obj As NexoObjectToProcess, tcp As TcpClient, threadData As CThreadData, o As Object)
		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.requestReceived, .Message = "Received" & MessageDescription(obj.Item, xml)})
		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.postMessage, .WM = WM_RECEIVED_REQUEST, .wParam = RESULT_OK})
	End Sub

	Public Sub OnReceivedNotification(xml As String, obj As NexoObjectToProcess, tcp As TcpClient, threadData As CThreadData, o As Object)
		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.notificationReceived, .Message = "Received" & MessageDescription(obj.Item, xml)})
		message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.postMessage, .WM = WM_RECEIVED_NOTIFICATION, .wParam = RESULT_OK})
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
			If hasBeenCancelled Then
				MyDialogResult = DialogResult.Cancel
			ElseIf hasTimedOut Then
				MyDialogResult = DialogResult.Abort
			ElseIf Not isComplete Then
				MyDialogResult = DialogResult.Retry
			Else
				MyDialogResult = DialogResult.No
			End If
		End If
	End Sub

	Private Function GetSaleID() As String
		If nexoSale.Settings.SaleIDUseIP Then Return CStream.Localhost Else Return nexoSale.SaleID
	End Function

	Private Function GetPOIID() As String
		If nexoSale.Settings.POIIDUseIP AndAlso Not String.IsNullOrEmpty(requestedOperation.POI.ServerIP) Then Return requestedOperation.POI.ServerIP Else Return nexoSale.POIID
	End Function

	Private Sub TestSendResult(result As NexoRetailerClientHandle, cat As String, msg As String)
		If IsNothing(result) Then
			message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.information, .Message = CLog.Add("Failed to send " & cat & " request, please check your network connection")})
			PostMessage(WM_ERROR)
		Else
			message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = CLog.Add(msg)})
			PostMessage(WM_TIMEOUT_START)
		End If
	End Sub

	Private Function MessageDescription(o As NexoItem, xml As String)
		Return " " & o.Category.ToString.ToUpper & " " & o.Type.ToString.ToUpper & " [" & xml.Length & "]" & vbCrLf & xml
	End Function

	Private Function DescribeError(response As ResponseType) As String
		DescribeError = response.AdditionalResponse
	End Function

	Public Sub OnSentRequestStatusChanged(xml As String, obj As NexoObjectToProcess, status As NexoMessageStatus, tcp As TcpClient, threadData As CThreadData, o As Object)
		Dim hasTimedOut As Boolean = NexoMessageStatus.timeout = status
		If hasTimedOut Then
			message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.timerTimout, .Message = "The operation timed out and has been cancelled"})
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

	Public Sub OnSend(xml As String, item As NexoItem, tcp As TcpClient, threadData As CThreadData, o As Object)
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
			pbCancel.Text = CANCEL_BUTTON_TEXT & " in " & CInt(timerBeforeTimeout.Tag) & " seconds"
		Else
			pbCancel.Text = CLOSE_BUTTON_TEXT & " in " & CInt(timerBeforeTimeout.Tag) & " seconds"
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
			pbCancel.Text = CLOSE_BUTTON_TEXT & " in " & CInt(timerBeforeAutoClose.Tag) & " seconds"
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
			Caption = "AUTOMATICALLY CLOSING WINDOW"
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
		If hours <> 0 Then delay = hours & " hours "
		If minutes <> 0 Then delay &= minutes & " minutes "
		delay &= seconds & " seconds "
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
		If sender Is message Then msgb = priceb And infob
		If priceb AndAlso infob AndAlso msgb Then
			f = New FConfirmCancel
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

	Private Sub PreparePDF()
		'	If Not IsNothing(ReceiptsToPrint) Then
		'		If Not IsNothing(ReceiptsToPrint.ReceiptsToPrint) Then
		'			For Each receipt As PaymentReceiptType In ReceiptsToPrint.ReceiptsToPrint
		'				'create file name
		'				Dim fileName As String = $"{receipt.DocumentQualifier}.SALEID.{ReceiptsToPrint.Header.SaleID}.POIID.{ReceiptsToPrint.Header.POIID}"
		'				If Not IsNothing(ReceiptsToPrint.SaleTransactionID) AndAlso Not String.IsNullOrEmpty(ReceiptsToPrint.SaleTransactionID.TransactionID) AndAlso Not String.IsNullOrEmpty(ReceiptsToPrint.SaleTransactionID.TimeStamp) Then
		'					fileName &= $".SALETID.{ReceiptsToPrint.SaleTransactionID.TransactionID}.SALETSTMP.{ReceiptsToPrint.SaleTransactionID.TimeStamp}"
		'				ElseIf Not IsNothing(ReceiptsToPrint.POITransactionID) AndAlso Not String.IsNullOrEmpty(ReceiptsToPrint.POITransactionID.TransactionID) AndAlso Not String.IsNullOrEmpty(ReceiptsToPrint.POITransactionID.TimeStamp) Then
		'					fileName &= $".POITID.{ReceiptsToPrint.POITransactionID.TransactionID}.POITSTMP.{ReceiptsToPrint.POITransactionID.TimeStamp}"
		'				Else
		'					fileName &= $".DATE.{DateTime.Now.ToString(Chars.DATETIME)}"
		'				End If

		'				'remplace invalid characters if any
		'				Dim invalidChars As Char() = Path.GetInvalidFileNameChars
		'				For Each c As Char In invalidChars
		'					fileName = fileName.Replace(c, ".")
		'				Next
		'				fileName &= ".pdf"

		'				'prepare printing
		'				Select Case receipt.DocumentQualifier.ToLower
		'					Case DocumentQualifierEnumeration.CashierReceipt.ToString.ToLower, DocumentQualifierEnumeration.CustomerReceipt.ToString.ToLower
		'						Dim writer As New PdfWriter(fileName)
		'						Dim pdf = New PdfDocument(writer)
		'						Dim document As New Document(pdf)
		'						Dim std As PdfFont = PdfFontFactory.CreateFont(FontConstants.HELVETICA)
		'						Dim bold As PdfFont = PdfFontFactory.CreateFont(FontConstants.HELVETICA_BOLD)
		'						document.SetFont(std)

		'						'if a logo must be printed, let's do it
		'						Try
		'							Dim img As New ImageData(.)
		'							Dim logo As New Image(ImageDataFactory.Create(Settings.))
		'						Catch ex As Exception

		'						End Try

		'						Try
		'							Dim p As Paragraph
		'							Dim line As String = Nothing
		'							'start printing text
		'							For Each text As OutputTextType In receipt.OutputContent.OutputText
		'								line &= text.Value
		'								p = New Paragraph(line)
		'								'If text.EndOfLineFlag Then
		'								document.Add(p)
		'								line = Nothing
		'								'End If
		'							Next
		'							If Not String.IsNullOrEmpty(line) Then
		'								p = New Paragraph(line)
		'								document.Add(p)
		'							End If
		'						Catch ex As Exception
		'						End Try
		'						document.Close()
		'				End Select
		'			Next
		'		Else
		'			CLog.Add("No receipt to print", TLog.ERROR)
		'		End If
		'	Else
		'		CLog.Add("No data to print", TLog.ERROR)
		'	End If
	End Sub

	Private Sub PrintDocument1_BeginPrint(sender As Object, e As Printing.PrintEventArgs) Handles PrintDocument1.BeginPrint
	End Sub

	Private Sub PrintDocument1_EndPrint(sender As Object, e As Printing.PrintEventArgs) Handles PrintDocument1.EndPrint
	End Sub

	Private Sub PrintDocument1_PrintPage(sender As Object, e As Printing.PrintPageEventArgs) Handles PrintDocument1.PrintPage
	End Sub

	Private Sub FProcessing_FormClosed(sender As Object, e As FormClosedEventArgs) Handles MyBase.FormClosed
		CLog.Add(HEADER & "RESULT CODE: " & DialogResult.ToString)
		nexoSale.ResetOwner(Me)
		DialogResult = MyDialogResult
	End Sub

	Public Class ReceiptDocument
		Inherits System.Drawing.Printing.PrintDocument
		Private _titleFont As Font
		Private _detailFont As Font
	End Class

	Public Function CreateReceipt(receipt As PaymentReceiptType, Optional fileName As String = Nothing) As Boolean
		Select Case receipt.DocumentQualifier
			Case DocumentQualifierEnumeration.CashierReceipt, DocumentQualifierEnumeration.CustomerReceipt
				Try
					Dim stream As New StreamWriter(fileName)
					If Not IsNothing(stream) Then
						Dim s As String
						'indicate type of receipt
						If DocumentQualifierEnumeration.CashierReceipt = receipt.DocumentQualifier Then
							s = "MERCHANT RECEIPT"
						Else
							s = "CUSTOMER RECEIPT"
						End If
						stream.WriteLine(s)
						stream.WriteLine()

						'start printing text
						For Each text As OutputTextType In receipt.OutputContent.OutputText
							If text.EndOfLineFlag Then
								stream.WriteLine(text.Value)
							Else
								stream.Write(text.Value)
							End If
						Next
						Return True
					End If
				Catch ex As Exception
				End Try

		End Select
		'arrived here nothing has been printed
		Return False
	End Function
#End Region

#Region "GPRS processing"
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

	<Serializable, XmlRoot(ElementName:="connect")>
	Class ConnectReplyData
		Public Property status As Integer
	End Class
	Private Const CONNECT_STATUS_OK As Integer = 0
	Private Const CONNECT_STATUS_KO As Integer = -1

	Class ConnectReply
		Public Sub New()
			connect = New ConnectReplyData
		End Sub
		Public Property connect As ConnectReplyData
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