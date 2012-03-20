object ReaderSearchForm: TReaderSearchForm
  Left = 483
  Top = 416
  Width = 502
  Height = 209
  Caption = #1055#1086#1080#1089#1082
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 176
    Top = 96
    Width = 209
    Height = 73
    TabOrder = 12
  end
  object LabeledEdit1: TLabeledEdit
    Left = 0
    Top = 16
    Width = 169
    Height = 21
    EditLabel.Width = 49
    EditLabel.Height = 13
    EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103
    TabOrder = 0
  end
  object LabeledEdit2: TLabeledEdit
    Left = 0
    Top = 56
    Width = 169
    Height = 21
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = #1048#1084#1103
    TabOrder = 1
  end
  object LabeledEdit3: TLabeledEdit
    Left = 0
    Top = 96
    Width = 169
    Height = 21
    EditLabel.Width = 47
    EditLabel.Height = 13
    EditLabel.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    TabOrder = 2
  end
  object LabeledEdit4: TLabeledEdit
    Left = 176
    Top = 56
    Width = 169
    Height = 21
    EditLabel.Width = 84
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072
    TabOrder = 3
  end
  object DateTimePicker1: TDateTimePicker
    Left = 184
    Top = 128
    Width = 89
    Height = 21
    Date = 40987.874910115740000000
    Time = 40987.874910115740000000
    TabOrder = 4
  end
  object StaticText1: TStaticText
    Left = 184
    Top = 104
    Width = 83
    Height = 17
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
    TabOrder = 5
  end
  object RadioGroup1: TRadioGroup
    Left = 280
    Top = 104
    Width = 97
    Height = 57
    TabOrder = 6
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 176
    Top = 16
    Width = 169
    Height = 21
    KeyField = 'id_Street'
    ListField = 'title'
    ListSource = DataLibrary.DSStreets
    TabOrder = 7
  end
  object StaticText2: TStaticText
    Left = 176
    Top = 0
    Width = 36
    Height = 17
    Caption = #1059#1083#1080#1094#1072
    TabOrder = 8
  end
  object RadioGroup2: TRadioGroup
    Left = 392
    Top = 48
    Width = 97
    Height = 89
    Caption = '"'#1048'" '#1080#1083#1080' "'#1048#1051#1048'"'
    TabOrder = 9
  end
  object FindButton: TButton
    Left = 392
    Top = 8
    Width = 97
    Height = 33
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 10
    OnClick = FindButtonClick
  end
  object CancelButton: TButton
    Left = 392
    Top = 144
    Width = 97
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 11
    OnClick = CancelButtonClick
  end
end
