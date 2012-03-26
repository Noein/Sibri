object ApplyRestForm: TApplyRestForm
  Left = 548
  Top = 643
  Width = 288
  Height = 117
  Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1084#1077#1088#1091
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 24
    Width = 265
    Height = 21
    KeyField = 'id_Restriction'
    ListField = 'title'
    ListSource = DataLibrary.DSRestrictions
    TabOrder = 0
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 8
    Width = 34
    Height = 17
    Caption = #1052#1077#1088#1072':'
    TabOrder = 1
  end
  object ApplyButton: TButton
    Left = 184
    Top = 56
    Width = 89
    Height = 25
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = ApplyButtonClick
  end
  object CancelButton: TButton
    Left = 8
    Top = 56
    Width = 89
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = CancelButtonClick
  end
end
