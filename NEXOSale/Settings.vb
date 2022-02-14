Imports System.Net.Security
Imports System.Runtime.InteropServices
Imports COMMON
Imports Microsoft.Win32

<ComClass(POISettings.ClassId, POISettings.InterfaceId, POISettings.EventsId)>
Public Class POISettings
#Region "GUID"
	Public Shadows Const ClassId As String = "0ACB497E-FD2B-48D5-A602-EDEC63137A2C"
	Public Shadows Const InterfaceId As String = "78192CA7-AD36-408B-B822-A2FDAA6FA65C"
	Public Shadows Const EventsId As String = "4F36AD5A-FA73-4910-8B2C-8F6A92910052"
#End Region

#Region "properties"
	Private Const DEFAULT_PORT = 2018
	<DispId(1)>
	Public Property ServerIP As String
		Get
			Return _serverip
		End Get
		Set(value As String)
			_serverip = value
		End Set
	End Property
	Private _serverip As String

	<DispId(2)>
	Public Property ServerPort As Decimal
		Get
			Return _serverport
		End Get
		Set(value As Decimal)
			_serverport = value
		End Set
	End Property
	Private _serverport As Decimal = DEFAULT_PORT

	<DispId(10)>
	Public Property PrintReceipt As Boolean
		Get
			Return _printreceipt
		End Get
		Set(value As Boolean)
			_printreceipt = value
		End Set
	End Property
	Private _printreceipt As Boolean = True

	<DispId(11)>
	Public Property PrintCustomerReceipt As Boolean
		Get
			Return _printcustomerreceipt
		End Get
		Set(value As Boolean)
			_printcustomerreceipt = value
		End Set
	End Property
	Private _printcustomerreceipt As Boolean = True

	<DispId(12)>
	Public Property PrintMerchantReceipt As Boolean
		Get
			Return _printmerchantreceipt
		End Get
		Set(value As Boolean)
			_printmerchantreceipt = value
		End Set
	End Property
	Private _printmerchantreceipt As Boolean = True

	<DispId(20)>
	Public Property Synchronous As Boolean
		Get
			Return _synchronous
		End Get
		Set(value As Boolean)
			_synchronous = value
		End Set
	End Property
	Private _synchronous As Boolean = False

	<DispId(30)>
	Public Property SupportsCancel As Boolean
		Get
			Return _supportscancel
		End Get
		Set(value As Boolean)
			_supportscancel = value
		End Set
	End Property
	Private _supportscancel As Boolean = False

	<DispId(31)>
	Public Property SupportsAbort As Boolean
		Get
			Return _supportsabort
		End Get
		Set(value As Boolean)
			_supportsabort = value
		End Set
	End Property
	Private _supportsabort As Boolean = False

	<DispId(32)>
	Public Property SupportsRefund As Boolean
		Get
			Return _supportsrefund
		End Get
		Set(value As Boolean)
			_supportsrefund = value
		End Set
	End Property
	Private _supportsrefund As Boolean = False

	<DispId(33)>
	Public Property SupportsReconciliation As Boolean
		Get
			Return _supportsreconciliation
		End Get
		Set(value As Boolean)
			_supportsreconciliation = value
		End Set
	End Property
	Private _supportsreconciliation As Boolean = False

	<DispId(34)>
	Public Property SupportsCheck As Boolean
		Get
			Return _supportscheck
		End Get
		Set(value As Boolean)
			_supportscheck = value
		End Set
	End Property
	Private _supportscheck As Boolean = False

	<DispId(50)>
	Public Property GeneralTimer As Integer
		Get
			Return _generaltimer
		End Get
		Set(value As Integer)
			_generaltimer = value
		End Set
	End Property
	Private _generaltimer As Integer = DEFAULT_GENERAL_TIMER
	Private Const DEFAULT_GENERAL_TIMER As UInteger = 15

	<DispId(51)>
	Public Property PaymentTimer As Integer
		Get
			Return _maxtimer
		End Get
		Set(value As Integer)
			_maxtimer = value
		End Set
	End Property
	Private _maxtimer As Integer = CStreamClientSettings.NO_TIMEOUT

	<DispId(52)>
	Public Property CheckTimer As Integer
		Get
			Return _checktimer
		End Get
		Set(value As Integer)
			_checktimer = value
		End Set
	End Property
	Private _checktimer As Integer = DEFAULT_CHECK_TIMER
	Private Const DEFAULT_CHECK_TIMER As UInteger = 30

	<DispId(53)>
	Public ReadOnly Property IsValid As Boolean
		Get
			Return Not String.IsNullOrEmpty(ServerIP) AndAlso 0 <> ServerPort
		End Get
	End Property
