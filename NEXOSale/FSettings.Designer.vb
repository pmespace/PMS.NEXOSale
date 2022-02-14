<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class FSettings
	Inherits System.Windows.Forms.Form

	'Form overrides dispose to clean up the component list.
	<System.Diagnostics.DebuggerNonUserCode()>
	Protected Overrides Sub Dispose(ByVal disposing As Boolean)
		Try
			If disposing AndAlso components IsNot Nothing Then
				components.Dispose()
			End If
		Finally
			MyBase.Dispose(disposing)
		End Try
	End Sub

	'Required by the Windows Form Designer
	Private components As System.ComponentModel.IContainer

	'NOTE: The following procedure is required by the Windows Form Designer
	'It can be modified using the Windows Form Designer.  
	'Do not modify it using the code editor.
	<System.Diagnostics.DebuggerStepThrough()>
	Private Sub InitializeComponent()
		Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FSettings))
		Me.panelMain = New System.Windows.Forms.TableLayoutPanel()
		Me.panelButtons = New System.Windows.Forms.TableLayoutPanel()
		Me.pbSaveSettings = New System.Windows.Forms.Button()
		Me.pbSave = New System.Windows.Forms.Button()
		Me.pbCancel = New System.Windows.Forms.Button()
		Me.TabControl1 = New System.Windows.Forms.TabControl()
		Me.settingsPage = New System.Windows.Forms.TabPage()
		Me.panelSettingsPage = New System.Windows.Forms.TableLayoutPanel()
		Me.panelAutocloseSettings = New System.Windows.Forms.TableLayoutPanel()
		Me.Label12 = New System.Windows.Forms.Label()
		Me.udAutocloseDelay = New System.Windows.Forms.NumericUpDown()
		Me.cbAutoclose = New System.Windows.Forms.CheckBox()
		Me.cbNoAutoCloseOnError = New System.Windows.Forms.CheckBox()
		Me.FlowLayoutPanel3 = New System.Windows.Forms.FlowLayoutPanel()
		Me.cbUseBackup = New System.Windows.Forms.CheckBox()
		Me.cbGPRS = New System.Windows.Forms.CheckBox()
		Me.cbPOIIsOffline = New System.Windows.Forms.CheckBox()
		Me.cbHideInformation = New System.Windows.Forms.CheckBox()
		Me.cbAlwaysLogToPOI = New System.Windows.Forms.CheckBox()
		Me.advancedSettingsPage = New System.Windows.Forms.TabPage()
		Me.panelAdvancedSettings = New System.Windows.Forms.TableLayoutPanel()
		Me.TableLayoutPanel6 = New System.Windows.Forms.TableLayoutPanel()
		Me.FlowLayoutPanel1 = New System.Windows.Forms.FlowLayoutPanel()
		Me.rbMainPOI = New System.Windows.Forms.RadioButton()
		Me.rbBackupPOI = New System.Windows.Forms.RadioButton()
		Me.cbSavePDF = New System.Windows.Forms.CheckBox()
		Me.panelServerSettings = New System.Windows.Forms.TableLayoutPanel()
		Me.efServerIP = New System.Windows.Forms.TextBox()
		Me.Label3 = New System.Windows.Forms.Label()
		Me.Label5 = New System.Windows.Forms.Label()
		Me.udServerPort = New System.Windows.Forms.NumericUpDown()
		Me.pbTestConnection = New System.Windows.Forms.Button()
		Me.panelChecks = New System.Windows.Forms.TableLayoutPanel()
		Me.udCheckTimer = New System.Windows.Forms.NumericUpDown()
		Me.Label17 = New System.Windows.Forms.Label()
		Me.TableLayoutPanel1 = New System.Windows.Forms.TableLayoutPanel()
		Me.udGeneralTimer = New System.Windows.Forms.NumericUpDown()
		Me.Label9 = New System.Windows.Forms.Label()
		Me.panelPaymentTimer = New System.Windows.Forms.TableLayoutPanel()
		Me.udPaymentTimer = New System.Windows.Forms.NumericUpDown()
		Me.Label11 = New System.Windows.Forms.Label()
		Me.cbSupportsCheck = New System.Windows.Forms.CheckBox()
		Me.cbSynchronous = New System.Windows.Forms.CheckBox()
		Me.cbPrintReceipt = New System.Windows.Forms.CheckBox()
		Me.cbSupportsAbort = New System.Windows.Forms.CheckBox()
		Me.cbSupportsRefund = New System.Windows.Forms.CheckBox()
		Me.panelReceipts = New System.Windows.Forms.TableLayoutPanel()
		Me.cbCustomer = New System.Windows.Forms.CheckBox()
		Me.cbMerchant = New System.Windows.Forms.CheckBox()
		Me.cbSupportsReversal = New System.Windows.Forms.CheckBox()
		Me.cbSupportsReconciliation = New System.Windows.Forms.CheckBox()
		Me.panelFileSettings = New System.Windows.Forms.TableLayoutPanel()
		Me.lblReceiptsFolder = New System.Windows.Forms.Label()
		Me.Label13 = New System.Windows.Forms.Label()
		Me.Label14 = New System.Windows.Forms.Label()
		Me.pnlSettingsFileName = New System.Windows.Forms.TableLayoutPanel()
		Me.efSettingsFileName = New System.Windows.Forms.TextBox()
		Me.pbChooseSettingsFile = New System.Windows.Forms.Button()
		Me.pnlLogFileName = New System.Windows.Forms.TableLayoutPanel()
		Me.efLogFileName = New System.Windows.Forms.TextBox()
		Me.pbChooseLogFile = New System.Windows.Forms.Button()
		Me.pnlReceipts = New System.Windows.Forms.TableLayoutPanel()
		Me.pbReceiptsDirectory = New System.Windows.Forms.Button()
		Me.efReceiptsDirectory = New System.Windows.Forms.TextBox()
		Me.panelNexoSettings = New System.Windows.Forms.TableLayoutPanel()
		Me.panelSaleID = New System.Windows.Forms.TableLayoutPanel()
		Me.efSaleID = New System.Windows.Forms.TextBox()
		Me.Label1 = New System.Windows.Forms.Label()
		Me.cbSaleIDUSeIP = New System.Windows.Forms.CheckBox()
		Me.panelPOIID = New System.Windows.Forms.TableLayoutPanel()
		Me.Label2 = New System.Windows.Forms.Label()
		Me.cbPOIIDUseIP = New System.Windows.Forms.CheckBox()
		Me.efPOIID = New System.Windows.Forms.TextBox()
		Me.panelApplicationName = New System.Windows.Forms.TableLayoutPanel()
		Me.Label4 = New System.Windows.Forms.Label()
		Me.efApplicationName = New System.Windows.Forms.TextBox()
		Me.panelSoftwareVersion = New System.Windows.Forms.TableLayoutPanel()
		Me.Label6 = New System.Windows.Forms.Label()
		Me.efSoftwareVersion = New System.Windows.Forms.TextBox()
		Me.panelManufacturerName = New System.Windows.Forms.TableLayoutPanel()
		Me.Label7 = New System.Windows.Forms.Label()
		Me.efManufacturerName = New System.Windows.Forms.TextBox()
		Me.panelCurrency = New System.Windows.Forms.TableLayoutPanel()
		Me.Label8 = New System.Windows.Forms.Label()
		Me.cbxCurrency = New System.Windows.Forms.ComboBox()
		Me.panelCertificationCode = New System.Windows.Forms.TableLayoutPanel()
		Me.Label10 = New System.Windows.Forms.Label()
		Me.efCertificationCode = New System.Windows.Forms.TextBox()
		Me.TableLayoutPanel2 = New System.Windows.Forms.TableLayoutPanel()
		Me.Label18 = New System.Windows.Forms.Label()
		Me.efAdminCode = New System.Windows.Forms.TextBox()
		Me.cbUseDate = New System.Windows.Forms.CheckBox()
		Me.GPRSPage = New System.Windows.Forms.TabPage()
		Me.TableLayoutPanel3 = New System.Windows.Forms.TableLayoutPanel()
		Me.efGatewayIP = New System.Windows.Forms.TextBox()
		Me.Label19 = New System.Windows.Forms.Label()
		Me.Label21 = New System.Windows.Forms.Label()
		Me.efICCD = New System.Windows.Forms.TextBox()
		Me.Label23 = New System.Windows.Forms.Label()
		Me.udICCDPort = New System.Windows.Forms.NumericUpDown()
		Me.efUser = New System.Windows.Forms.TextBox()
		Me.Label24 = New System.Windows.Forms.Label()
		Me.efPWD = New System.Windows.Forms.TextBox()
		Me.Label22 = New System.Windows.Forms.Label()
		Me.Label20 = New System.Windows.Forms.Label()
		Me.udGatewayPort = New System.Windows.Forms.NumericUpDown()
		Me.pbTestGPRS = New System.Windows.Forms.Button()
		Me.TextBox5 = New System.Windows.Forms.TextBox()
		Me.FlowLayoutPanel4 = New System.Windows.Forms.FlowLayoutPanel()
		Me.cbRemoteCertificateNotAvailable = New System.Windows.Forms.CheckBox()
		Me.cbRemoteCertificateNameMismatch = New System.Windows.Forms.CheckBox()
		Me.cbRemoteCertificateChainErrors = New System.Windows.Forms.CheckBox()
		Me.Label16 = New System.Windows.Forms.Label()
		Me.efServerName = New System.Windows.Forms.TextBox()
		Me.printSettingsPage = New System.Windows.Forms.TabPage()
		Me.TableLayoutPanel4 = New System.Windows.Forms.TableLayoutPanel()
		Me.TableLayoutPanel5 = New System.Windows.Forms.TableLayoutPanel()
		Me.Label29 = New System.Windows.Forms.Label()
		Me.Label28 = New System.Windows.Forms.Label()
		Me.efPicture = New System.Windows.Forms.TextBox()
		Me.pbChoosePicture = New System.Windows.Forms.Button()
		Me.efMerchantName = New System.Windows.Forms.TextBox()
		Me.pbPrinter = New System.Windows.Forms.Button()
		Me.lblPrinter = New System.Windows.Forms.Label()
		Me.PictureBox1 = New System.Windows.Forms.PictureBox()
		Me.miscellaneous = New System.Windows.Forms.TabPage()
		Me.FlowLayoutPanel5 = New System.Windows.Forms.FlowLayoutPanel()
		Me.cbResuseMerchantReferenceID = New System.Windows.Forms.CheckBox()
		Me.cbReturnBrand = New System.Windows.Forms.CheckBox()
		Me.cbAllowOfflinePOI = New System.Windows.Forms.CheckBox()
		Me.OpenFileDialog1 = New System.Windows.Forms.OpenFileDialog()
		Me.FolderBrowserDialog1 = New System.Windows.Forms.FolderBrowserDialog()
		Me.panelMain.SuspendLayout()
		Me.panelButtons.SuspendLayout()
		Me.TabControl1.SuspendLayout()
		Me.settingsPage.SuspendLayout()
		Me.panelSettingsPage.SuspendLayout()
		Me.panelAutocloseSettings.SuspendLayout()
		CType(Me.udAutocloseDelay, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.FlowLayoutPanel3.SuspendLayout()
		Me.advancedSettingsPage.SuspendLayout()
		Me.panelAdvancedSettings.SuspendLayout()
		Me.TableLayoutPanel6.SuspendLayout()
		Me.FlowLayoutPanel1.SuspendLayout()
		Me.panelServerSettings.SuspendLayout()
		CType(Me.udServerPort, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.panelChecks.SuspendLayout()
		CType(Me.udCheckTimer, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.TableLayoutPanel1.SuspendLayout()
		CType(Me.udGeneralTimer, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.panelPaymentTimer.SuspendLayout()
		CType(Me.udPaymentTimer, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.panelReceipts.SuspendLayout()
		Me.panelFileSettings.SuspendLayout()
		Me.pnlSettingsFileName.SuspendLayout()
		Me.pnlLogFileName.SuspendLayout()
		Me.pnlReceipts.SuspendLayout()
		Me.panelNexoSettings.SuspendLayout()
		Me.panelSaleID.SuspendLayout()
		Me.panelPOIID.SuspendLayout()
		Me.panelApplicationName.SuspendLayout()
		Me.panelSoftwareVersion.SuspendLayout()
		Me.panelManufacturerName.SuspendLayout()
		Me.panelCurrency.SuspendLayout()
		Me.panelCertificationCode.SuspendLayout()
		Me.TableLayoutPanel2.SuspendLayout()
		Me.GPRSPage.SuspendLayout()
		Me.TableLayoutPanel3.SuspendLayout()
		CType(Me.udICCDPort, System.ComponentModel.ISupportInitialize).BeginInit()
		CType(Me.udGatewayPort, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.FlowLayoutPanel4.SuspendLayout()
		Me.printSettingsPage.SuspendLayout()
		Me.TableLayoutPanel4.SuspendLayout()
		Me.TableLayoutPanel5.SuspendLayout()
		CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.miscellaneous.SuspendLayout()
		Me.FlowLayoutPanel5.SuspendLayout()
		Me.SuspendLayout()
		'
		'panelMain
		'
		resources.ApplyResources(Me.panelMain, "panelMain")
		Me.panelMain.Controls.Add(Me.panelButtons, 0, 1)
		Me.panelMain.Controls.Add(Me.TabControl1, 0, 0)
		Me.panelMain.Name = "panelMain"
		'
		'panelButtons
		'
		resources.ApplyResources(Me.panelButtons, "panelButtons")
		Me.panelButtons.Controls.Add(Me.pbSaveSettings, 0, 0)
		Me.panelButtons.Controls.Add(Me.pbSave, 2, 0)
		Me.panelButtons.Controls.Add(Me.pbCancel, 3, 0)
		Me.panelButtons.Name = "panelButtons"
		'
		'pbSaveSettings
		'
		resources.ApplyResources(Me.pbSaveSettings, "pbSaveSettings")
		Me.pbSaveSettings.Name = "pbSaveSettings"
		Me.pbSaveSettings.UseVisualStyleBackColor = True
		'
		'pbSave
		'
		resources.ApplyResources(Me.pbSave, "pbSave")
		Me.pbSave.DialogResult = System.Windows.Forms.DialogResult.OK
		Me.pbSave.Name = "pbSave"
		Me.pbSave.UseVisualStyleBackColor = True
		'
		'pbCancel
		'
		resources.ApplyResources(Me.pbCancel, "pbCancel")
		Me.pbCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel
		Me.pbCancel.Name = "pbCancel"
		Me.pbCancel.UseVisualStyleBackColor = True
		'
		'TabControl1
		'
		resources.ApplyResources(Me.TabControl1, "TabControl1")
		Me.TabControl1.Controls.Add(Me.settingsPage)
		Me.TabControl1.Controls.Add(Me.advancedSettingsPage)
		Me.TabControl1.Controls.Add(Me.GPRSPage)
		Me.TabControl1.Controls.Add(Me.printSettingsPage)
		Me.TabControl1.Controls.Add(Me.miscellaneous)
		Me.TabControl1.Name = "TabControl1"
		Me.TabControl1.SelectedIndex = 0
		'
		'settingsPage
		'
		resources.ApplyResources(Me.settingsPage, "settingsPage")
		Me.settingsPage.Controls.Add(Me.panelSettingsPage)
		Me.settingsPage.Name = "settingsPage"
		Me.settingsPage.UseVisualStyleBackColor = True
		'
		'panelSettingsPage
		'
		resources.ApplyResources(Me.panelSettingsPage, "panelSettingsPage")
		Me.panelSettingsPage.Controls.Add(Me.panelAutocloseSettings, 0, 0)
		Me.panelSettingsPage.Controls.Add(Me.FlowLayoutPanel3, 0, 2)
		Me.panelSettingsPage.Name = "panelSettingsPage"
		'
		'panelAutocloseSettings
		'
		resources.ApplyResources(Me.panelAutocloseSettings, "panelAutocloseSettings")
		Me.panelAutocloseSettings.Controls.Add(Me.Label12, 1, 0)
		Me.panelAutocloseSettings.Controls.Add(Me.udAutocloseDelay, 2, 0)
		Me.panelAutocloseSettings.Controls.Add(Me.cbAutoclose, 0, 0)
		Me.panelAutocloseSettings.Controls.Add(Me.cbNoAutoCloseOnError, 3, 0)
		Me.panelAutocloseSettings.Name = "panelAutocloseSettings"
		'
		'Label12
		'
		resources.ApplyResources(Me.Label12, "Label12")
		Me.Label12.Name = "Label12"
		'
		'udAutocloseDelay
		'
		resources.ApplyResources(Me.udAutocloseDelay, "udAutocloseDelay")
		Me.udAutocloseDelay.Maximum = New Decimal(New Integer() {60, 0, 0, 0})
		Me.udAutocloseDelay.Minimum = New Decimal(New Integer() {1, 0, 0, 0})
		Me.udAutocloseDelay.Name = "udAutocloseDelay"
		Me.udAutocloseDelay.Value = New Decimal(New Integer() {2, 0, 0, 0})
		'
		'cbAutoclose
		'
		resources.ApplyResources(Me.cbAutoclose, "cbAutoclose")
		Me.cbAutoclose.Name = "cbAutoclose"
		Me.cbAutoclose.UseVisualStyleBackColor = True
		'
		'cbNoAutoCloseOnError
		'
		resources.ApplyResources(Me.cbNoAutoCloseOnError, "cbNoAutoCloseOnError")
		Me.cbNoAutoCloseOnError.Name = "cbNoAutoCloseOnError"
		Me.cbNoAutoCloseOnError.UseVisualStyleBackColor = True
		'
		'FlowLayoutPanel3
		'
		resources.ApplyResources(Me.FlowLayoutPanel3, "FlowLayoutPanel3")
		Me.FlowLayoutPanel3.Controls.Add(Me.cbUseBackup)
		Me.FlowLayoutPanel3.Controls.Add(Me.cbGPRS)
		Me.FlowLayoutPanel3.Controls.Add(Me.cbPOIIsOffline)
		Me.FlowLayoutPanel3.Controls.Add(Me.cbHideInformation)
		Me.FlowLayoutPanel3.Controls.Add(Me.cbAlwaysLogToPOI)
		Me.FlowLayoutPanel3.Name = "FlowLayoutPanel3"
		'
		'cbUseBackup
		'
		resources.ApplyResources(Me.cbUseBackup, "cbUseBackup")
		Me.cbUseBackup.Name = "cbUseBackup"
		Me.cbUseBackup.UseVisualStyleBackColor = True
		'
		'cbGPRS
		'
		resources.ApplyResources(Me.cbGPRS, "cbGPRS")
		Me.cbGPRS.Name = "cbGPRS"
		Me.cbGPRS.UseVisualStyleBackColor = True
		'
		'cbPOIIsOffline
		'
		resources.ApplyResources(Me.cbPOIIsOffline, "cbPOIIsOffline")
		Me.cbPOIIsOffline.Name = "cbPOIIsOffline"
		Me.cbPOIIsOffline.UseVisualStyleBackColor = True
		'
		'cbHideInformation
		'
		resources.ApplyResources(Me.cbHideInformation, "cbHideInformation")
		Me.cbHideInformation.Checked = True
		Me.cbHideInformation.CheckState = System.Windows.Forms.CheckState.Checked
		Me.cbHideInformation.Name = "cbHideInformation"
		Me.cbHideInformation.UseVisualStyleBackColor = True
		'
		'cbAlwaysLogToPOI
		'
		resources.ApplyResources(Me.cbAlwaysLogToPOI, "cbAlwaysLogToPOI")
		Me.cbAlwaysLogToPOI.Name = "cbAlwaysLogToPOI"
		Me.cbAlwaysLogToPOI.UseVisualStyleBackColor = True
		'
		'advancedSettingsPage
		'
		resources.ApplyResources(Me.advancedSettingsPage, "advancedSettingsPage")
		Me.advancedSettingsPage.Controls.Add(Me.panelAdvancedSettings)
		Me.advancedSettingsPage.Name = "advancedSettingsPage"
		Me.advancedSettingsPage.UseVisualStyleBackColor = True
		'
		'panelAdvancedSettings
		'
		resources.ApplyResources(Me.panelAdvancedSettings, "panelAdvancedSettings")
		Me.panelAdvancedSettings.Controls.Add(Me.TableLayoutPanel6, 0, 2)
		Me.panelAdvancedSettings.Controls.Add(Me.panelFileSettings, 0, 4)
		Me.panelAdvancedSettings.Controls.Add(Me.panelNexoSettings, 0, 0)
		Me.panelAdvancedSettings.Name = "panelAdvancedSettings"
		'
		'TableLayoutPanel6
		'
		resources.ApplyResources(Me.TableLayoutPanel6, "TableLayoutPanel6")
		Me.TableLayoutPanel6.Controls.Add(Me.FlowLayoutPanel1, 0, 0)
		Me.TableLayoutPanel6.Controls.Add(Me.panelServerSettings, 0, 1)
		Me.TableLayoutPanel6.Name = "TableLayoutPanel6"
		'
		'FlowLayoutPanel1
		'
		resources.ApplyResources(Me.FlowLayoutPanel1, "FlowLayoutPanel1")
		Me.FlowLayoutPanel1.Controls.Add(Me.rbMainPOI)
		Me.FlowLayoutPanel1.Controls.Add(Me.rbBackupPOI)
		Me.FlowLayoutPanel1.Controls.Add(Me.cbSavePDF)
		Me.FlowLayoutPanel1.Name = "FlowLayoutPanel1"
		'
		'rbMainPOI
		'
		resources.ApplyResources(Me.rbMainPOI, "rbMainPOI")
		Me.rbMainPOI.Checked = True
		Me.rbMainPOI.Name = "rbMainPOI"
		Me.rbMainPOI.TabStop = True
		Me.rbMainPOI.UseVisualStyleBackColor = True
		'
		'rbBackupPOI
		'
		resources.ApplyResources(Me.rbBackupPOI, "rbBackupPOI")
		Me.rbBackupPOI.Name = "rbBackupPOI"
		Me.rbBackupPOI.UseVisualStyleBackColor = True
		'
		'cbSavePDF
		'
		resources.ApplyResources(Me.cbSavePDF, "cbSavePDF")
		Me.cbSavePDF.Name = "cbSavePDF"
		Me.cbSavePDF.UseVisualStyleBackColor = True
		'
		'panelServerSettings
		'
		resources.ApplyResources(Me.panelServerSettings, "panelServerSettings")
		Me.panelServerSettings.Controls.Add(Me.efServerIP, 1, 0)
		Me.panelServerSettings.Controls.Add(Me.Label3, 0, 0)
		Me.panelServerSettings.Controls.Add(Me.Label5, 2, 0)
		Me.panelServerSettings.Controls.Add(Me.udServerPort, 3, 0)
		Me.panelServerSettings.Controls.Add(Me.pbTestConnection, 4, 0)
		Me.panelServerSettings.Controls.Add(Me.panelChecks, 5, 2)
		Me.panelServerSettings.Controls.Add(Me.TableLayoutPanel1, 5, 0)
		Me.panelServerSettings.Controls.Add(Me.panelPaymentTimer, 5, 1)
		Me.panelServerSettings.Controls.Add(Me.cbSupportsCheck, 4, 2)
		Me.panelServerSettings.Controls.Add(Me.cbSynchronous, 4, 1)
		Me.panelServerSettings.Controls.Add(Me.cbPrintReceipt, 0, 1)
		Me.panelServerSettings.Controls.Add(Me.cbSupportsAbort, 3, 2)
		Me.panelServerSettings.Controls.Add(Me.cbSupportsRefund, 0, 2)
		Me.panelServerSettings.Controls.Add(Me.panelReceipts, 1, 1)
		Me.panelServerSettings.Controls.Add(Me.cbSupportsReversal, 1, 2)
		Me.panelServerSettings.Controls.Add(Me.cbSupportsReconciliation, 2, 2)
		Me.panelServerSettings.Name = "panelServerSettings"
		'
		'efServerIP
		'
		resources.ApplyResources(Me.efServerIP, "efServerIP")
		Me.efServerIP.Name = "efServerIP"
		'
		'Label3
		'
		resources.ApplyResources(Me.Label3, "Label3")
		Me.Label3.Name = "Label3"
		'
		'Label5
		'
		resources.ApplyResources(Me.Label5, "Label5")
		Me.Label5.Name = "Label5"
		'
		'udServerPort
		'
		resources.ApplyResources(Me.udServerPort, "udServerPort")
		Me.udServerPort.Maximum = New Decimal(New Integer() {65535, 0, 0, 0})
		Me.udServerPort.Minimum = New Decimal(New Integer() {1, 0, 0, 0})
		Me.udServerPort.Name = "udServerPort"
		Me.udServerPort.Value = New Decimal(New Integer() {2018, 0, 0, 0})
		'
		'pbTestConnection
		'
		resources.ApplyResources(Me.pbTestConnection, "pbTestConnection")
		Me.pbTestConnection.Name = "pbTestConnection"
		Me.pbTestConnection.UseVisualStyleBackColor = True
		'
		'panelChecks
		'
		resources.ApplyResources(Me.panelChecks, "panelChecks")
		Me.panelChecks.Controls.Add(Me.udCheckTimer, 1, 0)
		Me.panelChecks.Controls.Add(Me.Label17, 0, 0)
		Me.panelChecks.Name = "panelChecks"
		'
		'udCheckTimer
		'
		resources.ApplyResources(Me.udCheckTimer, "udCheckTimer")
		Me.udCheckTimer.Maximum = New Decimal(New Integer() {90, 0, 0, 0})
		Me.udCheckTimer.Name = "udCheckTimer"
		Me.udCheckTimer.Value = New Decimal(New Integer() {5, 0, 0, 0})
		'
		'Label17
		'
		resources.ApplyResources(Me.Label17, "Label17")
		Me.Label17.Name = "Label17"
		'
		'TableLayoutPanel1
		'
		resources.ApplyResources(Me.TableLayoutPanel1, "TableLayoutPanel1")
		Me.TableLayoutPanel1.Controls.Add(Me.udGeneralTimer, 1, 0)
		Me.TableLayoutPanel1.Controls.Add(Me.Label9, 0, 0)
		Me.TableLayoutPanel1.Name = "TableLayoutPanel1"
		'
		'udGeneralTimer
		'
		resources.ApplyResources(Me.udGeneralTimer, "udGeneralTimer")
		Me.udGeneralTimer.Maximum = New Decimal(New Integer() {90, 0, 0, 0})
		Me.udGeneralTimer.Name = "udGeneralTimer"
		Me.udGeneralTimer.Value = New Decimal(New Integer() {5, 0, 0, 0})
		'
		'Label9
		'
		resources.ApplyResources(Me.Label9, "Label9")
		Me.Label9.Name = "Label9"
		'
		'panelPaymentTimer
		'
		resources.ApplyResources(Me.panelPaymentTimer, "panelPaymentTimer")
		Me.panelPaymentTimer.Controls.Add(Me.udPaymentTimer, 1, 0)
		Me.panelPaymentTimer.Controls.Add(Me.Label11, 0, 0)
		Me.panelPaymentTimer.Name = "panelPaymentTimer"
		'
		'udPaymentTimer
		'
		resources.ApplyResources(Me.udPaymentTimer, "udPaymentTimer")
		Me.udPaymentTimer.Maximum = New Decimal(New Integer() {300, 0, 0, 0})
		Me.udPaymentTimer.Name = "udPaymentTimer"
		Me.udPaymentTimer.Value = New Decimal(New Integer() {5, 0, 0, 0})
		'
		'Label11
		'
		resources.ApplyResources(Me.Label11, "Label11")
		Me.Label11.Name = "Label11"
		'
		'cbSupportsCheck
		'
		resources.ApplyResources(Me.cbSupportsCheck, "cbSupportsCheck")
		Me.cbSupportsCheck.Name = "cbSupportsCheck"
		Me.cbSupportsCheck.UseVisualStyleBackColor = True
		'
		'cbSynchronous
		'
		resources.ApplyResources(Me.cbSynchronous, "cbSynchronous")
		Me.cbSynchronous.Name = "cbSynchronous"
		Me.cbSynchronous.UseVisualStyleBackColor = True
		'
		'cbPrintReceipt
		'
		resources.ApplyResources(Me.cbPrintReceipt, "cbPrintReceipt")
		Me.cbPrintReceipt.Name = "cbPrintReceipt"
		Me.cbPrintReceipt.UseVisualStyleBackColor = True
		'
		'cbSupportsAbort
		'
		resources.ApplyResources(Me.cbSupportsAbort, "cbSupportsAbort")
		Me.cbSupportsAbort.Name = "cbSupportsAbort"
		Me.cbSupportsAbort.UseVisualStyleBackColor = True
		'
		'cbSupportsRefund
		'
		resources.ApplyResources(Me.cbSupportsRefund, "cbSupportsRefund")
		Me.cbSupportsRefund.Name = "cbSupportsRefund"
		Me.cbSupportsRefund.UseVisualStyleBackColor = True
		'
		'panelReceipts
		'
		resources.ApplyResources(Me.panelReceipts, "panelReceipts")
		Me.panelReceipts.Controls.Add(Me.cbCustomer, 0, 0)
		Me.panelReceipts.Controls.Add(Me.cbMerchant, 1, 0)
		Me.panelReceipts.Name = "panelReceipts"
		'
		'cbCustomer
		'
		resources.ApplyResources(Me.cbCustomer, "cbCustomer")
		Me.cbCustomer.Name = "cbCustomer"
		Me.cbCustomer.UseVisualStyleBackColor = True
		'
		'cbMerchant
		'
		resources.ApplyResources(Me.cbMerchant, "cbMerchant")
		Me.cbMerchant.Name = "cbMerchant"
		Me.cbMerchant.UseVisualStyleBackColor = True
		'
		'cbSupportsReversal
		'
		resources.ApplyResources(Me.cbSupportsReversal, "cbSupportsReversal")
		Me.cbSupportsReversal.Name = "cbSupportsReversal"
		Me.cbSupportsReversal.UseVisualStyleBackColor = True
		'
		'cbSupportsReconciliation
		'
		resources.ApplyResources(Me.cbSupportsReconciliation, "cbSupportsReconciliation")
		Me.cbSupportsReconciliation.Name = "cbSupportsReconciliation"
		Me.cbSupportsReconciliation.UseVisualStyleBackColor = True
		'
		'panelFileSettings
		'
		resources.ApplyResources(Me.panelFileSettings, "panelFileSettings")
		Me.panelFileSettings.Controls.Add(Me.lblReceiptsFolder, 0, 2)
		Me.panelFileSettings.Controls.Add(Me.Label13, 0, 0)
		Me.panelFileSettings.Controls.Add(Me.Label14, 0, 1)
		Me.panelFileSettings.Controls.Add(Me.pnlSettingsFileName, 1, 0)
		Me.panelFileSettings.Controls.Add(Me.pnlLogFileName, 1, 1)
		Me.panelFileSettings.Controls.Add(Me.pnlReceipts, 1, 2)
		Me.panelFileSettings.Name = "panelFileSettings"
		'
		'lblReceiptsFolder
		'
		resources.ApplyResources(Me.lblReceiptsFolder, "lblReceiptsFolder")
		Me.lblReceiptsFolder.Name = "lblReceiptsFolder"
		'
		'Label13
		'
		resources.ApplyResources(Me.Label13, "Label13")
		Me.Label13.Name = "Label13"
		'
		'Label14
		'
		resources.ApplyResources(Me.Label14, "Label14")
		Me.Label14.Name = "Label14"
		'
		'pnlSettingsFileName
		'
		resources.ApplyResources(Me.pnlSettingsFileName, "pnlSettingsFileName")
		Me.pnlSettingsFileName.Controls.Add(Me.efSettingsFileName, 0, 0)
		Me.pnlSettingsFileName.Controls.Add(Me.pbChooseSettingsFile, 1, 0)
		Me.pnlSettingsFileName.Name = "pnlSettingsFileName"
		'
		'efSettingsFileName
		'
		resources.ApplyResources(Me.efSettingsFileName, "efSettingsFileName")
		Me.efSettingsFileName.Name = "efSettingsFileName"
		'
		'pbChooseSettingsFile
		'
		resources.ApplyResources(Me.pbChooseSettingsFile, "pbChooseSettingsFile")
		Me.pbChooseSettingsFile.BackgroundImage = Global.NEXOSALE.My.Resources.CommonResources.Open
		Me.pbChooseSettingsFile.Name = "pbChooseSettingsFile"
		Me.pbChooseSettingsFile.UseVisualStyleBackColor = True
		'
		'pnlLogFileName
		'
		resources.ApplyResources(Me.pnlLogFileName, "pnlLogFileName")
		Me.pnlLogFileName.Controls.Add(Me.efLogFileName, 0, 0)
		Me.pnlLogFileName.Controls.Add(Me.pbChooseLogFile, 1, 0)
		Me.pnlLogFileName.Name = "pnlLogFileName"
		'
		'efLogFileName
		'
		resources.ApplyResources(Me.efLogFileName, "efLogFileName")
		Me.efLogFileName.Name = "efLogFileName"
		'
		'pbChooseLogFile
		'
		resources.ApplyResources(Me.pbChooseLogFile, "pbChooseLogFile")
		Me.pbChooseLogFile.BackgroundImage = Global.NEXOSALE.My.Resources.CommonResources.Open
		Me.pbChooseLogFile.Name = "pbChooseLogFile"
		Me.pbChooseLogFile.UseVisualStyleBackColor = True
		'
		'pnlReceipts
		'
		resources.ApplyResources(Me.pnlReceipts, "pnlReceipts")
		Me.pnlReceipts.Controls.Add(Me.pbReceiptsDirectory, 1, 0)
		Me.pnlReceipts.Controls.Add(Me.efReceiptsDirectory, 0, 0)
		Me.pnlReceipts.Name = "pnlReceipts"
		'
		'pbReceiptsDirectory
		'
		resources.ApplyResources(Me.pbReceiptsDirectory, "pbReceiptsDirectory")
		Me.pbReceiptsDirectory.BackgroundImage = Global.NEXOSALE.My.Resources.CommonResources.Open
		Me.pbReceiptsDirectory.Name = "pbReceiptsDirectory"
		Me.pbReceiptsDirectory.UseVisualStyleBackColor = True
		'
		'efReceiptsDirectory
		'
		resources.ApplyResources(Me.efReceiptsDirectory, "efReceiptsDirectory")
		Me.efReceiptsDirectory.Name = "efReceiptsDirectory"
		'
		'panelNexoSettings
		'
		resources.ApplyResources(Me.panelNexoSettings, "panelNexoSettings")
		Me.panelNexoSettings.Controls.Add(Me.panelSaleID, 0, 0)
		Me.panelNexoSettings.Controls.Add(Me.panelPOIID, 1, 0)
		Me.panelNexoSettings.Controls.Add(Me.panelApplicationName, 0, 1)
		Me.panelNexoSettings.Controls.Add(Me.panelSoftwareVersion, 2, 1)
		Me.panelNexoSettings.Controls.Add(Me.panelManufacturerName, 1, 1)
		Me.panelNexoSettings.Controls.Add(Me.panelCurrency, 2, 0)
		Me.panelNexoSettings.Controls.Add(Me.panelCertificationCode, 0, 2)
		Me.panelNexoSettings.Controls.Add(Me.TableLayoutPanel2, 2, 2)
		Me.panelNexoSettings.Name = "panelNexoSettings"
		'
		'panelSaleID
		'
		resources.ApplyResources(Me.panelSaleID, "panelSaleID")
		Me.panelSaleID.Controls.Add(Me.efSaleID, 1, 0)
		Me.panelSaleID.Controls.Add(Me.Label1, 0, 0)
		Me.panelSaleID.Controls.Add(Me.cbSaleIDUSeIP, 2, 0)
		Me.panelSaleID.Name = "panelSaleID"
		'
		'efSaleID
		'
		resources.ApplyResources(Me.efSaleID, "efSaleID")
		Me.efSaleID.Name = "efSaleID"
		'
		'Label1
		'
		resources.ApplyResources(Me.Label1, "Label1")
		Me.Label1.Name = "Label1"
		'
		'cbSaleIDUSeIP
		'
		resources.ApplyResources(Me.cbSaleIDUSeIP, "cbSaleIDUSeIP")
		Me.cbSaleIDUSeIP.Name = "cbSaleIDUSeIP"
		Me.cbSaleIDUSeIP.UseVisualStyleBackColor = True
		'
		'panelPOIID
		'
		resources.ApplyResources(Me.panelPOIID, "panelPOIID")
		Me.panelPOIID.Controls.Add(Me.Label2, 0, 0)
		Me.panelPOIID.Controls.Add(Me.cbPOIIDUseIP, 2, 0)
		Me.panelPOIID.Controls.Add(Me.efPOIID, 1, 0)
		Me.panelPOIID.Name = "panelPOIID"
		'
		'Label2
		'
		resources.ApplyResources(Me.Label2, "Label2")
		Me.Label2.Name = "Label2"
		'
		'cbPOIIDUseIP
		'
		resources.ApplyResources(Me.cbPOIIDUseIP, "cbPOIIDUseIP")
		Me.cbPOIIDUseIP.Name = "cbPOIIDUseIP"
		Me.cbPOIIDUseIP.UseVisualStyleBackColor = True
		'
		'efPOIID
		'
		resources.ApplyResources(Me.efPOIID, "efPOIID")
		Me.efPOIID.Name = "efPOIID"
		'
		'panelApplicationName
		'
		resources.ApplyResources(Me.panelApplicationName, "panelApplicationName")
		Me.panelApplicationName.Controls.Add(Me.Label4, 0, 0)
		Me.panelApplicationName.Controls.Add(Me.efApplicationName, 1, 0)
		Me.panelApplicationName.Name = "panelApplicationName"
		'
		'Label4
		'
		resources.ApplyResources(Me.Label4, "Label4")
		Me.Label4.Name = "Label4"
		'
		'efApplicationName
		'
		resources.ApplyResources(Me.efApplicationName, "efApplicationName")
		Me.efApplicationName.Name = "efApplicationName"
		'
		'panelSoftwareVersion
		'
		resources.ApplyResources(Me.panelSoftwareVersion, "panelSoftwareVersion")
		Me.panelSoftwareVersion.Controls.Add(Me.Label6, 0, 0)
		Me.panelSoftwareVersion.Controls.Add(Me.efSoftwareVersion, 1, 0)
		Me.panelSoftwareVersion.Name = "panelSoftwareVersion"
		'
		'Label6
		'
		resources.ApplyResources(Me.Label6, "Label6")
		Me.Label6.Name = "Label6"
		'
		'efSoftwareVersion
		'
		resources.ApplyResources(Me.efSoftwareVersion, "efSoftwareVersion")
		Me.efSoftwareVersion.Name = "efSoftwareVersion"
		'
		'panelManufacturerName
		'
		resources.ApplyResources(Me.panelManufacturerName, "panelManufacturerName")
		Me.panelManufacturerName.Controls.Add(Me.Label7, 0, 0)
		Me.panelManufacturerName.Controls.Add(Me.efManufacturerName, 1, 0)
		Me.panelManufacturerName.Name = "panelManufacturerName"
		'
		'Label7
		'
		resources.ApplyResources(Me.Label7, "Label7")
		Me.Label7.Name = "Label7"
		'
		'efManufacturerName
		'
		resources.ApplyResources(Me.efManufacturerName, "efManufacturerName")
		Me.efManufacturerName.Name = "efManufacturerName"
		'
		'panelCurrency
		'
		resources.ApplyResources(Me.panelCurrency, "panelCurrency")
		Me.panelCurrency.Controls.Add(Me.Label8, 0, 0)
		Me.panelCurrency.Controls.Add(Me.cbxCurrency, 1, 0)
		Me.panelCurrency.Name = "panelCurrency"
		'
		'Label8
		'
		resources.ApplyResources(Me.Label8, "Label8")
		Me.Label8.Name = "Label8"
		'
		'cbxCurrency
		'
		resources.ApplyResources(Me.cbxCurrency, "cbxCurrency")
		Me.cbxCurrency.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
		Me.cbxCurrency.FormattingEnabled = True
		Me.cbxCurrency.Name = "cbxCurrency"
		'
		'panelCertificationCode
		'
		resources.ApplyResources(Me.panelCertificationCode, "panelCertificationCode")
		Me.panelCertificationCode.Controls.Add(Me.Label10, 0, 0)
		Me.panelCertificationCode.Controls.Add(Me.efCertificationCode, 1, 0)
		Me.panelCertificationCode.Name = "panelCertificationCode"
		'
		'Label10
		'
		resources.ApplyResources(Me.Label10, "Label10")
		Me.Label10.Name = "Label10"
		'
		'efCertificationCode
		'
		resources.ApplyResources(Me.efCertificationCode, "efCertificationCode")
		Me.efCertificationCode.Name = "efCertificationCode"
		'
		'TableLayoutPanel2
		'
		resources.ApplyResources(Me.TableLayoutPanel2, "TableLayoutPanel2")
		Me.TableLayoutPanel2.Controls.Add(Me.Label18, 0, 0)
		Me.TableLayoutPanel2.Controls.Add(Me.efAdminCode, 1, 0)
		Me.TableLayoutPanel2.Controls.Add(Me.cbUseDate, 2, 0)
		Me.TableLayoutPanel2.Name = "TableLayoutPanel2"
		'
		'Label18
		'
		resources.ApplyResources(Me.Label18, "Label18")
		Me.Label18.Name = "Label18"
		'
		'efAdminCode
		'
		resources.ApplyResources(Me.efAdminCode, "efAdminCode")
		Me.efAdminCode.Name = "efAdminCode"
		'
		'cbUseDate
		'
		resources.ApplyResources(Me.cbUseDate, "cbUseDate")
		Me.cbUseDate.Name = "cbUseDate"
		Me.cbUseDate.UseVisualStyleBackColor = True
		'
		'GPRSPage
		'
		resources.ApplyResources(Me.GPRSPage, "GPRSPage")
		Me.GPRSPage.Controls.Add(Me.TableLayoutPanel3)
		Me.GPRSPage.Name = "GPRSPage"
		Me.GPRSPage.UseVisualStyleBackColor = True
		'
		'TableLayoutPanel3
		'
		resources.ApplyResources(Me.TableLayoutPanel3, "TableLayoutPanel3")
		Me.TableLayoutPanel3.Controls.Add(Me.efGatewayIP, 1, 0)
		Me.TableLayoutPanel3.Controls.Add(Me.Label19, 0, 0)
		Me.TableLayoutPanel3.Controls.Add(Me.Label21, 0, 2)
		Me.TableLayoutPanel3.Controls.Add(Me.efICCD, 1, 2)
		Me.TableLayoutPanel3.Controls.Add(Me.Label23, 2, 2)
		Me.TableLayoutPanel3.Controls.Add(Me.udICCDPort, 3, 2)
		Me.TableLayoutPanel3.Controls.Add(Me.efUser, 1, 3)
		Me.TableLayoutPanel3.Controls.Add(Me.Label24, 2, 3)
		Me.TableLayoutPanel3.Controls.Add(Me.efPWD, 3, 3)
		Me.TableLayoutPanel3.Controls.Add(Me.Label22, 0, 3)
		Me.TableLayoutPanel3.Controls.Add(Me.Label20, 2, 0)
		Me.TableLayoutPanel3.Controls.Add(Me.udGatewayPort, 3, 0)
		Me.TableLayoutPanel3.Controls.Add(Me.pbTestGPRS, 4, 4)
		Me.TableLayoutPanel3.Controls.Add(Me.TextBox5, 4, 2)
		Me.TableLayoutPanel3.Controls.Add(Me.FlowLayoutPanel4, 0, 1)
		Me.TableLayoutPanel3.Controls.Add(Me.Label16, 4, 0)
		Me.TableLayoutPanel3.Controls.Add(Me.efServerName, 5, 0)
		Me.TableLayoutPanel3.Name = "TableLayoutPanel3"
		'
		'efGatewayIP
		'
		resources.ApplyResources(Me.efGatewayIP, "efGatewayIP")
		Me.efGatewayIP.Name = "efGatewayIP"
		'
		'Label19
		'
		resources.ApplyResources(Me.Label19, "Label19")
		Me.Label19.Name = "Label19"
		'
		'Label21
		'
		resources.ApplyResources(Me.Label21, "Label21")
		Me.Label21.Name = "Label21"
		'
		'efICCD
		'
		resources.ApplyResources(Me.efICCD, "efICCD")
		Me.efICCD.Name = "efICCD"
		'
		'Label23
		'
		resources.ApplyResources(Me.Label23, "Label23")
		Me.Label23.Name = "Label23"
		'
		'udICCDPort
		'
		resources.ApplyResources(Me.udICCDPort, "udICCDPort")
		Me.udICCDPort.Maximum = New Decimal(New Integer() {65535, 0, 0, 0})
		Me.udICCDPort.Minimum = New Decimal(New Integer() {1, 0, 0, 0})
		Me.udICCDPort.Name = "udICCDPort"
		Me.udICCDPort.Value = New Decimal(New Integer() {2018, 0, 0, 0})
		'
		'efUser
		'
		resources.ApplyResources(Me.efUser, "efUser")
		Me.efUser.Name = "efUser"
		'
		'Label24
		'
		resources.ApplyResources(Me.Label24, "Label24")
		Me.Label24.Name = "Label24"
		'
		'efPWD
		'
		resources.ApplyResources(Me.efPWD, "efPWD")
		Me.efPWD.Name = "efPWD"
		'
		'Label22
		'
		resources.ApplyResources(Me.Label22, "Label22")
		Me.Label22.Name = "Label22"
		'
		'Label20
		'
		resources.ApplyResources(Me.Label20, "Label20")
		Me.Label20.Name = "Label20"
		'
		'udGatewayPort
		'
		resources.ApplyResources(Me.udGatewayPort, "udGatewayPort")
		Me.udGatewayPort.Maximum = New Decimal(New Integer() {65535, 0, 0, 0})
		Me.udGatewayPort.Minimum = New Decimal(New Integer() {1, 0, 0, 0})
		Me.udGatewayPort.Name = "udGatewayPort"
		Me.udGatewayPort.Value = New Decimal(New Integer() {2018, 0, 0, 0})
		'
		'pbTestGPRS
		'
		resources.ApplyResources(Me.pbTestGPRS, "pbTestGPRS")
		Me.pbTestGPRS.Name = "pbTestGPRS"
		Me.pbTestGPRS.UseVisualStyleBackColor = True
		'
		'TextBox5
		'
		resources.ApplyResources(Me.TextBox5, "TextBox5")
		Me.TableLayoutPanel3.SetColumnSpan(Me.TextBox5, 2)
		Me.TextBox5.Name = "TextBox5"
		Me.TextBox5.ReadOnly = True
		Me.TableLayoutPanel3.SetRowSpan(Me.TextBox5, 2)
		'
		'FlowLayoutPanel4
		'
		resources.ApplyResources(Me.FlowLayoutPanel4, "FlowLayoutPanel4")
		Me.TableLayoutPanel3.SetColumnSpan(Me.FlowLayoutPanel4, 6)
		Me.FlowLayoutPanel4.Controls.Add(Me.cbRemoteCertificateNotAvailable)
		Me.FlowLayoutPanel4.Controls.Add(Me.cbRemoteCertificateNameMismatch)
		Me.FlowLayoutPanel4.Controls.Add(Me.cbRemoteCertificateChainErrors)
		Me.FlowLayoutPanel4.Name = "FlowLayoutPanel4"
		'
		'cbRemoteCertificateNotAvailable
		'
		resources.ApplyResources(Me.cbRemoteCertificateNotAvailable, "cbRemoteCertificateNotAvailable")
		Me.cbRemoteCertificateNotAvailable.Name = "cbRemoteCertificateNotAvailable"
		Me.cbRemoteCertificateNotAvailable.UseVisualStyleBackColor = True
		'
		'cbRemoteCertificateNameMismatch
		'
		resources.ApplyResources(Me.cbRemoteCertificateNameMismatch, "cbRemoteCertificateNameMismatch")
		Me.cbRemoteCertificateNameMismatch.Name = "cbRemoteCertificateNameMismatch"
		Me.cbRemoteCertificateNameMismatch.UseVisualStyleBackColor = True
		'
		'cbRemoteCertificateChainErrors
		'
		resources.ApplyResources(Me.cbRemoteCertificateChainErrors, "cbRemoteCertificateChainErrors")
		Me.cbRemoteCertificateChainErrors.Name = "cbRemoteCertificateChainErrors"
		Me.cbRemoteCertificateChainErrors.UseVisualStyleBackColor = True
		'
		'Label16
		'
		resources.ApplyResources(Me.Label16, "Label16")
		Me.Label16.Name = "Label16"
		'
		'efServerName
		'
		resources.ApplyResources(Me.efServerName, "efServerName")
		Me.efServerName.Name = "efServerName"
		'
		'printSettingsPage
		'
		resources.ApplyResources(Me.printSettingsPage, "printSettingsPage")
		Me.printSettingsPage.Controls.Add(Me.TableLayoutPanel4)
		Me.printSettingsPage.Name = "printSettingsPage"
		Me.printSettingsPage.UseVisualStyleBackColor = True
		'
		'TableLayoutPanel4
		'
		resources.ApplyResources(Me.TableLayoutPanel4, "TableLayoutPanel4")
		Me.TableLayoutPanel4.Controls.Add(Me.TableLayoutPanel5, 0, 0)
		Me.TableLayoutPanel4.Controls.Add(Me.PictureBox1, 0, 1)
		Me.TableLayoutPanel4.Name = "TableLayoutPanel4"
		'
		'TableLayoutPanel5
		'
		resources.ApplyResources(Me.TableLayoutPanel5, "TableLayoutPanel5")
		Me.TableLayoutPanel5.Controls.Add(Me.Label29, 0, 1)
		Me.TableLayoutPanel5.Controls.Add(Me.Label28, 0, 2)
		Me.TableLayoutPanel5.Controls.Add(Me.efPicture, 1, 2)
		Me.TableLayoutPanel5.Controls.Add(Me.pbChoosePicture, 2, 2)
		Me.TableLayoutPanel5.Controls.Add(Me.efMerchantName, 1, 1)
		Me.TableLayoutPanel5.Controls.Add(Me.pbPrinter, 0, 0)
		Me.TableLayoutPanel5.Controls.Add(Me.lblPrinter, 1, 0)
		Me.TableLayoutPanel5.Name = "TableLayoutPanel5"
		'
		'Label29
		'
		resources.ApplyResources(Me.Label29, "Label29")
		Me.Label29.Name = "Label29"
		'
		'Label28
		'
		resources.ApplyResources(Me.Label28, "Label28")
		Me.Label28.Name = "Label28"
		'
		'efPicture
		'
		resources.ApplyResources(Me.efPicture, "efPicture")
		Me.efPicture.Name = "efPicture"
		'
		'pbChoosePicture
		'
		resources.ApplyResources(Me.pbChoosePicture, "pbChoosePicture")
		Me.pbChoosePicture.Name = "pbChoosePicture"
		Me.pbChoosePicture.UseVisualStyleBackColor = True
		'
		'efMerchantName
		'
		resources.ApplyResources(Me.efMerchantName, "efMerchantName")
		Me.efMerchantName.Name = "efMerchantName"
		'
		'pbPrinter
		'
		resources.ApplyResources(Me.pbPrinter, "pbPrinter")
		Me.pbPrinter.Name = "pbPrinter"
		Me.pbPrinter.UseVisualStyleBackColor = True
		'
		'lblPrinter
		'
		resources.ApplyResources(Me.lblPrinter, "lblPrinter")
		Me.lblPrinter.Name = "lblPrinter"
		Me.lblPrinter.Tag = "false"
		'
		'PictureBox1
		'
		resources.ApplyResources(Me.PictureBox1, "PictureBox1")
		Me.PictureBox1.Name = "PictureBox1"
		Me.PictureBox1.TabStop = False
		'
		'miscellaneous
		'
		resources.ApplyResources(Me.miscellaneous, "miscellaneous")
		Me.miscellaneous.Controls.Add(Me.FlowLayoutPanel5)
		Me.miscellaneous.Name = "miscellaneous"
		Me.miscellaneous.UseVisualStyleBackColor = True
		'
		'FlowLayoutPanel5
		'
		resources.ApplyResources(Me.FlowLayoutPanel5, "FlowLayoutPanel5")
		Me.FlowLayoutPanel5.Controls.Add(Me.cbResuseMerchantReferenceID)
		Me.FlowLayoutPanel5.Controls.Add(Me.cbReturnBrand)
		Me.FlowLayoutPanel5.Controls.Add(Me.cbAllowOfflinePOI)
		Me.FlowLayoutPanel5.Name = "FlowLayoutPanel5"
		'
		'cbResuseMerchantReferenceID
		'
		resources.ApplyResources(Me.cbResuseMerchantReferenceID, "cbResuseMerchantReferenceID")
		Me.cbResuseMerchantReferenceID.Checked = True
		Me.cbResuseMerchantReferenceID.CheckState = System.Windows.Forms.CheckState.Checked
		Me.cbResuseMerchantReferenceID.Name = "cbResuseMerchantReferenceID"
		Me.cbResuseMerchantReferenceID.UseVisualStyleBackColor = True
		'
		'cbReturnBrand
		'
		resources.ApplyResources(Me.cbReturnBrand, "cbReturnBrand")
		Me.cbReturnBrand.Name = "cbReturnBrand"
		Me.cbReturnBrand.UseVisualStyleBackColor = True
		'
		'cbAllowOfflinePOI
		'
		resources.ApplyResources(Me.cbAllowOfflinePOI, "cbAllowOfflinePOI")
		Me.cbAllowOfflinePOI.Name = "cbAllowOfflinePOI"
		Me.cbAllowOfflinePOI.UseVisualStyleBackColor = True
		'
		'OpenFileDialog1
		'
		Me.OpenFileDialog1.CheckFileExists = False
		Me.OpenFileDialog1.CheckPathExists = False
		Me.OpenFileDialog1.FileName = "OpenFileDialog1"
		resources.ApplyResources(Me.OpenFileDialog1, "OpenFileDialog1")
		'
		'FolderBrowserDialog1
		'
		resources.ApplyResources(Me.FolderBrowserDialog1, "FolderBrowserDialog1")
		'
		'FSettings
		'
		Me.AcceptButton = Me.pbSave
		resources.ApplyResources(Me, "$this")
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.CancelButton = Me.pbCancel
		Me.Controls.Add(Me.panelMain)
		Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
		Me.MaximizeBox = False
		Me.MinimizeBox = False
		Me.Name = "FSettings"
		Me.panelMain.ResumeLayout(False)
		Me.panelMain.PerformLayout()
		Me.panelButtons.ResumeLayout(False)
		Me.panelButtons.PerformLayout()
		Me.TabControl1.ResumeLayout(False)
		Me.settingsPage.ResumeLayout(False)
		Me.settingsPage.PerformLayout()
		Me.panelSettingsPage.ResumeLayout(False)
		Me.panelSettingsPage.PerformLayout()
		Me.panelAutocloseSettings.ResumeLayout(False)
		Me.panelAutocloseSettings.PerformLayout()
		CType(Me.udAutocloseDelay, System.ComponentModel.ISupportInitialize).EndInit()
		Me.FlowLayoutPanel3.ResumeLayout(False)
		Me.FlowLayoutPanel3.PerformLayout()
		Me.advancedSettingsPage.ResumeLayout(False)
		Me.advancedSettingsPage.PerformLayout()
		Me.panelAdvancedSettings.ResumeLayout(False)
		Me.panelAdvancedSettings.PerformLayout()
		Me.TableLayoutPanel6.ResumeLayout(False)
		Me.TableLayoutPanel6.PerformLayout()
		Me.FlowLayoutPanel1.ResumeLayout(False)
		Me.FlowLayoutPanel1.PerformLayout()
		Me.panelServerSettings.ResumeLayout(False)
		Me.panelServerSettings.PerformLayout()
		CType(Me.udServerPort, System.ComponentModel.ISupportInitialize).EndInit()
		Me.panelChecks.ResumeLayout(False)
		Me.panelChecks.PerformLayout()
		CType(Me.udCheckTimer, System.ComponentModel.ISupportInitialize).EndInit()
		Me.TableLayoutPanel1.ResumeLayout(False)
		Me.TableLayoutPanel1.PerformLayout()
		CType(Me.udGeneralTimer, System.ComponentModel.ISupportInitialize).EndInit()
		Me.panelPaymentTimer.ResumeLayout(False)
		Me.panelPaymentTimer.PerformLayout()
		CType(Me.udPaymentTimer, System.ComponentModel.ISupportInitialize).EndInit()
		Me.panelReceipts.ResumeLayout(False)
		Me.panelReceipts.PerformLayout()
		Me.panelFileSettings.ResumeLayout(False)
		Me.panelFileSettings.PerformLayout()
		Me.pnlSettingsFileName.ResumeLayout(False)
		Me.pnlSettingsFileName.PerformLayout()
		Me.pnlLogFileName.ResumeLayout(False)
		Me.pnlLogFileName.PerformLayout()
		Me.pnlReceipts.ResumeLayout(False)
		Me.pnlReceipts.PerformLayout()
		Me.panelNexoSettings.ResumeLayout(False)
		Me.panelNexoSettings.PerformLayout()
		Me.panelSaleID.ResumeLayout(False)
		Me.panelSaleID.PerformLayout()
		Me.panelPOIID.ResumeLayout(False)
		Me.panelPOIID.PerformLayout()
		Me.panelApplicationName.ResumeLayout(False)
		Me.panelApplicationName.PerformLayout()
		Me.panelSoftwareVersion.ResumeLayout(False)
		Me.panelSoftwareVersion.PerformLayout()
		Me.panelManufacturerName.ResumeLayout(False)
		Me.panelManufacturerName.PerformLayout()
		Me.panelCurrency.ResumeLayout(False)
		Me.panelCurrency.PerformLayout()
		Me.panelCertificationCode.ResumeLayout(False)
		Me.panelCertificationCode.PerformLayout()
		Me.TableLayoutPanel2.ResumeLayout(False)
		Me.TableLayoutPanel2.PerformLayout()
		Me.GPRSPage.ResumeLayout(False)
		Me.GPRSPage.PerformLayout()
		Me.TableLayoutPanel3.ResumeLayout(False)
		Me.TableLayoutPanel3.PerformLayout()
		CType(Me.udICCDPort, System.ComponentModel.ISupportInitialize).EndInit()
		CType(Me.udGatewayPort, System.ComponentModel.ISupportInitialize).EndInit()
		Me.FlowLayoutPanel4.ResumeLayout(False)
		Me.FlowLayoutPanel4.PerformLayout()
		Me.printSettingsPage.ResumeLayout(False)
		Me.printSettingsPage.PerformLayout()
		Me.TableLayoutPanel4.ResumeLayout(False)
		Me.TableLayoutPanel4.PerformLayout()
		Me.TableLayoutPanel5.ResumeLayout(False)
		Me.TableLayoutPanel5.PerformLayout()
		CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
		Me.miscellaneous.ResumeLayout(False)
		Me.miscellaneous.PerformLayout()
		Me.FlowLayoutPanel5.ResumeLayout(False)
		Me.FlowLayoutPanel5.PerformLayout()
		Me.ResumeLayout(False)
		Me.PerformLayout()

	End Sub

	Friend WithEvents panelMain As Windows.Forms.TableLayoutPanel
	Friend WithEvents panelButtons As Windows.Forms.TableLayoutPanel
	Friend WithEvents pbSave As Windows.Forms.Button
	Friend WithEvents pbCancel As Windows.Forms.Button
	Friend WithEvents panelNexoSettings As Windows.Forms.TableLayoutPanel
	Friend WithEvents panelSaleID As Windows.Forms.TableLayoutPanel
	Friend WithEvents efSaleID As Windows.Forms.TextBox
	Friend WithEvents Label1 As Windows.Forms.Label
	Friend WithEvents cbSaleIDUSeIP As Windows.Forms.CheckBox
	Friend WithEvents panelPOIID As Windows.Forms.TableLayoutPanel
	Friend WithEvents Label2 As Windows.Forms.Label
	Friend WithEvents cbPOIIDUseIP As Windows.Forms.CheckBox
	Friend WithEvents efPOIID As Windows.Forms.TextBox
	Friend WithEvents panelServerSettings As Windows.Forms.TableLayoutPanel
	Friend WithEvents efServerIP As Windows.Forms.TextBox
	Friend WithEvents Label3 As Windows.Forms.Label
	Friend WithEvents Label5 As Windows.Forms.Label
	Friend WithEvents udServerPort As Windows.Forms.NumericUpDown
	Friend WithEvents pbTestConnection As Windows.Forms.Button
	Friend WithEvents pbSaveSettings As Windows.Forms.Button
	Friend WithEvents panelApplicationName As Windows.Forms.TableLayoutPanel
	Friend WithEvents Label4 As Windows.Forms.Label
	Friend WithEvents efApplicationName As Windows.Forms.TextBox
	Friend WithEvents panelSoftwareVersion As Windows.Forms.TableLayoutPanel
	Friend WithEvents Label6 As Windows.Forms.Label
	Friend WithEvents efSoftwareVersion As Windows.Forms.TextBox
	Friend WithEvents panelManufacturerName As Windows.Forms.TableLayoutPanel
	Friend WithEvents Label7 As Windows.Forms.Label
	Friend WithEvents efManufacturerName As Windows.Forms.TextBox
	Friend WithEvents panelCurrency As Windows.Forms.TableLayoutPanel
	Friend WithEvents Label8 As Windows.Forms.Label
	Friend WithEvents cbxCurrency As Windows.Forms.ComboBox
	Friend WithEvents cbSynchronous As Windows.Forms.CheckBox
	Friend WithEvents panelCertificationCode As Windows.Forms.TableLayoutPanel
	Friend WithEvents Label10 As Windows.Forms.Label
	Friend WithEvents efCertificationCode As Windows.Forms.TextBox
	Friend WithEvents panelAutocloseSettings As Windows.Forms.TableLayoutPanel
	Friend WithEvents Label12 As Windows.Forms.Label
	Friend WithEvents udAutocloseDelay As Windows.Forms.NumericUpDown
	Friend WithEvents cbAutoclose As Windows.Forms.CheckBox
	Friend WithEvents panelFileSettings As Windows.Forms.TableLayoutPanel
	Friend WithEvents pbChooseSettingsFile As Windows.Forms.Button
	Friend WithEvents efSettingsFileName As Windows.Forms.TextBox
	Friend WithEvents Label13 As Windows.Forms.Label
	Friend WithEvents OpenFileDialog1 As Windows.Forms.OpenFileDialog
	Friend WithEvents Label14 As Windows.Forms.Label
	Friend WithEvents pbChooseLogFile As Windows.Forms.Button
	Friend WithEvents efLogFileName As Windows.Forms.TextBox
	Friend WithEvents TabControl1 As Windows.Forms.TabControl
	Friend WithEvents settingsPage As Windows.Forms.TabPage
	Friend WithEvents panelSettingsPage As Windows.Forms.TableLayoutPanel
	Friend WithEvents advancedSettingsPage As Windows.Forms.TabPage
	Friend WithEvents panelAdvancedSettings As Windows.Forms.TableLayoutPanel
	Friend WithEvents cbSupportsReversal As Windows.Forms.CheckBox
	Friend WithEvents cbPrintReceipt As Windows.Forms.CheckBox
	Friend WithEvents cbSupportsCheck As Windows.Forms.CheckBox
	Friend WithEvents cbSupportsRefund As Windows.Forms.CheckBox
	Friend WithEvents cbUseBackup As Windows.Forms.CheckBox
	Friend WithEvents TableLayoutPanel2 As Windows.Forms.TableLayoutPanel
	Friend WithEvents Label18 As Windows.Forms.Label
	Friend WithEvents efAdminCode As Windows.Forms.TextBox
	Friend WithEvents cbUseDate As Windows.Forms.CheckBox
	Friend WithEvents cbSupportsAbort As Windows.Forms.CheckBox
	Friend WithEvents cbSupportsReconciliation As Windows.Forms.CheckBox
	Friend WithEvents GPRSPage As Windows.Forms.TabPage
	Friend WithEvents TableLayoutPanel3 As Windows.Forms.TableLayoutPanel
	Friend WithEvents efGatewayIP As Windows.Forms.TextBox
	Friend WithEvents Label19 As Windows.Forms.Label
	Friend WithEvents Label21 As Windows.Forms.Label
	Friend WithEvents efICCD As Windows.Forms.TextBox
	Friend WithEvents Label23 As Windows.Forms.Label
	Friend WithEvents udICCDPort As Windows.Forms.NumericUpDown
	Friend WithEvents efUser As Windows.Forms.TextBox
	Friend WithEvents Label24 As Windows.Forms.Label
	Friend WithEvents efPWD As Windows.Forms.TextBox
	Friend WithEvents Label22 As Windows.Forms.Label
	Friend WithEvents TextBox5 As Windows.Forms.TextBox
	Friend WithEvents pbTestGPRS As Windows.Forms.Button
	Friend WithEvents Label20 As Windows.Forms.Label
	Friend WithEvents udGatewayPort As Windows.Forms.NumericUpDown
	Friend WithEvents printSettingsPage As Windows.Forms.TabPage
	Friend WithEvents TableLayoutPanel4 As Windows.Forms.TableLayoutPanel
	Friend WithEvents TableLayoutPanel5 As Windows.Forms.TableLayoutPanel
	Friend WithEvents Label28 As Windows.Forms.Label
	Friend WithEvents efPicture As Windows.Forms.TextBox
	Friend WithEvents pbChoosePicture As Windows.Forms.Button
	Friend WithEvents PictureBox1 As Windows.Forms.PictureBox
	Friend WithEvents Label29 As Windows.Forms.Label
	Friend WithEvents efMerchantName As Windows.Forms.TextBox
	Friend WithEvents pbPrinter As Windows.Forms.Button
	Friend WithEvents lblPrinter As Windows.Forms.Label
	Friend WithEvents TableLayoutPanel6 As Windows.Forms.TableLayoutPanel
	Friend WithEvents FlowLayoutPanel1 As Windows.Forms.FlowLayoutPanel
	Friend WithEvents rbMainPOI As Windows.Forms.RadioButton
	Friend WithEvents rbBackupPOI As Windows.Forms.RadioButton
	Friend WithEvents lblReceiptsFolder As Windows.Forms.Label
	Friend WithEvents efReceiptsDirectory As Windows.Forms.TextBox
	Friend WithEvents panelChecks As Windows.Forms.TableLayoutPanel
	Friend WithEvents udCheckTimer As Windows.Forms.NumericUpDown
	Friend WithEvents Label17 As Windows.Forms.Label
	Friend WithEvents TableLayoutPanel1 As Windows.Forms.TableLayoutPanel
	Friend WithEvents udGeneralTimer As Windows.Forms.NumericUpDown
	Friend WithEvents Label9 As Windows.Forms.Label
	Friend WithEvents panelPaymentTimer As Windows.Forms.TableLayoutPanel
	Friend WithEvents udPaymentTimer As Windows.Forms.NumericUpDown
	Friend WithEvents Label11 As Windows.Forms.Label
	Friend WithEvents pbReceiptsDirectory As Windows.Forms.Button
	Friend WithEvents FolderBrowserDialog1 As Windows.Forms.FolderBrowserDialog
	Friend WithEvents panelReceipts As Windows.Forms.TableLayoutPanel
	Friend WithEvents cbCustomer As Windows.Forms.CheckBox
	Friend WithEvents cbMerchant As Windows.Forms.CheckBox
	Friend WithEvents cbSavePDF As Windows.Forms.CheckBox
	Friend WithEvents pnlSettingsFileName As Windows.Forms.TableLayoutPanel
	Friend WithEvents pnlLogFileName As Windows.Forms.TableLayoutPanel
	Friend WithEvents pnlReceipts As Windows.Forms.TableLayoutPanel
	Friend WithEvents miscellaneous As Windows.Forms.TabPage
	Friend WithEvents cbResuseMerchantReferenceID As Windows.Forms.CheckBox
	Friend WithEvents FlowLayoutPanel3 As Windows.Forms.FlowLayoutPanel
	Friend WithEvents cbGPRS As Windows.Forms.CheckBox
	Friend WithEvents FlowLayoutPanel4 As Windows.Forms.FlowLayoutPanel
	Friend WithEvents cbRemoteCertificateNotAvailable As Windows.Forms.CheckBox
	Friend WithEvents cbRemoteCertificateNameMismatch As Windows.Forms.CheckBox
	Friend WithEvents cbRemoteCertificateChainErrors As Windows.Forms.CheckBox
	Friend WithEvents Label16 As Windows.Forms.Label
	Friend WithEvents efServerName As Windows.Forms.TextBox
	Friend WithEvents cbPOIIsOffline As Windows.Forms.CheckBox
	Friend WithEvents cbNoAutoCloseOnError As Windows.Forms.CheckBox
	Friend WithEvents FlowLayoutPanel5 As Windows.Forms.FlowLayoutPanel
	Friend WithEvents cbReturnBrand As Windows.Forms.CheckBox
	Friend WithEvents cbAllowOfflinePOI As Windows.Forms.CheckBox
	Friend WithEvents cbHideInformation As Windows.Forms.CheckBox
	Friend WithEvents cbAlwaysLogToPOI As Windows.Forms.CheckBox
End Class
