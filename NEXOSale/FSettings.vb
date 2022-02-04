﻿#Const REMOVEGPRSPAGE = Not DEBUG
#Const REMOVEPOIISOFFLINE = Not DEBUG
#Const REMOVEPDFRECEIPTS = Not DEBUG
#Const SUPPORTSABORT = Not DEBUG
#Const SUPPORTSCHECKS = Not DEBUG

Imports System.Windows.Forms
Imports System.Globalization
Imports System.Drawing
Imports COMMON
Imports NEXO
Imports System.IO
Imports System.Net.Security
Imports Microsoft.Win32

Public Class FSettings

	Public Settings As Settings
	Public UseBackup As Boolean = False

	Private Property Modified As Boolean
		Get
			Return _initialised And _modified
		End Get
		Set(value As Boolean)
			_modified = value
			SetButtons()
		End Set
	End Property

	Private _modified As Boolean = False
	Private _initialised As Boolean = False
	Private Const DEFAULT_PORT As Integer = 2018
	Private useAdvancedSettings As Boolean = False
	Private nexoSale As NEXOSALE = Nothing
	Private POIIsOffline As Boolean = False

	Public Sub New(ByRef a As NEXOSALE, advanced As Boolean)
		MyBase.New
		nexoSale = a
		POIIsOffline = nexoSale.POIIsOffline

		' This call is required by the designer.
		InitializeComponent()

		' Add any initialization after the InitializeComponent() call.
		useAdvancedSettings = advanced
	End Sub

	Private Sub TextBox_TextChanged(sender As Object, e As EventArgs) Handles efPOIID.TextChanged, efSaleID.TextChanged, efServerIP.TextChanged, efSettingsFileName.TextChanged, efSoftwareVersion.TextChanged, efManufacturerName.TextChanged, efCertificationCode.TextChanged, efApplicationName.TextChanged, efLogFileName.TextChanged, efUser.TextChanged, efPWD.TextChanged, efICCD.TextChanged, efGatewayIP.TextChanged, efPicture.TextChanged, efReceiptsDirectory.TextChanged, efServerName.TextChanged
		If _initialised Then
			'If sender Is efServerIP orelse sender Is efServerIPBackup OrElse sender Then
			SetServerColors(efServerIP, udServerPort, SystemColors.Window)
			Modified = True
		End If
	End Sub

	Private Sub CheckBox_CheckedChanged(sender As Object, e As EventArgs) Handles cbSaleIDUSeIP.CheckedChanged, cbPOIIDUseIP.CheckedChanged, cbSynchronous.CheckedChanged, cbAutoclose.CheckedChanged, cbSupportsReversal.CheckedChanged, cbPrintReceipt.CheckedChanged, cbSupportsCheck.CheckedChanged, cbSupportsRefund.CheckedChanged, cbUseBackup.CheckedChanged, cbSupportsReconciliation.CheckedChanged, cbSupportsAbort.CheckedChanged, cbMerchant.CheckedChanged, cbCustomer.CheckedChanged, cbUseDate.CheckedChanged, cbResuseMerchantReferenceID.CheckedChanged, cbRemoteCertificateNotAvailable.CheckedChanged, cbRemoteCertificateNameMismatch.CheckedChanged, cbRemoteCertificateChainErrors.CheckedChanged, cbNoAutoCloseOnError.CheckedChanged, cbPOIIsOffline.CheckedChanged, cbReturnBrand.CheckedChanged, cbAllowOfflinePOI.CheckedChanged
		If _initialised Then
			If sender Is cbUseBackup Then
				cbPOIIsOffline.Checked = False
			ElseIf sender Is cbAllowOfflinePOI Then
				cbPOIIsOffline.Checked = False
			ElseIf sender Is cbPOIIsOffline Then
				POIIsOffline = cbPOIIsOffline.Checked
			End If
			Modified = True
		End If
	End Sub

	Private Sub UpDown_ValueChanged(sender As Object, e As EventArgs) Handles udServerPort.ValueChanged, udPaymentTimer.ValueChanged, udAutocloseDelay.ValueChanged, udGeneralTimer.ValueChanged, udCheckTimer.ValueChanged, udICCDPort.ValueChanged
		If _initialised Then
			Modified = True
		End If
	End Sub

	Private Sub SetButtons()
		If Modified Then
			pbCancel.Text = "&Cancel"
		Else
			pbCancel.Text = "&Close"
		End If
		pbSave.Enabled = Modified
		pbSaveSettings.Enabled = pbSave.Enabled
		'panelPaymentTimer.Enabled = cbSupportsReversal.Checked
		panelChecks.Enabled = cbSupportsCheck.Checked
		panelReceipts.Enabled = cbPrintReceipt.Enabled AndAlso cbPrintReceipt.Checked
		efSaleID.Enabled = Not cbSaleIDUSeIP.Checked
		efPOIID.Enabled = Not cbPOIIDUseIP.Checked

		cbUseBackup.Enabled = Not IsNothing(Settings) AndAlso Not IsNothing(Settings.Backup) AndAlso Not String.IsNullOrEmpty(Settings.Backup.ServerIP)

		cbPOIIsOffline.Enabled = Not IsNothing(Settings) AndAlso Settings.AllowOfflinePOI AndAlso POIIsOffline
	End Sub

	Private Sub FSettings_Load(sender As Object, e As EventArgs) Handles MyBase.Load
		Text = $"NEXOSale Settings [nexo retailer v{NexoCurrentVersion.Current.Version}]"
		rbMainPOI.Checked = True
		efPWD.PasswordChar = "●" ' Microsoft.VisualBasic.charw &H25CF

