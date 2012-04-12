object BookSearchForm: TBookSearchForm
  Left = 412
  Top = 362
  Width = 483
  Height = 245
  Caption = #1055#1086#1080#1089#1082' '#1082#1085#1080#1075#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabeledEditTitle: TLabeledEdit
    Left = 0
    Top = 24
    Width = 169
    Height = 21
    EditLabel.Width = 50
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    TabOrder = 0
  end
  object LabeledEditISBN: TLabeledEdit
    Left = 0
    Top = 64
    Width = 169
    Height = 21
    EditLabel.Width = 25
    EditLabel.Height = 13
    EditLabel.Caption = 'ISBN'
    TabOrder = 1
  end
  object LabeledEditBBC: TLabeledEdit
    Left = 0
    Top = 104
    Width = 169
    Height = 21
    EditLabel.Width = 21
    EditLabel.Height = 13
    EditLabel.Caption = #1041#1041#1050
    TabOrder = 2
  end
  object DateTimePicker: TDateTimePicker
    Left = 176
    Top = 104
    Width = 89
    Height = 21
    Date = 40987.874910115740000000
    Time = 40987.874910115740000000
    TabOrder = 3
  end
  object StaticText1: TStaticText
    Left = 176
    Top = 88
    Width = 75
    Height = 17
    Caption = #1044#1072#1090#1072' '#1080#1079#1076#1072#1085#1080#1103
    TabOrder = 4
  end
  object PubRadioGroup: TRadioGroup
    Left = 176
    Top = 128
    Width = 129
    Height = 41
    Columns = 3
    Items.Strings = (
      '>'
      '<'
      '=')
    TabOrder = 5
  end
  object DBLookupComboBoxCat: TDBLookupComboBox
    Left = 176
    Top = 24
    Width = 169
    Height = 21
    KeyField = 'id_Category'
    ListField = 'title'
    ListSource = DataLibrary.DSCategories
    TabOrder = 6
  end
  object StaticText2: TStaticText
    Left = 176
    Top = 8
    Width = 57
    Height = 17
    Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
    TabOrder = 7
  end
  object FindButton: TButton
    Left = 352
    Top = 16
    Width = 97
    Height = 33
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 8
    OnClick = FindButtonClick
  end
  object CancelButton: TButton
    Left = 352
    Top = 144
    Width = 97
    Height = 33
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 9
    OnClick = CancelButtonClick
  end
  object LabeledEditUDC: TLabeledEdit
    Left = 0
    Top = 144
    Width = 169
    Height = 21
    EditLabel.Width = 24
    EditLabel.Height = 13
    EditLabel.Caption = #1059#1044#1050
    TabOrder = 10
  end
  object DBLookupComboBoxPub: TDBLookupComboBox
    Left = 176
    Top = 64
    Width = 169
    Height = 21
    KeyField = 'id_Publisher'
    ListField = 'title'
    ListSource = DataLibrary.DSPublishers
    TabOrder = 11
  end
  object StaticText3: TStaticText
    Left = 176
    Top = 48
    Width = 76
    Height = 17
    Caption = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086
    TabOrder = 12
  end
  object ClearButton: TButton
    Left = 352
    Top = 80
    Width = 97
    Height = 33
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 13
    OnClick = ClearButtonClick
  end
end
