Imports NEXO
Imports NEXO.Client
Imports COMMON
Imports NEXOSALE

Public Class Main
	Private Nxo As New NEXOSALE.NEXOSALE

	Private Sub Main_Load(sender As Object, e As EventArgs) Handles MyBase.Load
		cbxServices.Items.Clear()
		For i As Action = Action._begin + 1 To Action._end - 1
			If Not i.ToString.StartsWith("_") Then
				Dim j As Integer = cbxServices.Items.Add(i)
			End If
		Next
		cbxServices.SelectedIndex = 0
		cbInternalPrinting.Checked = Nxo.UseInternalPrinting
	End Sub

	Private Structure MyCulture
		Public Name As String
		Public Tag As String
		Public Overrides Function ToString() As String
			Return Name
		End Function
	End Structure

	Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
		Nxo.DisplaySettings(CheckBox1.Checked)
		cbUseBackup.Checked = Nxo.UseBackup
	End Sub

	Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
		If cbUseAmount.Checked OrElse Action.Payment = cbxServices.SelectedItem OrElse Action.Refund = cbxServices.SelectedItem Then
			Try
				Nxo.Amount = Double.Parse(TextBox1.Text)
			Catch ex As Exception
				Nxo.Amount = 0.1
				TextBox1.Text = Nxo.Amount.ToString
			End Try
		Else
			Nxo.Amount = 0
		End If
		Select Case cbxServices.SelectedItem
			Case Action.Payment
			Case Action.Refund
				Nxo.OriginalPOITransactionID = Nothing
				Nxo.OriginalPOITransactionTimestamp = Nothing
			Case Action.Reversal
				Nxo.OriginalPOITransactionID = "00000000"
				Nxo.OriginalPOITransactionTimestamp = NexoISODateTime.CurrentDateTime
			Case Action.Reconciliation
		End Select
		Nxo.UseInternalPrinting = cbInternalPrinting.Checked
		Dim result As ActionResult = Nxo.DisplayProcessing(cbxServices.SelectedItem)
		lblResult.Text = My.Resources.Main_FinalResult & vbCrLf & result.ToString
		lblBrand.Text = My.Resources.Main_Brand & vbCrLf & Nxo.Brand
		Select Case result
			Case ActionResult.success
				Select Case cbxServices.SelectedItem
					Case Action.Payment
						Nxo.OriginalPOITransactionID = Nxo.POITransactionID
						Nxo.OriginalPOITransactionTimestamp = Nxo.POITransactionTimestamp
					Case Action.Refund
						Nxo.OriginalPOITransactionID = "AAA" 'Nothing
						Nxo.OriginalPOITransactionTimestamp = Nothing
					Case Action.Reversal
						Nxo.OriginalPOITransactionID = Nothing
						Nxo.OriginalPOITransactionTimestamp = Nothing
					Case Action.Reconciliation
				End Select
		End Select
	End Sub

	Private Sub cbUseBackup_CheckedChanged(sender As Object, e As EventArgs) Handles cbUseBackup.CheckedChanged
		Nxo.UseBackup = cbUseBackup.Checked
	End Sub

End Class