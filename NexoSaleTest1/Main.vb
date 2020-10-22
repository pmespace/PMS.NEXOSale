Imports NEXOSALE

Public Class Main
	Private Nxo As NEXOSALE.NEXOSALE

	Private Sub Main_Load(sender As Object, e As EventArgs) Handles MyBase.Load
		ComboBox1.Items.Clear()
		For i As Action = Action._begin + 1 To Action._base - 1
			Dim j As Integer = ComboBox1.Items.Add(i)
		Next
	End Sub

	Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
		Nxo.DisplaySettings(CheckBox1.Checked)
	End Sub

	Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
		Try
			Nxo.Amount = UInteger.Parse(TextBox1.Text)
		Catch ex As Exception
			TextBox1.Text = 100
			Nxo.Amount = 100
		End Try
		Nxo.DisplayProcessing(ComboBox1.SelectedItem)
	End Sub
End Class