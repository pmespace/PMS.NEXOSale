object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'NEXOSale test'
  ClientHeight = 42
  ClientWidth = 236
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
    Left = 89
    Top = 12
    Width = 122
    Height = 17
    Caption = 'Advanced settings'
    TabOrder = 1
  end
end
