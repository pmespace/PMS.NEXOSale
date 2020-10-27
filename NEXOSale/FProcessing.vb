Imports System.Drawing
Imports System.Windows.Forms
Imports NEXO
Imports NEXO.Client
Imports COMMON
Imports System.Net.Sockets
Imports System.Threading
Imports System.Text

#Const NOCOLOR = True

Public Class FProcessing

#Region "declarations"
	Private f As ConfirmCancel
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

	Private Const WM_RECEIVED As UInteger = WM_START + 200
	Private Const WM_RECEIVED_REPLY As UInteger = WM_RECEIVED + 1
	Private Const WM_RECEIVED_REQUEST As UInteger = WM_RECEIVED + 2
	Private Const WM_RECEIVED_NOTIFICATION As UInteger = WM_RECEIVED + 3

	Private Const WM_TIMER As UInteger = WM_START + 300
	Private Const WM_TIMEOUT_START As UInteger = WM_TIMER + 1
	Private Const WM_TIMEOUT As UInteger = WM_TIMER + 2
	Private Const WM_AUTOCLOSE_START As UInteger = WM_TIMER + 3
	Private Const WM_AUTOCLOSE As UInteger = WM_TIMER + 4

	Public Class NexoOperation
		Public action As Action = Action._none
		Public POI As POISettings = Nothing
		Public amount As NexoSimpleAmount = Nothing
		Public currency As NexoCurrency = Nothing
		Public saleTransactionID As TransactionIdentificationType = Nothing
		Public poiTransactionID As TransactionIdentificationType = New TransactionIdentificationType()
		Public originalPOITransactionID As TransactionIdentificationType = Nothing
		Public CMC7 As String
		Public CheckToPrint As String
		Public reconciliationType As ReconciliationTypeEnumeration
		Public reconciliationID As String
		Public reconciliationAcquirerID As String
		Public abortReason As String
		Public abortServiceID As String
		Public abortMessageCategory As MessageCategoryEnumeration
	End Class
#End Region

#Region "interface management"
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
					information.Text = activity.Message
				Case ActivityEvent.replyReceived
				Case ActivityEvent.postMessage
					PostMessage(activity.WM, activity.wParam, activity.lParam)
				Case ActivityEvent.sendMessage
					SendMessage(activity.WM, activity.wParam, activity.lParam)
			End Select
		End If
	End Sub
