Imports System.Drawing.Printing

Public Class FSelectPrinter

	Public SelectedPrinter As String
	Private initialIndex As Integer = -1

	Private Sub FSelectPrinter_Load(sender As Object, e As EventArgs) Handles MyBase.Load
		For Each printer As String In System.Drawing.Printing.PrinterSettings.InstalledPrinters
			Dim printerSettings As New PrinterSettings
			printerSettings.PrinterName = printer
			If printerSettings.IsDefaultPrinter Then printer = $"{printer} {My.Resources.CommonResources.FSelectPrinter_DefaultPrinter}"
			Dim i As Integer = lbPrinters.Items.Add(printer)
			If 0 = String.Compare(SelectedPrinter, printer, True) Then
				lbPrinters.SelectedIndex = i
				initialIndex = i
			End If
		Next
		SetButtons()
	End Sub

	Private Sub SetButtons()
		pbSelect.Enabled = -1 <> lbPrinters.SelectedIndex AndAlso initialIndex <> lbPrinters.SelectedIndex
		If pbSelect.Enabled Then
			pbClose.Text = My.Resources.CommonResources.Button_CancelX
		Else
			pbClose.Text = My.Resources.CommonResources.Button_CloseX
		End If
	End Sub

	Private Sub lbPrinters_SelectedIndexChanged(sender As Object, e As EventArgs) Handles lbPrinters.SelectedIndexChanged
		SetButtons()
	End Sub

	Private Sub pbClose_Click(sender As Object, e As EventArgs) Handles pbClose.Click
		DialogResult = Windows.Forms.DialogResult.Cancel
		Close()
	End Sub

	Private Sub pbSelect_Click(sender As Object, e As EventArgs) Handles pbSelect.Click
		DialogResult = Windows.Forms.DialogResult.OK
		SelectedPrinter = lbPrinters.SelectedItem
		Close()
	End Sub

End Class