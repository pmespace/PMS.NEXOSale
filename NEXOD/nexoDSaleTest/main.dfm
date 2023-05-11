object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'NEXOSale test'
  ClientHeight = 203
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 88
    Width = 77
    Height = 13
    Caption = 'Amount in cents'
  end
  object Label2: TLabel
    Left = 264
    Top = 88
    Width = 60
    Height = 13
    Caption = 'Transaction:'
  end
  object Label3: TLabel
    Left = 262
    Top = 113
    Width = 34
    Height = 13
    Caption = 'Result:'
  end
  object Label4: TLabel
    Left = 264
    Top = 145
    Width = 32
    Height = 13
    Caption = 'Brand:'
  end
  object lblResult: TLabel
    Left = 330
    Top = 112
    Width = 39
    Height = 13
    Caption = '_result_'
  end
  object lblBrand: TLabel
    Left = 330
    Top = 145
    Width = 40
    Height = 13
    Caption = '_brand_'
  end
  object Label5: TLabel
    Left = 264
    Top = 177
    Width = 24
    Height = 13
    Caption = 'PAN:'
  end
  object lblPAN: TLabel
    Left = 330
    Top = 177
    Width = 30
    Height = 13
    Caption = '_pan_'
  end
  object pbSettings: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Settings'
    TabOrder = 0
    OnClick = pbSettingsClick
  end
  object cbAdvanced: TCheckBox
    Left = 113
    Top = 12
    Width = 122
    Height = 17
    Caption = 'Advanced settings'
    TabOrder = 1
  end
  object cbUseBackup: TCheckBox
    Left = 113
    Top = 39
    Width = 122
    Height = 17
    Caption = 'Use backup'
    TabOrder = 2
    OnClick = cbUseBackupClick
  end
  object efAmount: TEdit
    Left = 113
    Top = 85
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '1'
  end
  object cbUseAmount: TCheckBox
    Left = 112
    Top = 112
    Width = 122
    Height = 17
    Caption = 'Use amount'
    TabOrder = 4
    OnClick = cbUseBackupClick
  end
  object cbxServices: TComboBox
    Left = 330
    Top = 85
    Width = 145
    Height = 21
    TabOrder = 5
    Text = 'cbxServices'
  end
  object cbInternalPrinting: TCheckBox
    Left = 264
    Top = 39
    Width = 122
    Height = 17
    Caption = 'Internal printing'
    TabOrder = 6
    OnClick = cbUseBackupClick
  end
  object Button1: TButton
    Left = 479
    Top = 83
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 7
    OnClick = Button1Click
  end
end
