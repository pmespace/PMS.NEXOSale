Imports NEXO
Imports COMMON
Imports NEXOSALE

Public Class Main
	Private Nxo As New NEXOSALE.NEXOSALE

	Private Sub Main_Load(sender As Object, e As EventArgs) Handles MyBase.Load
		ComboBox1.Items.Clear()
		For i As Action = Action._begin + 1 To Action._end - 1
			If Not i.ToString.StartsWith("_") Then
				Dim j As Integer = ComboBox1.Items.Add(i)
			End If
		Next
		ComboBox1.SelectedIndex = 0
	End Sub

	Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
		Nxo.DisplaySettings(CheckBox1.Checked)
	End Sub

	Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
		Try
			Nxo.Amount = UInteger.Parse(TextBox1.Text)
			Select Case ComboBox1.SelectedItem
				Case Action.Payment
				Case Action.Refund
					Nxo.OriginalPOITransactionID = Nothing
					Nxo.OriginalPOITransactionTimestamp = Nothing
				Case Action.Reversal
					Nxo.Amount = 0
				Case Action.Reconciliation
			End Select
		Catch ex As Exception
			TextBox1.Text = 100
			Nxo.Amount = 100
		End Try
		Dim result As ActionResult = Nxo.DisplayProcessing(ComboBox1.SelectedItem)
		lblResult.Text = result.ToString
		lblBrand.Text = Nxo.Brand
		Select Case result
			Case ActionResult.success
				Select Case ComboBox1.SelectedItem
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

End Class