<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FConfirm
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
		Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FConfirm))
		Me.TableLayoutPanel1 = New System.Windows.Forms.TableLayoutPanel()
		Me.lblMessage = New System.Windows.Forms.Label()
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
		resources.ApplyResources(Me.TableLayoutPanel1, "TableLayoutPanel1")
		Me.TableLayoutPanel1.Controls.Add(Me.lblMessage, 0, 0)
		Me.TableLayoutPanel1.Controls.Add(Me.TableLayoutPanel2, 0, 1)
		Me.TableLayoutPanel1.Controls.Add(Me.TableLayoutPanel3, 0, 3)
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
		Me.TableLayoutPanel2.Controls.Add(Me.lblInvite, 0, 0)
		Me.TableLayoutPanel2.Controls.Add(Me.TextBox1, 1, 0)
		Me.TableLayoutPanel2.Name = "TableLayoutPanel2"
		'
		'lblInvite
		'
		resources.ApplyResources(Me.lblInvite, "lblInvite")
		Me.lblInvite.Name = "lblInvite"
		'
		'TextBox1
		'
		resources.ApplyResources(Me.TextBox1, "TextBox1")
		Me.TextBox1.Name = "TextBox1"
		'
		'TableLayoutPanel3
		'
		resources.ApplyResources(Me.TableLayoutPanel3, "TableLayoutPanel3")
		Me.TableLayoutPanel3.Controls.Add(Me.pbAccept, 1, 0)
		Me.TableLayoutPanel3.Controls.Add(Me.pbCancel, 2, 0)
		Me.TableLayoutPanel3.Name = "TableLayoutPanel3"
		'
		'pbAccept
		'
		resources.ApplyResources(Me.pbAccept, "pbAccept")
		Me.pbAccept.Name = "pbAccept"
		Me.pbAccept.UseVisualStyleBackColor = True
		'
		'pbCancel
		'
		Me.pbCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel
		resources.ApplyResources(Me.pbCancel, "pbCancel")
		Me.pbCancel.Name = "pbCancel"
		Me.pbCancel.UseVisualStyleBackColor = True
		'
		'FConfirm
		'
		Me.AcceptButton = Me.pbAccept
		resources.ApplyResources(Me, "$this")
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.CancelButton = Me.pbCancel
		Me.ControlBox = False
		Me.Controls.Add(Me.TableLayoutPanel1)
		Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
		Me.MaximizeBox = False
		Me.MinimizeBox = False
		Me.Name = "FConfirm"
		Me.TableLayoutPanel1.ResumeLayout(False)
		Me.TableLayoutPanel1.PerformLayout()
		Me.TableLayoutPanel2.ResumeLayout(False)
		Me.TableLayoutPanel2.PerformLayout()
		Me.TableLayoutPanel3.ResumeLayout(False)
		Me.ResumeLayout(False)
		Me.PerformLayout()

	End Sub

	Friend WithEvents TableLayoutPanel1 As Windows.Forms.TableLayoutPanel
	Friend WithEvents lblMessage As Windows.Forms.Label
	Friend WithEvents TableLayoutPanel3 As Windows.Forms.TableLayoutPanel
	Friend WithEvents TableLayoutPanel2 As Windows.Forms.TableLayoutPanel
	Friend WithEvents lblInvite As Windows.Forms.Label
	Friend WithEvents TextBox1 As Windows.Forms.TextBox
	Friend WithEvents pbAccept As Windows.Forms.Button
	Friend WithEvents pbCancel As Windows.Forms.Button
End Class
