object ReaderSearchForm: TReaderSearchForm
  Left = 470
  Top = 459
  Width = 372
  Height = 253
  Caption = #1055#1086#1080#1089#1082' '#1095#1080#1090#1072#1090#1077#1083#1103
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
  object FindButton: TButton
    Left = 256
    Top = 176
    Width = 97
    Height = 33
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 0
    OnClick = FindButtonClick
  end
  object ClearButton: TButton
    Left = 256
    Top = 136
    Width = 97
    Height = 33
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 1
    OnClick = ClearButtonClick
  end
  object LabeledEdit1: TLabeledEdit
    Left = 8
    Top = 24
    Width = 169
    Height = 21
    EditLabel.Width = 49
    EditLabel.Height = 13
    EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103
    TabOrder = 2
  end
  object StaticText2: TStaticText
    Left = 184
    Top = 8
    Width = 36
    Height = 17
    Caption = #1059#1083#1080#1094#1072
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 184
    Top = 24
    Width = 169
    Height = 21
    KeyField = 'id_Street'
    ListField = 'title'
    ListSource = DataLibrary.DSStreets
    TabOrder = 4
  end
  object LabeledEdit4: TLabeledEdit
    Left = 184
    Top = 64
    Width = 169
    Height = 21
    EditLabel.Width = 84
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072
    TabOrder = 5
  end
  object LabeledEdit2: TLabeledEdit
    Left = 8
    Top = 64
    Width = 169
    Height = 21
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = #1048#1084#1103
    TabOrder = 6
  end
  object LabeledEdit3: TLabeledEdit
    Left = 8
    Top = 104
    Width = 169
    Height = 21
    EditLabel.Width = 47
    EditLabel.Height = 13
    EditLabel.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    TabOrder = 7
  end
  object DateTimePicker1: TDateTimePicker
    Left = 8
    Top = 152
    Width = 89
    Height = 21
    Date = 40987.874910115740000000
    Time = 40987.874910115740000000
    TabOrder = 8
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 128
    Width = 83
    Height = 17
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
    TabOrder = 9
  end
  object BirthRadioGroup: TRadioGroup
    Left = 8
    Top = 176
    Width = 129
    Height = 33
    Columns = 3
    Items.Strings = (
      '>'
      '<'
      '=')
    TabOrder = 10
  end
  object Button1: TButton
    Left = 256
    Top = 96
    Width = 97
    Height = 33
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 11
    OnClick = CancelButtonClick
  end
end
