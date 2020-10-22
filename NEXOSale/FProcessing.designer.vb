<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FProcessing
	Inherits System.Windows.Forms.Form

	'Form remplace la méthode Dispose pour nettoyer la liste des composants.
	<System.Diagnostics.DebuggerNonUserCode()> _
	Protected Overrides Sub Dispose(ByVal disposing As Boolean)
		Try
			If disposing AndAlso components IsNot Nothing Then
				components.Dispose()
			End If
		Finally
			MyBase.Dispose(disposing)
		End Try
	End Sub

	'Requise par le Concepteur Windows Form
	Private components As System.ComponentModel.IContainer

	'REMARQUE : la procédure suivante est requise par le Concepteur Windows Form
	'Elle peut être modifiée à l'aide du Concepteur Windows Form.  
	'Ne la modifiez pas à l'aide de l'éditeur de code.
	<System.Diagnostics.DebuggerStepThrough()> _
	Private Sub InitializeComponent()
		Me.components = New System.ComponentModel.Container()
		Me.TableLayoutMain = New System.Windows.Forms.TableLayoutPanel()
		Me.pbCancel = New System.Windows.Forms.Button()
		Me.price = New System.Windows.Forms.Label()
		Me.information = New System.Windows.Forms.TextBox()
		Me.message = New System.Windows.Forms.TextBox()
		Me.timerBeforeTimeout = New System.Windows.Forms.Timer(Me.components)
		Me.timerBeforeAutoClose = New System.Windows.Forms.Timer(Me.components)
		Me.timerGlobal = New System.Windows.Forms.Timer(Me.components)
		Me.TableLayoutMain.SuspendLayout()
		Me.SuspendLayout()
		'
		'TableLayoutMain
		'
		Me.TableLayoutMain.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TableLayoutMain.ColumnCount = 1
		Me.TableLayoutMain.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutMain.Controls.Add(Me.pbCancel, 0, 6)
		Me.TableLayoutMain.Controls.Add(Me.price, 0, 0)
		Me.TableLayoutMain.Controls.Add(Me.information, 0, 2)
		Me.TableLayoutMain.Controls.Add(Me.message, 0, 4)
		Me.TableLayoutMain.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold)
		Me.TableLayoutMain.Location = New System.Drawing.Point(12, 12)
		Me.TableLayoutMain.Name = "TableLayoutMain"
		Me.TableLayoutMain.RowCount = 7
		Me.TableLayoutMain.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 34.0!))
		Me.TableLayoutMain.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 5.0!))
		Me.TableLayoutMain.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 33.0!))
		Me.TableLayoutMain.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 5.0!))
		Me.TableLayoutMain.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 33.0!))
		Me.TableLayoutMain.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 5.0!))
		Me.TableLayoutMain.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.TableLayoutMain.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20.0!))
		Me.TableLayoutMain.Size = New System.Drawing.Size(865, 400)
		Me.TableLayoutMain.TabIndex = 0
		'
		'pbCancel
		'
		Me.pbCancel.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.pbCancel.AutoSize = True
		Me.pbCancel.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.pbCancel.Location = New System.Drawing.Point(3, 370)
		Me.pbCancel.Name = "pbCancel"
		Me.pbCancel.Size = New System.Drawing.Size(859, 26)
		Me.pbCancel.TabIndex = 5
		Me.pbCancel.TabStop = False
		Me.pbCancel.Text = "Cancel"
		Me.pbCancel.UseVisualStyleBackColor = True
		'
		'price
		'
		Me.price.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.price.AutoSize = True
		Me.price.Font = New System.Drawing.Font("Microsoft Sans Serif", 48.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
		Me.price.Location = New System.Drawing.Point(3, 23)
		Me.price.Name = "price"
		Me.price.Size = New System.Drawing.Size(859, 73)
		Me.price.TabIndex = 3
		Me.price.Text = "Label1"
		Me.price.TextAlign = System.Drawing.ContentAlignment.TopCenter
		'
		'information
		'
		Me.information.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.information.BackColor = System.Drawing.SystemColors.Control
		Me.information.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
		Me.information.Location = New System.Drawing.Point(3, 128)
		Me.information.Multiline = True
		Me.information.Name = "information"
		Me.information.ReadOnly = True
		Me.information.Size = New System.Drawing.Size(859, 110)
		Me.information.TabIndex = 7
		Me.information.Text = "information"
		Me.information.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
		'
		'message
		'
		Me.message.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.message.BackColor = System.Drawing.SystemColors.Control
		Me.message.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
		Me.message.Location = New System.Drawing.Point(3, 249)
		Me.message.Multiline = True
		Me.message.Name = "message"
		Me.message.ReadOnly = True
		Me.message.Size = New System.Drawing.Size(859, 110)
		Me.message.TabIndex = 8
		Me.message.Text = "message" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10) & "message" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10) & "message" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10) & "message"
		Me.message.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
		'
		'timerBeforeTimeout
		'
		Me.timerBeforeTimeout.Interval = 1000
		'
		'timerBeforeAutoClose
		'
		'
		'timerGlobal
		'
		'
		'FProcessing
		'
		Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.AutoSize = True
		Me.ClientSize = New System.Drawing.Size(889, 424)
		Me.ControlBox = False
		Me.Controls.Add(Me.TableLayoutMain)
		Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
		Me.MaximizeBox = False
		Me.MinimizeBox = False
		Me.Name = "FProcessing"
		Me.ShowIcon = False
		Me.ShowInTaskbar = False
		Me.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide
		Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
		Me.Text = "Please wait..."
		Me.TableLayoutMain.ResumeLayout(False)
		Me.TableLayoutMain.PerformLayout()
		Me.ResumeLayout(False)

	End Sub

	Friend WithEvents TableLayoutMain As System.Windows.Forms.TableLayoutPanel
	Friend WithEvents timerBeforeTimeout As System.Windows.Forms.Timer
	Friend WithEvents timerBeforeAutoClose As System.Windows.Forms.Timer
	Friend WithEvents price As Windows.Forms.Label
	Friend WithEvents timerGlobal As Windows.Forms.Timer
	Friend WithEvents pbCancel As Windows.Forms.Button
	Friend WithEvents information As Windows.Forms.TextBox
	Friend WithEvents message As Windows.Forms.TextBox
End Class
