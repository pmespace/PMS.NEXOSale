<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class FConfirmResult
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
		Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FConfirmResult))
		Me.TableLayoutPanel1 = New System.Windows.Forms.TableLayoutPanel()
		Me.lblMessage = New System.Windows.Forms.Label()
		Me.TableLayoutPanel2 = New System.Windows.Forms.TableLayoutPanel()
		Me.Button1 = New System.Windows.Forms.Button()
		Me.Button2 = New System.Windows.Forms.Button()
		Me.TableLayoutPanel1.SuspendLayout()
		Me.TableLayoutPanel2.SuspendLayout()
		Me.SuspendLayout()
		'
		'TableLayoutPanel1
		'
		resources.ApplyResources(Me.TableLayoutPanel1, "TableLayoutPanel1")
		Me.TableLayoutPanel1.Controls.Add(Me.lblMessage, 0, 0)
		Me.TableLayoutPanel1.Controls.Add(Me.TableLayoutPanel2, 0, 1)
		Me.TableLayoutPanel1.Name = "TableLayoutPanel1"
		'
		'lblMessage
		'
		resources.ApplyResources(Me.lblMessage, "lblMessage")
		Me.lblMessage.Name = "lblMessage"
		'
		'TableLayoutPanel2
		'
		resources.ApplyResources(Me.TableLayoutPanel2, "TableLayoutPanel2")
		Me.TableLayoutPanel2.Controls.Add(Me.Button1, 0, 0)
		Me.TableLayoutPanel2.Controls.Add(Me.Button2, 1, 0)
		Me.TableLayoutPanel2.Name = "TableLayoutPanel2"
		'
		'Button1
		'
		resources.ApplyResources(Me.Button1, "Button1")
		Me.Button1.BackgroundImage = Global.NEXOSALE.My.Resources.CommonResources.button_green
		Me.Button1.FlatAppearance.BorderSize = 0
		Me.Button1.Name = "Button1"
		Me.Button1.UseVisualStyleBackColor = True
		'
		'Button2
		'
		resources.ApplyResources(Me.Button2, "Button2")
		Me.Button2.BackgroundImage = Global.NEXOSALE.My.Resources.CommonResources.button_red
		Me.Button2.DialogResult = System.Windows.Forms.DialogResult.Cancel
		Me.Button2.FlatAppearance.BorderSize = 0
		Me.Button2.Name = "Button2"
		Me.Button2.UseVisualStyleBackColor = True
		'
		'FConfirmResult
		'
		resources.ApplyResources(Me, "$this")
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.ControlBox = False
		Me.Controls.Add(Me.TableLayoutPanel1)
		Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
		Me.MaximizeBox = False
		Me.MinimizeBox = False
		Me.Name = "FConfirmResult"
		Me.ShowIcon = False
		Me.TableLayoutPanel1.ResumeLayout(False)
		Me.TableLayoutPanel1.PerformLayout()
		Me.TableLayoutPanel2.ResumeLayout(False)
		Me.ResumeLayout(False)
		Me.PerformLayout()

	End Sub

	Friend WithEvents TableLayoutPanel1 As Windows.Forms.TableLayoutPanel
	Friend WithEvents lblMessage As Windows.Forms.Label
	Friend WithEvents TableLayoutPanel2 As Windows.Forms.TableLayoutPanel
	Friend WithEvents Button1 As Windows.Forms.Button
	Friend WithEvents Button2 As Windows.Forms.Button
End Class