#End Region

#Region "methods"
#End Region

End Class

'<ComClass(CardScheme.ClassId, CardScheme.InterfaceId, CardScheme.EventsId)>
Public Class CardScheme
	Inherits Dictionary(Of String, List(Of String))

#Region "GUID"
	Public Shadows Const ClassId As String = "06F6DFC2-2504-47B5-945C-9526AE7A5386"
	Public Shadows Const InterfaceId As String = "C5B4E0EF-148D-4C66-B118-DF5C6C36FF41"
	Public Shadows Const EventsId As String = "E88593D2-D655-41F4-BEEA-2AD595EDB811"
#End Region

	'<DispId(1)>
	'Public Property Name As String
	'	Get
	'		Return _name
	'	End Get
	'	Set(value As String)
	'		_name = value
	'	End Set
	'End Property
	'Private _name As String = Nothing
	'<DispId(2)>
	'Public Property Tags As List(Of String)
	'	Get
	'		Return _tags
	'	End Get
	'	Set(value As List(Of String))
	'		If Not IsNothing(value) Then
	'			_tags = value
	'		Else
	'			_tags.Clear()
	'		End If
	'	End Set
	'End Property
	'Private _tags As New List(Of String)
End Class

<ComClass(Settings.ClassId, Settings.InterfaceId, Settings.EventsId)>
Public Class Settings
#Region "GUID"
	Public Shadows Const ClassId As String = "CA6F62F3-0D1D-49C0-A8C4-BB46E5390931"
	Public Shadows Const InterfaceId As String = "56D0D286-89A1-403D-A3CD-F73F2173D7AB"
	Public Shadows Const EventsId As String = "57A50012-17B6-42CE-87AF-424ED3049E53"
#End Region

#Region "constructor"
	Public Sub New()
		Primary = New POISettings
		Backup = New POISettings
	End Sub
#End Region

