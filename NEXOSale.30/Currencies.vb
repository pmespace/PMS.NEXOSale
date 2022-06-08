Imports System.Runtime.InteropServices
Imports System.Collections.Generic
Imports NEXO

<ComClass(Currency.ClassId, Currency.InterfaceId, Currency.EventsId)>
Public Class Currency
#Region "GUID"
	Public Shadows Const ClassId As String = "A0F233DB-6682-4DC2-9C06-107077CC6717"
	Public Shadows Const InterfaceId As String = "9457A49D-F7C7-4F70-A712-9F2652E09C3A"
	Public Shadows Const EventsId As String = "F49E1AA8-93FD-4F48-929D-53702044DD30"
#End Region

#Region "properties"
	Private currency As NexoCurrency = NexoCurrency.DefaultCurrency
	<DispId(1)>
	Public Property Name As String
		Get
			Return currency.Value
		End Get
		Set(value As String)
			If Name = value Then Return
			If String.IsNullOrEmpty(value) Then
				currency = NexoCurrency.DefaultCurrency()
			Else
				currency = New NexoCurrency() With {.Value = value}
			End If
		End Set
	End Property

	<DispId(2)>
	Public Property Decimals As UInteger
		Get
			Return currency.DecimalPlaces
		End Get
		Set(value As UInteger)
			currency.DecimalPlaces = value
		End Set
	End Property

	<DispId(100)>
	Public Overrides Function ToString() As String
		'Return $"{Name} ({Decimals})"
		Return $"{Name}"
	End Function

	Public Overloads Function Equals(obj As Currency) As Boolean
		If obj.Name = Name Then
			Return True
		End If
		Return False
	End Function

	Public Overloads Shared Function Equals(obj1 As Currency, obj2 As Currency) As Boolean
		If obj1.Name = obj2.Name Then
			Return True
		End If
		Return False
	End Function
#End Region
End Class

'<ComClass(Currencies.ClassId, Currencies.InterfaceId, Currencies.EventsId)>
<ComVisible(False)>
Public Class Currencies
	Inherits Dictionary(Of String, Currency)
#Region "GUID"
	Public Shadows Const ClassId As String = "91FC75BE-B0EE-40FA-AA38-3CE8D8765DA9"
	Public Shadows Const InterfaceId As String = "B6AE48FC-76A9-4D92-8779-5EDBC03E1F26"
	Public Shadows Const EventsId As String = "EED5B850-3E90-419B-A036-45270E9CBDF3"
#End Region
End Class
