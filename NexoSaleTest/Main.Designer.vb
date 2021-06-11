<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Main
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
		Me.TableLayoutPanel1 = New System.Windows.Forms.TableLayoutPanel()
		Me.TableLayoutPanel2 = New System.Windows.Forms.TableLayoutPanel()
		Me.Label1 = New System.Windows.Forms.Label()
		Me.TextBox1 = New System.Windows.Forms.TextBox()
		Me.TableLayoutPanel3 = New System.Windows.Forms.TableLayoutPanel()
		Me.Label2 = New System.Windows.Forms.Label()
		Me.ComboBox1 = New System.Windows.Forms.ComboBox()
		Me.Button2 = New System.Windows.Forms.Button()
		Me.lblResult = New System.Windows.Forms.Label()
		Me.TableLayoutPanel4 = New System.Windows.Forms.TableLayoutPanel()
		Me.Button1 = New System.Windows.Forms.Button()
		Me.CheckBox1 = New System.Windows.Forms.CheckBox()
		Me.TableLayoutPanel1.SuspendLayout()
		Me.TableLayoutPanel2.SuspendLayout()
		Me.TableLayoutPanel3.SuspendLayout()
		Me.TableLayoutPanel4.SuspendLayout()
		Me.SuspendLayout()
		'
		'TableLayoutPanel1
		'
		Me.TableLayoutPanel1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TableLayoutPanel1.AutoSize = True
		Me.TableLayoutPanel1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.TableLayoutPanel1.ColumnCount = 2
		Me.TableLayoutPanel1.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel1.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel1.Controls.Add(Me.TableLayoutPanel2, 0, 1)
		Me.TableLayoutPanel1.Controls.Add(Me.TableLayoutPanel3, 1, 1)
		Me.TableLayoutPanel1.Controls.Add(Me.TableLayoutPanel4, 0, 0)
		Me.TableLayoutPanel1.Location = New System.Drawing.Point(12, 12)
		Me.TableLayoutPanel1.Name = "TableLayoutPanel1"
		Me.TableLayoutPanel1.RowCount = 2
		Me.TableLayoutPanel1.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
		Me.TableLayoutPanel1.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
		Me.TableLayoutPanel1.Size = New System.Drawing.Size(545, 162)
		Me.TableLayoutPanel1.TabIndex = 0
		'
		'TableLayoutPanel2
		'
		Me.TableLayoutPanel2.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TableLayoutPanel2.AutoSize = True
		Me.TableLayoutPanel2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.TableLayoutPanel2.ColumnCount = 2
		Me.TableLayoutPanel2.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel2.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel2.Controls.Add(Me.Label1, 0, 0)
		Me.TableLayoutPanel2.Controls.Add(Me.TextBox1, 1, 0)
		Me.TableLayoutPanel2.Location = New System.Drawing.Point(3, 84)
		Me.TableLayoutPanel2.Name = "TableLayoutPanel2"
		Me.TableLayoutPanel2.RowCount = 1
		Me.TableLayoutPanel2.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel2.Size = New System.Drawing.Size(204, 75)
		Me.TableLayoutPanel2.TabIndex = 1
		'
		'Label1
		'
		Me.Label1.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label1.AutoSize = True
		Me.Label1.Location = New System.Drawing.Point(3, 31)
		Me.Label1.Name = "Label1"
		Me.Label1.Size = New System.Drawing.Size(92, 13)
		Me.Label1.TabIndex = 1
		Me.Label1.Text = "Amount (in cents):"
		'
		'TextBox1
		'
		Me.TextBox1.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TextBox1.Location = New System.Drawing.Point(101, 27)
		Me.TextBox1.Name = "TextBox1"
		Me.TextBox1.Size = New System.Drawing.Size(100, 20)
		Me.TextBox1.TabIndex = 0
		Me.TextBox1.Text = "100"
		'
		'TableLayoutPanel3
		'
		Me.TableLayoutPanel3.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TableLayoutPanel3.AutoSize = True
		Me.TableLayoutPanel3.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.TableLayoutPanel3.ColumnCount = 4
		Me.TableLayoutPanel3.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel3.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
		Me.TableLayoutPanel3.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel3.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
		Me.TableLayoutPanel3.Controls.Add(Me.Label2, 0, 0)
		Me.TableLayoutPanel3.Controls.Add(Me.ComboBox1, 1, 0)
		Me.TableLayoutPanel3.Controls.Add(Me.Button2, 2, 0)
		Me.TableLayoutPanel3.Controls.Add(Me.lblResult, 3, 0)
		Me.TableLayoutPanel3.Location = New System.Drawing.Point(213, 84)
		Me.TableLayoutPanel3.Name = "TableLayoutPanel3"
		Me.TableLayoutPanel3.RowCount = 1
		Me.TableLayoutPanel3.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel3.Size = New System.Drawing.Size(329, 75)
		Me.TableLayoutPanel3.TabIndex = 2
		'
		'Label2
		'
		Me.Label2.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Label2.AutoSize = True
		Me.Label2.Location = New System.Drawing.Point(3, 31)
		Me.Label2.Name = "Label2"
		Me.Label2.Size = New System.Drawing.Size(66, 13)
		Me.Label2.TabIndex = 2
		Me.Label2.Text = "Transaction:"
		'
		'ComboBox1
		'
		Me.ComboBox1.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.ComboBox1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
		Me.ComboBox1.FormattingEnabled = True
		Me.ComboBox1.Location = New System.Drawing.Point(75, 27)
		Me.ComboBox1.Name = "ComboBox1"
		Me.ComboBox1.Size = New System.Drawing.Size(100, 21)
		Me.ComboBox1.TabIndex = 0
		'
		'Button2
		'
		Me.Button2.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.Button2.AutoSize = True
		Me.Button2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.Button2.Location = New System.Drawing.Point(181, 26)
		Me.Button2.Name = "Button2"
		Me.Button2.Size = New System.Drawing.Size(39, 23)
		Me.Button2.TabIndex = 1
		Me.Button2.Text = "Start"
		Me.Button2.UseVisualStyleBackColor = True
		'
		'lblResult
		'
		Me.lblResult.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.lblResult.AutoSize = True
		Me.lblResult.Location = New System.Drawing.Point(326, 31)
		Me.lblResult.Name = "lblResult"
		Me.lblResult.Size = New System.Drawing.Size(0, 13)
		Me.lblResult.TabIndex = 3
		'
		'TableLayoutPanel4
		'
		Me.TableLayoutPanel4.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TableLayoutPanel4.AutoSize = True
		Me.TableLayoutPanel4.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.TableLayoutPanel4.ColumnCount = 2
		Me.TableLayoutPanel4.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel4.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel4.Controls.Add(Me.Button1, 0, 0)
		Me.TableLayoutPanel4.Controls.Add(Me.CheckBox1, 1, 0)
		Me.TableLayoutPanel4.Location = New System.Drawing.Point(3, 3)
		Me.TableLayoutPanel4.Name = "TableLayoutPanel4"
		Me.TableLayoutPanel4.RowCount = 1
		Me.TableLayoutPanel4.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel4.Size = New System.Drawing.Size(204, 75)
		Me.TableLayoutPanel4.TabIndex = 0
		'
		'Button1
		'
		Me.Button1.Anchor = System.Windows.Forms.AnchorStyles.None
		Me.Button1.AutoSize = True
		Me.Button1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.Button1.Location = New System.Drawing.Point(3, 26)
		Me.Button1.Name = "Button1"
		Me.Button1.Size = New System.Drawing.Size(55, 23)
		Me.Button1.TabIndex = 0
		Me.Button1.Text = "Settings"
		Me.Button1.UseVisualStyleBackColor = True
		'
		'CheckBox1
		'
		Me.CheckBox1.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.CheckBox1.AutoSize = True
		Me.CheckBox1.Checked = True
		Me.CheckBox1.CheckState = System.Windows.Forms.CheckState.Checked
		Me.CheckBox1.Location = New System.Drawing.Point(64, 29)
		Me.CheckBox1.Name = "CheckBox1"
		Me.CheckBox1.Size = New System.Drawing.Size(114, 17)
		Me.CheckBox1.TabIndex = 1
		Me.CheckBox1.Text = "Advanced settings"
		Me.CheckBox1.UseVisualStyleBackColor = True
		'
		'Main
		'
		Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.ClientSize = New System.Drawing.Size(569, 186)
		Me.Controls.Add(Me.TableLayoutPanel1)
		Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
		Me.MaximizeBox = False
		Me.MinimizeBox = False
		Me.Name = "Main"
		Me.Text = "Test NexoSale"
		Me.TableLayoutPanel1.ResumeLayout(False)
		Me.TableLayoutPanel1.PerformLayout()
		Me.TableLayoutPanel2.ResumeLayout(False)
		Me.TableLayoutPanel2.PerformLayout()
		Me.TableLayoutPanel3.ResumeLayout(False)
		Me.TableLayoutPanel3.PerformLayout()
		Me.TableLayoutPanel4.ResumeLayout(False)
		Me.TableLayoutPanel4.PerformLayout()
		Me.ResumeLayout(False)
		Me.PerformLayout()

	End Sub

	Friend WithEvents TableLayoutPanel1 As Windows.Forms.TableLayoutPanel
	Friend WithEvents TableLayoutPanel2 As Windows.Forms.TableLayoutPanel
	Friend WithEvents Label1 As Windows.Forms.Label
	Friend WithEvents TextBox1 As Windows.Forms.TextBox
	Friend WithEvents Button1 As Windows.Forms.Button
	Friend WithEvents TableLayoutPanel3 As Windows.Forms.TableLayoutPanel
	Friend WithEvents Label2 As Windows.Forms.Label
	Friend WithEvents ComboBox1 As Windows.Forms.ComboBox
	Friend WithEvents Button2 As Windows.Forms.Button
	Friend WithEvents TableLayoutPanel4 As Windows.Forms.TableLayoutPanel
	Friend WithEvents CheckBox1 As Windows.Forms.CheckBox
	Friend WithEvents lblResult As Label
End Class
