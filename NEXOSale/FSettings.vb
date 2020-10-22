Imports System.Windows.Forms
Imports System.Globalization
Imports System.Drawing
Imports COMMON
Imports System.IO

Public Class FSettings

	Public Settings As Settings
	Public UseBackup As Boolean = False
	Private Property Modified As Boolean
		Get
			Return _modified
		End Get
		Set(value As Boolean)
			_modified = value
			SetButtons()
		End Set
	End Property
	Private _modified As Boolean = False
	Private Const DEFAULT_PORT As Integer = 2018
	Private useAdvancedSettings As Boolean = False

	Public Sub New(advanced As Boolean)
		' This call is required by the designer.
		InitializeComponent()

		' Add any initialization after the InitializeComponent() call.
		useAdvancedSettings = advanced
	End Sub

	Private Sub TextBox_TextChanged(sender As Object, e As EventArgs) Handles efPOIID.TextChanged, efSaleID.TextChanged, efServerIP.TextChanged, efSettingsFileName.TextChanged, efSoftwareVersion.TextChanged, efManufacturerName.TextChanged, efCertificationCode.TextChanged, efApplicationName.TextChanged, efLogFileName.TextChanged, efServerIPBackup.TextChanged
		Modified = True
		'If sender Is efServerIP orelse sender Is efServerIPBackup OrElse sender Then
		SetServerColors(efServerIP, udServerPort, SystemColors.Window)
		SetServerColors(efServerIPBackup, udServerPortBackup, SystemColors.Window)
		SetButtons()
	End Sub

	Private Sub CheckBox_CheckedChanged(sender As Object, e As EventArgs) Handles cbSaleIDUSeIP.CheckedChanged, cbPOIIDUseIP.CheckedChanged, cbSynchronous.CheckedChanged, cbAutoclose.CheckedChanged, cbSupportsCancel.CheckedChanged, cbPrintReceipt.CheckedChanged, cbSynchronousBackup.CheckedChanged, cbSupportsCheckBackup.CheckedChanged, cbSupportsCheck.CheckedChanged, cbSupportsCancelBackup.CheckedChanged, cbPrintReceiptBackup.CheckedChanged, cbSupportsRefundBackup.CheckedChanged, cbSupportsRefund.CheckedChanged
		Modified = True
		SetButtons()
	End Sub

	Private Sub UpDown_ValueChanged(sender As Object, e As EventArgs) Handles udServerPort.ValueChanged, udPaymentTimer.ValueChanged, udAutocloseDelay.ValueChanged, udPaymentTimerBackup.ValueChanged, udGeneralTimerBackup.ValueChanged, udGeneralTimer.ValueChanged, udCheckTimerBackup.ValueChanged, udCheckTimer.ValueChanged
		Modified = True
		SetButtons()
	End Sub

	Private Sub SetButtons()
		If Modified Then
			pbCancel.Text = "&Cancel"
		Else
			pbCancel.Text = "&Close"
		End If
		pbSave.Enabled = Modified
		pbSaveSettings.Enabled = pbSave.Enabled
		panelPaymentTimer.Enabled = cbSupportsCancel.Checked
		panelPaymentTimerBackup.Enabled = cbSupportsCancelBackup.Checked
		panelChecks.Enabled = cbSupportsCheck.Checked
		panelChecksBackup.Enabled = cbSupportsCheckBackup.Checked
		efSaleID.Enabled = Not cbSaleIDUSeIP.Checked
		efPOIID.Enabled = Not cbPOIIDUseIP.Checked
		cbUseBackup.Enabled = Not String.IsNullOrEmpty(efServerIPBackup.Text)
	End Sub

	Private Sub FSettings_Load(sender As Object, e As EventArgs) Handles MyBase.Load
		If useAdvancedSettings Then
			TabControl1.SelectedTab = TabControl1.TabPages(1)
		Else
			TabControl1.SelectedTab = TabControl1.TabPages(0)
			TabControl1.TabPages.RemoveByKey(advancedSettingsPage.Name)
		End If
		'do not touch this, it makes room for the icon
		pbChooseSettingsFile.Text = "    "
		pbChooseLogFile.Text = "    "
		'load available currencies
		LoadCurrencies()
		'finally load settings
		LoadSettings()
		Modified = False
		SetButtons()
	End Sub

	Private Sub LoadCurrencies()
		'load available currencies from a json stored inside the same folder
		Dim json As New CJson(Of Currencies)()
		json.FileName = "nexosale.currencies.json"
		Dim currencies As Currencies = json.ReadSettings()
		If Not IsNothing(currencies) Then
			'if currencies are available let's display them
			For Each k As KeyValuePair(Of String, Currency) In currencies
				cbxCurrency.Items.Add(k)
			Next
		Else
			'if no available currency use the default one
			Dim currency As New Currency
			currency.Name = New RegionInfo(System.Globalization.CultureInfo.CurrentCulture.LCID).ISOCurrencySymbol
			currency.Decimals = System.Globalization.CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalDigits
			cbxCurrency.SelectedIndex = cbxCurrency.Items.Add(currency)
		End If
	End Sub

	Private Sub TestConnection(streamSettings As CStreamClientSettings, ip As Control, port As Control)
		Dim streamIO = CStream.Connect(streamSettings)
		If streamIO Is Nothing Then
			SetServerColors(ip, port, Color.Crimson)
		Else
			CStream.Disconnect(streamIO)
			SetServerColors(ip, port, Color.LightGreen)
		End If
	End Sub

	Private Sub pbTestConnection_Click(sender As Object, e As EventArgs) Handles pbTestConnection.Click
		TestConnection(New CStreamClientSettings With {.IP = efServerIP.Text, .Port = udServerPort.Value}, efServerIP, udServerPort)
	End Sub

	Private Sub pbTestConnectionBackup_Click(sender As Object, e As EventArgs) Handles pbTestConnectionBackup.Click
		TestConnection(New CStreamClientSettings With {.IP = efServerIPBackup.Text, .Port = udServerPortBackup.Value}, efServerIPBackup, udServerPortBackup)
	End Sub

	Private Sub SetServerColors(ip As Control, port As Control, c As Color)
		ip.BackColor = c
		port.BackColor = c
	End Sub

	Private Sub FSettings_FormClosing(sender As Object, e As Windows.Forms.FormClosingEventArgs) Handles MyBase.FormClosing
		If Modified Then
			Select Case MsgBox("Some settings have been modified." & vbCrLf & "Do you want to save them ?", MsgBoxStyle.YesNoCancel Or MsgBoxStyle.DefaultButton1 Or MsgBoxStyle.Question)
				Case MsgBoxResult.Yes
					SaveSettings()
					e.Cancel = False
					DialogResult = MsgBoxResult.Ok
				Case MsgBoxResult.No
					e.Cancel = False
					DialogResult = MsgBoxResult.Cancel
				Case MsgBoxResult.Cancel
					e.Cancel = True
					DialogResult = MsgBoxResult.Ignore
					SetButtons()
			End Select
		Else
			DialogResult = MsgBoxResult.Ok
		End If
	End Sub

	Private Function SettingsFileName() As String
		If Not Settings Is Nothing Then
			Return Settings.LogFileName 'settingsFileNamePath & SETTINGS_FILE_NAME
		End If
		Return "nexosale.settings.json"
	End Function

	Private Sub SaveSettings()
		Dim json As New CJson(Of Settings)()
		json.FileName = efSettingsFileName.Text

		Settings.POIID = efPOIID.Text
		Settings.POIIDUseIP = cbPOIIDUseIP.Checked
		Settings.SaleID = efSaleID.Text
		Settings.SaleIDUseIP = cbSaleIDUSeIP.Checked
		Settings.ApplicationName = efApplicationName.Text
		Settings.ManufacturerName = efManufacturerName.Text
		Settings.SoftwareVersion = efSoftwareVersion.Text
		Settings.CertificationCode = efCertificationCode.Text
		Dim currency As Currency = cbxCurrency.SelectedItem
		cbxCurrency.SelectedItem.ToString()
		Settings.Currency = currency.Name
		Settings.Decimals = currency.Decimals
		Settings.Autoclose = cbAutoclose.Checked
		Settings.AutocloseDelay = udAutocloseDelay.Value
		Settings.SettingsFileName = json.FileName
		Settings.LogFileName = efLogFileName.Text
		Settings.UseDate = cbUseDate.Checked
		Settings.AdminCode = efAdminCode.Text
		UseBackup = cbUseBackup.Checked

		'primary POI settings
		If IsNothing(Settings.Primary) Then Settings.Primary = New POISettings
		'Settings.Primary.ConsiderPrimary = True
		Settings.Primary.ServerIP = efServerIP.Text
		Settings.Primary.ServerPort = udServerPort.Value
		Settings.Primary.Synchronous = cbSynchronous.Checked
		Settings.Primary.PrintReceipt = cbPrintReceipt.Checked
		Settings.Primary.SupportsCancel = cbSupportsCancel.Checked
		Settings.Primary.PaymentTimer = udPaymentTimer.Value
		Settings.Primary.SupportsCheck = cbSupportsCheck.Checked
		Settings.Primary.CheckTimer = udCheckTimer.Value
		Settings.Primary.GeneralTimer = udGeneralTimer.Value

		'backup POI settings
		If IsNothing(Settings.Backup) Then Settings.Backup = New POISettings
		'Settings.Primary.ConsiderPrimary = False
		Settings.Backup.ServerIP = efServerIPBackup.Text
		Settings.Backup.ServerPort = udServerPortBackup.Value
		Settings.Backup.Synchronous = cbSynchronousBackup.Checked
		Settings.Backup.PrintReceipt = cbPrintReceiptBackup.Checked
		Settings.Backup.SupportsCancel = cbSupportsCancelBackup.Checked
		Settings.Backup.PaymentTimer = udPaymentTimerBackup.Value
		Settings.Backup.SupportsCheck = cbSupportsCheckBackup.Checked
		Settings.Backup.CheckTimer = udCheckTimerBackup.Value
		Settings.Backup.GeneralTimer = udGeneralTimerBackup.Value

		If Not json.WriteSettings(Settings, True) Then
			MsgBox("Settings file hasn't been saved. Please check file name and path" & vbCrLf & vbCrLf & SettingsFileName())
		End If

		Modified = False
	End Sub

	Private Sub LoadSettings()
		Dim json As New CJson(Of Settings)()
		json.FileName = SettingsFileName()
		efSettingsFileName.Text = json.FileName
		Settings = json.ReadSettings()
		If Not IsNothing(Settings) Then

			efPOIID.Text = Settings.POIID
			cbPOIIDUseIP.Checked = Settings.POIIDUseIP
			efSaleID.Text = Settings.SaleID
			cbSaleIDUSeIP.Checked = Settings.SaleIDUseIP
			efApplicationName.Text = Settings.ApplicationName
			efManufacturerName.Text = Settings.ManufacturerName
			efSoftwareVersion.Text = Settings.SoftwareVersion
			efCertificationCode.Text = Settings.CertificationCode
			Try
				Dim currency As New Currency
				currency.Name = Settings.Currency
				currency.Decimals = Settings.Decimals
				cbxCurrency.SelectedItem = currency
			Catch ex As Exception
				cbxCurrency.SelectedIndex = 0
			End Try
			If IsNothing(cbxCurrency.SelectedItem) AndAlso 0 < cbxCurrency.Items.Count Then
				cbxCurrency.SelectedIndex = 0
			End If
			cbAutoclose.Checked = Settings.Autoclose
			Try
				udAutocloseDelay.Value = Settings.AutocloseDelay
			Catch ex As Exception
				udAutocloseDelay.Value = 2
			End Try
			efLogFileName.Text = Settings.LogFileName
			cbUseBackup.Checked = UseBackup

			'primary POI settings
			If IsNothing(Settings.Primary) Then Settings.Primary = New POISettings
			'Settings.Primary.ConsiderPrimary = True
			efServerIP.Text = Settings.Primary.ServerIP
			Try
				udServerPort.Value = Settings.Primary.ServerPort
			Catch ex As Exception
				udServerPort.Value = DEFAULT_PORT
			End Try
			cbSynchronous.Checked = Settings.Primary.Synchronous
			cbPrintReceipt.Checked = Settings.Primary.PrintReceipt
			cbSupportsRefund.Checked = Settings.Primary.SupportsRefund
			cbSupportsCancel.Checked = Settings.Primary.SupportsCancel
			Try
				udPaymentTimer.Value = Settings.Primary.PaymentTimer
			Catch ex As Exception
				udPaymentTimer.Value = 0
			End Try
			cbSupportsCheck.Checked = Settings.Primary.SupportsCheck
			Try
				udCheckTimer.Value = Settings.Primary.CheckTimer
			Catch ex As Exception
				udCheckTimer.Value = 20
			End Try
			Try
				udGeneralTimer.Value = Settings.Primary.GeneralTimer
			Catch ex As Exception
				udGeneralTimer.Value = 10
			End Try

			'backup POI settings
			If IsNothing(Settings.Backup) Then Settings.Backup = New POISettings
			'Settings.Backup.ConsiderPrimary = False
			efServerIPBackup.Text = Settings.Backup.ServerIP
			Try
				udServerPortBackup.Value = Settings.Backup.ServerPort
			Catch ex As Exception
				udServerPortBackup.Value = DEFAULT_PORT
			End Try
			cbSynchronousBackup.Checked = Settings.Backup.Synchronous
			cbPrintReceiptBackup.Checked = Settings.Backup.PrintReceipt
			cbSupportsRefundBackup.Checked = Settings.Backup.SupportsRefund
			cbSupportsCancelBackup.Checked = Settings.Backup.SupportsCancel
			Try
				udPaymentTimerBackup.Value = Settings.Backup.PaymentTimer
			Catch ex As Exception
				udPaymentTimerBackup.Value = 0
			End Try
			cbSupportsCheckBackup.Checked = Settings.Backup.SupportsCheck
			Try
				udCheckTimerBackup.Value = Settings.Backup.CheckTimer
			Catch ex As Exception
				udCheckTimerBackup.Value = 20
			End Try
			Try
				udGeneralTimerBackup.Value = Settings.Backup.GeneralTimer
			Catch ex As Exception
				udGeneralTimerBackup.Value = 10
			End Try
		Else
			Settings = New Settings
			SaveSettings()
		End If
		Modified = False
	End Sub

	Private Sub pbSaveSettings_Click(sender As Object, e As EventArgs) Handles pbSaveSettings.Click
		SaveSettings()
	End Sub

	Private Sub pbCancel_Click(sender As Object, e As EventArgs) Handles pbCancel.Click
		DialogResult = MsgBoxResult.Abort
		Close()
	End Sub

	Private Sub pbSave_Click(sender As Object, e As EventArgs) Handles pbSave.Click
		SaveSettings()
		DialogResult = MsgBoxResult.Ok
		Close()
	End Sub

	Private Function ChooseFile(originalFile As String, filter As String) As String
		Dim f As String = originalFile
		Dim p As String
		'try to get to folder of the origianl file
		Try
			Dim fi As New FileInfo(originalFile)
			p = fi.DirectoryName
		Catch ex As Exception
			p = Nothing
		End Try
		'if invalid try to access the Documents folder
		If String.IsNullOrEmpty(p) Then
			Try
				p = System.Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments)
			Catch ex As Exception
				p = Nothing
			End Try
		End If
		'if invalid try to access the TEMP folder
		If String.IsNullOrEmpty(p) Then
			Try
				p = Path.GetTempPath
			Catch ex As Exception
				p = Nothing
			End Try
		End If
		'if still invalid use the current folder
		If String.IsNullOrEmpty(p) Then
			p = "."
		End If
		OpenFileDialog1.InitialDirectory = p
		OpenFileDialog1.Filter = filter
		OpenFileDialog1.RestoreDirectory = True
		Select Case OpenFileDialog1.ShowDialog()
			Case MsgBoxResult.Ok
				f = OpenFileDialog1.FileName
		End Select
		Return f
	End Function

	Private Sub pbChooseSettingsFile_Click(sender As Object, e As EventArgs) Handles pbChooseSettingsFile.Click
		efSettingsFileName.Text = ChooseFile(efSettingsFileName.Text, "Json files|*.json|Text files|*.txt|All files|*.*")

	End Sub

	Private Sub pbChooseLogFile_Click(sender As Object, e As EventArgs) Handles pbChooseLogFile.Click
		efLogFileName.Text = ChooseFile(efLogFileName.Text, "Log files|*.log|Text files|*.txt|All files|*.*")
	End Sub

End Class