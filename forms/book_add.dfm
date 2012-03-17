object BookAddForm: TBookAddForm
  Left = 569
  Top = 393
  Width = 379
  Height = 628
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1085#1080#1075#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 112
    Width = 53
    Height = 13
    Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
  end
  object Label3: TLabel
    Left = 16
    Top = 128
    Width = 32
    Height = 13
    Caption = #1063#1080#1089#1083#1086
  end
  object Button1: TButton
    Left = 256
    Top = 560
    Width = 105
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 0
  end
  object Button2: TButton
    Left = 8
    Top = 560
    Width = 113
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 24
    Width = 337
    Height = 21
    DataField = 'last_name'
    DataSource = DataLibrary.DSReaders
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 56
    Width = 337
    Height = 21
    DataField = 'title'
    DataSource = DataLibrary.DSStreets
    ListField = 'street_id'
    ListSource = DataLibrary.DSReaders
    TabOrder = 3
  end
end
