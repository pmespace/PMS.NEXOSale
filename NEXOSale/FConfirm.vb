Imports System.Windows.Forms
Imports COMMON
Imports COMMON.WIN32

Public Class FConfirm

	Private HEADER As String = "CONFIRM CANCEL REQUEST WINDOW - "
	Public AlwaysUseDate As Boolean = False
	Public MessageToDisplay As String = My.Resources.CommonResources.FConfirm_CancelOperationRequest
	Public Shared WM_CANCEL_CANCEL As UInteger = Win32.WM_USER + 1
	Public Code As String

	Protected Overrides Sub WndProc(ByRef m As Message)
		Select Case (m.Msg)
			Case WM_CANCEL_CANCEL
				DialogResult = DialogResult.Cancel
				Close()
		End Select
		MyBase.WndProc(m)
	End Sub

	Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
		pbAccept.Enabled = Not String.IsNullOrEmpty(TextBox1.Text)
	End Sub

	Private Sub pbCancel_Click(sender As Object, e As EventArgs) Handles pbCancel.Click
		CLog.Add(HEADER & "Confirmation cancelled")
		DialogResult = DialogResult.Cancel
		Close()
	End Sub

	Private Sub pbAccept_Click(sender As Object, e As EventArgs) Handles pbAccept.Click
		Dim s As String = Code
		If ShouldUseDate() Then
			s = DateTime.Now.ToString("yyyyMMdd")
		End If
		If TextBox1.Text = s Then
			Dim asx As String = "Confirmation given using "
			If ShouldUseDate() Then
				asx &= "using Date"
			Else
				asx &= "using admin code"
			End If
			CLog.Add(HEADER & asx)
			DialogResult = DialogResult.OK
			Close()
		Else
			CLog.Add(HEADER & "Failed to give confirmation")
			MsgBox(My.Resources.CommonResources.FConfirm_InvalidAdminCode)
		End If
	End Sub

	Private Sub ConfirmCancel_Load(sender As Object, e As EventArgs) Handles MyBase.Load
		If Not String.IsNullOrEmpty(MessageToDisplay) Then lblMessage.Text = MessageToDisplay
		If ShouldUseDate() Then
			lblInvite.Text = My.Resources.CommonResources.FConfirm_EnterTodaysDate
		End If
		CLog.Add(HEADER & $"Start [{lblInvite.Text}]")
	End Sub

	Private Function ShouldUseDate() As Boolean
		Return String.IsNullOrEmpty(Code) OrElse AlwaysUseDate
	End Function
End Class