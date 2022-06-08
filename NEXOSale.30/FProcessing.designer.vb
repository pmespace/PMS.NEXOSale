<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class FProcessing
	Inherits System.Windows.Forms.Form

	'Form remplace la méthode Dispose pour nettoyer la liste des composants.
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

	'Requise par le Concepteur Windows Form
	Private components As System.ComponentModel.IContainer

	'REMARQUE : la procédure suivante est requise par le Concepteur Windows Form
	'Elle peut être modifiée à l'aide du Concepteur Windows Form.  
	'Ne la modifiez pas à l'aide de l'éditeur de code.
	<System.Diagnostics.DebuggerStepThrough()>
	Private Sub InitializeComponent()
		Me.components = New System.ComponentModel.Container()
		Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FProcessing))
		Me.TableLayoutMain = New System.Windows.Forms.TableLayoutPanel()
		Me.pbCancel = New System.Windows.Forms.Button()
		Me.price = New System.Windows.Forms.Label()
		Me.message = New System.Windows.Forms.Label()
		Me.information = New System.Windows.Forms.Label()
		Me.timerBeforeTimeout = New System.Windows.Forms.Timer(Me.components)
		Me.timerBeforeAutoClose = New System.Windows.Forms.Timer(Me.components)
		Me.timerGlobal = New System.Windows.Forms.Timer(Me.components)
		Me.PrintDocument1 = New System.Drawing.Printing.PrintDocument()
		Me.TableLayoutMain.SuspendLayout()
		Me.SuspendLayout()
		'
		'TableLayoutMain
		'
		resources.ApplyResources(Me.TableLayoutMain, "TableLayoutMain")
		Me.TableLayoutMain.Controls.Add(Me.pbCancel, 0, 6)
		Me.TableLayoutMain.Controls.Add(Me.price, 0, 0)
		Me.TableLayoutMain.Controls.Add(Me.message, 0, 4)
		Me.TableLayoutMain.Controls.Add(Me.information, 0, 2)
		Me.TableLayoutMain.Name = "TableLayoutMain"
		'
		'pbCancel
		'
		resources.ApplyResources(Me.pbCancel, "pbCancel")
		Me.pbCancel.Name = "pbCancel"
		Me.pbCancel.TabStop = False
		Me.pbCancel.UseVisualStyleBackColor = True
		'
		'price
		'
		resources.ApplyResources(Me.price, "price")
		Me.price.Name = "price"
		'
		'message
		'
		resources.ApplyResources(Me.message, "message")
		Me.message.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
		Me.message.Name = "message"
		'
		'information
		'
		resources.ApplyResources(Me.information, "information")
		Me.information.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
		Me.information.Name = "information"
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
		resources.ApplyResources(Me, "$this")
		Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		Me.ControlBox = False
		Me.Controls.Add(Me.TableLayoutMain)
		Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
		Me.MaximizeBox = False
		Me.MinimizeBox = False
		Me.Name = "FProcessing"
		Me.ShowIcon = False
		Me.ShowInTaskbar = False
		Me.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide
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
	Friend WithEvents PrintDocument1 As Drawing.Printing.PrintDocument
	Friend WithEvents message As Windows.Forms.Label
	Friend WithEvents information As Windows.Forms.Label
End Class
