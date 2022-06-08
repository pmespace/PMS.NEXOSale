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
		Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FWait))
		Me.panelMain = New System.Windows.Forms.TableLayoutPanel()
		Me.Label1 = New System.Windows.Forms.Label()
		Me.pbClose = New System.Windows.Forms.Button()
		Me.Label2 = New System.Windows.Forms.Label()
		Me.panelMain.SuspendLayout()
		Me.SuspendLayout()
		'
		'panelMain
		'
		resources.ApplyResources(Me.panelMain, "panelMain")
		Me.panelMain.Controls.Add(Me.Label1, 0, 0)
		Me.panelMain.Controls.Add(Me.pbClose, 0, 2)
		Me.panelMain.Controls.Add(Me.Label2, 0, 1)
		Me.panelMain.Name = "panelMain"
		'
		'Label1
		'
		resources.ApplyResources(Me.Label1, "Label1")
		Me.Label1.Name = "Label1"
		'
		'pbClose
		'
		resources.ApplyResources(Me.pbClose, "pbClose")
		Me.pbClose.Name = "pbClose"
		Me.pbClose.UseVisualStyleBackColor = True
		'
		'Label2
		'
		resources.ApplyResources(Me.Label2, "Label2")
		Me.Label2.Name = "Label2"
		'
		'FWait
		'
		resources.ApplyResources(Me, "$this")
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.ControlBox = False
		Me.Controls.Add(Me.panelMain)
		Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
		Me.MaximizeBox = False
		Me.MinimizeBox = False
		Me.Name = "FWait"
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
