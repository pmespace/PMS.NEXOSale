Imports System.Runtime.InteropServices
Imports System.Windows.Forms
Imports NEXO
Imports NEXO.Client
Imports COMMON
Imports Microsoft.Win32
Imports System.IO

Public Enum Action
	_none
	_begin
	login
	logout
	payment
	_base
	readcheck
	printcheck
	_check
	refund
	reversal
	reconciliation
	abort
	_end
End Enum


Public Enum ActionResult
	_begin = -1
	unknown
	success
	decline
	cancel
	timeout
	exception
	_end
End Enum

<ComClass(NEXOSALE.ClassId, NEXOSALE.InterfaceId, NEXOSALE.EventsId)>
Public Class NEXOSALE

#Region "GUID"
	Public Shadows Const ClassId As String = "C86AC303-6A19-4FE6-91CC-99D9BE369EE5"
	Public Shadows Const InterfaceId As String = "24B500EF-FCF4-4438-9541-2EEB99BEF014"
	Public Shadows Const EventsId As String = "CAA36F19-2D91-4121-8DC9-166BFF4A3D51"
#End Region

#Region "constructor"
	Public Sub New()
		MyBase.New()
		Initialise()
	End Sub
	Private Sub Initialise()
		_nexoclient = New NexoRetailerClient()
		_login = New NexoLogin
		_payment = New NexoPayment
		_refund = New NexoRefund
		_logout = New NexoLogout
		LoadSettings()
		UseBackup = False
		If Not Connect() Then
			UseBackup = True
			UseBackup = Connect()
		End If
	End Sub
#End Region

#Region "public properties"
	<DispId(1)>
	Public ReadOnly Property IsLogged As Boolean
		Get
			Return _islogged
		End Get
	End Property
	Friend _islogged As Boolean = False

	<DispId(2)>
	Public Property Amount As UInteger
		Get
			Return _amount
		End Get
		Set(value As UInteger)
			_amount = value
		End Set
	End Property
	Private _amount As UInteger = 0

	<DispId(3)>
	Public Property TransactionID As String
		Get
			Return _transactionid
		End Get
		Set(value As String)
			_transactionid = value
		End Set
	End Property
	Private _transactionid As String = Nothing

	<DispId(4)>
	Public Property TransactionTimestamp As String
		Get
			Return _transactiontimestamp
		End Get
		Set(value As String)
			_transactiontimestamp = value
		End Set
	End Property
	Private _transactiontimestamp As String = Nothing

	<DispId(6)>
	Public Property MainWindow As IntPtr
		Get
			Return _mainwindow
		End Get
		Set(value As IntPtr)
			_mainwindow = value
		End Set
	End Property
	Private _mainwindow As IntPtr = IntPtr.Zero

	<DispId(7)>
	Public Property Settings As Settings
		Get
			Return _settings
		End Get
		Set(value As Settings)
			_settings = value
			If Not IsNothing(_settings) AndAlso _settings.LogFileName <> CLog.LogFileName Then
				CLog.LogFileName = _settings.LogFileName
			End If
		End Set
	End Property
	Private _settings As Settings = Nothing

	<DispId(8)>
	Public Property SaleID As String
		Get
			Return _saleid
		End Get
		Set(value As String)
			_saleid = value
		End Set
	End Property
	Private _saleid As String = String.Empty

	<DispId(9)>
	Public Property POIID As String
		Get
			Return _poiid
		End Get
		Set(value As String)
			_poiid = value
		End Set
	End Property
	Private _poiid As String = String.Empty

	<DispId(10)>
	Public ReadOnly Property Login As NexoLogin
		Get
			Return _login
		End Get
	End Property
	Private _login As NexoLogin

	<DispId(11)>
	Public ReadOnly Property Payment As NexoPayment
		Get
			Return _payment
		End Get
	End Property
	Private _payment As NexoPayment

	<DispId(12)>
	Public ReadOnly Property Refund As NexoRefund
		Get
			Return _refund
		End Get
	End Property
	Private _refund As NexoRefund

	<DispId(13)>
	Public ReadOnly Property Logout As NexoLogout
		Get
			Return _logout
		End Get
	End Property
	Private _logout As NexoLogout

	<DispId(14)>
	Public ReadOnly Property NexoClient As NexoRetailerClient
		Get
			Return _nexoclient
		End Get
	End Property
	Private _nexoclient As NexoRetailerClient

	<DispId(15)>
	Public ReadOnly Property Connected() As Boolean
		Get
			Return NexoClient.Connected
		End Get
	End Property

	<DispId(16)>
	Public ReadOnly Property Success As Boolean
		Get
			Return _success
		End Get
	End Property
	Private _success As Boolean = False

	<DispId(17)>
	Public ReadOnly Property POITransactionID As String
		Get
			Return _poitransactionid
		End Get
	End Property
	Private _poitransactionid As String = Nothing

	<DispId(18)>
	Public ReadOnly Property POITransactionTimestamp As String
		Get
			Return _poitransactiontimestamp
		End Get
	End Property
	Private _poitransactiontimestamp As String = Nothing

	<DispId(19)>
	Public ReadOnly Property OriginalPOITransactionID As String
		Get
			Return _originalpoitransactionid
		End Get
	End Property
	Private _originalpoitransactionid As String = Nothing

	<DispId(20)>
	Public ReadOnly Property OriginalPOITransactionTimestamp As String
		Get
			Return _originalpoitransactiontimestamp
		End Get
	End Property
	Private _originalpoitransactiontimestamp As String = Nothing

	<DispId(21)>
	Public Property UseBackup As Boolean
		Get
			Return _usebackup
		End Get
		Set(value As Boolean)
			_usebackup = value
		End Set
	End Property
	Private _usebackup As Boolean = False

	<DispId(22)>
	Public Property LogoutOnTerminate As Boolean
		Get
			Return _logoutonterminate
		End Get
		Set(value As Boolean)
			_logoutonterminate = value
		End Set
	End Property
	Private _logoutonterminate As Boolean = False

