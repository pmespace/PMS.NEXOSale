Imports System.Windows.Forms
Imports COMMON
Imports COMMON.WIN32
Imports NEXO.Client

Public Class FWait

	Private clientSettings As NexoRetailerClientSettings
	Private nexoSale As NEXOSALE
	Private thr As New CThread()

	Private Const WM_BASE As UInteger = Win32.WM_USER + 209
	Private Const WM_START As UInteger = WM_BASE + 1
	Private Const WM_STOP As UInteger = WM_BASE + 2
	Private Const WM_ERROR1 As UInteger = WM_BASE + 11
	Private Const WM_ERROR2 As UInteger = WM_BASE + 12
	Private Const WM_ERROR3 As UInteger = WM_BASE + 13

	Private Const WM_CONNECT As UInteger = WM_BASE + 50
	Private Const WM_CONNECT_SUCCESS As UInteger = WM_BASE + 51
	Private Const WM_CONNECT_ERROR As UInteger = WM_BASE + 52
	Private Const WM_CONNECT_END As UInteger = WM_BASE + 53

	Public Sub New(p As NEXOSALE, settings As NexoRetailerClientSettings)
		' This call is required by the designer.
		InitializeComponent()
		clientSettings = settings
		nexoSale = p
	End Sub

#Region "interface management"
	Private Enum ActivityEvent
		_none
		message
	End Enum
	Private Class Activity
		Public Property Evt As ActivityEvent = ActivityEvent._none
		Public Property Message1 As String = Nothing
		Public Property Message2 As String = Nothing
	End Class
	Private Delegate Sub AddActivity(Activity As Activity)
	Private myDelegate As AddActivity = New AddActivity(AddressOf ProcessUI)

	Private Sub ProcessUI(activity As Activity)
		'If ActivityEvent._none <> activity.Evt Then
		'	Select Case activity.Evt
		'		Case ActivityEvent.message
		Label1.Text = activity.Message1
		Label2.Text = activity.Message2
		'	End Select
		'End If
	End Sub
#End Region

#Region "Message management"
	Private Sub PostMessage(msg As UInteger, Optional wparam As Integer = 0, Optional lparam As Integer = 0, Optional wnd As Form = Nothing)
		Dim hwnd As IntPtr = Me.Handle
		If Not IsNothing(wnd) Then hwnd = wnd.Handle
		Win32.PostMessage(hwnd, msg, wparam, lparam)
	End Sub

	Private Sub SendMessage(msg As Integer, Optional wparam As Integer = 0, Optional lparam As Integer = 0)
		Win32.SendMessage(Me.Handle, msg, wparam, lparam)
	End Sub
#End Region

	Private Sub FWait_Load(sender As Object, e As EventArgs) Handles MyBase.Load
		pbClose.Enabled = False
		pbClose.Focus()
		PostMessage(WM_START)
	End Sub

	Protected Overrides Sub WndProc(ByRef m As Message)
		Select Case (m.Msg)
			Case WM_START
				If nexoSale.UseBackup Then
					ProcessUI(New Activity() With {.Evt = ActivityEvent.message, .Message1 = My.Resources.CommonResources.FWait_ConnectingToPOIBackup, .Message2 = My.Resources.CommonResources.PleaseWait})
				Else
					ProcessUI(New Activity() With {.Evt = ActivityEvent.message, .Message1 = My.Resources.CommonResources.FWait_ConnectingToPOI, .Message2 = My.Resources.CommonResources.PleaseWait})
				End If
				PostMessage(WM_CONNECT)

			Case WM_ERROR1
				ProcessUI(New Activity() With {.Evt = ActivityEvent.message, .Message1 = My.Resources.CommonResources.FWait_ErrorStartingConnectionProcess})
				pbClose.Enabled = True

			Case WM_ERROR2
				ProcessUI(New Activity() With {.Evt = ActivityEvent.message, .Message1 = My.Resources.CommonResources.FWait_FatalError})
				pbClose.Enabled = True

			Case WM_ERROR3
				ProcessUI(New Activity() With {.Evt = ActivityEvent.message, .Message1 = My.Resources.CommonResources.FWait_ConnectionFailed})
				pbClose.Enabled = True

			Case WM_CONNECT
				thr.ID = 1
				'start thread connecting to the POI
				Dim thrData As New CThreadData
				thrData.StoppedMessage = WM_CONNECT_END
				thrData.WindowToWarn = Me.Handle
				If Not thr.Start(AddressOf MyThreadFunction, thrData, nexoSale) Then
					PostMessage(WM_ERROR1)
				End If

			Case WM_CONNECT_END
				thr.Wait()
				Select Case thr.Result
					Case WM_CONNECT_ERROR
						PostMessage(WM_ERROR3)
					Case WM_CONNECT_SUCCESS
						PostMessage(WM_STOP)
					Case Else
						PostMessage(WM_ERROR2)
				End Select

			Case WM_STOP
				DialogResult = DialogResult.Yes
				Close()
		End Select
		MyBase.WndProc(m)
	End Sub

	Function MyThreadFunction(thread As CThread, Optional o As Object = Nothing) As Integer
		Dim f As Boolean = nexoSale.Connect(clientSettings)
		If f Then
			Return WM_CONNECT_SUCCESS
		End If
		Return WM_CONNECT_ERROR
	End Function

	Private Sub pbClose_Click(sender As Object, e As EventArgs) Handles pbClose.Click
		DialogResult = DialogResult.No
		Close()
	End Sub

End Class