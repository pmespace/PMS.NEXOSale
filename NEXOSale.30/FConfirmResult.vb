Imports System.Windows.Forms
Imports COMMON
Public Class FConfirmResult
	Private HEADER As String = "CONFIRM RESULT WINDOW - "
	Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
		CLog.Add(HEADER & "Confirmed")
		DialogResult = DialogResult.Yes
	End Sub

	Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
		CLog.Add(HEADER & "No confirmation")
		DialogResult = DialogResult.No
	End Sub

	Private Sub FConfirmResult_Load(sender As Object, e As EventArgs) Handles MyBase.Load
		DialogResult = DialogResult.None
		CLog.Add(HEADER & "Start")
	End Sub
End Class