Imports System.Windows.Forms
Imports COMMON
Public Class FConfirmCancel

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
		DialogResult = DialogResult.Cancel
		Close()
	End Sub

	Private Sub pbAccept_Click(sender As Object, e As EventArgs) Handles pbAccept.Click
		Dim s As String = Code
		If String.IsNullOrEmpty(Code) Then s = DateTime.Now.ToString("yyyyMMdd")
		If TextBox1.Text = s Then
			DialogResult = DialogResult.OK
			Close()
		Else
			MsgBox("Invalid admin code")
		End If
	End Sub

	Private Sub ConfirmCancel_Load(sender As Object, e As EventArgs) Handles MyBase.Load
		If String.IsNullOrEmpty(Code) Then
			lblInvite.Text = "Enter today's date (YYYYMMDD):"
		End If
	End Sub
End Class