#End Region

	Public Sub New(ByRef a As NEXOSALE, ope As NexoOperation)
		MyBase.New
		InitializeComponent()
		nexoSale = a
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

		If (Action._begin < ope.action AndAlso Action._end > ope.action) AndAlso
			(Action.refund <> ope.action OrElse ope.POI.SupportsRefund) AndAlso
			(Action.reversal <> ope.action OrElse ope.POI.SupportsReversal) AndAlso
			(Action.reconciliation <> ope.action OrElse ope.POI.SupportsReconciliation) AndAlso
			(Action.abort <> ope.action OrElse ope.POI.SupportsAbort) AndAlso
			(Action.readcheck <> ope.action OrElse ope.POI.SupportsCheck) AndAlso
			(Action.printcheck <> ope.action OrElse ope.POI.SupportsCheck) Then
			'the action is known and can be processed
			stackOfActions.Push(ope.action)
			If Action.login = ope.action Then
			ElseIf Action.logout = ope.action Then
			Else
				If Not nexoSale.IsLogged Then
					stackOfActions.Push(Action.login)
				End If
			End If
		End If

		canStart = 0 <> stackOfActions.Count
		requestedOperation = ope
	End Sub

	Private Sub PostMessage(msg As UInteger, Optional wparam As Integer = 0, Optional lparam As Integer = 0, Optional wnd As Form = Nothing)
		Dim hwnd As IntPtr = Me.Handle
		If Not IsNothing(wnd) Then hwnd = wnd.Handle
		Win32.PostMessage(hwnd, msg, wparam, lparam)
	End Sub

	Private Sub SendMessage(msg As UInteger, Optional wparam As Integer = 0, Optional lparam As Integer = 0)
		Win32.SendMessage(Me.Handle, msg, wparam, lparam)
	End Sub

	Private Sub FProcessing_Load(sender As Object, e As EventArgs) Handles MyBase.Load
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
		If Not IsNothing(requestedOperation.amount) Then
			If 0 <> requestedOperation.amount.AsInteger Then
				price.Text = requestedOperation.amount.AsDecimal.ToString & " " & requestedOperation.currency.ToString
			End If
		Else
			price.Text = requestedOperation.action.ToString
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
				timerGlobal = New Windows.Forms.Timer
				timerGlobal.Interval = ONE_SECOND
				timerGlobal.Start()
				If nexoSale.Connected Then
					PostMessage(WM_ACTION)
				Else
					PostMessage(WM_CONNECT)
				End If

			Case WM_STOP
				isInError = True
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "No transaction to process"})
				Caption = "NO TRANSACTION TO PROCESS"
				MyDialogResult = DialogResult.Cancel
				PostMessage(WM_AUTOCLOSE_START)

			Case WM_ERROR
				isInError = True
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "An error has occurred, transaction processing could not complete"})
				PostMessage(WM_AUTOCLOSE_START)

			Case WM_CONNECT
				If nexoSale.UseBackup Then
					Caption = "CONNECTING TO POI (USING BACKUP)"
				Else
					Caption = "CONNECTING TO POI"
				End If
				If Not nexoSale.Connect() Then
					isInError = True
					message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "Failed to connect to POI"})
					PostMessage(WM_AUTOCLOSE_START)
				Else
					PostMessage(WM_ACTION)
				End If

			Case WM_DISCONNECT
				nexoSale.Disconnect()
				PostMessage(WM_END)

			Case WM_TIMEOUT_START
				If canBeCancelled Then
					timerBeforeTimeout.Interval = ONE_SECOND
					timerBeforeTimeout.Start()
				End If

			Case WM_TIMEOUT
				isInError = True
				stackOfActions.Clear()
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "TIMEOUT" & vbCrLf & "Operation has been cancelled"})
				MyDialogResult = DialogResult.Abort
				SendMessage(WM_AUTOCLOSE_START)

			Case WM_CANCEL
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
				'will be false only if the action can't be processed
				Dim t As UInteger
				Dim ms As UInteger = 0
				If Not IsNothing(currentAction) Then
					Select Case currentAction
						Case Action.login
							t = requestedOperation.POI.GeneralTimer
							ms = WM_LOGIN
						Case Action.logout
							t = requestedOperation.POI.GeneralTimer
							ms = WM_LOGOUT
						Case Action.payment
							t = RealPaymentTimer()
							ms = WM_PAYMENT
						Case Action.refund
							t = RealPaymentTimer()
							ms = WM_REFUND
						Case Action.reversal
							t = requestedOperation.POI.GeneralTimer
							ms = WM_REVERSAL
						Case Action.reconciliation
							t = requestedOperation.POI.GeneralTimer
							ms = WM_RECONCILIATION
						Case Action.abort
							t = requestedOperation.POI.GeneralTimer
							ms = WM_ABORT
						Case Action.readcheck
							t = requestedOperation.POI.CheckTimer
							ms = WM_CHECK_READ
						Case Action.printcheck
							t = requestedOperation.POI.CheckTimer
							ms = WM_CHECK_PRINT
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
				Dim o As New NexoLogin()
				o.SaleID = GetSaleID()
				o.POIID = GetPOIID()
				o.RequestApplicationName = nexoSale.Settings.ApplicationName
				o.RequestManufacturerID = nexoSale.Settings.ManufacturerName
				o.ProtocolVersion = New NexoProtocolVersion().DefaultValue
				o.RequestData.OperatorID = New NexoOperatorID().DefaultValue
				o.RequestCertificationCode = nexoSale.Settings.CertificationCode
				o.RequestSoftwareVersion = nexoSale.Settings.SoftwareVersion
				timerBeforeTimeout.Tag = requestedOperation.POI.GeneralTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
				TestSendResult(result, o.MessageCategory.ToString, "Logging in to POI")

			Case WM_LOGOUT
				Caption = "LOGGING OUT SALE " & nexoSale.Settings.SaleID & " FROM " & nexoSale.Settings.POIID
				pbCancel.Enabled = canBeCancelled
				Dim o As New NexoLogout()
				o.SaleID = GetSaleID()
				o.POIID = GetPOIID()
				timerBeforeTimeout.Tag = requestedOperation.POI.GeneralTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
				TestSendResult(result, o.MessageCategory.ToString, "Logging out from POI")

			Case WM_PAYMENT
				Caption = "PAYMENT REQUEST FROM SALE " & nexoSale.Settings.SaleID & " TO " & nexoSale.Settings.POIID
				If IsNothing(requestedOperation.currency) Then
					CLog.Add("Missing mandatory currency", TLog.ERROR)
					PostMessage(WM_ERROR)
				ElseIf IsNothing(requestedOperation.amount) Then
					CLog.Add("Missing mandatory amount", TLog.ERROR)
					PostMessage(WM_ERROR)
				Else
					Dim o As New NexoPayment()
					o.SaleID = GetSaleID()
					o.POIID = GetPOIID()
					If Not IsNothing(requestedOperation.saleTransactionID) Then
						o.RequestSaleTransactionID = requestedOperation.saleTransactionID.TransactionID
						o.RequestSaleTransactionTimestamp = requestedOperation.saleTransactionID.TimeStamp
					End If
					o.RequestCurrency = requestedOperation.currency.Value
					o.RequestRequestedAmount = requestedOperation.amount.AsDecimal
					timerBeforeTimeout.Tag = RealPaymentTimer()
					Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
					'retrieve real IDs used when sending the message
					If IsNothing(requestedOperation.saleTransactionID) Then requestedOperation.saleTransactionID = New TransactionIdentificationType
					requestedOperation.saleTransactionID.TransactionID = o.RequestSaleTransactionID
					requestedOperation.saleTransactionID.TimeStamp = o.RequestSaleTransactionTimestamp
					TestSendResult(result, o.MessageCategory.ToString, "Payment in progress" & vbCrLf & "Please wait...")
				End If

			Case WM_REFUND
				Me.Text = Caption = "REFUND REQUEST FROM SALE " & nexoSale.Settings.SaleID & " TO " & nexoSale.Settings.POIID
				If IsNothing(requestedOperation.currency) Then
					CLog.Add("Missing mandatory currency", TLog.ERROR)
					PostMessage(WM_ERROR)
				ElseIf IsNothing(requestedOperation.amount) Then
					CLog.Add("Missing mandatory amount", TLog.ERROR)
					PostMessage(WM_ERROR)
				Else
					Dim o As New NexoRefund()
					o.SaleID = GetSaleID()
					o.POIID = GetPOIID()
					If Not IsNothing(requestedOperation.saleTransactionID) Then
						o.RequestSaleTransactionID = requestedOperation.saleTransactionID.TransactionID
						o.RequestSaleTransactionTimestamp = requestedOperation.saleTransactionID.TimeStamp
					End If
					If Not IsNothing(requestedOperation.originalPOITransactionID) Then
						o.RequestOriginalPOITransactionID = requestedOperation.originalPOITransactionID.TransactionID
						o.RequestOriginalPOITransactionTimestamp = requestedOperation.originalPOITransactionID.TimeStamp
					End If
					o.RequestCurrency = requestedOperation.currency.Value
					o.RequestRequestedAmount = requestedOperation.amount.AsDecimal
					timerBeforeTimeout.Tag = RealPaymentTimer()
					Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
					'retrieve real IDs used when sending the message
					If IsNothing(requestedOperation.saleTransactionID) Then requestedOperation.saleTransactionID = New TransactionIdentificationType
					requestedOperation.saleTransactionID.TransactionID = o.RequestSaleTransactionID
					requestedOperation.saleTransactionID.TimeStamp = o.RequestSaleTransactionTimestamp
					TestSendResult(result, o.MessageCategory.ToString, "Refund in progress" & vbCrLf & "Please wait...")
				End If

			Case WM_REVERSAL
				Me.Text = Caption = "REVERSAL REQUEST FROM SALE " & nexoSale.Settings.SaleID & " TO " & nexoSale.Settings.POIID
				pbCancel.Enabled = canBeCancelled
				Dim o As New NexoReversal()
				o.SaleID = GetSaleID()
				o.POIID = GetPOIID()
				'#If Not RETAILER30 Then
				'				If Not IsNothing(requestedOperation.saleTransactionID) Then
				'					o.RequestData.SaleDa RequestSaleTransactionID = requestedOperation.saleTransactionID.TransactionID
				'										o.RequestSaleTransactionTimestamp = requestedOperation.saleTransactionID.TimeStamp
				'				End If
				'#End If
				If Not IsNothing(requestedOperation.originalPOITransactionID) Then
					o.RequestOriginalPOITransactionID = requestedOperation.originalPOITransactionID.TransactionID
					o.RequestOriginalPOITransactionTimestamp = requestedOperation.originalPOITransactionID.TimeStamp
				End If
				timerBeforeTimeout.Tag = requestedOperation.POI.GeneralTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
				TestSendResult(result, o.MessageCategory.ToString, "Cancelling transaction" & vbCrLf & "Please wait")

			Case WM_RECONCILIATION
				Me.Text = Caption = "RECONCILIATION REQUEST [" & requestedOperation.reconciliationType.ToString & "] FROM SALE " & nexoSale.Settings.SaleID & " TO " & nexoSale.Settings.POIID
				pbCancel.Enabled = canBeCancelled
				Dim o As New NexoReconciliation()
				o.SaleID = GetSaleID()
				o.POIID = GetPOIID()
				o.RequestReconciliationType = requestedOperation.reconciliationType
				o.RequestData.POIReconciliationID = New NexoDigitString(requestedOperation.reconciliationID).Value
				If Not String.IsNullOrEmpty(requestedOperation.reconciliationAcquirerID) Then
					o.RequestData.AcquirerIDAddItem(New NexoDigitString(requestedOperation.reconciliationAcquirerID).Value)
				End If
				timerBeforeTimeout.Tag = requestedOperation.POI.GeneralTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
				TestSendResult(result, o.MessageCategory.ToString, "Reconciliating transaction [" & requestedOperation.reconciliationType.ToString & "]" & vbCrLf & "Please wait")

			Case WM_ABORT
				Me.Text = Caption = "ABORT REQUEST [" & requestedOperation.abortReason & "] FROM SALE " & nexoSale.Settings.SaleID & " TO " & nexoSale.Settings.POIID
				pbCancel.Enabled = canBeCancelled
				Dim o As New NexoAbort()
				o.SaleID = o.AbortSaleID = GetSaleID()
				o.POIID = o.AbortPOIID = GetPOIID()
				o.AbortReason = requestedOperation.abortReason
				o.AbortServiceID = requestedOperation.abortServiceID
				o.AbortMessageCategory = requestedOperation.abortMessageCategory
				timerBeforeTimeout.Tag = requestedOperation.POI.GeneralTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
				TestSendResult(result, o.MessageCategory.ToString, "Aborting transaction [" & requestedOperation.abortReason & "]" & vbCrLf & "Please wait")

			Case WM_CHECK_READ
				Me.Text = Caption = "READING CHECK REQUEST FROM SALE " & nexoSale.Settings.SaleID & " TO " & nexoSale.Settings.POIID
				pbCancel.Enabled = canBeCancelled
				Dim o As New NexoDeviceInput()
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
				Dim o As New NexoDevicePrint()
				o.SaleID = GetSaleID()
				o.POIID = GetPOIID()
				o.RequestDocumentQualifier = DocumentQualifierEnumeration.Document
				o.RequestResponseMode = ResponseModeEnumeration.PrintEnd
				o.RequestOutputFormat = OutputFormatEnumeration.Text
				'set text to print
				Dim texttoprint As New OutputTextType() With {.Value = Encoding.UTF8.GetString(Encoding.UTF8.GetBytes(requestedOperation.CheckToPrint.ToUpper()))}
				o.RequestData.PrintOutput.OutputContent.OutputTextAddItem(texttoprint)
				timerBeforeTimeout.Tag = requestedOperation.POI.CheckTimer
				Dim result As NexoRetailerClientHandle = nexoSale.NexoClient.SendRequest(o, timerBeforeTimeout.Tag, clientSettings)
				TestSendResult(result, o.MessageCategory.ToString, "Printing check" & vbCrLf & "Please wait")

			Case WM_RECEIVED_NOTIFICATION

			Case WM_RECEIVED_REQUEST

			Case WM_RECEIVED_REPLY
				If 0 < stackOfActions.Count Then
					'run the next action
					PostMessage(WM_ACTION)
				Else
					isInError = Not CBool(m.WParam)
					PostMessage(WM_AUTOCLOSE_START)
				End If

			Case WM_AUTOCLOSE_START
				PostMessage(ConfirmCancel.WM_CANCEL_CANCEL, wnd:=f)
				SetMessageColors()
				pbCancel.Enabled = True
				pbCancel.Focus()
				If nexoSale.Settings.Autoclose Then
					timerBeforeAutoClose = New Windows.Forms.Timer
					timerBeforeAutoClose.Interval = ONE_SECOND
					timerBeforeAutoClose.Tag = nexoSale.Settings.AutocloseDelay
					SetCancelButtonText(True)
					timerBeforeAutoClose.Start()
				Else
					SetCancelButtonText(False)
				End If

			Case WM_AUTOCLOSE
				PostMessage(WM_END)

			Case WM_END
				Close()

		End Select
		MyBase.WndProc(m)
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

	Public Sub OnReceivedReply(xml As String, obj As NexoObjectToProcess, tcp As TcpClient, threadData As CThreadData, o As Object)
		isComplete = True
		canBeCancelled = False
		timerBeforeTimeout.Stop()
		Dim res As Boolean = obj.CurrentObject.Success
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
			'processing financial operation
			Dim tmp As NexoFinancial = obj.CurrentObject
			Dim act As String
			If PaymentTypeEnumeration.Normal = tmp.PaymentType Then
				'processing payment
				Dim nxo As NexoPayment = obj.CurrentObject
				act = "Payment"
				If nxo.Success Then
					message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = act & " accepted"})
					requestedOperation.poiTransactionID.TransactionID = nxo.ReplyPOITransactionID
					requestedOperation.poiTransactionID.TimeStamp = nxo.ReplyPOITransactionTimestamp
				Else
					'test reason of failure
					If nxo.Refusal AndAlso nxo.LoggedOut Then
						'not logged, let's try to login before trying again
						stackOfActions.Push(Action.payment)
						stackOfActions.Push(Action.login)
						'we're going through another set of commands, let's consider it OK
						res = True
					Else
						stackOfActions.Clear()
						message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = act & " declined" & vbCrLf & DescribeError(nxo.Response)})
					End If
				End If

			ElseIf PaymentTypeEnumeration.Refund = tmp.PaymentType Then
				'processing refund
				Dim nxo As NexoRefund = obj.CurrentObject
				act = tmp.PaymentType.ToString
				If nxo.Success Then
					message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = act & " accepted"})
					requestedOperation.poiTransactionID.TransactionID = nxo.ReplyPOITransactionID
					requestedOperation.poiTransactionID.TimeStamp = nxo.ReplyPOITransactionTimestamp
				Else
					'test reason of failure
					If nxo.Refusal AndAlso nxo.LoggedOut Then
						'not logged, let's try to login before trying again
						stackOfActions.Push(Action.refund)
						stackOfActions.Push(Action.login)
						'we're going through another set of commands, let's consider it OK
						res = True
					Else
						stackOfActions.Clear()
						message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = act & " declined" & vbCrLf & DescribeError(nxo.Response)})
					End If
				End If
			End If

		ElseIf MessageCategoryEnumeration.Reversal = obj.Category Then
			'processing reversal
			Dim nxo As NexoReversal = obj.CurrentObject
			If res Then
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "Transaction has been reversed"})
			Else
				'test reason of failure
				If nxo.Refusal AndAlso nxo.LoggedOut Then
					'not logged, let's try to login before trying again
					stackOfActions.Push(Action.reversal)
					stackOfActions.Push(Action.login)
					'we're going through another set of commands, let's consider it OK
					res = True
				Else
					stackOfActions.Clear()
					message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "Transaction not reversed" & vbCrLf & DescribeError(nxo.Response)})
				End If
			End If

		ElseIf MessageCategoryEnumeration.Input = obj.Category Then
			Dim nxo As NexoDeviceInput = obj.CurrentObject
			If res Then
				Dim cmc7 As String = nxo.ReplyData.InputResult.Input.TextInput
				cmc7 = cmc7.Replace("&lt;", "D") 'S3
				cmc7 = cmc7.Replace("<", "D") 'S3
				cmc7 = cmc7.Replace(">", "F") 'S5
				cmc7 = cmc7.Replace(":", "B") 'S1
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "The check has been successfully read" & vbCrLf & "CheckID: " & cmc7})
			Else
				stackOfActions.Clear()
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "The check has not been read" & vbCrLf & DescribeError(nxo.Response)})
			End If

		ElseIf MessageCategoryEnumeration.Print = obj.Category Then
			Dim nxo As NexoDevicePrint = obj.CurrentObject
			If res Then
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "The check has been successfully printed"})
			Else
				stackOfActions.Clear()
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = "The check has not been printed" & vbCrLf & DescribeError(nxo.Response)})
			End If

		ElseIf MessageCategoryEnumeration.Reconciliation = obj.Category Then
			Dim nxo As NexoReconciliation = obj.CurrentObject
			If res Then
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = obj.Category.ToString & " was processed successfully"})
			Else
				stackOfActions.Clear()
				message.Invoke(myDelegate, New Activity() With {.Evt = ActivityEvent.message, .Message = obj.Category.ToString & " was not processed successfully" & vbCrLf & DescribeError(nxo.Response)})
			End If
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
		If canBeCancelled Then
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
			f = New ConfirmCancel
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

End Class