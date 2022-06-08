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
		Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Main))
		Me.TableLayoutPanel1 = New System.Windows.Forms.TableLayoutPanel()
		Me.TableLayoutPanel2 = New System.Windows.Forms.TableLayoutPanel()
		Me.Label1 = New System.Windows.Forms.Label()
		Me.TextBox1 = New System.Windows.Forms.TextBox()
		Me.TableLayoutPanel3 = New System.Windows.Forms.TableLayoutPanel()
		Me.lblBrand = New System.Windows.Forms.Label()
		Me.Label2 = New System.Windows.Forms.Label()
		Me.cbxServices = New System.Windows.Forms.ComboBox()
		Me.Button2 = New System.Windows.Forms.Button()
		Me.lblResult = New System.Windows.Forms.Label()
		Me.TableLayoutPanel4 = New System.Windows.Forms.TableLayoutPanel()
		Me.Button1 = New System.Windows.Forms.Button()
		Me.FlowLayoutPanel1 = New System.Windows.Forms.FlowLayoutPanel()
		Me.CheckBox1 = New System.Windows.Forms.CheckBox()
		Me.cbUseBackup = New System.Windows.Forms.CheckBox()
		Me.cbInternalPrinting = New System.Windows.Forms.CheckBox()
		Me.FlowLayoutPanel2 = New System.Windows.Forms.FlowLayoutPanel()
		Me.cbUseAmount = New System.Windows.Forms.CheckBox()
		Me.TableLayoutPanel1.SuspendLayout()
		Me.TableLayoutPanel2.SuspendLayout()
		Me.TableLayoutPanel3.SuspendLayout()
		Me.TableLayoutPanel4.SuspendLayout()
		Me.FlowLayoutPanel1.SuspendLayout()
		Me.FlowLayoutPanel2.SuspendLayout()
		Me.SuspendLayout()
		'
		'TableLayoutPanel1
		'
		resources.ApplyResources(Me.TableLayoutPanel1, "TableLayoutPanel1")
		Me.TableLayoutPanel1.Controls.Add(Me.TableLayoutPanel2, 0, 1)
		Me.TableLayoutPanel1.Controls.Add(Me.TableLayoutPanel3, 1, 1)
		Me.TableLayoutPanel1.Controls.Add(Me.TableLayoutPanel4, 0, 0)
		Me.TableLayoutPanel1.Name = "TableLayoutPanel1"
		'
		'TableLayoutPanel2
		'
		resources.ApplyResources(Me.TableLayoutPanel2, "TableLayoutPanel2")
		Me.TableLayoutPanel2.Controls.Add(Me.Label1, 0, 0)
		Me.TableLayoutPanel2.Controls.Add(Me.FlowLayoutPanel2, 1, 0)
		Me.TableLayoutPanel2.Name = "TableLayoutPanel2"
		'
		'Label1
		'
		resources.ApplyResources(Me.Label1, "Label1")
		Me.Label1.Name = "Label1"
		'
		'TextBox1
		'
		resources.ApplyResources(Me.TextBox1, "TextBox1")
		Me.TextBox1.Name = "TextBox1"
		'
		'TableLayoutPanel3
		'
		resources.ApplyResources(Me.TableLayoutPanel3, "TableLayoutPanel3")
		Me.TableLayoutPanel3.Controls.Add(Me.lblBrand, 4, 0)
		Me.TableLayoutPanel3.Controls.Add(Me.Label2, 0, 0)
		Me.TableLayoutPanel3.Controls.Add(Me.cbxServices, 1, 0)
		Me.TableLayoutPanel3.Controls.Add(Me.Button2, 2, 0)
		Me.TableLayoutPanel3.Controls.Add(Me.lblResult, 3, 0)
		Me.TableLayoutPanel3.Name = "TableLayoutPanel3"
		'
		'lblBrand
		'
		resources.ApplyResources(Me.lblBrand, "lblBrand")
		Me.lblBrand.Name = "lblBrand"
		'
		'Label2
		'
		resources.ApplyResources(Me.Label2, "Label2")
		Me.Label2.Name = "Label2"
		'
		'cbxServices
		'
		resources.ApplyResources(Me.cbxServices, "cbxServices")
		Me.cbxServices.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
		Me.cbxServices.FormattingEnabled = True
		Me.cbxServices.Name = "cbxServices"
		'
		'Button2
		'
		resources.ApplyResources(Me.Button2, "Button2")
		Me.Button2.Name = "Button2"
		Me.Button2.UseVisualStyleBackColor = True
		'
		'lblResult
		'
		resources.ApplyResources(Me.lblResult, "lblResult")
		Me.lblResult.Name = "lblResult"
		'
		'TableLayoutPanel4
		'
		resources.ApplyResources(Me.TableLayoutPanel4, "TableLayoutPanel4")
		Me.TableLayoutPanel4.Controls.Add(Me.Button1, 0, 0)
		Me.TableLayoutPanel4.Controls.Add(Me.FlowLayoutPanel1, 1, 0)
		Me.TableLayoutPanel4.Name = "TableLayoutPanel4"
		'
		'Button1
		'
		resources.ApplyResources(Me.Button1, "Button1")
		Me.Button1.Name = "Button1"
		Me.Button1.UseVisualStyleBackColor = True
		'
		'FlowLayoutPanel1
		'
		resources.ApplyResources(Me.FlowLayoutPanel1, "FlowLayoutPanel1")
		Me.FlowLayoutPanel1.Controls.Add(Me.CheckBox1)
		Me.FlowLayoutPanel1.Controls.Add(Me.cbUseBackup)
		Me.FlowLayoutPanel1.Controls.Add(Me.cbInternalPrinting)
		Me.FlowLayoutPanel1.Name = "FlowLayoutPanel1"
		'
		'CheckBox1
		'
		resources.ApplyResources(Me.CheckBox1, "CheckBox1")
		Me.CheckBox1.Checked = True
		Me.CheckBox1.CheckState = System.Windows.Forms.CheckState.Checked
		Me.CheckBox1.Name = "CheckBox1"
		Me.CheckBox1.UseVisualStyleBackColor = True
		'
		'cbUseBackup
		'
		resources.ApplyResources(Me.cbUseBackup, "cbUseBackup")
		Me.cbUseBackup.Name = "cbUseBackup"
		Me.cbUseBackup.UseVisualStyleBackColor = True
		'
		'cbInternalPrinting
		'
		resources.ApplyResources(Me.cbInternalPrinting, "cbInternalPrinting")
		Me.cbInternalPrinting.Name = "cbInternalPrinting"
		Me.cbInternalPrinting.UseVisualStyleBackColor = True
		'
		'FlowLayoutPanel2
		'
		resources.ApplyResources(Me.FlowLayoutPanel2, "FlowLayoutPanel2")
		Me.FlowLayoutPanel2.Controls.Add(Me.TextBox1)
		Me.FlowLayoutPanel2.Controls.Add(Me.cbUseAmount)
		Me.FlowLayoutPanel2.Name = "FlowLayoutPanel2"
		'
		'cbUseAmount
		'
		resources.ApplyResources(Me.cbUseAmount, "cbUseAmount")
		Me.cbUseAmount.Name = "cbUseAmount"
		Me.cbUseAmount.UseVisualStyleBackColor = True
		'
		'Main
		'
		resources.ApplyResources(Me, "$this")
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.Controls.Add(Me.TableLayoutPanel1)
		Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
		Me.MaximizeBox = False
		Me.MinimizeBox = False
		Me.Name = "Main"
		Me.TableLayoutPanel1.ResumeLayout(False)
		Me.TableLayoutPanel1.PerformLayout()
		Me.TableLayoutPanel2.ResumeLayout(False)
		Me.TableLayoutPanel2.PerformLayout()
		Me.TableLayoutPanel3.ResumeLayout(False)
		Me.TableLayoutPanel3.PerformLayout()
		Me.TableLayoutPanel4.ResumeLayout(False)
		Me.TableLayoutPanel4.PerformLayout()
		Me.FlowLayoutPanel1.ResumeLayout(False)
		Me.FlowLayoutPanel1.PerformLayout()
		Me.FlowLayoutPanel2.ResumeLayout(False)
		Me.FlowLayoutPanel2.PerformLayout()
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
	Friend WithEvents cbxServices As Windows.Forms.ComboBox
	Friend WithEvents Button2 As Windows.Forms.Button
	Friend WithEvents TableLayoutPanel4 As Windows.Forms.TableLayoutPanel
	Friend WithEvents CheckBox1 As Windows.Forms.CheckBox
	Friend WithEvents lblResult As Label
	Friend WithEvents lblBrand As Label
	Friend WithEvents FlowLayoutPanel1 As FlowLayoutPanel
	Friend WithEvents cbUseBackup As CheckBox
	Friend WithEvents cbInternalPrinting As CheckBox
	Friend WithEvents FlowLayoutPanel2 As FlowLayoutPanel
	Friend WithEvents cbUseAmount As CheckBox
End Class
