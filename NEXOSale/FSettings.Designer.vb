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
		Me.TabControl1 = New System.Windows.Forms.TabControl()
		Me.settingsPage = New System.Windows.Forms.TabPage()
		Me.panelSettingsPage = New System.Windows.Forms.TableLayoutPanel()
		Me.panelAutocloseSettings = New System.Windows.Forms.TableLayoutPanel()
		Me.Label12 = New System.Windows.Forms.Label()
		Me.udAutocloseDelay = New System.Windows.Forms.NumericUpDown()
		Me.cbAutoclose = New System.Windows.Forms.CheckBox()
		Me.cbUseBackup = New System.Windows.Forms.CheckBox()
		Me.advancedSettingsPage = New System.Windows.Forms.TabPage()
		Me.panelAdvancedSettings = New System.Windows.Forms.TableLayoutPanel()
		Me.panelFileSettings = New System.Windows.Forms.TableLayoutPanel()
		Me.pbChooseSettingsFile = New System.Windows.Forms.Button()
		Me.efSettingsFileName = New System.Windows.Forms.TextBox()
		Me.Label13 = New System.Windows.Forms.Label()
		Me.Label14 = New System.Windows.Forms.Label()
		Me.pbChooseLogFile = New System.Windows.Forms.Button()
		Me.efLogFileName = New System.Windows.Forms.TextBox()
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
		Me.panelServerSettings = New System.Windows.Forms.TableLayoutPanel()
		Me.panelChecksBackup = New System.Windows.Forms.TableLayoutPanel()
		Me.udCheckTimerBackup = New System.Windows.Forms.NumericUpDown()
		Me.Label26 = New System.Windows.Forms.Label()
		Me.efServerIP = New System.Windows.Forms.TextBox()
		Me.Label3 = New System.Windows.Forms.Label()
		Me.Label5 = New System.Windows.Forms.Label()
		Me.udServerPort = New System.Windows.Forms.NumericUpDown()
		Me.pbTestConnection = New System.Windows.Forms.Button()
		Me.Label15 = New System.Windows.Forms.Label()
		Me.efServerIPBackup = New System.Windows.Forms.TextBox()
		Me.Label16 = New System.Windows.Forms.Label()
		Me.udServerPortBackup = New System.Windows.Forms.NumericUpDown()
		Me.pbTestConnectionBackup = New System.Windows.Forms.Button()
		Me.panelChecks = New System.Windows.Forms.TableLayoutPanel()
		Me.udCheckTimer = New System.Windows.Forms.NumericUpDown()
		Me.Label17 = New System.Windows.Forms.Label()
		Me.TableLayoutPanel1 = New System.Windows.Forms.TableLayoutPanel()
		Me.udGeneralTimer = New System.Windows.Forms.NumericUpDown()
		Me.Label9 = New System.Windows.Forms.Label()
		Me.panelPaymentTimerBackup = New System.Windows.Forms.TableLayoutPanel()
		Me.udPaymentTimerBackup = New System.Windows.Forms.NumericUpDown()
		Me.Label27 = New System.Windows.Forms.Label()
		Me.TableLayoutPanel7 = New System.Windows.Forms.TableLayoutPanel()
		Me.udGeneralTimerBackup = New System.Windows.Forms.NumericUpDown()
		Me.Label25 = New System.Windows.Forms.Label()
		Me.panelPaymentTimer = New System.Windows.Forms.TableLayoutPanel()
		Me.udPaymentTimer = New System.Windows.Forms.NumericUpDown()
		Me.Label11 = New System.Windows.Forms.Label()
		Me.cbSupportsRefund = New System.Windows.Forms.CheckBox()
		Me.cbSupportsRefundBackup = New System.Windows.Forms.CheckBox()
		Me.cbSupportsCheckBackup = New System.Windows.Forms.CheckBox()
		Me.cbSupportsCancelBackup = New System.Windows.Forms.CheckBox()
		Me.cbSupportsCancel = New System.Windows.Forms.CheckBox()
		Me.cbSupportsCheck = New System.Windows.Forms.CheckBox()
		Me.cbPrintReceipt = New System.Windows.Forms.CheckBox()
		Me.cbSynchronous = New System.Windows.Forms.CheckBox()
		Me.cbPrintReceiptBackup = New System.Windows.Forms.CheckBox()
		Me.cbSynchronousBackup = New System.Windows.Forms.CheckBox()
		Me.panelButtons = New System.Windows.Forms.TableLayoutPanel()
		Me.pbSaveSettings = New System.Windows.Forms.Button()
		Me.pbSave = New System.Windows.Forms.Button()
		Me.pbCancel = New System.Windows.Forms.Button()
		Me.OpenFileDialog1 = New System.Windows.Forms.OpenFileDialog()
		Me.panelMain.SuspendLayout()
		Me.TabControl1.SuspendLayout()
		Me.settingsPage.SuspendLayout()
		Me.panelSettingsPage.SuspendLayout()
		Me.panelAutocloseSettings.SuspendLayout()
		CType(Me.udAutocloseDelay, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.advancedSettingsPage.SuspendLayout()
		Me.panelAdvancedSettings.SuspendLayout()
		Me.panelFileSettings.SuspendLayout()
		Me.panelNexoSettings.SuspendLayout()
		Me.panelSaleID.SuspendLayout()
		Me.panelPOIID.SuspendLayout()
		Me.panelApplicationName.SuspendLayout()
		Me.panelSoftwareVersion.SuspendLayout()
		Me.panelManufacturerName.SuspendLayout()
		Me.panelCurrency.SuspendLayout()
		Me.panelCertificationCode.SuspendLayout()
		Me.TableLayoutPanel2.SuspendLayout()
		Me.panelServerSettings.SuspendLayout()
		Me.panelChecksBackup.SuspendLayout()
		CType(Me.udCheckTimerBackup, System.ComponentModel.ISupportInitialize).BeginInit()
		CType(Me.udServerPort, System.ComponentModel.ISupportInitialize).BeginInit()
		CType(Me.udServerPortBackup, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.panelChecks.SuspendLayout()
		CType(Me.udCheckTimer, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.TableLayoutPanel1.SuspendLayout()
		CType(Me.udGeneralTimer, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.panelPaymentTimerBackup.SuspendLayout()
		CType(Me.udPaymentTimerBackup, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.TableLayoutPanel7.SuspendLayout()
		CType(Me.udGeneralTimerBackup, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.panelPaymentTimer.SuspendLayout()
		CType(Me.udPaymentTimer, System.ComponentModel.ISupportInitialize).BeginInit()
		Me.panelButtons.SuspendLayout()
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
		Me.panelMain.Size = New System.Drawing.Size(730, 471)
		Me.panelMain.TabIndex = 0
		'
		'TabControl1
		'
		Me.TabControl1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TabControl1.Controls.Add(Me.settingsPage)
		Me.TabControl1.Controls.Add(Me.advancedSettingsPage)
		Me.TabControl1.Location = New System.Drawing.Point(3, 3)
		Me.TabControl1.Name = "TabControl1"
		Me.TabControl1.SelectedIndex = 0
		Me.TabControl1.Size = New System.Drawing.Size(724, 430)
		Me.TabControl1.TabIndex = 0
		'
		'settingsPage
		'
		Me.settingsPage.Controls.Add(Me.panelSettingsPage)
		Me.settingsPage.Location = New System.Drawing.Point(4, 22)
		Me.settingsPage.Name = "settingsPage"
		Me.settingsPage.Padding = New System.Windows.Forms.Padding(3)
		Me.settingsPage.Size = New System.Drawing.Size(716, 404)
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
		Me.panelSettingsPage.Controls.Add(Me.cbUseBackup, 0, 2)
		Me.panelSettingsPage.Location = New System.Drawing.Point(0, 0)
		Me.panelSettingsPage.Name = "panelSettingsPage"
		Me.panelSettingsPage.RowCount = 4
		Me.panelSettingsPage.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelSettingsPage.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 10.0!))
		Me.panelSettingsPage.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelSettingsPage.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelSettingsPage.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20.0!))
		Me.panelSettingsPage.Size = New System.Drawing.Size(717, 404)
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
		Me.panelAutocloseSettings.Location = New System.Drawing.Point(3, 3)
		Me.panelAutocloseSettings.Name = "panelAutocloseSettings"
		Me.panelAutocloseSettings.RowCount = 1
		Me.panelAutocloseSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelAutocloseSettings.Size = New System.Drawing.Size(711, 26)
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
		'cbUseBackup
		'
		Me.cbUseBackup.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbUseBackup.AutoSize = True
		Me.cbUseBackup.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
		Me.cbUseBackup.Location = New System.Drawing.Point(3, 45)
		Me.cbUseBackup.Name = "cbUseBackup"
		Me.cbUseBackup.Size = New System.Drawing.Size(139, 20)
		Me.cbUseBackup.TabIndex = 4
		Me.cbUseBackup.Text = "Use backup POI"
		Me.cbUseBackup.UseVisualStyleBackColor = True
		'
		'advancedSettingsPage
		'
		Me.advancedSettingsPage.Controls.Add(Me.panelAdvancedSettings)
		Me.advancedSettingsPage.Location = New System.Drawing.Point(4, 22)
		Me.advancedSettingsPage.Name = "advancedSettingsPage"
		Me.advancedSettingsPage.Padding = New System.Windows.Forms.Padding(3)
		Me.advancedSettingsPage.Size = New System.Drawing.Size(716, 404)
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
		Me.panelAdvancedSettings.Controls.Add(Me.panelFileSettings, 0, 4)
		Me.panelAdvancedSettings.Controls.Add(Me.panelNexoSettings, 0, 0)
		Me.panelAdvancedSettings.Controls.Add(Me.panelServerSettings, 0, 2)
		Me.panelAdvancedSettings.Location = New System.Drawing.Point(0, 0)
		Me.panelAdvancedSettings.Name = "panelAdvancedSettings"
		Me.panelAdvancedSettings.RowCount = 6
		Me.panelAdvancedSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelAdvancedSettings.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 10.0!))
		Me.panelAdvancedSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelAdvancedSettings.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 10.0!))
		Me.panelAdvancedSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelAdvancedSettings.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelAdvancedSettings.Size = New System.Drawing.Size(718, 404)
		Me.panelAdvancedSettings.TabIndex = 0
		'
		'panelFileSettings
		'
		Me.panelFileSettings.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelFileSettings.AutoSize = True
		Me.panelFileSettings.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelFileSettings.ColumnCount = 3
		Me.panelFileSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelFileSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelFileSettings.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelFileSettings.Controls.Add(Me.pbChooseSettingsFile, 2, 0)
		Me.panelFileSettings.Controls.Add(Me.efSettingsFileName, 1, 0)
		Me.panelFileSettings.Controls.Add(Me.Label13, 0, 0)
		Me.panelFileSettings.Controls.Add(Me.Label14, 0, 1)
		Me.panelFileSettings.Controls.Add(Me.pbChooseLogFile, 2, 1)
		Me.panelFileSettings.Controls.Add(Me.efLogFileName, 1, 1)
		Me.panelFileSettings.Location = New System.Drawing.Point(3, 329)
		Me.panelFileSettings.Name = "panelFileSettings"
		Me.panelFileSettings.RowCount = 2
		Me.panelFileSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelFileSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelFileSettings.Size = New System.Drawing.Size(712, 58)
		Me.panelFileSettings.TabIndex = 2
		'
		'pbChooseSettingsFile
		'
		Me.pbChooseSettingsFile.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pbChooseSettingsFile.AutoSize = True
		Me.pbChooseSettingsFile.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.pbChooseSettingsFile.BackgroundImage = Global.NEXOSALE.My.Resources.Resources.Open
		Me.pbChooseSettingsFile.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
		Me.pbChooseSettingsFile.ImageIndex = 2
		Me.pbChooseSettingsFile.Location = New System.Drawing.Point(683, 3)
		Me.pbChooseSettingsFile.Name = "pbChooseSettingsFile"
		Me.pbChooseSettingsFile.Size = New System.Drawing.Size(26, 23)
		Me.pbChooseSettingsFile.TabIndex = 1
		Me.pbChooseSettingsFile.Text = "   "
		Me.pbChooseSettingsFile.UseVisualStyleBackColor = True
		'
		'efSettingsFileName
		'
		Me.efSettingsFileName.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efSettingsFileName.Location = New System.Drawing.Point(102, 4)
		Me.efSettingsFileName.Name = "efSettingsFileName"
		Me.efSettingsFileName.Size = New System.Drawing.Size(575, 20)
		Me.efSettingsFileName.TabIndex = 0
		'
		'Label13
		'
		Me.Label13.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label13.AutoSize = True
		Me.Label13.Location = New System.Drawing.Point(3, 8)
		Me.Label13.Name = "Label13"
		Me.Label13.Size = New System.Drawing.Size(93, 13)
		Me.Label13.TabIndex = 2
		Me.Label13.Text = "Settings file name:"
		'
		'Label14
		'
		Me.Label14.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label14.AutoSize = True
		Me.Label14.Location = New System.Drawing.Point(23, 37)
		Me.Label14.Name = "Label14"
		Me.Label14.Size = New System.Drawing.Size(73, 13)
		Me.Label14.TabIndex = 6
		Me.Label14.Text = "Log file name:"
		'
		'pbChooseLogFile
		'
		Me.pbChooseLogFile.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pbChooseLogFile.AutoSize = True
		Me.pbChooseLogFile.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.pbChooseLogFile.BackgroundImage = Global.NEXOSALE.My.Resources.Resources.Open
		Me.pbChooseLogFile.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
		Me.pbChooseLogFile.ImageKey = "Open.png"
		Me.pbChooseLogFile.Location = New System.Drawing.Point(683, 32)
		Me.pbChooseLogFile.Name = "pbChooseLogFile"
		Me.pbChooseLogFile.Size = New System.Drawing.Size(26, 23)
		Me.pbChooseLogFile.TabIndex = 3
		Me.pbChooseLogFile.Text = "   "
		Me.pbChooseLogFile.UseVisualStyleBackColor = True
		'
		'efLogFileName
		'
		Me.efLogFileName.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efLogFileName.Location = New System.Drawing.Point(102, 33)
		Me.efLogFileName.Name = "efLogFileName"
		Me.efLogFileName.Size = New System.Drawing.Size(575, 20)
		Me.efLogFileName.TabIndex = 2
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
		Me.panelNexoSettings.Size = New System.Drawing.Size(712, 97)
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
		Me.panelSaleID.Size = New System.Drawing.Size(231, 27)
		Me.panelSaleID.TabIndex = 0
		'
		'efSaleID
		'
		Me.efSaleID.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efSaleID.Location = New System.Drawing.Point(51, 3)
		Me.efSaleID.Name = "efSaleID"
		Me.efSaleID.Size = New System.Drawing.Size(88, 20)
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
		Me.cbSaleIDUSeIP.Location = New System.Drawing.Point(145, 5)
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
		Me.panelPOIID.Location = New System.Drawing.Point(240, 3)
		Me.panelPOIID.Name = "panelPOIID"
		Me.panelPOIID.RowCount = 1
		Me.panelPOIID.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelPOIID.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 27.0!))
		Me.panelPOIID.Size = New System.Drawing.Size(231, 27)
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
		Me.cbPOIIDUseIP.Location = New System.Drawing.Point(131, 5)
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
		Me.efPOIID.Size = New System.Drawing.Size(77, 20)
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
		Me.panelApplicationName.Size = New System.Drawing.Size(231, 26)
		Me.panelApplicationName.TabIndex = 2
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
		Me.efApplicationName.Size = New System.Drawing.Size(128, 20)
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
		Me.panelSoftwareVersion.Location = New System.Drawing.Point(477, 36)
		Me.panelSoftwareVersion.Name = "panelSoftwareVersion"
		Me.panelSoftwareVersion.RowCount = 1
		Me.panelSoftwareVersion.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelSoftwareVersion.Size = New System.Drawing.Size(232, 26)
		Me.panelSoftwareVersion.TabIndex = 3
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
		Me.efSoftwareVersion.Size = New System.Drawing.Size(131, 20)
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
		Me.panelManufacturerName.Location = New System.Drawing.Point(240, 36)
		Me.panelManufacturerName.Name = "panelManufacturerName"
		Me.panelManufacturerName.RowCount = 1
		Me.panelManufacturerName.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelManufacturerName.Size = New System.Drawing.Size(231, 26)
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
		Me.efManufacturerName.Size = New System.Drawing.Size(117, 20)
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
		Me.panelCurrency.Location = New System.Drawing.Point(477, 3)
		Me.panelCurrency.Name = "panelCurrency"
		Me.panelCurrency.RowCount = 1
		Me.panelCurrency.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelCurrency.Size = New System.Drawing.Size(232, 27)
		Me.panelCurrency.TabIndex = 5
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
		Me.cbxCurrency.Size = New System.Drawing.Size(168, 21)
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
		Me.panelCertificationCode.Size = New System.Drawing.Size(231, 26)
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
		Me.efCertificationCode.Size = New System.Drawing.Size(127, 20)
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
		Me.TableLayoutPanel2.Location = New System.Drawing.Point(477, 68)
		Me.TableLayoutPanel2.Name = "TableLayoutPanel2"
		Me.TableLayoutPanel2.RowCount = 1
		Me.TableLayoutPanel2.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel2.Size = New System.Drawing.Size(232, 26)
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
		Me.efAdminCode.Size = New System.Drawing.Size(79, 20)
		Me.efAdminCode.TabIndex = 1
		'
		'cbUseDate
		'
		Me.cbUseDate.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbUseDate.AutoSize = True
		Me.cbUseDate.Location = New System.Drawing.Point(160, 4)
		Me.cbUseDate.Name = "cbUseDate"
		Me.cbUseDate.Size = New System.Drawing.Size(69, 17)
		Me.cbUseDate.TabIndex = 2
		Me.cbUseDate.Text = "Use date"
		Me.cbUseDate.UseVisualStyleBackColor = True
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
		Me.panelServerSettings.Controls.Add(Me.panelChecksBackup, 5, 6)
		Me.panelServerSettings.Controls.Add(Me.efServerIP, 1, 0)
		Me.panelServerSettings.Controls.Add(Me.Label3, 0, 0)
		Me.panelServerSettings.Controls.Add(Me.Label5, 2, 0)
		Me.panelServerSettings.Controls.Add(Me.udServerPort, 3, 0)
		Me.panelServerSettings.Controls.Add(Me.pbTestConnection, 4, 0)
		Me.panelServerSettings.Controls.Add(Me.Label15, 0, 4)
		Me.panelServerSettings.Controls.Add(Me.efServerIPBackup, 1, 4)
		Me.panelServerSettings.Controls.Add(Me.Label16, 2, 4)
		Me.panelServerSettings.Controls.Add(Me.udServerPortBackup, 3, 4)
		Me.panelServerSettings.Controls.Add(Me.pbTestConnectionBackup, 4, 4)
		Me.panelServerSettings.Controls.Add(Me.panelChecks, 5, 2)
		Me.panelServerSettings.Controls.Add(Me.TableLayoutPanel1, 5, 0)
		Me.panelServerSettings.Controls.Add(Me.panelPaymentTimerBackup, 5, 5)
		Me.panelServerSettings.Controls.Add(Me.TableLayoutPanel7, 5, 4)
		Me.panelServerSettings.Controls.Add(Me.panelPaymentTimer, 5, 1)
		Me.panelServerSettings.Controls.Add(Me.cbSupportsRefund, 1, 1)
		Me.panelServerSettings.Controls.Add(Me.cbSupportsRefundBackup, 1, 5)
		Me.panelServerSettings.Controls.Add(Me.cbSupportsCheckBackup, 4, 6)
		Me.panelServerSettings.Controls.Add(Me.cbSupportsCancelBackup, 4, 5)
		Me.panelServerSettings.Controls.Add(Me.cbSupportsCancel, 4, 1)
		Me.panelServerSettings.Controls.Add(Me.cbSupportsCheck, 4, 2)
		Me.panelServerSettings.Controls.Add(Me.cbPrintReceipt, 0, 1)
		Me.panelServerSettings.Controls.Add(Me.cbSynchronous, 0, 2)
		Me.panelServerSettings.Controls.Add(Me.cbPrintReceiptBackup, 0, 5)
		Me.panelServerSettings.Controls.Add(Me.cbSynchronousBackup, 0, 6)
		Me.panelServerSettings.Location = New System.Drawing.Point(3, 116)
		Me.panelServerSettings.Name = "panelServerSettings"
		Me.panelServerSettings.RowCount = 7
		Me.panelServerSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelServerSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelServerSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelServerSettings.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 5.0!))
		Me.panelServerSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelServerSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelServerSettings.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelServerSettings.Size = New System.Drawing.Size(712, 197)
		Me.panelServerSettings.TabIndex = 1
		'
		'panelChecksBackup
		'
		Me.panelChecksBackup.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelChecksBackup.AutoSize = True
		Me.panelChecksBackup.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelChecksBackup.ColumnCount = 3
		Me.panelChecksBackup.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelChecksBackup.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelChecksBackup.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelChecksBackup.Controls.Add(Me.udCheckTimerBackup, 1, 0)
		Me.panelChecksBackup.Controls.Add(Me.Label26, 0, 0)
		Me.panelChecksBackup.Location = New System.Drawing.Point(460, 168)
		Me.panelChecksBackup.Name = "panelChecksBackup"
		Me.panelChecksBackup.RowCount = 1
		Me.panelChecksBackup.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelChecksBackup.Size = New System.Drawing.Size(249, 26)
		Me.panelChecksBackup.TabIndex = 21
		'
		'udCheckTimerBackup
		'
		Me.udCheckTimerBackup.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.udCheckTimerBackup.Location = New System.Drawing.Point(127, 3)
		Me.udCheckTimerBackup.Maximum = New Decimal(New Integer() {90, 0, 0, 0})
		Me.udCheckTimerBackup.Name = "udCheckTimerBackup"
		Me.udCheckTimerBackup.Size = New System.Drawing.Size(57, 20)
		Me.udCheckTimerBackup.TabIndex = 0
		Me.udCheckTimerBackup.Value = New Decimal(New Integer() {5, 0, 0, 0})
		'
		'Label26
		'
		Me.Label26.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label26.AutoSize = True
		Me.Label26.Location = New System.Drawing.Point(3, 6)
		Me.Label26.Name = "Label26"
		Me.Label26.Size = New System.Drawing.Size(118, 13)
		Me.Label26.TabIndex = 4
		Me.Label26.Text = "Check operations timer:"
		'
		'efServerIP
		'
		Me.efServerIP.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efServerIP.Location = New System.Drawing.Point(97, 6)
		Me.efServerIP.Name = "efServerIP"
		Me.efServerIP.Size = New System.Drawing.Size(105, 20)
		Me.efServerIP.TabIndex = 0
		'
		'Label3
		'
		Me.Label3.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label3.AutoSize = True
		Me.Label3.Location = New System.Drawing.Point(28, 9)
		Me.Label3.Name = "Label3"
		Me.Label3.Size = New System.Drawing.Size(63, 13)
		Me.Label3.TabIndex = 1
		Me.Label3.Text = "Terminal IP:"
		'
		'Label5
		'
		Me.Label5.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label5.AutoSize = True
		Me.Label5.Location = New System.Drawing.Point(208, 9)
		Me.Label5.Name = "Label5"
		Me.Label5.Size = New System.Drawing.Size(71, 13)
		Me.Label5.TabIndex = 2
		Me.Label5.Text = "Terminal port:"
		'
		'udServerPort
		'
		Me.udServerPort.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.udServerPort.Location = New System.Drawing.Point(285, 6)
		Me.udServerPort.Maximum = New Decimal(New Integer() {65535, 0, 0, 0})
		Me.udServerPort.Minimum = New Decimal(New Integer() {1, 0, 0, 0})
		Me.udServerPort.Name = "udServerPort"
		Me.udServerPort.Size = New System.Drawing.Size(57, 20)
		Me.udServerPort.TabIndex = 1
		Me.udServerPort.Value = New Decimal(New Integer() {2018, 0, 0, 0})
		'
		'pbTestConnection
		'
		Me.pbTestConnection.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pbTestConnection.AutoSize = True
		Me.pbTestConnection.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.pbTestConnection.Location = New System.Drawing.Point(348, 4)
		Me.pbTestConnection.Name = "pbTestConnection"
		Me.pbTestConnection.Size = New System.Drawing.Size(106, 23)
		Me.pbTestConnection.TabIndex = 2
		Me.pbTestConnection.Text = "&Test connection"
		Me.pbTestConnection.UseVisualStyleBackColor = True
		'
		'Label15
		'
		Me.Label15.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label15.AutoSize = True
		Me.Label15.Location = New System.Drawing.Point(31, 110)
		Me.Label15.Name = "Label15"
		Me.Label15.Size = New System.Drawing.Size(60, 13)
		Me.Label15.TabIndex = 7
		Me.Label15.Text = "Backup IP:"
		'
		'efServerIPBackup
		'
		Me.efServerIPBackup.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.efServerIPBackup.Location = New System.Drawing.Point(97, 107)
		Me.efServerIPBackup.Name = "efServerIPBackup"
		Me.efServerIPBackup.Size = New System.Drawing.Size(105, 20)
		Me.efServerIPBackup.TabIndex = 11
		'
		'Label16
		'
		Me.Label16.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label16.AutoSize = True
		Me.Label16.Location = New System.Drawing.Point(211, 110)
		Me.Label16.Name = "Label16"
		Me.Label16.Size = New System.Drawing.Size(68, 13)
		Me.Label16.TabIndex = 8
		Me.Label16.Text = "Backup port:"
		'
		'udServerPortBackup
		'
		Me.udServerPortBackup.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.udServerPortBackup.Location = New System.Drawing.Point(285, 107)
		Me.udServerPortBackup.Maximum = New Decimal(New Integer() {65535, 0, 0, 0})
		Me.udServerPortBackup.Minimum = New Decimal(New Integer() {1, 0, 0, 0})
		Me.udServerPortBackup.Name = "udServerPortBackup"
		Me.udServerPortBackup.Size = New System.Drawing.Size(57, 20)
		Me.udServerPortBackup.TabIndex = 12
		Me.udServerPortBackup.Value = New Decimal(New Integer() {2018, 0, 0, 0})
		'
		'pbTestConnectionBackup
		'
		Me.pbTestConnectionBackup.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pbTestConnectionBackup.AutoSize = True
		Me.pbTestConnectionBackup.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.pbTestConnectionBackup.Location = New System.Drawing.Point(348, 105)
		Me.pbTestConnectionBackup.Name = "pbTestConnectionBackup"
		Me.pbTestConnectionBackup.Size = New System.Drawing.Size(106, 23)
		Me.pbTestConnectionBackup.TabIndex = 13
		Me.pbTestConnectionBackup.Text = "&Test connection"
		Me.pbTestConnectionBackup.UseVisualStyleBackColor = True
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
		Me.panelChecks.Location = New System.Drawing.Point(460, 67)
		Me.panelChecks.Name = "panelChecks"
		Me.panelChecks.RowCount = 1
		Me.panelChecks.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelChecks.Size = New System.Drawing.Size(249, 26)
		Me.panelChecks.TabIndex = 10
		'
		'udCheckTimer
		'
		Me.udCheckTimer.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.udCheckTimer.Location = New System.Drawing.Point(127, 3)
		Me.udCheckTimer.Maximum = New Decimal(New Integer() {90, 0, 0, 0})
		Me.udCheckTimer.Name = "udCheckTimer"
		Me.udCheckTimer.Size = New System.Drawing.Size(57, 20)
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
		Me.TableLayoutPanel1.Location = New System.Drawing.Point(460, 3)
		Me.TableLayoutPanel1.Name = "TableLayoutPanel1"
		Me.TableLayoutPanel1.RowCount = 1
		Me.TableLayoutPanel1.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel1.Size = New System.Drawing.Size(249, 26)
		Me.TableLayoutPanel1.TabIndex = 3
		'
		'udGeneralTimer
		'
		Me.udGeneralTimer.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.udGeneralTimer.Location = New System.Drawing.Point(107, 3)
		Me.udGeneralTimer.Maximum = New Decimal(New Integer() {90, 0, 0, 0})
		Me.udGeneralTimer.Name = "udGeneralTimer"
		Me.udGeneralTimer.Size = New System.Drawing.Size(57, 20)
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
		'panelPaymentTimerBackup
		'
		Me.panelPaymentTimerBackup.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.panelPaymentTimerBackup.AutoSize = True
		Me.panelPaymentTimerBackup.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.panelPaymentTimerBackup.ColumnCount = 3
		Me.panelPaymentTimerBackup.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelPaymentTimerBackup.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.panelPaymentTimerBackup.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelPaymentTimerBackup.Controls.Add(Me.udPaymentTimerBackup, 1, 0)
		Me.panelPaymentTimerBackup.Controls.Add(Me.Label27, 0, 0)
		Me.panelPaymentTimerBackup.Location = New System.Drawing.Point(460, 136)
		Me.panelPaymentTimerBackup.Name = "panelPaymentTimerBackup"
		Me.panelPaymentTimerBackup.RowCount = 1
		Me.panelPaymentTimerBackup.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelPaymentTimerBackup.Size = New System.Drawing.Size(249, 26)
		Me.panelPaymentTimerBackup.TabIndex = 18
		'
		'udPaymentTimerBackup
		'
		Me.udPaymentTimerBackup.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.udPaymentTimerBackup.Location = New System.Drawing.Point(85, 3)
		Me.udPaymentTimerBackup.Maximum = New Decimal(New Integer() {300, 0, 0, 0})
		Me.udPaymentTimerBackup.Name = "udPaymentTimerBackup"
		Me.udPaymentTimerBackup.Size = New System.Drawing.Size(57, 20)
		Me.udPaymentTimerBackup.TabIndex = 0
		Me.udPaymentTimerBackup.Value = New Decimal(New Integer() {5, 0, 0, 0})
		'
		'Label27
		'
		Me.Label27.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label27.AutoSize = True
		Me.Label27.Location = New System.Drawing.Point(3, 6)
		Me.Label27.Name = "Label27"
		Me.Label27.Size = New System.Drawing.Size(76, 13)
		Me.Label27.TabIndex = 4
		Me.Label27.Text = "Payment timer:"
		'
		'TableLayoutPanel7
		'
		Me.TableLayoutPanel7.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TableLayoutPanel7.AutoSize = True
		Me.TableLayoutPanel7.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.TableLayoutPanel7.ColumnCount = 3
		Me.TableLayoutPanel7.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel7.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel7.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel7.Controls.Add(Me.udGeneralTimerBackup, 1, 0)
		Me.TableLayoutPanel7.Controls.Add(Me.Label25, 0, 0)
		Me.TableLayoutPanel7.Location = New System.Drawing.Point(460, 104)
		Me.TableLayoutPanel7.Name = "TableLayoutPanel7"
		Me.TableLayoutPanel7.RowCount = 1
		Me.TableLayoutPanel7.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel7.Size = New System.Drawing.Size(249, 26)
		Me.TableLayoutPanel7.TabIndex = 14
		'
		'udGeneralTimerBackup
		'
		Me.udGeneralTimerBackup.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.udGeneralTimerBackup.Location = New System.Drawing.Point(107, 3)
		Me.udGeneralTimerBackup.Maximum = New Decimal(New Integer() {90, 0, 0, 0})
		Me.udGeneralTimerBackup.Name = "udGeneralTimerBackup"
		Me.udGeneralTimerBackup.Size = New System.Drawing.Size(57, 20)
		Me.udGeneralTimerBackup.TabIndex = 0
		Me.udGeneralTimerBackup.Value = New Decimal(New Integer() {5, 0, 0, 0})
		'
		'Label25
		'
		Me.Label25.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label25.AutoSize = True
		Me.Label25.Location = New System.Drawing.Point(3, 6)
		Me.Label25.Name = "Label25"
		Me.Label25.Size = New System.Drawing.Size(98, 13)
		Me.Label25.TabIndex = 4
		Me.Label25.Text = "General nexo timer:"
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
		Me.panelPaymentTimer.Location = New System.Drawing.Point(460, 35)
		Me.panelPaymentTimer.Name = "panelPaymentTimer"
		Me.panelPaymentTimer.RowCount = 1
		Me.panelPaymentTimer.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.panelPaymentTimer.Size = New System.Drawing.Size(249, 26)
		Me.panelPaymentTimer.TabIndex = 7
		'
		'udPaymentTimer
		'
		Me.udPaymentTimer.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.udPaymentTimer.Location = New System.Drawing.Point(85, 3)
		Me.udPaymentTimer.Maximum = New Decimal(New Integer() {300, 0, 0, 0})
		Me.udPaymentTimer.Name = "udPaymentTimer"
		Me.udPaymentTimer.Size = New System.Drawing.Size(57, 20)
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
		'cbSupportsRefund
		'
		Me.cbSupportsRefund.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbSupportsRefund.AutoSize = True
		Me.cbSupportsRefund.Location = New System.Drawing.Point(97, 39)
		Me.cbSupportsRefund.Name = "cbSupportsRefund"
		Me.cbSupportsRefund.Size = New System.Drawing.Size(101, 17)
		Me.cbSupportsRefund.TabIndex = 5
		Me.cbSupportsRefund.Text = "Supports refund"
		Me.cbSupportsRefund.UseVisualStyleBackColor = True
		'
		'cbSupportsRefundBackup
		'
		Me.cbSupportsRefundBackup.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbSupportsRefundBackup.AutoSize = True
		Me.cbSupportsRefundBackup.Location = New System.Drawing.Point(97, 140)
		Me.cbSupportsRefundBackup.Name = "cbSupportsRefundBackup"
		Me.cbSupportsRefundBackup.Size = New System.Drawing.Size(101, 17)
		Me.cbSupportsRefundBackup.TabIndex = 16
		Me.cbSupportsRefundBackup.Text = "Supports refund"
		Me.cbSupportsRefundBackup.UseVisualStyleBackColor = True
		'
		'cbSupportsCheckBackup
		'
		Me.cbSupportsCheckBackup.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbSupportsCheckBackup.AutoSize = True
		Me.cbSupportsCheckBackup.Location = New System.Drawing.Point(348, 172)
		Me.cbSupportsCheckBackup.Name = "cbSupportsCheckBackup"
		Me.cbSupportsCheckBackup.Size = New System.Drawing.Size(106, 17)
		Me.cbSupportsCheckBackup.TabIndex = 20
		Me.cbSupportsCheckBackup.Text = "Supports checks"
		Me.cbSupportsCheckBackup.UseVisualStyleBackColor = True
		'
		'cbSupportsCancelBackup
		'
		Me.cbSupportsCancelBackup.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbSupportsCancelBackup.AutoSize = True
		Me.cbSupportsCancelBackup.Location = New System.Drawing.Point(348, 140)
		Me.cbSupportsCancelBackup.Name = "cbSupportsCancelBackup"
		Me.cbSupportsCancelBackup.Size = New System.Drawing.Size(103, 17)
		Me.cbSupportsCancelBackup.TabIndex = 17
		Me.cbSupportsCancelBackup.Text = "Supports cancel"
		Me.cbSupportsCancelBackup.UseVisualStyleBackColor = True
		'
		'cbSupportsCancel
		'
		Me.cbSupportsCancel.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbSupportsCancel.AutoSize = True
		Me.cbSupportsCancel.Location = New System.Drawing.Point(348, 39)
		Me.cbSupportsCancel.Name = "cbSupportsCancel"
		Me.cbSupportsCancel.Size = New System.Drawing.Size(103, 17)
		Me.cbSupportsCancel.TabIndex = 6
		Me.cbSupportsCancel.Text = "Supports cancel"
		Me.cbSupportsCancel.UseVisualStyleBackColor = True
		'
		'cbSupportsCheck
		'
		Me.cbSupportsCheck.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbSupportsCheck.AutoSize = True
		Me.cbSupportsCheck.Location = New System.Drawing.Point(348, 71)
		Me.cbSupportsCheck.Name = "cbSupportsCheck"
		Me.cbSupportsCheck.Size = New System.Drawing.Size(106, 17)
		Me.cbSupportsCheck.TabIndex = 9
		Me.cbSupportsCheck.Text = "Supports checks"
		Me.cbSupportsCheck.UseVisualStyleBackColor = True
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
		'cbSynchronous
		'
		Me.cbSynchronous.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbSynchronous.AutoSize = True
		Me.cbSynchronous.Enabled = False
		Me.cbSynchronous.Location = New System.Drawing.Point(3, 71)
		Me.cbSynchronous.Name = "cbSynchronous"
		Me.cbSynchronous.Size = New System.Drawing.Size(88, 17)
		Me.cbSynchronous.TabIndex = 8
		Me.cbSynchronous.Text = "Synchronous"
		Me.cbSynchronous.UseVisualStyleBackColor = True
		'
		'cbPrintReceiptBackup
		'
		Me.cbPrintReceiptBackup.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbPrintReceiptBackup.AutoSize = True
		Me.cbPrintReceiptBackup.Location = New System.Drawing.Point(3, 140)
		Me.cbPrintReceiptBackup.Name = "cbPrintReceiptBackup"
		Me.cbPrintReceiptBackup.Size = New System.Drawing.Size(82, 17)
		Me.cbPrintReceiptBackup.TabIndex = 15
		Me.cbPrintReceiptBackup.Text = "Print receipt"
		Me.cbPrintReceiptBackup.UseVisualStyleBackColor = True
		'
		'cbSynchronousBackup
		'
		Me.cbSynchronousBackup.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.cbSynchronousBackup.AutoSize = True
		Me.cbSynchronousBackup.Enabled = False
		Me.cbSynchronousBackup.Location = New System.Drawing.Point(3, 172)
		Me.cbSynchronousBackup.Name = "cbSynchronousBackup"
		Me.cbSynchronousBackup.Size = New System.Drawing.Size(88, 17)
		Me.cbSynchronousBackup.TabIndex = 19
		Me.cbSynchronousBackup.Text = "Synchronous"
		Me.cbSynchronousBackup.UseVisualStyleBackColor = True
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
		Me.panelButtons.Location = New System.Drawing.Point(3, 439)
		Me.panelButtons.Name = "panelButtons"
		Me.panelButtons.RowCount = 1
		Me.panelButtons.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelButtons.Size = New System.Drawing.Size(724, 29)
		Me.panelButtons.TabIndex = 1
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
		Me.pbSave.Location = New System.Drawing.Point(614, 3)
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
		Me.pbCancel.Location = New System.Drawing.Point(671, 3)
		Me.pbCancel.Name = "pbCancel"
		Me.pbCancel.Size = New System.Drawing.Size(50, 23)
		Me.pbCancel.TabIndex = 2
		Me.pbCancel.Text = "&Cancel"
		Me.pbCancel.UseVisualStyleBackColor = True
		'
		'OpenFileDialog1
		'
		Me.OpenFileDialog1.FileName = "OpenFileDialog1"
		'
		'FSettings
		'
		Me.AcceptButton = Me.pbSave
		Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.CancelButton = Me.pbCancel
		Me.ClientSize = New System.Drawing.Size(754, 495)
		Me.Controls.Add(Me.panelMain)
		Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
		Me.MaximizeBox = False
		Me.MinimizeBox = False
		Me.Name = "FSettings"
		Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
		Me.Text = "Nexo Retailer Settings"
		Me.panelMain.ResumeLayout(False)
		Me.panelMain.PerformLayout()
		Me.TabControl1.ResumeLayout(False)
		Me.settingsPage.ResumeLayout(False)
		Me.settingsPage.PerformLayout()
		Me.panelSettingsPage.ResumeLayout(False)
		Me.panelSettingsPage.PerformLayout()
		Me.panelAutocloseSettings.ResumeLayout(False)
		Me.panelAutocloseSettings.PerformLayout()
		CType(Me.udAutocloseDelay, System.ComponentModel.ISupportInitialize).EndInit()
		Me.advancedSettingsPage.ResumeLayout(False)
		Me.advancedSettingsPage.PerformLayout()
		Me.panelAdvancedSettings.ResumeLayout(False)
		Me.panelAdvancedSettings.PerformLayout()
		Me.panelFileSettings.ResumeLayout(False)
		Me.panelFileSettings.PerformLayout()
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
		Me.panelServerSettings.ResumeLayout(False)
		Me.panelServerSettings.PerformLayout()
		Me.panelChecksBackup.ResumeLayout(False)
		Me.panelChecksBackup.PerformLayout()
		CType(Me.udCheckTimerBackup, System.ComponentModel.ISupportInitialize).EndInit()
		CType(Me.udServerPort, System.ComponentModel.ISupportInitialize).EndInit()
		CType(Me.udServerPortBackup, System.ComponentModel.ISupportInitialize).EndInit()
		Me.panelChecks.ResumeLayout(False)
		Me.panelChecks.PerformLayout()
		CType(Me.udCheckTimer, System.ComponentModel.ISupportInitialize).EndInit()
		Me.TableLayoutPanel1.ResumeLayout(False)
		Me.TableLayoutPanel1.PerformLayout()
		CType(Me.udGeneralTimer, System.ComponentModel.ISupportInitialize).EndInit()
		Me.panelPaymentTimerBackup.ResumeLayout(False)
		Me.panelPaymentTimerBackup.PerformLayout()
		CType(Me.udPaymentTimerBackup, System.ComponentModel.ISupportInitialize).EndInit()
		Me.TableLayoutPanel7.ResumeLayout(False)
		Me.TableLayoutPanel7.PerformLayout()
		CType(Me.udGeneralTimerBackup, System.ComponentModel.ISupportInitialize).EndInit()
		Me.panelPaymentTimer.ResumeLayout(False)
		Me.panelPaymentTimer.PerformLayout()
		CType(Me.udPaymentTimer, System.ComponentModel.ISupportInitialize).EndInit()
		Me.panelButtons.ResumeLayout(False)
		Me.panelButtons.PerformLayout()
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
	Friend WithEvents udPaymentTimer As Windows.Forms.NumericUpDown
	Friend WithEvents Label11 As Windows.Forms.Label
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
	Friend WithEvents Label16 As Windows.Forms.Label
	Friend WithEvents udServerPortBackup As Windows.Forms.NumericUpDown
	Friend WithEvents Label15 As Windows.Forms.Label
	Friend WithEvents efServerIPBackup As Windows.Forms.TextBox
	Friend WithEvents cbSupportsCancel As Windows.Forms.CheckBox
	Friend WithEvents pbTestConnectionBackup As Windows.Forms.Button
	Friend WithEvents panelPaymentTimer As Windows.Forms.TableLayoutPanel
	Friend WithEvents cbPrintReceipt As Windows.Forms.CheckBox
	Friend WithEvents panelChecksBackup As Windows.Forms.TableLayoutPanel
	Friend WithEvents udCheckTimerBackup As Windows.Forms.NumericUpDown
	Friend WithEvents Label26 As Windows.Forms.Label
	Friend WithEvents panelChecks As Windows.Forms.TableLayoutPanel
	Friend WithEvents udCheckTimer As Windows.Forms.NumericUpDown
	Friend WithEvents Label17 As Windows.Forms.Label
	Friend WithEvents cbSupportsCheck As Windows.Forms.CheckBox
	Friend WithEvents TableLayoutPanel1 As Windows.Forms.TableLayoutPanel
	Friend WithEvents udGeneralTimer As Windows.Forms.NumericUpDown
	Friend WithEvents Label9 As Windows.Forms.Label
	Friend WithEvents TableLayoutPanel7 As Windows.Forms.TableLayoutPanel
	Friend WithEvents udGeneralTimerBackup As Windows.Forms.NumericUpDown
	Friend WithEvents Label25 As Windows.Forms.Label
	Friend WithEvents cbPrintReceiptBackup As Windows.Forms.CheckBox
	Friend WithEvents cbSynchronousBackup As Windows.Forms.CheckBox
	Friend WithEvents cbSupportsCheckBackup As Windows.Forms.CheckBox
	Friend WithEvents cbSupportsCancelBackup As Windows.Forms.CheckBox
	Friend WithEvents panelPaymentTimerBackup As Windows.Forms.TableLayoutPanel
	Friend WithEvents udPaymentTimerBackup As Windows.Forms.NumericUpDown
	Friend WithEvents Label27 As Windows.Forms.Label
	Friend WithEvents cbSupportsRefund As Windows.Forms.CheckBox
	Friend WithEvents cbSupportsRefundBackup As Windows.Forms.CheckBox
	Friend WithEvents cbUseBackup As Windows.Forms.CheckBox
	Friend WithEvents TableLayoutPanel2 As Windows.Forms.TableLayoutPanel
	Friend WithEvents Label18 As Windows.Forms.Label
	Friend WithEvents efAdminCode As Windows.Forms.TextBox
	Friend WithEvents cbUseDate As Windows.Forms.CheckBox
End Class