#If REMOVEGPRSPAGE Then
		Try
			cbGPRS.Checked = False
			cbGPRS.Enabled = False
			cbGPRS.Visible = False
			TabControl1.TabPages.RemoveByKey(GPRSPage.Name)
		Catch ex As Exception
		End Try
#End If

#If REMOVEPDFRECEIPTS Then
		Try
			cbSavePDF.Checked = False
			cbSavePDF.Enabled = False
			cbPrintReceipt.Enabled = False
			pnlReceipts.Enabled = False
			pnlReceipts.Visible = False
			lblReceiptsFolder.Visible = False
			TabControl1.TabPages.RemoveByKey(printSettingsPage.Name)
		Catch ex As Exception
		End Try
#End If

#If SUPPORTSABORT Then
		Try
			cbSupportsAbort.Enabled = False
		Catch ex As Exception
		End Try
#End If

#If SUPPORTSCHECKS Then
		Try
			cbSupportsCheck.Enabled = False
		Catch ex As Exception
		End Try
#End If

		If useAdvancedSettings Then
			TabControl1.SelectedTab = TabControl1.TabPages(1)
		Else
			For i As Integer = TabControl1.TabPages.Count To 2 Step -1
				TabControl1.TabPages.RemoveAt(i - 1)
			Next
			TabControl1.SelectedTab = TabControl1.TabPages(0)
		End If
		'do not touch this, it makes room for the icon
		pbChooseSettingsFile.Text = "    "
		pbChooseLogFile.Text = "    "
		'load available currencies
		LoadCurrencies()
		'finally load settings
		LoadSettings()

		If Settings.AllowOfflinePOI Then
			Try
				cbPOIIsOffline.Checked = POIIsOffline
			Catch ex As Exception
			End Try
		End If

		cbPOIIsOffline.Checked = POIIsOffline

		_initialised = True
		Modified = False
	End Sub

	Private Sub LoadCurrencies()
		'load available currencies from a json stored inside the same folder
		Dim json As New CJson(Of Currencies)()
		json.FileName = "nexosale.currencies.json"
		Dim except As Boolean
		Dim currencies As Currencies = json.ReadSettings(except)
		If Not IsNothing(currencies) AndAlso 0 < currencies.Count Then
			'if currencies are available let's display them
			For Each k As KeyValuePair(Of String, Currency) In currencies
				cbxCurrency.SelectedIndex = cbxCurrency.Items.Add(k.Value)
			Next
		Else
			'if no available currency use the default one
			'set a default currency
			Dim currency As New Currency
			currency.Name = New RegionInfo(System.Globalization.CultureInfo.CurrentCulture.LCID).ISOCurrencySymbol
			currency.Decimals = System.Globalization.CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalDigits
			cbxCurrency.SelectedIndex = cbxCurrency.Items.Add(currency)
			'create default currencies file
			currencies = New Currencies
			currencies.Add(currency.Name, currency)
			json.WriteSettings(currencies)
		End If
	End Sub

	Private Sub SetDefaultCurrency()
		'set a default currency
		Dim currency As New Currency
		currency.Name = New RegionInfo(System.Globalization.CultureInfo.CurrentCulture.LCID).ISOCurrencySymbol
		currency.Decimals = System.Globalization.CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalDigits
		cbxCurrency.SelectedIndex = cbxCurrency.Items.Add(currency)
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
		'If Not Settings Is Nothing Then
		'	Return Settings.LogFileName 'settingsFileNamePath & SETTINGS_FILE_NAME
		'End If
		'Return "nexosale.settings.json"
		Return NEXOSALE.SettingsFileNameEx
	End Function

	Private Sub SaveSettings()
		Dim json As New CJson(Of Settings)()
		json.FileName = efSettingsFileName.Text
		'save file name to registry
		Dim key As RegistryKey
		Try
			key = Registry.CurrentUser.CreateSubKey(Settings.REGISTRY_SECTION)
			If Not IsNothing(key) Then
				key.SetValue(Settings.REGISTRY_KEY_SETTINGS_FILE_NAME, json.FileName)
			End If
		Catch ex As Exception
		End Try

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
		'Settings.SettingsFileName = json.FileName
		Settings.LogFileName = efLogFileName.Text
		Settings.UseDate = cbUseDate.Checked
		Settings.AdminCode = efAdminCode.Text
		Settings.NoAutocloseOnError = cbNoAutoCloseOnError.Checked
		UseBackup = cbUseBackup.Checked

		If rbMainPOI.Checked Then
			SavePOISettings(Settings.Primary)
		Else
			SavePOISettings(Settings.Backup)
		End If

		'GPRS backup
		Settings.GatewayIP = efGatewayIP.Text
		Settings.UserID = efUser.Text
		Settings.PWD = efPWD.Text
		Settings.ICCD = efICCD.Text
		Settings.POIPort = udICCDPort.Value
		Settings.GatewayPort = udGatewayPort.Value
		Settings.AllowedSslErrors = SslPolicyErrors.None Or (cbRemoteCertificateNotAvailable.Checked And SslPolicyErrors.RemoteCertificateNotAvailable) Or
			(cbRemoteCertificateNameMismatch.Checked And SslPolicyErrors.RemoteCertificateNameMismatch) Or (cbRemoteCertificateChainErrors.Checked And SslPolicyErrors.RemoteCertificateChainErrors)
		Settings.ServerName = efServerName.Text

		'print settings
		Settings.SaveReceipts = cbSavePDF.Checked
		Settings.ReceiptFolder = efReceiptsDirectory.Text
		Settings.Picture = efPicture.Text
		Dim f As Boolean = lblPrinter.Tag
		If f Then
			Settings.Printer = lblPrinter.Text
		Else
			Settings.Printer = Nothing
		End If

		Settings.ReuseMerchantReferenceIDAsTransactionID = cbResuseMerchantReferenceID.Checked
		Settings.IndicateBrand = cbReturnBrand.Checked
		Settings.AllowOfflinePOI = cbAllowOfflinePOI.Checked
		Settings.HideNexoMessagesWhenProcessing = cbHideInformation.Checked

		nexoSale._poiisoffline = POIIsOffline

		If Not json.WriteSettings(Settings, True) Then
			MsgBox("Settings file hasn't been saved. Please check file name and path" & vbCrLf & vbCrLf & SettingsFileName())
		End If

		Modified = False
	End Sub

	Private Sub LoadSettings()
		Dim json As New CJson(Of Settings)()
		json.FileName = SettingsFileName()
		efSettingsFileName.Text = json.FileName
		Dim except As Boolean
		Settings = json.ReadSettings(except)
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
			cbNoAutoCloseOnError.Checked = Settings.NoAutocloseOnError

			Dim poi As POISettings
			If rbMainPOI.Checked Then
				If IsNothing(Settings.Primary) Then Settings.Primary = New POISettings
				poi = Settings.Primary
			Else
				If IsNothing(Settings.Backup) Then Settings.Backup = New POISettings
				poi = Settings.Backup
			End If

			With poi
				'Settings.Primary.ConsiderPrimary = True
				efServerIP.Text = .ServerIP
				Try
					udServerPort.Value = .ServerPort
				Catch ex As Exception
					udServerPort.Value = DEFAULT_PORT
				End Try
				cbPrintReceipt.Checked = .PrintReceipt
				cbCustomer.Checked = .PrintCustomerReceipt
				cbMerchant.Checked = .PrintMerchantReceipt
				cbSynchronous.Checked = .Synchronous
				cbSupportsRefund.Checked = .SupportsRefund
				cbSupportsReconciliation.Checked = .SupportsReconciliation
				cbSupportsAbort.Checked = .SupportsAbort
				cbSupportsReversal.Checked = .SupportsCancel
				Try
					udPaymentTimer.Value = .PaymentTimer
				Catch ex As Exception
					udPaymentTimer.Value = 0
				End Try
				cbSupportsCheck.Checked = .SupportsCheck
				Try
					udCheckTimer.Value = .CheckTimer
				Catch ex As Exception
					udCheckTimer.Value = 20
				End Try
				Try
					udGeneralTimer.Value = .GeneralTimer
				Catch ex As Exception
					udGeneralTimer.Value = 10
				End Try
			End With

			'GPRS backup
			efGatewayIP.Text = Settings.GatewayIP
			efUser.Text = Settings.UserID
			efPWD.Text = Settings.PWD
			efICCD.Text = Settings.ICCD
			Try
				udICCDPort.Value = Settings.POIPort
			Catch ex As Exception
				udICCDPort.Value = DEFAULT_PORT
			End Try
			Try
				udGatewayPort.Value = Settings.GatewayPort
			Catch ex As Exception
				udGatewayPort.Value = DEFAULT_PORT
			End Try
			cbRemoteCertificateNotAvailable.Checked = Settings.AllowedSslErrors And SslPolicyErrors.RemoteCertificateNotAvailable
			cbRemoteCertificateNameMismatch.Checked = Settings.AllowedSslErrors And SslPolicyErrors.RemoteCertificateNameMismatch
			cbRemoteCertificateChainErrors.Checked = Settings.AllowedSslErrors And SslPolicyErrors.RemoteCertificateChainErrors
			efServerName.Text = Settings.ServerName

			'print settings
			cbSavePDF.Checked = Settings.SaveReceipts
			efReceiptsDirectory.Text = Settings.ReceiptFolder
			efPicture.Text = Settings.Picture
			UpdateLogo(False)
			SetPrinter(Settings.Printer)

			'miscellaneous
			cbResuseMerchantReferenceID.Checked = Settings.ReuseMerchantReferenceIDAsTransactionID
			cbReturnBrand.Checked = Settings.IndicateBrand
			cbAllowOfflinePOI.Checked = Settings.AllowOfflinePOI
			cbHideInformation.Checked = Settings.HideNexoMessagesWhenProcessing

		Else
			Settings = New Settings
			SaveSettings()
		End If
		Modified = False
	End Sub

	Private Sub SetPrinter(printerName As String)
		If String.IsNullOrEmpty(printerName) Then
			lblPrinter.Tag = False
			lblPrinter.Text = "No printer selected"
		Else
			lblPrinter.Tag = True
			lblPrinter.Text = printerName
		End If
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

	Private Sub UpdateLogo(msg As Boolean)
		If Not String.IsNullOrEmpty(efPicture.Text) Then
			Try
				'try to display the image
				PictureBox1.Load(efPicture.Text)
				PictureBox1.SizeMode = PictureBoxSizeMode.Zoom
			Catch ex As Exception
				If msg Then MsgBox("The image file is not supported or does not contain a valid image", MsgBoxStyle.OkOnly Or MsgBoxStyle.Exclamation)
				efPicture.Text = Nothing
			End Try
		End If
	End Sub

	Private Sub pbChoosePicture_Click(sender As Object, e As EventArgs) Handles pbChoosePicture.Click
		efPicture.Text = ChooseFile(efPicture.Text, "Image files|*.png;*.jpg;*.jpeg;*.bmp|All files|*.*")
		UpdateLogo(True)
	End Sub

	Private Sub pbPrinter_Click(sender As Object, e As EventArgs) Handles pbPrinter.Click
		Dim f As New FSelectPrinter
		f.SelectedPrinter = lblPrinter.Text
		f.ShowDialog()
		If DialogResult.OK = f.DialogResult Then
			SetPrinter(f.SelectedPrinter)
			Modified = True
		End If
		f.Dispose()
	End Sub

	Private Sub SavePOISettings(poiToSave As POISettings)
		If Not IsNothing(Settings) Then
			'save modified settings to avoid changing it by switching POI settings
			Dim fModified = _modified

			If IsNothing(Settings.Primary) Then Settings.Primary = New POISettings
			If IsNothing(Settings.Backup) Then Settings.Backup = New POISettings

			'save currently displayed data
			With poiToSave
				'Settings.Primary.ConsiderPrimary = True
				.ServerIP = efServerIP.Text
				.ServerPort = udServerPort.Value
				.Synchronous = cbSynchronous.Checked
				.PrintReceipt = cbPrintReceipt.Checked
				.PrintMerchantReceipt = cbMerchant.Checked
				.PrintCustomerReceipt = cbCustomer.Checked
				.SupportsRefund = cbSupportsRefund.Checked
				.SupportsReconciliation = cbSupportsReconciliation.Checked
				.SupportsAbort = cbSupportsAbort.Checked
				.SupportsCancel = cbSupportsReversal.Checked
				.PaymentTimer = udPaymentTimer.Value
				.SupportsCheck = cbSupportsCheck.Checked
				.CheckTimer = udCheckTimer.Value
				.GeneralTimer = udGeneralTimer.Value
			End With

			'restore modified settings
			_modified = fModified
			SetButtons()
		End If
	End Sub

	Private Sub DisplayPOISettings()
		If Not IsNothing(Settings) Then
			'save modified settings to avoid changing it by switching POI settings
			Dim fModified = _modified

			If IsNothing(Settings.Primary) Then Settings.Primary = New POISettings
			If IsNothing(Settings.Backup) Then Settings.Backup = New POISettings
			Dim poiToDisplay As POISettings
			If rbMainPOI.Checked Then
				poiToDisplay = Settings.Primary
			Else
				poiToDisplay = Settings.Backup
			End If
			'save currently displayed data
			With poiToDisplay
				'Settings.Primary.ConsiderPrimary = True
				efServerIP.Text = .ServerIP
				udServerPort.Value = .ServerPort
				cbSynchronous.Checked = .Synchronous
				cbPrintReceipt.Checked = .PrintReceipt
				cbMerchant.Checked = .PrintMerchantReceipt
				cbCustomer.Checked = .PrintCustomerReceipt
				cbSupportsReversal.Checked = .SupportsCancel
				udPaymentTimer.Value = .PaymentTimer
				cbSupportsCheck.Checked = .SupportsCheck
				udCheckTimer.Value = .CheckTimer
				udGeneralTimer.Value = .GeneralTimer
			End With

			'restore modified settings
			SetButtons()
		End If
	End Sub

	Private Sub rbMainPOI_CheckedChanged(sender As Object, e As EventArgs) Handles rbMainPOI.CheckedChanged, rbBackupPOI.CheckedChanged
		If DirectCast(sender, RadioButton).Checked Then
			If Modified Then
				If rbMainPOI.Checked Then
					SavePOISettings(Settings.Backup)
				Else
					SavePOISettings(Settings.Primary)
				End If
			End If
			DisplayPOISettings()
		End If
	End Sub

	Private Sub pbReceiptsDirectory_Click(sender As Object, e As EventArgs) Handles pbReceiptsDirectory.Click
		FolderBrowserDialog1.RootFolder = efReceiptsDirectory.Text
		FolderBrowserDialog1.ShowNewFolderButton = True
		If DialogResult.OK = FolderBrowserDialog1.ShowDialog Then
			efReceiptsDirectory.Text = FolderBrowserDialog1.SelectedPath
		End If
		SetButtons()
	End Sub

	Private Sub cbSavePDF_CheckedChanged(sender As Object, e As EventArgs) Handles cbSavePDF.CheckedChanged
		pnlReceipts.Enabled = cbSavePDF.Checked
	End Sub
End Class