#End Region

#Region "public methods"
	''' <summary>
	''' Display settings and allows to set them
	''' </summary>
	<DispId(100)>
	Public Sub DisplaySettings(useAdvancedSettings As Boolean)
		Dim f As New FSettings(useAdvancedSettings)
		f.UseBackup = UseBackup
		Select Case f.ShowDialog()
			Case DialogResult.OK
				Settings = f.Settings
				CLog.LogFileName = Settings.LogFileName
				UseBackup = f.UseBackup
		End Select
		f.Dispose()
	End Sub
	''' <summary>
	''' Display processing window
	''' </summary>
	''' <param name="theAction">Action to perform <see cref="Action"/></param>
	''' <returns></returns>
	<DispId(101)>
	Public Function DisplayProcessing(theAction As Action) As ActionResult
		Dim res As ActionResult = ActionResult.unknown
		If ((Action.payment = theAction Or Action.refund = theAction Or Action.reversal = theAction) AndAlso 0 <> Amount) OrElse
			(Action.payment <> theAction AndAlso Action.refund <> theAction AndAlso Action.reversal <> theAction) Then
			Dim f As Boolean = True
			Dim localCurrency As NexoCurrency = Nothing
			Dim localAmount As NexoSimpleAmount = Nothing
			Select Case theAction
				Case Action.login, Action.logout
				Case Action.payment, Action.refund, Action.reversal
					localCurrency = New NexoCurrency With {.DecimalPlaces = Settings.Decimals, .Value = Settings.Currency}
					localAmount = New NexoSimpleAmount With {.DecimalPlaces = localCurrency.DecimalPlaces, .AsDecimal = Amount / 10 ^ localCurrency.DecimalPlaces}
				Case Else
					f = False
			End Select
			If f Then
				Dim poi As POISettings
				If UseBackup Then poi = Settings.Backup Else poi = Settings.Primary
				'prepare the operation object
				Dim operation As New FProcessing.NexoOperation With
					{
					.action = theAction,
					.currency = localCurrency,
					.amount = localAmount,
					.saleTransactionID = New TransactionIdentificationType() With
						{
						.TransactionID = TransactionID,
						.TimeStamp = TransactionTimestamp
						},
					.originalPOITransactionID = New TransactionIdentificationType() With
						{
						.TransactionID = OriginalPOITransactionID,
						.TimeStamp = OriginalPOITransactionTimestamp
						},
					.POI = poi
					}
				Dim fp As New FProcessing(Me, operation)
				Select Case fp.ShowDialog()
					Case DialogResult.Yes
						'retrieve potentially updated data
						TransactionID = operation.saleTransactionID.TransactionID
						TransactionID = operation.saleTransactionID.TimeStamp
						_poitransactionid = operation.poiTransactionID.TransactionID
						_poitransactiontimestamp = operation.poiTransactionID.TimeStamp
						res = ActionResult.success
					Case DialogResult.No
						res = ActionResult.decline
					Case DialogResult.Cancel
						res = ActionResult.cancel
					Case DialogResult.Abort
						res = ActionResult.timeout
					Case Else
						res = ActionResult.unknown
				End Select
				fp.Dispose()
			End If
			Amount = 0
			TransactionID = Nothing
			TransactionTimestamp = Nothing
		Else
			DisplayProcessing = DialogResult.Abort
		End If
		Return res
	End Function
	''' <summary>
	''' Try to connect to the server
	''' </summary>
	''' <returns>True is connected, false otherwise</returns>
	<DispId(200)>
	Public Function Connect() As Boolean
		If Not Connected Then
			_islogged = False
			Dim poi As POISettings
			If UseBackup Then poi = Settings.Backup Else poi = Settings.Primary
			'If Connected Then Disconnect()
			If (Not String.IsNullOrEmpty(poi.ServerIP)) Then
				Dim clientSettings As New NexoRetailerClientSettings With {
				.StreamClientSettings = New CStreamClientSettings With {
					.IP = poi.ServerIP,
					.Port = poi.ServerPort}}
				Return NexoClient.Connect(clientSettings)
			End If
		End If
		Return Connected
	End Function
	<DispId(201)>
	Public Sub Disconnect()
		If Connected Then
			NexoClient.Disconnect()
		End If
	End Sub
	''' <summary>
	''' Allows retieving the settings file name
	''' </summary>
	''' <returns>The current settings file name</returns>
	<DispId(500)>
	Public Function SettingsFileName() As String
		Return SettingsFileNameEx()
	End Function

