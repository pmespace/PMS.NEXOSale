<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FSelectPrinter
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
		Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FSelectPrinter))
		Me.TableLayoutPanel1 = New System.Windows.Forms.TableLayoutPanel()
		Me.lbPrinters = New System.Windows.Forms.ListBox()
		Me.TableLayoutPanel2 = New System.Windows.Forms.TableLayoutPanel()
		Me.pbSelect = New System.Windows.Forms.Button()
		Me.pbClose = New System.Windows.Forms.Button()
		Me.TableLayoutPanel1.SuspendLayout()
		Me.TableLayoutPanel2.SuspendLayout()
		Me.SuspendLayout()
		'
		'TableLayoutPanel1
		'
		resources.ApplyResources(Me.TableLayoutPanel1, "TableLayoutPanel1")
		Me.TableLayoutPanel1.Controls.Add(Me.lbPrinters, 0, 0)
		Me.TableLayoutPanel1.Controls.Add(Me.TableLayoutPanel2, 0, 1)
		Me.TableLayoutPanel1.Name = "TableLayoutPanel1"
		'
		'lbPrinters
		'
		resources.ApplyResources(Me.lbPrinters, "lbPrinters")
		Me.lbPrinters.FormattingEnabled = True
		Me.lbPrinters.Name = "lbPrinters"
		'
		'TableLayoutPanel2
		'
		resources.ApplyResources(Me.TableLayoutPanel2, "TableLayoutPanel2")
		Me.TableLayoutPanel2.Controls.Add(Me.pbSelect, 1, 0)
		Me.TableLayoutPanel2.Controls.Add(Me.pbClose, 2, 0)
		Me.TableLayoutPanel2.Name = "TableLayoutPanel2"
		'
		'pbSelect
		'
		resources.ApplyResources(Me.pbSelect, "pbSelect")
		Me.pbSelect.Name = "pbSelect"
		Me.pbSelect.UseVisualStyleBackColor = True
		'
		'pbClose
		'
		resources.ApplyResources(Me.pbClose, "pbClose")
		Me.pbClose.Name = "pbClose"
		Me.pbClose.UseVisualStyleBackColor = True
		'
		'FSelectPrinter
		'
		Me.AcceptButton = Me.pbSelect
		resources.ApplyResources(Me, "$this")
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.ControlBox = False
		Me.Controls.Add(Me.TableLayoutPanel1)
		Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
		Me.MaximizeBox = False
		Me.MinimizeBox = False
		Me.Name = "FSelectPrinter"
		Me.TableLayoutPanel1.ResumeLayout(False)
		Me.TableLayoutPanel1.PerformLayout()
		Me.TableLayoutPanel2.ResumeLayout(False)
		Me.TableLayoutPanel2.PerformLayout()
		Me.ResumeLayout(False)
		Me.PerformLayout()

	End Sub

	Friend WithEvents TableLayoutPanel1 As Windows.Forms.TableLayoutPanel
	Friend WithEvents lbPrinters As Windows.Forms.ListBox
	Friend WithEvents TableLayoutPanel2 As Windows.Forms.TableLayoutPanel
	Friend WithEvents pbSelect As Windows.Forms.Button
	Friend WithEvents pbClose As Windows.Forms.Button
End Class
