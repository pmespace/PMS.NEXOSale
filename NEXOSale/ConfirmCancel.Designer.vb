<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class ConfirmCancel
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
		Me.TableLayoutPanel1 = New System.Windows.Forms.TableLayoutPanel()
		Me.Label1 = New System.Windows.Forms.Label()
		Me.TableLayoutPanel2 = New System.Windows.Forms.TableLayoutPanel()
		Me.lblInvite = New System.Windows.Forms.Label()
		Me.TextBox1 = New System.Windows.Forms.TextBox()
		Me.TableLayoutPanel3 = New System.Windows.Forms.TableLayoutPanel()
		Me.pbAccept = New System.Windows.Forms.Button()
		Me.pbCancel = New System.Windows.Forms.Button()
		Me.TableLayoutPanel1.SuspendLayout()
		Me.TableLayoutPanel2.SuspendLayout()
		Me.TableLayoutPanel3.SuspendLayout()
		Me.SuspendLayout()
		'
		'TableLayoutPanel1
		'
		Me.TableLayoutPanel1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TableLayoutPanel1.AutoSize = True
		Me.TableLayoutPanel1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.TableLayoutPanel1.ColumnCount = 1
		Me.TableLayoutPanel1.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel1.Controls.Add(Me.Label1, 0, 0)
		Me.TableLayoutPanel1.Controls.Add(Me.TableLayoutPanel2, 0, 1)
		Me.TableLayoutPanel1.Controls.Add(Me.TableLayoutPanel3, 0, 3)
		Me.TableLayoutPanel1.Location = New System.Drawing.Point(12, 12)
		Me.TableLayoutPanel1.Name = "TableLayoutPanel1"
		Me.TableLayoutPanel1.RowCount = 4
		Me.TableLayoutPanel1.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 66.0!))
		Me.TableLayoutPanel1.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.TableLayoutPanel1.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 34.0!))
		Me.TableLayoutPanel1.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.TableLayoutPanel1.Size = New System.Drawing.Size(499, 194)
		Me.TableLayoutPanel1.TabIndex = 0
		'
		'Label1
		'
		Me.Label1.Anchor = CType((System.Windows.Forms.AnchorStyles.Left Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.Label1.AutoSize = True
		Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
		Me.Label1.Location = New System.Drawing.Point(3, 34)
		Me.Label1.Name = "Label1"
		Me.Label1.Size = New System.Drawing.Size(493, 15)
		Me.Label1.TabIndex = 0
		Me.Label1.Text = "Are you sur you want to cancel the operation ?"
		Me.Label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
		'
		'TableLayoutPanel2
		'
		Me.TableLayoutPanel2.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TableLayoutPanel2.AutoSize = True
		Me.TableLayoutPanel2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.TableLayoutPanel2.ColumnCount = 2
		Me.TableLayoutPanel2.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
		Me.TableLayoutPanel2.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
		Me.TableLayoutPanel2.Controls.Add(Me.lblInvite, 0, 0)
		Me.TableLayoutPanel2.Controls.Add(Me.TextBox1, 1, 0)
		Me.TableLayoutPanel2.Location = New System.Drawing.Point(3, 86)
		Me.TableLayoutPanel2.Name = "TableLayoutPanel2"
		Me.TableLayoutPanel2.RowCount = 1
		Me.TableLayoutPanel2.RowStyles.Add(New System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50.0!))
		Me.TableLayoutPanel2.Size = New System.Drawing.Size(493, 26)
		Me.TableLayoutPanel2.TabIndex = 1
		'
		'lblInvite
		'
		Me.lblInvite.Anchor = System.Windows.Forms.AnchorStyles.Right
		Me.lblInvite.AutoSize = True
		Me.lblInvite.Location = New System.Drawing.Point(132, 6)
		Me.lblInvite.Name = "lblInvite"
		Me.lblInvite.Size = New System.Drawing.Size(111, 13)
		Me.lblInvite.TabIndex = 0
		Me.lblInvite.Text = "Enter the admin code:"
		'
		'TextBox1
		'
		Me.TextBox1.Anchor = System.Windows.Forms.AnchorStyles.Left
		Me.TextBox1.Location = New System.Drawing.Point(249, 3)
		Me.TextBox1.Name = "TextBox1"
		Me.TextBox1.Size = New System.Drawing.Size(112, 20)
		Me.TextBox1.TabIndex = 1
		'
		'TableLayoutPanel3
		'
		Me.TableLayoutPanel3.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
			Or System.Windows.Forms.AnchorStyles.Left) _
			Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
		Me.TableLayoutPanel3.AutoSize = True
		Me.TableLayoutPanel3.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink
		Me.TableLayoutPanel3.ColumnCount = 3
		Me.TableLayoutPanel3.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100.0!))
		Me.TableLayoutPanel3.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel3.ColumnStyles.Add(New System.Windows.Forms.ColumnStyle())
		Me.TableLayoutPanel3.Controls.Add(Me.pbAccept, 1, 0)
		Me.TableLayoutPanel3.Controls.Add(Me.pbCancel, 2, 0)
		Me.TableLayoutPanel3.Location = New System.Drawing.Point(3, 161)
		Me.TableLayoutPanel3.Name = "TableLayoutPanel3"
		Me.TableLayoutPanel3.RowCount = 1
		Me.TableLayoutPanel3.RowStyles.Add(New System.Windows.Forms.RowStyle())
		Me.TableLayoutPanel3.Size = New System.Drawing.Size(493, 30)
		Me.TableLayoutPanel3.TabIndex = 2
		'
		'pbAccept
		'
		Me.pbAccept.Location = New System.Drawing.Point(334, 3)
		Me.pbAccept.Name = "pbAccept"
		Me.pbAccept.Size = New System.Drawing.Size(75, 23)
		Me.pbAccept.TabIndex = 0
		Me.pbAccept.Text = "&Accept"
		Me.pbAccept.UseVisualStyleBackColor = True
		'
		'pbCancel
		'
		Me.pbCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel
		Me.pbCancel.Location = New System.Drawing.Point(415, 3)
		Me.pbCancel.Name = "pbCancel"
		Me.pbCancel.Size = New System.Drawing.Size(75, 23)
		Me.pbCancel.TabIndex = 1
		Me.pbCancel.Text = "&Cancel"
		Me.pbCancel.UseVisualStyleBackColor = True
		'
		'ConfirmCancel
		'
		Me.AcceptButton = Me.pbAccept
		Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.CancelButton = Me.pbCancel
		Me.ClientSize = New System.Drawing.Size(523, 220)
		Me.ControlBox = False
		Me.Controls.Add(Me.TableLayoutPanel1)
		Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
		Me.MaximizeBox = False
		Me.MinimizeBox = False
		Me.Name = "ConfirmCancel"
		Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
		Me.Text = "Confirm cancel operation"
		Me.TableLayoutPanel1.ResumeLayout(False)
		Me.TableLayoutPanel1.PerformLayout()
		Me.TableLayoutPanel2.ResumeLayout(False)
		Me.TableLayoutPanel2.PerformLayout()
		Me.TableLayoutPanel3.ResumeLayout(False)
		Me.ResumeLayout(False)
		Me.PerformLayout()

	End Sub

	Friend WithEvents TableLayoutPanel1 As Windows.Forms.TableLayoutPanel
	Friend WithEvents Label1 As Windows.Forms.Label
	Friend WithEvents TableLayoutPanel3 As Windows.Forms.TableLayoutPanel
	Friend WithEvents TableLayoutPanel2 As Windows.Forms.TableLayoutPanel
	Friend WithEvents lblInvite As Windows.Forms.Label
	Friend WithEvents TextBox1 As Windows.Forms.TextBox
	Friend WithEvents pbAccept As Windows.Forms.Button
	Friend WithEvents pbCancel As Windows.Forms.Button
End Class
