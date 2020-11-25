<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FWait
	Inherits System.Windows.Forms.Form

	'Form overrides dispose to clean up the component list.
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

	'Required by the Windows Form Designer
	Private components As System.ComponentModel.IContainer

	'NOTE: The following procedure is required by the Windows Form Designer
	'It can be modified using the Windows Form Designer.  
	'Do not modify it using the code editor.
	<System.Diagnostics.DebuggerStepThrough()> _
	Private Sub InitializeComponent()
		Me.panelMain = New System.Windows.Forms.TableLayoutPanel()
		Me.Label1 = New System.Windows.Forms.Label()
		Me.pbClose = New System.Windows.Forms.Button()
		Me.Label2 = New System.Windows.Forms.Label()
		Me.panelMain.SuspendLayout()
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
		Me.panelMain.Controls.Add(Me.Label1, 0, 0)
		Me.panelMain.Controls.Add(Me.pbClose, 0, 2)
		Me.panelMain.Controls.Add(Me.Label2, 0, 1)
		Me.panelMain.Location = New System.Drawing.Point(12, 12)
		Me.panelMain.Name = "panelMain"
		Me.panelMain.RowCount = 3
		Me.panelMain.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
		Me.panelMain.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
		Me.panelMain.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.panelMain.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20.0!))
		Me.panelMain.Size = New System.Drawing.Size(606, 177)
		Me.panelMain.TabIndex = 0
		'
		'Label1
		'
		Me.Label1.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.Label1.AutoSize = True
		Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
		Me.Label1.Location = New System.Drawing.Point(3, 24)
		Me.Label1.Name = "Label1"
		Me.Label1.Size = New System.Drawing.Size(600, 25)
		Me.Label1.TabIndex = 0
		Me.Label1.Text = "Label1"
		Me.Label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
		'
		'pbClose
		'
		Me.pbClose.Anchor = System.Windows.Forms.AnchorStyles.None
		Me.pbClose.Location = New System.Drawing.Point(265, 151)
		Me.pbClose.Name = "pbClose"
		Me.pbClose.Size = New System.Drawing.Size(75, 23)
		Me.pbClose.TabIndex = 1
		Me.pbClose.Text = "Close"
		Me.pbClose.UseVisualStyleBackColor = True
		'
		'Label2
		'
		Me.Label2.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.Label2.AutoSize = True
		Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
		Me.Label2.Location = New System.Drawing.Point(3, 101)
		Me.Label2.Name = "Label2"
		Me.Label2.Size = New System.Drawing.Size(600, 20)
		Me.Label2.TabIndex = 2
		Me.Label2.Text = "Label2"
		Me.Label2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
		'
		'FWait
		'
		Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.ClientSize = New System.Drawing.Size(630, 203)
		Me.ControlBox = False
		Me.Controls.Add(Me.panelMain)
		Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
		Me.MaximizeBox = False
		Me.MinimizeBox = False
		Me.Name = "FWait"
		Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
		Me.Text = "Connecting to POI"
		Me.panelMain.ResumeLayout(False)
		Me.panelMain.PerformLayout()
		Me.ResumeLayout(False)
		Me.PerformLayout()

	End Sub

	Friend WithEvents panelMain As Windows.Forms.TableLayoutPanel
	Friend WithEvents Label1 As Windows.Forms.Label
	Friend WithEvents pbClose As Windows.Forms.Button
	Friend WithEvents Label2 As Windows.Forms.Label
End Class
