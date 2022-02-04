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
		Me.panelMain.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelMain.AutoSize = True
		Me.panelMain.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelMain.ColumnCount = 1
		Me.panelMain.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelMain.Controls.Add(Me.panelButtons, 0, 1)
		Me.panelMain.Controls.Add(Me.TabControl1, 0, 0)
		Me.panelMain.Location = New System.Drawing.Point(12, 12)
		Me.panelMain.Name = "panelMain"
		Me.panelMain.RowCount = 2
		Me.panelMain.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelMain.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelMain.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20.0!))
		Me.panelMain.Size = New System.Drawing.Size(814, 444)
		Me.panelMain.TabIndex = 0
		'
		'panelButtons
		'
		Me.panelButtons.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelButtons.AutoSize = True
		Me.panelButtons.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelButtons.ColumnCount = 4
		Me.panelButtons.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelButtons.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelButtons.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelButtons.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelButtons.Controls.Add(Me.pbSaveSettings, 0, 0)
		Me.panelButtons.Controls.Add(Me.pbSave, 2, 0)
		Me.panelButtons.Controls.Add(Me.pbCancel, 3, 0)
		Me.panelButtons.Location = New System.Drawing.Point(3, 412)
		Me.panelButtons.Name = "panelButtons"
		Me.panelButtons.RowCount = 1
		Me.panelButtons.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelButtons.Size = New System.Drawing.Size(808, 29)
		Me.panelButtons.TabIndex = 0
		'
		'pbSaveSettings
		'
		Me.pbSaveSettings.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pbSaveSettings.AutoSize = True
		Me.pbSaveSettings.Location = New System.Drawing.Point(3, 3)
		Me.pbSaveSettings.Name = "pbSaveSettings"
		Me.pbSaveSettings.Size = New System.Drawing.Size(81, 23)
		Me.pbSaveSettings.TabIndex = 0
		Me.pbSaveSettings.Text = "Save settings"
		Me.pbSaveSettings.UseVisualStyleBackColor = True
		'
		'pbSave
		'
		Me.pbSave.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pbSave.AutoSize = True
		Me.pbSave.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.pbSave.DialogResult = System.Windows.Forms.DialogResult.OK
		Me.pbSave.Location = New System.Drawing.Point(698, 3)
		Me.pbSave.Name = "pbSave"
		Me.pbSave.Size = New System.Drawing.Size(51, 23)
		Me.pbSave.TabIndex = 1
		Me.pbSave.Text = "&Accept"
		Me.pbSave.UseVisualStyleBackColor = True
		'
		'pbCancel
		'
		Me.pbCancel.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pbCancel.AutoSize = True
		Me.pbCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel
		Me.pbCancel.Location = New System.Drawing.Point(755, 3)
		Me.pbCancel.Name = "pbCancel"
		Me.pbCancel.Size = New System.Drawing.Size(50, 23)
		Me.pbCancel.TabIndex = 2
		Me.pbCancel.Text = "&Cancel"
		Me.pbCancel.UseVisualStyleBackColor = True
		'
		'TabControl1
		'
		Me.TabControl1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TabControl1.Controls.Add(Me.settingsPage)
		Me.TabControl1.Controls.Add(Me.advancedSettingsPage)
		Me.TabControl1.Controls.Add(Me.GPRSPage)
		Me.TabControl1.Controls.Add(Me.printSettingsPage)
		Me.TabControl1.Controls.Add(Me.miscellaneous)
		Me.TabControl1.Location = New System.Drawing.Point(3, 3)
		Me.TabControl1.Name = "TabControl1"
		Me.TabControl1.SelectedIndex = 0
		Me.TabControl1.Size = New System.Drawing.Size(808, 403)
		Me.TabControl1.TabIndex = 0
		'
		'settingsPage
		'
		Me.settingsPage.Controls.Add(Me.panelSettingsPage)
		Me.settingsPage.Location = New System.Drawing.Point(4, 22)
		Me.settingsPage.Name = "settingsPage"
		Me.settingsPage.Padding = New System.Windows.Forms.Padding(3)
		Me.settingsPage.Size = New System.Drawing.Size(800, 377)
		Me.settingsPage.TabIndex = 0
		Me.settingsPage.Text = "Settings"
		Me.settingsPage.UseVisualStyleBackColor = True
		'
		'panelSettingsPage
		'
		Me.panelSettingsPage.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelSettingsPage.AutoSize = True
		Me.panelSettingsPage.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelSettingsPage.ColumnCount = 1
		Me.panelSettingsPage.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelSettingsPage.Controls.Add(Me.panelAutocloseSettings, 0, 0)
		Me.panelSettingsPage.Controls.Add(Me.FlowLayoutPanel3, 0, 2)
		Me.panelSettingsPage.Location = New System.Drawing.Point(0, 0)
		Me.panelSettingsPage.Name = "panelSettingsPage"
		Me.panelSettingsPage.RowCount = 3
		Me.panelSettingsPage.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelSettingsPage.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 10.0!))
		Me.panelSettingsPage.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelSettingsPage.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20.0!))
		Me.panelSettingsPage.Size = New System.Drawing.Size(803, 378)
		Me.panelSettingsPage.TabIndex = 0
		'
		'panelAutocloseSettings
		'
		Me.panelAutocloseSettings.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelAutocloseSettings.AutoSize = True
		Me.panelAutocloseSettings.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelAutocloseSettings.ColumnCount = 4
		Me.panelAutocloseSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelAutocloseSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelAutocloseSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelAutocloseSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelAutocloseSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 20.0!))
		Me.panelAutocloseSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 20.0!))
		Me.panelAutocloseSettings.Controls.Add(Me.Label12, 1, 0)
		Me.panelAutocloseSettings.Controls.Add(Me.udAutocloseDelay, 2, 0)
		Me.panelAutocloseSettings.Controls.Add(Me.cbAutoclose, 0, 0)
		Me.panelAutocloseSettings.Controls.Add(Me.cbNoAutoCloseOnError, 3, 0)
		Me.panelAutocloseSettings.Location = New System.Drawing.Point(3, 3)
		Me.panelAutocloseSettings.Name = "panelAutocloseSettings"
		Me.panelAutocloseSettings.RowCount = 1
		Me.panelAutocloseSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelAutocloseSettings.Size = New System.Drawing.Size(797, 26)
		Me.panelAutocloseSettings.TabIndex = 3
		'
		'Label12
		'
		Me.Label12.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label12.AutoSize = True
		Me.Label12.Location = New System.Drawing.Point(175, 6)
		Me.Label12.Name = "Label12"
		Me.Label12.Size = New System.Drawing.Size(117, 13)
		Me.Label12.TabIndex = 2
		Me.Label12.Text = "delay before autoclose:"
		'
		'udAutocloseDelay
		'
		Me.udAutocloseDelay.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.udAutocloseDelay.Location = New System.Drawing.Point(298, 3)
		Me.udAutocloseDelay.Maximum = New Decimal(New Integer() {60, 0, 0, 0})
		Me.udAutocloseDelay.Minimum = New Decimal(New Integer() {1, 0, 0, 0})
		Me.udAutocloseDelay.Name = "udAutocloseDelay"
		Me.udAutocloseDelay.Size = New System.Drawing.Size(57, 20)
		Me.udAutocloseDelay.TabIndex = 1
		Me.udAutocloseDelay.Value = New Decimal(New Integer() {2, 0, 0, 0})
		'
		'cbAutoclose
		'
		Me.cbAutoclose.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbAutoclose.AutoSize = True
		Me.cbAutoclose.Location = New System.Drawing.Point(3, 4)
		Me.cbAutoclose.Name = "cbAutoclose"
		Me.cbAutoclose.Size = New System.Drawing.Size(166, 17)
		Me.cbAutoclose.TabIndex = 0
		Me.cbAutoclose.Text = "Autoclose processing window"
		Me.cbAutoclose.UseVisualStyleBackColor = True
		'
		'cbNoAutoCloseOnError
		'
		Me.cbNoAutoCloseOnError.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbNoAutoCloseOnError.AutoSize = True
		Me.cbNoAutoCloseOnError.Location = New System.Drawing.Point(361, 4)
		Me.cbNoAutoCloseOnError.Name = "cbNoAutoCloseOnError"
		Me.cbNoAutoCloseOnError.Size = New System.Drawing.Size(128, 17)
		Me.cbNoAutoCloseOnError.TabIndex = 3
		Me.cbNoAutoCloseOnError.Text = "No autoclose on error"
		Me.cbNoAutoCloseOnError.UseVisualStyleBackColor = True
		'
		'FlowLayoutPanel3
		'
		Me.FlowLayoutPanel3.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.FlowLayoutPanel3.AutoSize = True
		Me.FlowLayoutPanel3.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.FlowLayoutPanel3.Controls.Add(Me.cbUseBackup)
		Me.FlowLayoutPanel3.Controls.Add(Me.cbGPRS)
		Me.FlowLayoutPanel3.Controls.Add(Me.cbPOIIsOffline)
		Me.FlowLayoutPanel3.FlowDirection = System.Windows.Forms.FlowDirection.TopDown
		Me.FlowLayoutPanel3.Location = New System.Drawing.Point(3, 45)
		Me.FlowLayoutPanel3.Name = "FlowLayoutPanel3"
		Me.FlowLayoutPanel3.Size = New System.Drawing.Size(797, 330)
		Me.FlowLayoutPanel3.TabIndex = 5
		'
		'cbUseBackup
		'
		Me.cbUseBackup.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbUseBackup.AutoSize = True
		Me.cbUseBackup.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
		Me.cbUseBackup.Location = New System.Drawing.Point(3, 3)
		Me.cbUseBackup.Name = "cbUseBackup"
		Me.cbUseBackup.Size = New System.Drawing.Size(139, 20)
		Me.cbUseBackup.TabIndex = 4
		Me.cbUseBackup.Text = "Use backup POI"
		Me.cbUseBackup.UseVisualStyleBackColor = True
		'
		'cbGPRS
		'
		Me.cbGPRS.AutoSize = True
		Me.cbGPRS.Location = New System.Drawing.Point(3, 29)
		Me.cbGPRS.Name = "cbGPRS"
		Me.cbGPRS.Size = New System.Drawing.Size(134, 17)
		Me.cbGPRS.TabIndex = 5
		Me.cbGPRS.Text = "Use GPRS connection"
		Me.cbGPRS.UseVisualStyleBackColor = True
		'
		'cbPOIIsOffline
		'
		Me.cbPOIIsOffline.AutoSize = True
		Me.cbPOIIsOffline.Location = New System.Drawing.Point(3, 52)
		Me.cbPOIIsOffline.Name = "cbPOIIsOffline"
		Me.cbPOIIsOffline.Size = New System.Drawing.Size(85, 17)
		Me.cbPOIIsOffline.TabIndex = 6
		Me.cbPOIIsOffline.Text = "POI is offline"
		Me.cbPOIIsOffline.UseVisualStyleBackColor = True
		'
		'advancedSettingsPage
		'
		Me.advancedSettingsPage.Controls.Add(Me.panelAdvancedSettings)
		Me.advancedSettingsPage.Location = New System.Drawing.Point(4, 22)
		Me.advancedSettingsPage.Name = "advancedSettingsPage"
		Me.advancedSettingsPage.Padding = New System.Windows.Forms.Padding(3)
		Me.advancedSettingsPage.Size = New System.Drawing.Size(800, 377)
		Me.advancedSettingsPage.TabIndex = 1
		Me.advancedSettingsPage.Text = "Advanced settings"
		Me.advancedSettingsPage.UseVisualStyleBackColor = True
		'
		'panelAdvancedSettings
		'
		Me.panelAdvancedSettings.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelAdvancedSettings.AutoSize = True
		Me.panelAdvancedSettings.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelAdvancedSettings.ColumnCount = 1
		Me.panelAdvancedSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelAdvancedSettings.Controls.Add(Me.TableLayoutPanel6, 0, 2)
		Me.panelAdvancedSettings.Controls.Add(Me.panelFileSettings, 0, 4)
		Me.panelAdvancedSettings.Controls.Add(Me.panelNexoSettings, 0, 0)
		Me.panelAdvancedSettings.Location = New System.Drawing.Point(0, 0)
		Me.panelAdvancedSettings.Name = "panelAdvancedSettings"
		Me.panelAdvancedSettings.RowCount = 6
		Me.panelAdvancedSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelAdvancedSettings.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 10.0!))
		Me.panelAdvancedSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelAdvancedSettings.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 10.0!))
		Me.panelAdvancedSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelAdvancedSettings.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelAdvancedSettings.Size = New System.Drawing.Size(802, 377)
		Me.panelAdvancedSettings.TabIndex = 0
		'
		'TableLayoutPanel6
		'
		Me.TableLayoutPanel6.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TableLayoutPanel6.AutoSize = True
		Me.TableLayoutPanel6.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.TableLayoutPanel6.ColumnCount = 1
		Me.TableLayoutPanel6.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel6.Controls.Add(Me.FlowLayoutPanel1, 0, 0)
		Me.TableLayoutPanel6.Controls.Add(Me.panelServerSettings, 0, 1)
		Me.TableLayoutPanel6.Location = New System.Drawing.Point(3, 116)
		Me.TableLayoutPanel6.Name = "TableLayoutPanel6"
		Me.TableLayoutPanel6.RowCount = 2
		Me.TableLayoutPanel6.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.TableLayoutPanel6.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel6.Size = New System.Drawing.Size(796, 131)
		Me.TableLayoutPanel6.TabIndex = 1
		'
		'FlowLayoutPanel1
		'
		Me.FlowLayoutPanel1.AutoSize = True
		Me.FlowLayoutPanel1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.FlowLayoutPanel1.Controls.Add(Me.rbMainPOI)
		Me.FlowLayoutPanel1.Controls.Add(Me.rbBackupPOI)
		Me.FlowLayoutPanel1.Controls.Add(Me.cbSavePDF)
		Me.FlowLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill
		Me.FlowLayoutPanel1.Location = New System.Drawing.Point(3, 3)
		Me.FlowLayoutPanel1.Name = "FlowLayoutPanel1"
		Me.FlowLayoutPanel1.Size = New System.Drawing.Size(790, 23)
		Me.FlowLayoutPanel1.TabIndex = 0
		'
		'rbMainPOI
		'
		Me.rbMainPOI.AutoSize = True
		Me.rbMainPOI.Checked = True
		Me.rbMainPOI.Location = New System.Drawing.Point(3, 3)
		Me.rbMainPOI.Name = "rbMainPOI"
		Me.rbMainPOI.Size = New System.Drawing.Size(80, 17)
		Me.rbMainPOI.TabIndex = 0
		Me.rbMainPOI.TabStop = True
		Me.rbMainPOI.Text = "Primary POI"
		Me.rbMainPOI.UseVisualStyleBackColor = True
		'
		'rbBackupPOI
		'
		Me.rbBackupPOI.AutoSize = True
		Me.rbBackupPOI.Location = New System.Drawing.Point(89, 3)
		Me.rbBackupPOI.Name = "rbBackupPOI"
		Me.rbBackupPOI.Size = New System.Drawing.Size(83, 17)
		Me.rbBackupPOI.TabIndex = 1
		Me.rbBackupPOI.Text = "Backup POI"
		Me.rbBackupPOI.UseVisualStyleBackColor = True
		'
		'cbSavePDF
		'
		Me.cbSavePDF.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbSavePDF.AutoSize = True
		Me.cbSavePDF.Location = New System.Drawing.Point(178, 3)
		Me.cbSavePDF.Name = "cbSavePDF"
		Me.cbSavePDF.Size = New System.Drawing.Size(91, 17)
		Me.cbSavePDF.TabIndex = 2
		Me.cbSavePDF.Text = "Save receipts"
		Me.cbSavePDF.UseVisualStyleBackColor = True
		'
		'panelServerSettings
		'
		Me.panelServerSettings.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelServerSettings.AutoSize = True
		Me.panelServerSettings.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelServerSettings.ColumnCount = 6
		Me.panelServerSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelServerSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelServerSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelServerSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelServerSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelServerSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
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
		Me.panelServerSettings.Location = New System.Drawing.Point(3, 32)
		Me.panelServerSettings.Name = "panelServerSettings"
		Me.panelServerSettings.RowCount = 3
		Me.panelServerSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelServerSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelServerSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelServerSettings.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20.0!))
		Me.panelServerSettings.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20.0!))
		Me.panelServerSettings.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20.0!))
		Me.panelServerSettings.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20.0!))
		Me.panelServerSettings.Size = New System.Drawing.Size(790, 96)
		Me.panelServerSettings.TabIndex = 1
		'
		'efServerIP
		'
		Me.efServerIP.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efServerIP.Location = New System.Drawing.Point(110, 6)
		Me.efServerIP.Name = "efServerIP"
		Me.efServerIP.Size = New System.Drawing.Size(153, 20)
		Me.efServerIP.TabIndex = 0
		'
		'Label3
		'
		Me.Label3.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label3.AutoSize = True
		Me.Label3.Location = New System.Drawing.Point(41, 9)
		Me.Label3.Name = "Label3"
		Me.Label3.Size = New System.Drawing.Size(63, 13)
		Me.Label3.TabIndex = 1
		Me.Label3.Text = "Terminal IP:"
		'
		'Label5
		'
		Me.Label5.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label5.AutoSize = True
		Me.Label5.Location = New System.Drawing.Point(331, 9)
		Me.Label5.Name = "Label5"
		Me.Label5.Size = New System.Drawing.Size(71, 13)
		Me.Label5.TabIndex = 2
		Me.Label5.Text = "Terminal port:"
		'
		'udServerPort
		'
		Me.udServerPort.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.udServerPort.Location = New System.Drawing.Point(408, 6)
		Me.udServerPort.Maximum = New Decimal(New Integer() {65535, 0, 0, 0})
		Me.udServerPort.Minimum = New Decimal(New Integer() {1, 0, 0, 0})
		Me.udServerPort.Name = "udServerPort"
		Me.udServerPort.Size = New System.Drawing.Size(95, 20)
		Me.udServerPort.TabIndex = 1
		Me.udServerPort.Value = New Decimal(New Integer() {2018, 0, 0, 0})
		'
		'pbTestConnection
		'
		Me.pbTestConnection.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pbTestConnection.AutoSize = True
		Me.pbTestConnection.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.pbTestConnection.Location = New System.Drawing.Point(509, 4)
		Me.pbTestConnection.Name = "pbTestConnection"
		Me.pbTestConnection.Size = New System.Drawing.Size(106, 23)
		Me.pbTestConnection.TabIndex = 2
		Me.pbTestConnection.Text = "&Test connection"
		Me.pbTestConnection.UseVisualStyleBackColor = True
		'
		'panelChecks
		'
		Me.panelChecks.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelChecks.AutoSize = True
		Me.panelChecks.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelChecks.ColumnCount = 3
		Me.panelChecks.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelChecks.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelChecks.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelChecks.Controls.Add(Me.udCheckTimer, 1, 0)
		Me.panelChecks.Controls.Add(Me.Label17, 0, 0)
		Me.panelChecks.Location = New System.Drawing.Point(621, 67)
		Me.panelChecks.Name = "panelChecks"
		Me.panelChecks.RowCount = 1
		Me.panelChecks.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelChecks.Size = New System.Drawing.Size(166, 26)
		Me.panelChecks.TabIndex = 13
		'
		'udCheckTimer
		'
		Me.udCheckTimer.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.udCheckTimer.Location = New System.Drawing.Point(127, 3)
		Me.udCheckTimer.Maximum = New Decimal(New Integer() {90, 0, 0, 0})
		Me.udCheckTimer.Name = "udCheckTimer"
		Me.udCheckTimer.Size = New System.Drawing.Size(40, 20)
		Me.udCheckTimer.TabIndex = 0
		Me.udCheckTimer.Value = New Decimal(New Integer() {5, 0, 0, 0})
		'
		'Label17
		'
		Me.Label17.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label17.AutoSize = True
		Me.Label17.Location = New System.Drawing.Point(3, 6)
		Me.Label17.Name = "Label17"
		Me.Label17.Size = New System.Drawing.Size(118, 13)
		Me.Label17.TabIndex = 4
		Me.Label17.Text = "Check operations timer:"
		'
		'TableLayoutPanel1
		'
		Me.TableLayoutPanel1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TableLayoutPanel1.AutoSize = True
		Me.TableLayoutPanel1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.TableLayoutPanel1.ColumnCount = 3
		Me.TableLayoutPanel1.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel1.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel1.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel1.Controls.Add(Me.udGeneralTimer, 1, 0)
		Me.TableLayoutPanel1.Controls.Add(Me.Label9, 0, 0)
		Me.TableLayoutPanel1.Location = New System.Drawing.Point(621, 3)
		Me.TableLayoutPanel1.Name = "TableLayoutPanel1"
		Me.TableLayoutPanel1.RowCount = 1
		Me.TableLayoutPanel1.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel1.Size = New System.Drawing.Size(166, 26)
		Me.TableLayoutPanel1.TabIndex = 3
		'
		'udGeneralTimer
		'
		Me.udGeneralTimer.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.udGeneralTimer.Location = New System.Drawing.Point(107, 3)
		Me.udGeneralTimer.Maximum = New Decimal(New Integer() {90, 0, 0, 0})
		Me.udGeneralTimer.Name = "udGeneralTimer"
		Me.udGeneralTimer.Size = New System.Drawing.Size(40, 20)
		Me.udGeneralTimer.TabIndex = 0
		Me.udGeneralTimer.Value = New Decimal(New Integer() {5, 0, 0, 0})
		'
		'Label9
		'
		Me.Label9.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label9.AutoSize = True
		Me.Label9.Location = New System.Drawing.Point(3, 6)
		Me.Label9.Name = "Label9"
		Me.Label9.Size = New System.Drawing.Size(98, 13)
		Me.Label9.TabIndex = 4
		Me.Label9.Text = "General nexo timer:"
		'
		'panelPaymentTimer
		'
		Me.panelPaymentTimer.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelPaymentTimer.AutoSize = True
		Me.panelPaymentTimer.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelPaymentTimer.ColumnCount = 3
		Me.panelPaymentTimer.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelPaymentTimer.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelPaymentTimer.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelPaymentTimer.Controls.Add(Me.udPaymentTimer, 1, 0)
		Me.panelPaymentTimer.Controls.Add(Me.Label11, 0, 0)
		Me.panelPaymentTimer.Location = New System.Drawing.Point(621, 35)
		Me.panelPaymentTimer.Name = "panelPaymentTimer"
		Me.panelPaymentTimer.RowCount = 1
		Me.panelPaymentTimer.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelPaymentTimer.Size = New System.Drawing.Size(166, 26)
		Me.panelPaymentTimer.TabIndex = 7
		'
		'udPaymentTimer
		'
		Me.udPaymentTimer.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.udPaymentTimer.Location = New System.Drawing.Point(85, 3)
		Me.udPaymentTimer.Maximum = New Decimal(New Integer() {300, 0, 0, 0})
		Me.udPaymentTimer.Name = "udPaymentTimer"
		Me.udPaymentTimer.Size = New System.Drawing.Size(40, 20)
		Me.udPaymentTimer.TabIndex = 0
		Me.udPaymentTimer.Value = New Decimal(New Integer() {5, 0, 0, 0})
		'
		'Label11
		'
		Me.Label11.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label11.AutoSize = True
		Me.Label11.Location = New System.Drawing.Point(3, 6)
		Me.Label11.Name = "Label11"
		Me.Label11.Size = New System.Drawing.Size(76, 13)
		Me.Label11.TabIndex = 4
		Me.Label11.Text = "Payment timer:"
		'
		'cbSupportsCheck
		'
		Me.cbSupportsCheck.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbSupportsCheck.AutoSize = True
		Me.cbSupportsCheck.Location = New System.Drawing.Point(509, 71)
		Me.cbSupportsCheck.Name = "cbSupportsCheck"
		Me.cbSupportsCheck.Size = New System.Drawing.Size(106, 17)
		Me.cbSupportsCheck.TabIndex = 12
		Me.cbSupportsCheck.Text = "Supports checks"
		Me.cbSupportsCheck.UseVisualStyleBackColor = True
		'
		'cbSynchronous
		'
		Me.cbSynchronous.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbSynchronous.AutoSize = True
		Me.cbSynchronous.Enabled = False
		Me.cbSynchronous.Location = New System.Drawing.Point(509, 39)
		Me.cbSynchronous.Name = "cbSynchronous"
		Me.cbSynchronous.Size = New System.Drawing.Size(88, 17)
		Me.cbSynchronous.TabIndex = 6
		Me.cbSynchronous.Text = "Synchronous"
		Me.cbSynchronous.UseVisualStyleBackColor = True
		'
		'cbPrintReceipt
		'
		Me.cbPrintReceipt.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbPrintReceipt.AutoSize = True
		Me.cbPrintReceipt.Location = New System.Drawing.Point(3, 39)
		Me.cbPrintReceipt.Name = "cbPrintReceipt"
		Me.cbPrintReceipt.Size = New System.Drawing.Size(82, 17)
		Me.cbPrintReceipt.TabIndex = 4
		Me.cbPrintReceipt.Text = "Print receipt"
		Me.cbPrintReceipt.UseVisualStyleBackColor = True
		'
		'cbSupportsAbort
		'
		Me.cbSupportsAbort.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.cbSupportsAbort.AutoSize = True
		Me.cbSupportsAbort.Location = New System.Drawing.Point(408, 71)
		Me.cbSupportsAbort.Name = "cbSupportsAbort"
		Me.cbSupportsAbort.Size = New System.Drawing.Size(95, 17)
		Me.cbSupportsAbort.TabIndex = 11
		Me.cbSupportsAbort.Text = "Supports abort"
		Me.cbSupportsAbort.UseVisualStyleBackColor = True
		'
		'cbSupportsRefund
		'
		Me.cbSupportsRefund.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbSupportsRefund.AutoSize = True
		Me.cbSupportsRefund.Location = New System.Drawing.Point(3, 71)
		Me.cbSupportsRefund.Name = "cbSupportsRefund"
		Me.cbSupportsRefund.Size = New System.Drawing.Size(101, 17)
		Me.cbSupportsRefund.TabIndex = 8
		Me.cbSupportsRefund.Text = "Supports refund"
		Me.cbSupportsRefund.UseVisualStyleBackColor = True
		'
		'panelReceipts
		'
		Me.panelReceipts.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelReceipts.AutoSize = True
		Me.panelReceipts.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelReceipts.ColumnCount = 2
		Me.panelReceipts.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelReceipts.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelReceipts.Controls.Add(Me.cbCustomer, 0, 0)
		Me.panelReceipts.Controls.Add(Me.cbMerchant, 1, 0)
		Me.panelReceipts.Location = New System.Drawing.Point(110, 35)
		Me.panelReceipts.Name = "panelReceipts"
		Me.panelReceipts.RowCount = 1
		Me.panelReceipts.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelReceipts.Size = New System.Drawing.Size(153, 26)
		Me.panelReceipts.TabIndex = 5
		'
		'cbCustomer
		'
		Me.cbCustomer.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.cbCustomer.AutoSize = True
		Me.cbCustomer.Location = New System.Drawing.Point(3, 4)
		Me.cbCustomer.Name = "cbCustomer"
		Me.cbCustomer.Size = New System.Drawing.Size(70, 17)
		Me.cbCustomer.TabIndex = 0
		Me.cbCustomer.Text = "Customer"
		Me.cbCustomer.UseVisualStyleBackColor = True
		'
		'cbMerchant
		'
		Me.cbMerchant.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.cbMerchant.AutoSize = True
		Me.cbMerchant.Location = New System.Drawing.Point(79, 4)
		Me.cbMerchant.Name = "cbMerchant"
		Me.cbMerchant.Size = New System.Drawing.Size(71, 17)
		Me.cbMerchant.TabIndex = 1
		Me.cbMerchant.Text = "Merchant"
		Me.cbMerchant.UseVisualStyleBackColor = True
		'
		'cbSupportsReversal
		'
		Me.cbSupportsReversal.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbSupportsReversal.AutoSize = True
		Me.cbSupportsReversal.Location = New System.Drawing.Point(110, 71)
		Me.cbSupportsReversal.Name = "cbSupportsReversal"
		Me.cbSupportsReversal.Size = New System.Drawing.Size(128, 17)
		Me.cbSupportsReversal.TabIndex = 9
		Me.cbSupportsReversal.Text = "Supports cancellation"
		Me.cbSupportsReversal.UseVisualStyleBackColor = True
		'
		'cbSupportsReconciliation
		'
		Me.cbSupportsReconciliation.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.cbSupportsReconciliation.AutoSize = True
		Me.cbSupportsReconciliation.Location = New System.Drawing.Point(269, 71)
		Me.cbSupportsReconciliation.Name = "cbSupportsReconciliation"
		Me.cbSupportsReconciliation.Size = New System.Drawing.Size(133, 17)
		Me.cbSupportsReconciliation.TabIndex = 10
		Me.cbSupportsReconciliation.Text = "Supports reconciliation"
		Me.cbSupportsReconciliation.UseVisualStyleBackColor = True
		'
		'panelFileSettings
		'
		Me.panelFileSettings.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelFileSettings.AutoSize = True
		Me.panelFileSettings.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelFileSettings.ColumnCount = 2
		Me.panelFileSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelFileSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelFileSettings.Controls.Add(Me.lblReceiptsFolder, 0, 2)
		Me.panelFileSettings.Controls.Add(Me.Label13, 0, 0)
		Me.panelFileSettings.Controls.Add(Me.Label14, 0, 1)
		Me.panelFileSettings.Controls.Add(Me.pnlSettingsFileName, 1, 0)
		Me.panelFileSettings.Controls.Add(Me.pnlLogFileName, 1, 1)
		Me.panelFileSettings.Controls.Add(Me.pnlReceipts, 1, 2)
		Me.panelFileSettings.Location = New System.Drawing.Point(3, 263)
		Me.panelFileSettings.Name = "panelFileSettings"
		Me.panelFileSettings.RowCount = 3
		Me.panelFileSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelFileSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelFileSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelFileSettings.Size = New System.Drawing.Size(796, 105)
		Me.panelFileSettings.TabIndex = 2
		'
		'lblReceiptsFolder
		'
		Me.lblReceiptsFolder.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.lblReceiptsFolder.AutoSize = True
		Me.lblReceiptsFolder.Location = New System.Drawing.Point(3, 81)
		Me.lblReceiptsFolder.Name = "lblReceiptsFolder"
		Me.lblReceiptsFolder.Size = New System.Drawing.Size(95, 13)
		Me.lblReceiptsFolder.TabIndex = 8
		Me.lblReceiptsFolder.Text = "Receipts directory:"
		'
		'Label13
		'
		Me.Label13.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label13.AutoSize = True
		Me.Label13.Location = New System.Drawing.Point(5, 11)
		Me.Label13.Name = "Label13"
		Me.Label13.Size = New System.Drawing.Size(93, 13)
		Me.Label13.TabIndex = 2
		Me.Label13.Text = "Settings file name:"
		'
		'Label14
		'
		Me.Label14.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label14.AutoSize = True
		Me.Label14.Location = New System.Drawing.Point(25, 46)
		Me.Label14.Name = "Label14"
		Me.Label14.Size = New System.Drawing.Size(73, 13)
		Me.Label14.TabIndex = 6
		Me.Label14.Text = "Log file name:"
		'
		'pnlSettingsFileName
		'
		Me.pnlSettingsFileName.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pnlSettingsFileName.AutoSize = True
		Me.pnlSettingsFileName.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.pnlSettingsFileName.ColumnCount = 2
		Me.pnlSettingsFileName.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.pnlSettingsFileName.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.pnlSettingsFileName.Controls.Add(Me.efSettingsFileName, 0, 0)
		Me.pnlSettingsFileName.Controls.Add(Me.pbChooseSettingsFile, 1, 0)
		Me.pnlSettingsFileName.Location = New System.Drawing.Point(104, 3)
		Me.pnlSettingsFileName.Name = "pnlSettingsFileName"
		Me.pnlSettingsFileName.RowCount = 1
		Me.pnlSettingsFileName.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.pnlSettingsFileName.Size = New System.Drawing.Size(689, 29)
		Me.pnlSettingsFileName.TabIndex = 15
		'
		'efSettingsFileName
		'
		Me.efSettingsFileName.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efSettingsFileName.Location = New System.Drawing.Point(3, 4)
		Me.efSettingsFileName.Name = "efSettingsFileName"
		Me.efSettingsFileName.Size = New System.Drawing.Size(651, 20)
		Me.efSettingsFileName.TabIndex = 0
		'
		'pbChooseSettingsFile
		'
		Me.pbChooseSettingsFile.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pbChooseSettingsFile.AutoSize = True
		Me.pbChooseSettingsFile.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.pbChooseSettingsFile.BackgroundImage = Global.NEXOSALE.My.Resources.Resources.Open
		Me.pbChooseSettingsFile.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
		Me.pbChooseSettingsFile.ImageIndex = 2
		Me.pbChooseSettingsFile.Location = New System.Drawing.Point(660, 3)
		Me.pbChooseSettingsFile.Name = "pbChooseSettingsFile"
		Me.pbChooseSettingsFile.Size = New System.Drawing.Size(26, 23)
		Me.pbChooseSettingsFile.TabIndex = 1
		Me.pbChooseSettingsFile.Text = "   "
		Me.pbChooseSettingsFile.UseVisualStyleBackColor = True
		'
		'pnlLogFileName
		'
		Me.pnlLogFileName.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pnlLogFileName.AutoSize = True
		Me.pnlLogFileName.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.pnlLogFileName.ColumnCount = 2
		Me.pnlLogFileName.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.pnlLogFileName.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.pnlLogFileName.Controls.Add(Me.efLogFileName, 0, 0)
		Me.pnlLogFileName.Controls.Add(Me.pbChooseLogFile, 1, 0)
		Me.pnlLogFileName.Location = New System.Drawing.Point(104, 38)
		Me.pnlLogFileName.Name = "pnlLogFileName"
		Me.pnlLogFileName.RowCount = 1
		Me.pnlLogFileName.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.pnlLogFileName.Size = New System.Drawing.Size(689, 29)
		Me.pnlLogFileName.TabIndex = 16
		'
		'efLogFileName
		'
		Me.efLogFileName.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efLogFileName.Location = New System.Drawing.Point(3, 4)
		Me.efLogFileName.Name = "efLogFileName"
		Me.efLogFileName.Size = New System.Drawing.Size(651, 20)
		Me.efLogFileName.TabIndex = 2
		'
		'pbChooseLogFile
		'
		Me.pbChooseLogFile.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pbChooseLogFile.AutoSize = True
		Me.pbChooseLogFile.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.pbChooseLogFile.BackgroundImage = Global.NEXOSALE.My.Resources.Resources.Open
		Me.pbChooseLogFile.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
		Me.pbChooseLogFile.ImageKey = "Open.png"
		Me.pbChooseLogFile.Location = New System.Drawing.Point(660, 3)
		Me.pbChooseLogFile.Name = "pbChooseLogFile"
		Me.pbChooseLogFile.Size = New System.Drawing.Size(26, 23)
		Me.pbChooseLogFile.TabIndex = 3
		Me.pbChooseLogFile.Text = "   "
		Me.pbChooseLogFile.UseVisualStyleBackColor = True
		'
		'pnlReceipts
		'
		Me.pnlReceipts.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pnlReceipts.AutoSize = True
		Me.pnlReceipts.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.pnlReceipts.ColumnCount = 2
		Me.pnlReceipts.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.pnlReceipts.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.pnlReceipts.Controls.Add(Me.pbReceiptsDirectory, 1, 0)
		Me.pnlReceipts.Controls.Add(Me.efReceiptsDirectory, 0, 0)
		Me.pnlReceipts.Location = New System.Drawing.Point(104, 73)
		Me.pnlReceipts.Name = "pnlReceipts"
		Me.pnlReceipts.RowCount = 1
		Me.pnlReceipts.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.pnlReceipts.Size = New System.Drawing.Size(689, 29)
		Me.pnlReceipts.TabIndex = 17
		'
		'pbReceiptsDirectory
		'
		Me.pbReceiptsDirectory.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pbReceiptsDirectory.AutoSize = True
		Me.pbReceiptsDirectory.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.pbReceiptsDirectory.BackgroundImage = Global.NEXOSALE.My.Resources.Resources.Open
		Me.pbReceiptsDirectory.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
		Me.pbReceiptsDirectory.ImageKey = "Open.png"
		Me.pbReceiptsDirectory.Location = New System.Drawing.Point(660, 3)
		Me.pbReceiptsDirectory.Name = "pbReceiptsDirectory"
		Me.pbReceiptsDirectory.Size = New System.Drawing.Size(26, 23)
		Me.pbReceiptsDirectory.TabIndex = 9
		Me.pbReceiptsDirectory.Text = "   "
		Me.pbReceiptsDirectory.UseVisualStyleBackColor = True
		'
		'efReceiptsDirectory
		'
		Me.efReceiptsDirectory.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efReceiptsDirectory.Location = New System.Drawing.Point(3, 4)
		Me.efReceiptsDirectory.Name = "efReceiptsDirectory"
		Me.efReceiptsDirectory.Size = New System.Drawing.Size(651, 20)
		Me.efReceiptsDirectory.TabIndex = 7
		'
		'panelNexoSettings
		'
		Me.panelNexoSettings.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelNexoSettings.AutoSize = True
		Me.panelNexoSettings.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelNexoSettings.ColumnCount = 3
		Me.panelNexoSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 33.33332!))
		Me.panelNexoSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 33.33334!))
		Me.panelNexoSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 33.33334!))
		Me.panelNexoSettings.Controls.Add(Me.panelSaleID, 0, 0)
		Me.panelNexoSettings.Controls.Add(Me.panelPOIID, 1, 0)
		Me.panelNexoSettings.Controls.Add(Me.panelApplicationName, 0, 1)
		Me.panelNexoSettings.Controls.Add(Me.panelSoftwareVersion, 2, 1)
		Me.panelNexoSettings.Controls.Add(Me.panelManufacturerName, 1, 1)
		Me.panelNexoSettings.Controls.Add(Me.panelCurrency, 2, 0)
		Me.panelNexoSettings.Controls.Add(Me.panelCertificationCode, 0, 2)
		Me.panelNexoSettings.Controls.Add(Me.TableLayoutPanel2, 2, 2)
		Me.panelNexoSettings.Location = New System.Drawing.Point(3, 3)
		Me.panelNexoSettings.Name = "panelNexoSettings"
		Me.panelNexoSettings.RowCount = 3
		Me.panelNexoSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelNexoSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelNexoSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelNexoSettings.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20.0!))
		Me.panelNexoSettings.Size = New System.Drawing.Size(796, 97)
		Me.panelNexoSettings.TabIndex = 0
		'
		'panelSaleID
		'
		Me.panelSaleID.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelSaleID.AutoSize = True
		Me.panelSaleID.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelSaleID.ColumnCount = 3
		Me.panelSaleID.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelSaleID.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelSaleID.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelSaleID.Controls.Add(Me.efSaleID, 1, 0)
		Me.panelSaleID.Controls.Add(Me.Label1, 0, 0)
		Me.panelSaleID.Controls.Add(Me.cbSaleIDUSeIP, 2, 0)
		Me.panelSaleID.Location = New System.Drawing.Point(3, 3)
		Me.panelSaleID.Name = "panelSaleID"
		Me.panelSaleID.RowCount = 1
		Me.panelSaleID.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelSaleID.Size = New System.Drawing.Size(259, 27)
		Me.panelSaleID.TabIndex = 0
		'
		'efSaleID
		'
		Me.efSaleID.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efSaleID.Location = New System.Drawing.Point(51, 3)
		Me.efSaleID.Name = "efSaleID"
		Me.efSaleID.Size = New System.Drawing.Size(116, 20)
		Me.efSaleID.TabIndex = 0
		'
		'Label1
		'
		Me.Label1.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label1.AutoSize = True
		Me.Label1.Location = New System.Drawing.Point(3, 7)
		Me.Label1.Name = "Label1"
		Me.Label1.Size = New System.Drawing.Size(42, 13)
		Me.Label1.TabIndex = 1
		Me.Label1.Text = "SaleID:"
		'
		'cbSaleIDUSeIP
		'
		Me.cbSaleIDUSeIP.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbSaleIDUSeIP.AutoSize = True
		Me.cbSaleIDUSeIP.Location = New System.Drawing.Point(173, 5)
		Me.cbSaleIDUSeIP.Name = "cbSaleIDUSeIP"
		Me.cbSaleIDUSeIP.Size = New System.Drawing.Size(83, 17)
		Me.cbSaleIDUSeIP.TabIndex = 1
		Me.cbSaleIDUSeIP.Text = "Use local IP"
		Me.cbSaleIDUSeIP.UseVisualStyleBackColor = True
		'
		'panelPOIID
		'
		Me.panelPOIID.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelPOIID.AutoSize = True
		Me.panelPOIID.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelPOIID.ColumnCount = 3
		Me.panelPOIID.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelPOIID.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelPOIID.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelPOIID.Controls.Add(Me.Label2, 0, 0)
		Me.panelPOIID.Controls.Add(Me.cbPOIIDUseIP, 2, 0)
		Me.panelPOIID.Controls.Add(Me.efPOIID, 1, 0)
		Me.panelPOIID.Location = New System.Drawing.Point(268, 3)
		Me.panelPOIID.Name = "panelPOIID"
		Me.panelPOIID.RowCount = 1
		Me.panelPOIID.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelPOIID.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 27.0!))
		Me.panelPOIID.Size = New System.Drawing.Size(259, 27)
		Me.panelPOIID.TabIndex = 1
		'
		'Label2
		'
		Me.Label2.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label2.AutoSize = True
		Me.Label2.Location = New System.Drawing.Point(3, 7)
		Me.Label2.Name = "Label2"
		Me.Label2.Size = New System.Drawing.Size(39, 13)
		Me.Label2.TabIndex = 1
		Me.Label2.Text = "POIID:"
		'
		'cbPOIIDUseIP
		'
		Me.cbPOIIDUseIP.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbPOIIDUseIP.AutoSize = True
		Me.cbPOIIDUseIP.Location = New System.Drawing.Point(159, 5)
		Me.cbPOIIDUseIP.Name = "cbPOIIDUseIP"
		Me.cbPOIIDUseIP.Size = New System.Drawing.Size(97, 17)
		Me.cbPOIIDUseIP.TabIndex = 1
		Me.cbPOIIDUseIP.Text = "Use terminal IP"
		Me.cbPOIIDUseIP.UseVisualStyleBackColor = True
		'
		'efPOIID
		'
		Me.efPOIID.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efPOIID.Location = New System.Drawing.Point(48, 3)
		Me.efPOIID.Name = "efPOIID"
		Me.efPOIID.Size = New System.Drawing.Size(105, 20)
		Me.efPOIID.TabIndex = 0
		'
		'panelApplicationName
		'
		Me.panelApplicationName.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelApplicationName.AutoSize = True
		Me.panelApplicationName.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelApplicationName.ColumnCount = 2
		Me.panelApplicationName.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelApplicationName.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelApplicationName.Controls.Add(Me.Label4, 0, 0)
		Me.panelApplicationName.Controls.Add(Me.efApplicationName, 1, 0)
		Me.panelApplicationName.Location = New System.Drawing.Point(3, 36)
		Me.panelApplicationName.Name = "panelApplicationName"
		Me.panelApplicationName.RowCount = 1
		Me.panelApplicationName.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelApplicationName.Size = New System.Drawing.Size(259, 26)
		Me.panelApplicationName.TabIndex = 3
		'
		'Label4
		'
		Me.Label4.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label4.AutoSize = True
		Me.Label4.Location = New System.Drawing.Point(3, 6)
		Me.Label4.Name = "Label4"
		Me.Label4.Size = New System.Drawing.Size(91, 13)
		Me.Label4.TabIndex = 1
		Me.Label4.Text = "Application name:"
		'
		'efApplicationName
		'
		Me.efApplicationName.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efApplicationName.Location = New System.Drawing.Point(100, 3)
		Me.efApplicationName.Name = "efApplicationName"
		Me.efApplicationName.Size = New System.Drawing.Size(156, 20)
		Me.efApplicationName.TabIndex = 0
		'
		'panelSoftwareVersion
		'
		Me.panelSoftwareVersion.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelSoftwareVersion.AutoSize = True
		Me.panelSoftwareVersion.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelSoftwareVersion.ColumnCount = 2
		Me.panelSoftwareVersion.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelSoftwareVersion.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelSoftwareVersion.Controls.Add(Me.Label6, 0, 0)
		Me.panelSoftwareVersion.Controls.Add(Me.efSoftwareVersion, 1, 0)
		Me.panelSoftwareVersion.Location = New System.Drawing.Point(533, 36)
		Me.panelSoftwareVersion.Name = "panelSoftwareVersion"
		Me.panelSoftwareVersion.RowCount = 1
		Me.panelSoftwareVersion.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelSoftwareVersion.Size = New System.Drawing.Size(260, 26)
		Me.panelSoftwareVersion.TabIndex = 5
		'
		'Label6
		'
		Me.Label6.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label6.AutoSize = True
		Me.Label6.Location = New System.Drawing.Point(3, 6)
		Me.Label6.Name = "Label6"
		Me.Label6.Size = New System.Drawing.Size(89, 13)
		Me.Label6.TabIndex = 1
		Me.Label6.Text = "Software version:"
		'
		'efSoftwareVersion
		'
		Me.efSoftwareVersion.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efSoftwareVersion.Location = New System.Drawing.Point(98, 3)
		Me.efSoftwareVersion.Name = "efSoftwareVersion"
		Me.efSoftwareVersion.Size = New System.Drawing.Size(159, 20)
		Me.efSoftwareVersion.TabIndex = 0
		'
		'panelManufacturerName
		'
		Me.panelManufacturerName.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelManufacturerName.AutoSize = True
		Me.panelManufacturerName.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelManufacturerName.ColumnCount = 2
		Me.panelManufacturerName.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelManufacturerName.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelManufacturerName.Controls.Add(Me.Label7, 0, 0)
		Me.panelManufacturerName.Controls.Add(Me.efManufacturerName, 1, 0)
		Me.panelManufacturerName.Location = New System.Drawing.Point(268, 36)
		Me.panelManufacturerName.Name = "panelManufacturerName"
		Me.panelManufacturerName.RowCount = 1
		Me.panelManufacturerName.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelManufacturerName.Size = New System.Drawing.Size(259, 26)
		Me.panelManufacturerName.TabIndex = 4
		'
		'Label7
		'
		Me.Label7.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label7.AutoSize = True
		Me.Label7.Location = New System.Drawing.Point(3, 6)
		Me.Label7.Name = "Label7"
		Me.Label7.Size = New System.Drawing.Size(102, 13)
		Me.Label7.TabIndex = 1
		Me.Label7.Text = "Manufacturer name:"
		'
		'efManufacturerName
		'
		Me.efManufacturerName.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efManufacturerName.Location = New System.Drawing.Point(111, 3)
		Me.efManufacturerName.Name = "efManufacturerName"
		Me.efManufacturerName.Size = New System.Drawing.Size(145, 20)
		Me.efManufacturerName.TabIndex = 0
		'
		'panelCurrency
		'
		Me.panelCurrency.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelCurrency.AutoSize = True
		Me.panelCurrency.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelCurrency.ColumnCount = 2
		Me.panelCurrency.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelCurrency.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelCurrency.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 20.0!))
		Me.panelCurrency.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 20.0!))
		Me.panelCurrency.Controls.Add(Me.Label8, 0, 0)
		Me.panelCurrency.Controls.Add(Me.cbxCurrency, 1, 0)
		Me.panelCurrency.Location = New System.Drawing.Point(533, 3)
		Me.panelCurrency.Name = "panelCurrency"
		Me.panelCurrency.RowCount = 1
		Me.panelCurrency.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelCurrency.Size = New System.Drawing.Size(260, 27)
		Me.panelCurrency.TabIndex = 2
		'
		'Label8
		'
		Me.Label8.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label8.AutoSize = True
		Me.Label8.Location = New System.Drawing.Point(3, 7)
		Me.Label8.Name = "Label8"
		Me.Label8.Size = New System.Drawing.Size(52, 13)
		Me.Label8.TabIndex = 1
		Me.Label8.Text = "Currency:"
		'
		'cbxCurrency
		'
		Me.cbxCurrency.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.cbxCurrency.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
		Me.cbxCurrency.FormattingEnabled = True
		Me.cbxCurrency.Location = New System.Drawing.Point(61, 3)
		Me.cbxCurrency.MaxLength = 3
		Me.cbxCurrency.Name = "cbxCurrency"
		Me.cbxCurrency.Size = New System.Drawing.Size(196, 21)
		Me.cbxCurrency.TabIndex = 0
		'
		'panelCertificationCode
		'
		Me.panelCertificationCode.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelCertificationCode.AutoSize = True
		Me.panelCertificationCode.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelCertificationCode.ColumnCount = 2
		Me.panelCertificationCode.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelCertificationCode.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelCertificationCode.Controls.Add(Me.Label10, 0, 0)
		Me.panelCertificationCode.Controls.Add(Me.efCertificationCode, 1, 0)
		Me.panelCertificationCode.Location = New System.Drawing.Point(3, 68)
		Me.panelCertificationCode.Name = "panelCertificationCode"
		Me.panelCertificationCode.RowCount = 1
		Me.panelCertificationCode.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelCertificationCode.Size = New System.Drawing.Size(259, 26)
		Me.panelCertificationCode.TabIndex = 6
		'
		'Label10
		'
		Me.Label10.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label10.AutoSize = True
		Me.Label10.Location = New System.Drawing.Point(3, 6)
		Me.Label10.Name = "Label10"
		Me.Label10.Size = New System.Drawing.Size(92, 13)
		Me.Label10.TabIndex = 1
		Me.Label10.Text = "Certification code:"
		'
		'efCertificationCode
		'
		Me.efCertificationCode.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efCertificationCode.Location = New System.Drawing.Point(101, 3)
		Me.efCertificationCode.Name = "efCertificationCode"
		Me.efCertificationCode.Size = New System.Drawing.Size(155, 20)
		Me.efCertificationCode.TabIndex = 0
		'
		'TableLayoutPanel2
		'
		Me.TableLayoutPanel2.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TableLayoutPanel2.AutoSize = True
		Me.TableLayoutPanel2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.TableLayoutPanel2.ColumnCount = 3
		Me.TableLayoutPanel2.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel2.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel2.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel2.Controls.Add(Me.Label18, 0, 0)
		Me.TableLayoutPanel2.Controls.Add(Me.efAdminCode, 1, 0)
		Me.TableLayoutPanel2.Controls.Add(Me.cbUseDate, 2, 0)
		Me.TableLayoutPanel2.Location = New System.Drawing.Point(533, 68)
		Me.TableLayoutPanel2.Name = "TableLayoutPanel2"
		Me.TableLayoutPanel2.RowCount = 1
		Me.TableLayoutPanel2.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel2.Size = New System.Drawing.Size(260, 26)
		Me.TableLayoutPanel2.TabIndex = 7
		'
		'Label18
		'
		Me.Label18.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label18.AutoSize = True
		Me.Label18.Location = New System.Drawing.Point(3, 6)
		Me.Label18.Name = "Label18"
		Me.Label18.Size = New System.Drawing.Size(66, 13)
		Me.Label18.TabIndex = 0
		Me.Label18.Text = "Admin code:"
		'
		'efAdminCode
		'
		Me.efAdminCode.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efAdminCode.Location = New System.Drawing.Point(75, 3)
		Me.efAdminCode.Name = "efAdminCode"
		Me.efAdminCode.Size = New System.Drawing.Size(107, 20)
		Me.efAdminCode.TabIndex = 1
		'
		'cbUseDate
		'
		Me.cbUseDate.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbUseDate.AutoSize = True
		Me.cbUseDate.Location = New System.Drawing.Point(188, 4)
		Me.cbUseDate.Name = "cbUseDate"
		Me.cbUseDate.Size = New System.Drawing.Size(69, 17)
		Me.cbUseDate.TabIndex = 2
		Me.cbUseDate.Text = "Use date"
		Me.cbUseDate.UseVisualStyleBackColor = True
		'
		'GPRSPage
		'
		Me.GPRSPage.Controls.Add(Me.TableLayoutPanel3)
		Me.GPRSPage.Location = New System.Drawing.Point(4, 22)
		Me.GPRSPage.Name = "GPRSPage"
		Me.GPRSPage.Padding = New System.Windows.Forms.Padding(3)
		Me.GPRSPage.Size = New System.Drawing.Size(800, 377)
		Me.GPRSPage.TabIndex = 2
		Me.GPRSPage.Text = "GPRS backup"
		Me.GPRSPage.UseVisualStyleBackColor = True
		'
		'TableLayoutPanel3
		'
		Me.TableLayoutPanel3.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TableLayoutPanel3.AutoSize = True
		Me.TableLayoutPanel3.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.TableLayoutPanel3.ColumnCount = 6
		Me.TableLayoutPanel3.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel3.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel3.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel3.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel3.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel3.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
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
		Me.TableLayoutPanel3.Location = New System.Drawing.Point(3, 3)
		Me.TableLayoutPanel3.Name = "TableLayoutPanel3"
		Me.TableLayoutPanel3.RowCount = 6
		Me.TableLayoutPanel3.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.TableLayoutPanel3.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.TableLayoutPanel3.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.TableLayoutPanel3.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.TableLayoutPanel3.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.TableLayoutPanel3.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel3.Size = New System.Drawing.Size(794, 371)
		Me.TableLayoutPanel3.TabIndex = 0
		'
		'efGatewayIP
		'
		Me.efGatewayIP.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efGatewayIP.Location = New System.Drawing.Point(74, 3)
		Me.efGatewayIP.Name = "efGatewayIP"
		Me.efGatewayIP.Size = New System.Drawing.Size(133, 20)
		Me.efGatewayIP.TabIndex = 0
		'
		'Label19
		'
		Me.Label19.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label19.AutoSize = True
		Me.Label19.Location = New System.Drawing.Point(3, 6)
		Me.Label19.Name = "Label19"
		Me.Label19.Size = New System.Drawing.Size(65, 13)
		Me.Label19.TabIndex = 4
		Me.Label19.Text = "Gateway IP:"
		'
		'Label21
		'
		Me.Label21.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label21.AutoSize = True
		Me.Label21.Location = New System.Drawing.Point(33, 61)
		Me.Label21.Name = "Label21"
		Me.Label21.Size = New System.Drawing.Size(35, 13)
		Me.Label21.TabIndex = 8
		Me.Label21.Text = "ICCD:"
		'
		'efICCD
		'
		Me.efICCD.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efICCD.Location = New System.Drawing.Point(74, 58)
		Me.efICCD.Name = "efICCD"
		Me.efICCD.Size = New System.Drawing.Size(133, 20)
		Me.efICCD.TabIndex = 4
		'
		'Label23
		'
		Me.Label23.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label23.AutoSize = True
		Me.Label23.Location = New System.Drawing.Point(257, 61)
		Me.Label23.Name = "Label23"
		Me.Label23.Size = New System.Drawing.Size(29, 13)
		Me.Label23.TabIndex = 11
		Me.Label23.Text = "Port:"
		'
		'udICCDPort
		'
		Me.udICCDPort.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.udICCDPort.Location = New System.Drawing.Point(292, 58)
		Me.udICCDPort.Maximum = New Decimal(New Integer() {65535, 0, 0, 0})
		Me.udICCDPort.Minimum = New Decimal(New Integer() {1, 0, 0, 0})
		Me.udICCDPort.Name = "udICCDPort"
		Me.udICCDPort.Size = New System.Drawing.Size(133, 20)
		Me.udICCDPort.TabIndex = 5
		Me.udICCDPort.Value = New Decimal(New Integer() {2018, 0, 0, 0})
		'
		'efUser
		'
		Me.efUser.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efUser.Location = New System.Drawing.Point(74, 84)
		Me.efUser.Name = "efUser"
		Me.efUser.Size = New System.Drawing.Size(133, 20)
		Me.efUser.TabIndex = 6
		'
		'Label24
		'
		Me.Label24.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label24.AutoSize = True
		Me.Label24.Location = New System.Drawing.Point(230, 87)
		Me.Label24.Name = "Label24"
		Me.Label24.Size = New System.Drawing.Size(56, 13)
		Me.Label24.TabIndex = 14
		Me.Label24.Text = "Password:"
		'
		'efPWD
		'
		Me.efPWD.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efPWD.Location = New System.Drawing.Point(292, 84)
		Me.efPWD.Name = "efPWD"
		Me.efPWD.Size = New System.Drawing.Size(133, 20)
		Me.efPWD.TabIndex = 7
		'
		'Label22
		'
		Me.Label22.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label22.AutoSize = True
		Me.Label22.Location = New System.Drawing.Point(36, 87)
		Me.Label22.Name = "Label22"
		Me.Label22.Size = New System.Drawing.Size(32, 13)
		Me.Label22.TabIndex = 10
		Me.Label22.Text = "User:"
		'
		'Label20
		'
		Me.Label20.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label20.AutoSize = True
		Me.Label20.Location = New System.Drawing.Point(213, 6)
		Me.Label20.Name = "Label20"
		Me.Label20.Size = New System.Drawing.Size(73, 13)
		Me.Label20.TabIndex = 15
		Me.Label20.Text = "Gateway port:"
		'
		'udGatewayPort
		'
		Me.udGatewayPort.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.udGatewayPort.Location = New System.Drawing.Point(292, 3)
		Me.udGatewayPort.Maximum = New Decimal(New Integer() {65535, 0, 0, 0})
		Me.udGatewayPort.Minimum = New Decimal(New Integer() {1, 0, 0, 0})
		Me.udGatewayPort.Name = "udGatewayPort"
		Me.udGatewayPort.Size = New System.Drawing.Size(133, 20)
		Me.udGatewayPort.TabIndex = 1
		Me.udGatewayPort.Value = New Decimal(New Integer() {2018, 0, 0, 0})
		'
		'pbTestGPRS
		'
		Me.pbTestGPRS.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pbTestGPRS.AutoSize = True
		Me.pbTestGPRS.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.pbTestGPRS.Enabled = False
		Me.pbTestGPRS.Location = New System.Drawing.Point(431, 110)
		Me.pbTestGPRS.Name = "pbTestGPRS"
		Me.pbTestGPRS.Size = New System.Drawing.Size(94, 23)
		Me.pbTestGPRS.TabIndex = 9
		Me.pbTestGPRS.Text = "&Test connection"
		Me.pbTestGPRS.UseVisualStyleBackColor = True
		'
		'TextBox5
		'
		Me.TextBox5.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TableLayoutPanel3.SetColumnSpan(Me.TextBox5, 2)
		Me.TextBox5.Enabled = False
		Me.TextBox5.Location = New System.Drawing.Point(431, 58)
		Me.TextBox5.Multiline = True
		Me.TextBox5.Name = "TextBox5"
		Me.TextBox5.ReadOnly = True
		Me.TableLayoutPanel3.SetRowSpan(Me.TextBox5, 2)
		Me.TextBox5.Size = New System.Drawing.Size(360, 46)
		Me.TextBox5.TabIndex = 8
		'
		'FlowLayoutPanel4
		'
		Me.FlowLayoutPanel4.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.FlowLayoutPanel4.AutoSize = True
		Me.FlowLayoutPanel4.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.TableLayoutPanel3.SetColumnSpan(Me.FlowLayoutPanel4, 6)
		Me.FlowLayoutPanel4.Controls.Add(Me.cbRemoteCertificateNotAvailable)
		Me.FlowLayoutPanel4.Controls.Add(Me.cbRemoteCertificateNameMismatch)
		Me.FlowLayoutPanel4.Controls.Add(Me.cbRemoteCertificateChainErrors)
		Me.FlowLayoutPanel4.Location = New System.Drawing.Point(3, 29)
		Me.FlowLayoutPanel4.Name = "FlowLayoutPanel4"
		Me.FlowLayoutPanel4.Size = New System.Drawing.Size(788, 23)
		Me.FlowLayoutPanel4.TabIndex = 3
		'
		'cbRemoteCertificateNotAvailable
		'
		Me.cbRemoteCertificateNotAvailable.AutoSize = True
		Me.cbRemoteCertificateNotAvailable.Location = New System.Drawing.Point(3, 3)
		Me.cbRemoteCertificateNotAvailable.Name = "cbRemoteCertificateNotAvailable"
		Me.cbRemoteCertificateNotAvailable.Size = New System.Drawing.Size(136, 17)
		Me.cbRemoteCertificateNotAvailable.TabIndex = 0
		Me.cbRemoteCertificateNotAvailable.Text = "Certificate not available"
		Me.cbRemoteCertificateNotAvailable.UseVisualStyleBackColor = True
		'
		'cbRemoteCertificateNameMismatch
		'
		Me.cbRemoteCertificateNameMismatch.AutoSize = True
		Me.cbRemoteCertificateNameMismatch.Location = New System.Drawing.Point(145, 3)
		Me.cbRemoteCertificateNameMismatch.Name = "cbRemoteCertificateNameMismatch"
		Me.cbRemoteCertificateNameMismatch.Size = New System.Drawing.Size(149, 17)
		Me.cbRemoteCertificateNameMismatch.TabIndex = 1
		Me.cbRemoteCertificateNameMismatch.Text = "Certificate name mismatch"
		Me.cbRemoteCertificateNameMismatch.UseVisualStyleBackColor = True
		'
		'cbRemoteCertificateChainErrors
		'
		Me.cbRemoteCertificateChainErrors.AutoSize = True
		Me.cbRemoteCertificateChainErrors.Location = New System.Drawing.Point(300, 3)
		Me.cbRemoteCertificateChainErrors.Name = "cbRemoteCertificateChainErrors"
		Me.cbRemoteCertificateChainErrors.Size = New System.Drawing.Size(131, 17)
		Me.cbRemoteCertificateChainErrors.TabIndex = 2
		Me.cbRemoteCertificateChainErrors.Text = "Certificate chain errors"
		Me.cbRemoteCertificateChainErrors.UseVisualStyleBackColor = True
		'
		'Label16
		'
		Me.Label16.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label16.AutoSize = True
		Me.Label16.Location = New System.Drawing.Point(455, 6)
		Me.Label16.Name = "Label16"
		Me.Label16.Size = New System.Drawing.Size(70, 13)
		Me.Label16.TabIndex = 16
		Me.Label16.Text = "Server name:"
		'
		'efServerName
		'
		Me.efServerName.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efServerName.Location = New System.Drawing.Point(531, 3)
		Me.efServerName.Name = "efServerName"
		Me.efServerName.Size = New System.Drawing.Size(260, 20)
		Me.efServerName.TabIndex = 2
		'
		'printSettingsPage
		'
		Me.printSettingsPage.Controls.Add(Me.TableLayoutPanel4)
		Me.printSettingsPage.Location = New System.Drawing.Point(4, 22)
		Me.printSettingsPage.Name = "printSettingsPage"
		Me.printSettingsPage.Padding = New System.Windows.Forms.Padding(3)
		Me.printSettingsPage.Size = New System.Drawing.Size(800, 377)
		Me.printSettingsPage.TabIndex = 3
		Me.printSettingsPage.Text = "Print settings"
		Me.printSettingsPage.UseVisualStyleBackColor = True
		'
		'TableLayoutPanel4
		'
		Me.TableLayoutPanel4.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TableLayoutPanel4.AutoSize = True
		Me.TableLayoutPanel4.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.TableLayoutPanel4.ColumnCount = 1
		Me.TableLayoutPanel4.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel4.Controls.Add(Me.TableLayoutPanel5, 0, 0)
		Me.TableLayoutPanel4.Controls.Add(Me.PictureBox1, 0, 1)
		Me.TableLayoutPanel4.Location = New System.Drawing.Point(3, 3)
		Me.TableLayoutPanel4.Name = "TableLayoutPanel4"
		Me.TableLayoutPanel4.RowCount = 2
		Me.TableLayoutPanel4.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.TableLayoutPanel4.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel4.Size = New System.Drawing.Size(794, 371)
		Me.TableLayoutPanel4.TabIndex = 0
		'
		'TableLayoutPanel5
		'
		Me.TableLayoutPanel5.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TableLayoutPanel5.AutoSize = True
		Me.TableLayoutPanel5.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.TableLayoutPanel5.ColumnCount = 3
		Me.TableLayoutPanel5.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel5.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel5.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel5.Controls.Add(Me.Label29, 0, 1)
		Me.TableLayoutPanel5.Controls.Add(Me.Label28, 0, 2)
		Me.TableLayoutPanel5.Controls.Add(Me.efPicture, 1, 2)
		Me.TableLayoutPanel5.Controls.Add(Me.pbChoosePicture, 2, 2)
		Me.TableLayoutPanel5.Controls.Add(Me.efMerchantName, 1, 1)
		Me.TableLayoutPanel5.Controls.Add(Me.pbPrinter, 0, 0)
		Me.TableLayoutPanel5.Controls.Add(Me.lblPrinter, 1, 0)
		Me.TableLayoutPanel5.Location = New System.Drawing.Point(3, 3)
		Me.TableLayoutPanel5.Name = "TableLayoutPanel5"
		Me.TableLayoutPanel5.RowCount = 3
		Me.TableLayoutPanel5.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.TableLayoutPanel5.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.TableLayoutPanel5.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.TableLayoutPanel5.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20.0!))
		Me.TableLayoutPanel5.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20.0!))
		Me.TableLayoutPanel5.Size = New System.Drawing.Size(788, 110)
		Me.TableLayoutPanel5.TabIndex = 1
		'
		'Label29
		'
		Me.Label29.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label29.AutoSize = True
		Me.Label29.Location = New System.Drawing.Point(16, 48)
		Me.Label29.Name = "Label29"
		Me.Label29.Size = New System.Drawing.Size(66, 13)
		Me.Label29.TabIndex = 4
		Me.Label29.Text = "Text to print:"
		Me.Label29.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
		'
		'Label28
		'
		Me.Label28.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label28.AutoSize = True
		Me.Label28.Location = New System.Drawing.Point(13, 89)
		Me.Label28.Name = "Label28"
		Me.Label28.Size = New System.Drawing.Size(69, 13)
		Me.Label28.TabIndex = 0
		Me.Label28.Text = "Logo to print:"
		Me.Label28.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
		'
		'efPicture
		'
		Me.efPicture.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efPicture.Location = New System.Drawing.Point(88, 85)
		Me.efPicture.Name = "efPicture"
		Me.efPicture.Size = New System.Drawing.Size(635, 20)
		Me.efPicture.TabIndex = 1
		'
		'pbChoosePicture
		'
		Me.pbChoosePicture.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pbChoosePicture.AutoSize = True
		Me.pbChoosePicture.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.pbChoosePicture.Location = New System.Drawing.Point(729, 84)
		Me.pbChoosePicture.Name = "pbChoosePicture"
		Me.pbChoosePicture.Size = New System.Drawing.Size(56, 23)
		Me.pbChoosePicture.TabIndex = 2
		Me.pbChoosePicture.Text = "Select..."
		Me.pbChoosePicture.UseVisualStyleBackColor = True
		'
		'efMerchantName
		'
		Me.efMerchantName.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efMerchantName.Location = New System.Drawing.Point(88, 32)
		Me.efMerchantName.Multiline = True
		Me.efMerchantName.Name = "efMerchantName"
		Me.efMerchantName.Size = New System.Drawing.Size(635, 46)
		Me.efMerchantName.TabIndex = 5
		'
		'pbPrinter
		'
		Me.pbPrinter.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pbPrinter.AutoSize = True
		Me.pbPrinter.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.pbPrinter.Location = New System.Drawing.Point(3, 3)
		Me.pbPrinter.Name = "pbPrinter"
		Me.pbPrinter.Size = New System.Drawing.Size(79, 23)
		Me.pbPrinter.TabIndex = 10
		Me.pbPrinter.Text = "Select printer"
		Me.pbPrinter.UseVisualStyleBackColor = True
		'
		'lblPrinter
		'
		Me.lblPrinter.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.lblPrinter.AutoSize = True
		Me.lblPrinter.Location = New System.Drawing.Point(88, 8)
		Me.lblPrinter.Name = "lblPrinter"
		Me.lblPrinter.Size = New System.Drawing.Size(96, 13)
		Me.lblPrinter.TabIndex = 11
		Me.lblPrinter.Tag = "false"
		Me.lblPrinter.Text = "No printer selected"
		Me.lblPrinter.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
		'
		'PictureBox1
		'
		Me.PictureBox1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.PictureBox1.Location = New System.Drawing.Point(3, 119)
		Me.PictureBox1.Name = "PictureBox1"
		Me.PictureBox1.Size = New System.Drawing.Size(788, 249)
		Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom
		Me.PictureBox1.TabIndex = 2
		Me.PictureBox1.TabStop = False
		'
		'miscellaneous
		'
		Me.miscellaneous.Controls.Add(Me.FlowLayoutPanel5)
		Me.miscellaneous.Location = New System.Drawing.Point(4, 22)
		Me.miscellaneous.Name = "miscellaneous"
		Me.miscellaneous.Padding = New System.Windows.Forms.Padding(3)
		Me.miscellaneous.Size = New System.Drawing.Size(800, 377)
		Me.miscellaneous.TabIndex = 4
		Me.miscellaneous.Text = "Miscellaneous"
		Me.miscellaneous.UseVisualStyleBackColor = True
		'
		'FlowLayoutPanel5
		'
		Me.FlowLayoutPanel5.AutoSize = True
		Me.FlowLayoutPanel5.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.FlowLayoutPanel5.Controls.Add(Me.cbResuseMerchantReferenceID)
		Me.FlowLayoutPanel5.Controls.Add(Me.cbReturnBrand)
		Me.FlowLayoutPanel5.Controls.Add(Me.cbAllowOfflinePOI)
		Me.FlowLayoutPanel5.Dock = System.Windows.Forms.DockStyle.Fill
		Me.FlowLayoutPanel5.Location = New System.Drawing.Point(3, 3)
		Me.FlowLayoutPanel5.Name = "FlowLayoutPanel5"
		Me.FlowLayoutPanel5.Size = New System.Drawing.Size(794, 371)
		Me.FlowLayoutPanel5.TabIndex = 1
		'
		'cbResuseMerchantReferenceID
		'
		Me.cbResuseMerchantReferenceID.AutoSize = True
		Me.cbResuseMerchantReferenceID.Checked = True
		Me.cbResuseMerchantReferenceID.CheckState = System.Windows.Forms.CheckState.Checked
		Me.cbResuseMerchantReferenceID.Location = New System.Drawing.Point(3, 3)
		Me.cbResuseMerchantReferenceID.Name = "cbResuseMerchantReferenceID"
		Me.cbResuseMerchantReferenceID.Size = New System.Drawing.Size(250, 17)
		Me.cbResuseMerchantReferenceID.TabIndex = 0
		Me.cbResuseMerchantReferenceID.Text = "Reuse merchant reference ID for transaction ID"
		Me.cbResuseMerchantReferenceID.UseVisualStyleBackColor = True
		'
		'cbReturnBrand
		'
		Me.cbReturnBrand.AutoSize = True
		Me.cbReturnBrand.Location = New System.Drawing.Point(259, 3)
		Me.cbReturnBrand.Name = "cbReturnBrand"
		Me.cbReturnBrand.Size = New System.Drawing.Size(191, 17)
		Me.cbReturnBrand.TabIndex = 1
		Me.cbReturnBrand.Text = "Return card brand after transaction"
		Me.cbReturnBrand.UseVisualStyleBackColor = True
		'
		'cbAllowOfflinePOI
		'
		Me.cbAllowOfflinePOI.AutoSize = True
		Me.cbAllowOfflinePOI.Location = New System.Drawing.Point(456, 3)
		Me.cbAllowOfflinePOI.Name = "cbAllowOfflinePOI"
		Me.cbAllowOfflinePOI.Size = New System.Drawing.Size(181, 17)
		Me.cbAllowOfflinePOI.TabIndex = 2
		Me.cbAllowOfflinePOI.Text = "Allow transactions if POI is offline"
		Me.cbAllowOfflinePOI.UseVisualStyleBackColor = True
		'
		'OpenFileDialog1
		'
		Me.OpenFileDialog1.CheckFileExists = False
		Me.OpenFileDialog1.CheckPathExists = False
		Me.OpenFileDialog1.FileName = "OpenFileDialog1"
		'
		'FSettings
		'
		Me.AcceptButton = Me.pbSave
		Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.CancelButton = Me.pbCancel
		Me.ClientSize = New System.Drawing.Size(838, 468)
		Me.Controls.Add(Me.panelMain)
		Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
		Me.MaximizeBox = False
		Me.MinimizeBox = False
		Me.Name = "FSettings"
		Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
		Me.Text = "Nexo Retailer Settings"
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
End Class