#Region "properties"
	<DispId(1)>
	Public Property SaleID As String
		Get
			Return _saleid
		End Get
		Set(value As String)
			_saleid = value
		End Set
	End Property
	Private _saleid As String

	<DispId(2)>
	Public Property SaleIDUseIP As Boolean
		Get
			Return _saleiduseip
		End Get
		Set(value As Boolean)
			_saleiduseip = value
		End Set
	End Property
	Private _saleiduseip As Boolean

	<DispId(3)>
	Public Property POIID As String
		Get
			Return _poiid
		End Get
		Set(value As String)
			_poiid = value
		End Set
	End Property
	Private _poiid As String

	<DispId(4)>
	Public Property POIIDUseIP As Boolean
		Get
			Return _poiiduseip
		End Get
		Set(value As Boolean)
			_poiiduseip = value
		End Set
	End Property
	Private _poiiduseip As Boolean

	<DispId(10)>
	Public Property ApplicationName As String
		Get
			Return _applicationname
		End Get
		Set(value As String)
			_applicationname = value
		End Set
	End Property
	Private _applicationname As String

	<DispId(11)>
	Public Property ManufacturerName As String
		Get
			Return _manufacturername
		End Get
		Set(value As String)
			_manufacturername = value
		End Set
	End Property
	Private _manufacturername As String

	<DispId(12)>
	Public Property SoftwareVersion As String
		Get
			Return _softwareversion
		End Get
		Set(value As String)
			_softwareversion = value
		End Set
	End Property
	Private _softwareversion As String

	<DispId(13)>
	Public Property CertificationCode As String
		Get
			Return _certificationcode
		End Get
		Set(value As String)
			_certificationcode = value
		End Set
	End Property
	Private _certificationcode As String

	<DispId(20)>
	Public Property Currency As String
		Get
			Return _currency
		End Get
		Set(value As String)
			_currency = value
		End Set
	End Property
	Private _currency As String

	<DispId(21)>
	Public Property Decimals As UInteger
		Get
			Return _decimals
		End Get
		Set(value As UInteger)
			_decimals = value
		End Set
	End Property
	Private _decimals As UInteger

	<DispId(30)>
	Public Property NoAutocloseOnError As Boolean
		Get
			Return _noautocloseonerror
		End Get
		Set(value As Boolean)
			_noautocloseonerror = value
		End Set
	End Property
	Private _noautocloseonerror As Boolean = True

	<DispId(31)>
	Public Property LogFileName As String
		Get
			Return _logfilename
		End Get
		Set(value As String)
			_logfilename = value
		End Set
	End Property
	Private _logfilename As String

	<DispId(50)>
	Public Property Autoclose As Boolean
		Get
			Return _autoclose
		End Get
		Set(value As Boolean)
			_autoclose = value
		End Set
	End Property
	Private _autoclose As Boolean = True

	<DispId(51)>
	Public Property AutocloseDelay As UInteger
		Get
			Return _autoclosedelay
		End Get
		Set(value As UInteger)
			_autoclosedelay = value
		End Set
	End Property
	Private _autoclosedelay As UInteger = 2

	<DispId(60)>
	Public Property Primary As POISettings
		Get
			Return _primary
		End Get
		Set(value As POISettings)
			_primary = value
		End Set
	End Property
	Private _primary As POISettings = Nothing

	<DispId(61)>
	Public Property Backup As POISettings
		Get
			Return _backup
		End Get
		Set(value As POISettings)
			_backup = value
		End Set
	End Property
	Private _backup As POISettings = Nothing

	<DispId(65)>
	Public Property AdminCode As String
		Get
			Return _admincode
		End Get
		Set(value As String)
			_admincode = value
		End Set
	End Property
	Private _admincode As String

	<DispId(66)>
	Public Property UseDate As Boolean
		Get
			Return _usedate
		End Get
		Set(value As Boolean)
			_usedate = value
		End Set
	End Property
	Private _usedate As Boolean

	<DispId(100)>
	Public Property GatewayIP As String
		Get
			Return _gatewayip
		End Get
		Set(value As String)
			_gatewayip = value
		End Set
	End Property
	Private _gatewayip As String = DEFAULT_GATEWAY_IP
	Public Const DEFAULT_GATEWAY_IP As String = "194.50.38.6"

	<DispId(101)>
	Public Property UserID As String
		Get
			Return _userid
		End Get
		Set(value As String)
			_userid = value
		End Set
	End Property
	Private _userid As String

	<DispId(102)>
	Public Property PWD As String
		Get
			Return _pwd
		End Get
		Set(value As String)
			_pwd = value
		End Set
	End Property
	Private _pwd As String

	<DispId(103)>
	Public Property ICCD As String
		Get
			Return _iccd
		End Get
		Set(value As String)
			_iccd = value
		End Set
	End Property
	Private _iccd As String

	<DispId(104)>
	Public Property POIPort As Decimal
		Get
			Return _poiport
		End Get
		Set(value As Decimal)
			_poiport = value
		End Set
	End Property
	Private _poiport As Decimal = DEFAULT_PORT
	Private Const DEFAULT_PORT = 2018

	<DispId(105)>
	Public Property GatewayPort As Decimal
		Get
			Return _gatewayport
		End Get
		Set(value As Decimal)
			_gatewayport = value
		End Set
	End Property
	Private _gatewayport As Decimal = DEFAULT_GATEWAY_PORT
	Public Const DEFAULT_GATEWAY_PORT As Decimal = 3470

	<DispId(106)>
	Public Property AllowedSslErrors As SslPolicyErrors
		Get
			Return _allowedsslerrors
		End Get
		Set(value As SslPolicyErrors)
			_allowedsslerrors = value
		End Set
	End Property
	Private _allowedsslerrors As SslPolicyErrors = SslPolicyErrors.None

	<DispId(107)>
	Public Property ServerName As String
		Get
			Return _servername
		End Get
		Set(value As String)
			_servername = value
		End Set
	End Property
	Private _servername As String = "sslstca.lyra-network.com"

	<DispId(200)>
	Public Property Picture As String
		Get
			Return _picture
		End Get
		Set(value As String)
			_picture = value
		End Set
	End Property
	Private _picture As String

	<DispId(201)>
	Public Property Printer As String
		Get
			Return _printer
		End Get
		Set(value As String)
			_printer = value
		End Set
	End Property
	Private _printer As String

	<DispId(202)>
	Public Property ReceiptFolder As String
		Get
			Return _receiptfolder
		End Get
		Set(value As String)
			_receiptfolder = value
		End Set
	End Property
	Private _receiptfolder As String

	<DispId(203)>
	Public Property MerchantTextToPrint As String
		Get
			Return _merchanttexttoprint
		End Get
		Set(value As String)
			_merchanttexttoprint = value
		End Set
	End Property
	Private _merchanttexttoprint As String

	<DispId(250)>
	Public Property SaveReceipts As Boolean
		Get
			Return _savereceipts
		End Get
		Set(value As Boolean)
			_savereceipts = value
		End Set
	End Property
	Private _savereceipts As Boolean

	<DispId(251)>
	Public Property ReuseMerchantReferenceIDAsTransactionID As Boolean
		Get
			Return _reusemerchantreferenceidastransactionid
		End Get
		Set(value As Boolean)
			_reusemerchantreferenceidastransactionid = value
		End Set
	End Property
	Private _reusemerchantreferenceidastransactionid As Boolean = True

	<DispId(252)>
	Public Property IndicateBrand As Boolean
		Get
			Return _indicatebrand
		End Get
		Set(value As Boolean)
			_indicatebrand = value
		End Set
	End Property
	Private _indicatebrand As Boolean = True

	<DispId(253)>
	Public Property AllowOfflinePOI As Boolean
		Get
			Return _allowofflinepoi
		End Get
		Set(value As Boolean)
			_allowofflinepoi = value
		End Set
	End Property
	Private _allowofflinepoi As Boolean = True

	''' <summary>
	''' Allows hiding the nexo messages while processing an operation
	''' </summary>
	''' <returns></returns>
	<DispId(254)>
	Public Property HideNexoMessagesWhenProcessing As Boolean
		Get
			Return _hidenexomessageswhenprocessing
		End Get
		Set(value As Boolean)
			_hidenexomessageswhenprocessing = value
		End Set
	End Property
	Private _hidenexomessageswhenprocessing As Boolean = True

	''' <summary>
	''' Allows indicating a Login must always be performed before performing running the service
	''' </summary>
	''' <returns></returns>
	<DispId(255)>
	Public Property AlwaysLogToPOI As Boolean
		Get
			Return _alwayslogtopoi
		End Get
		Set(value As Boolean)
			_alwayslogtopoi = value
		End Set
	End Property
	Private _alwayslogtopoi As Boolean = True

	Public Property CardSchemes As CardScheme
		Get
			Return _cardschemes
		End Get
		Set(value As CardScheme)
			If Not IsNothing(value) Then
				_cardschemes = value
			Else
				_cardschemes.Clear()
			End If
		End Set
	End Property
	Private _cardschemes As New CardScheme

	'usable only inside the component
	''' <summary>
	''' Indicates to use connection through GPRS
	''' </summary>
	''' <returns></returns>
	Friend Property UseGPRS As Boolean
	''' <summary>
	''' Indicates the POI is offline
	''' </summary>
	''' <returns></returns>
	Friend Property POIIsOffline As Boolean

#End Region

#Region "methods"
	Public Const REGISTRY_SECTION As String = "Software\PMS\NexoSale\"
	<DispId(500)>
	Public Function RegistryEntry() As String
		Return REGISTRY_SECTION
	End Function

	Public Const REGISTRY_KEY_SETTINGS_FILE_NAME As String = "SettingsFileName"
	<DispId(501)>
	Public Function RegistryKeySettingsFileName() As String
		Return REGISTRY_KEY_SETTINGS_FILE_NAME
	End Function

	Public Const DEFAULT_SETTINGS_FILE_NAME As String = "nexosale.settings.json"
	<DispId(502)>
	Public Function DefaultSettingsFileName() As String
		Return DEFAULT_SETTINGS_FILE_NAME
	End Function

	Public Const DEFAULT_SETTINGS_FILE_NAME_FOLDER As String = ".\"
	<DispId(503)>
	Public Function DefaultSettingsFolder() As String
		Return DEFAULT_SETTINGS_FILE_NAME_FOLDER
	End Function
#End Region

End Class