#End Region

#Region "private properties"
	Private folder As String = String.Empty
	Private Const DEFAULT_PORT As Integer = 2018
	Private Const SETTINGS_FILE_NAME As String = "nexocom.settings.json"
#End Region

#Region "private methods"
	Private Function SettingsFileNameEx() As String
		'return settings file name if it exsists nd has been read
		If Not IsNothing(Settings) AndAlso Not IsNothing(Settings.SettingsFileName) Then
			Return Settings.SettingsFileName
		End If

		Dim o As Object
		'if it doesn't let's search for it inside the registry
		Dim key As RegistryKey
		Try
			key = Registry.CurrentUser.CreateSubKey(Settings.REGISTRY_SECTION)
			If Not IsNothing(key) Then
				Try
					o = key.GetValue(Settings.REGISTRY_KEY_SETTINGS_FILE_NAME)
					If Not o Is Nothing AndAlso TestDir(o.ToString) Then
						'folder exsists and is writeable, we use that file name
						Return o.ToString
					End If
				Catch ex As Exception
				End Try
			End If
		Catch ex As Exception
		End Try

		'if not inside the registry let's try Documents folder
		Try
			o = System.Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments)
			'if invalid try to access the TEMP folder
			If Not o Is Nothing AndAlso Not String.IsNullOrEmpty(o.ToString) Then
				If o.ToString.EndsWith("\") Then
					Return o.ToString & Settings.DEFAULT_SETTINGS_FILE_NAME
				Else
					Return o.ToString & "\" & Settings.DEFAULT_SETTINGS_FILE_NAME
				End If
			End If
		Catch ex As Exception
		End Try

		'if not inside Documents let's try TEMP folder
		Try
			o = Path.GetTempPath
			'if invalid try to access the TEMP folder
			If Not o Is Nothing AndAlso Not String.IsNullOrEmpty(o.ToString) Then
				If o.ToString.EndsWith("\") Then
					Return o.ToString & Settings.DefaultSettingsFileName
				Else
					Return o.ToString & "\" & Settings.DEFAULT_SETTINGS_FILE_NAME
				End If
			End If
		Catch ex As Exception
		End Try

		'final default is current directory
		Return Settings.DEFAULT_SETTINGS_FILE_NAME_FOLDER & Settings.DEFAULT_SETTINGS_FILE_NAME
	End Function

	Private Function TestDir(fileNamed As String) As Boolean
		Try
			Dim fi As New FileInfo(fileNamed)
			Dim dir = CMisc.VerifyDirectory(fi.Directory.FullName, True, True)
			If Not IsNothing(dir) Then
				'folder exsists and is writeable, we use that file name
				Return True
			End If
		Catch ex As Exception
		End Try
		Return False
	End Function

	Private Sub LoadSettings()
		Dim json As New CJson(Of Settings)()
		json.FileName = SettingsFileName()
		Settings = json.ReadSettings()
		If IsNothing(Settings) Then
			Settings = New Settings
			Settings.SettingsFileName = json.FileName
			SaveSettings()
		End If
	End Sub

	Private Sub SaveSettings()
		Dim json As New CJson(Of Settings)()
		json.FileName = SettingsFileName()
		json.WriteSettings(Settings, True)
	End Sub

#End Region

#Region "window stack management"
	Private Class StackOfWindows
		Private lifo As Stack
		Public Sub New()
			lifo = New Stack
		End Sub
		Public Sub Push(value As IntPtr)
			If IntPtr.Zero <> value Then
				lifo.Push(value)
			End If
		End Sub
		Public Function Pop() As IntPtr
			Pop = IntPtr.Zero
			If 0 <> lifo.Count Then
				Pop = CType(lifo.Pop, IntPtr)
			End If
		End Function
		Public Function Peek() As IntPtr
			Peek = IntPtr.Zero
			If 0 <> lifo.Count Then
				Peek = CType(lifo.Peek, IntPtr)
			End If
		End Function
		ReadOnly Property Count() As Integer
			Get
				Return lifo.Count
			End Get
		End Property
	End Class
	Private windowsStack As New StackOfWindows
	Friend Function SetOwner(f As Form) As Boolean
		If IntPtr.Zero <> f.Handle Then
			If 0 <> windowsStack.Count Then
				Win32.SetWindowLongPtr(f.Handle, Win32.SWL.GWLP_HWNDPARENT, windowsStack.Peek)
			Else
				Win32.SetWindowLongPtr(f.Handle, Win32.SWL.GWLP_HWNDPARENT, MainWindow)
			End If
			SetOwner = True
			windowsStack.Push(f.Handle)
		Else
			SetOwner = False
		End If
	End Function
	Friend Sub ResetOwner(f As Form)
		If 0 <> windowsStack.Count Then
			windowsStack.Pop()
		End If
	End Sub
#End Region

End Class
