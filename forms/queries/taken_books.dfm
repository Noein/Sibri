object TakenBooksQForm: TTakenBooksQForm
  Left = 195
  Top = 177
  Width = 854
  Height = 678
  Caption = #1047#1072#1087#1088#1086#1089' '#1074#1079#1103#1090#1099#1093' '#1082#1085#1080#1075
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
    Left = 0
    Top = 0
    Width = 846
    Height = 89
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 8
    object Label1: TLabel
      Left = 4
      Top = 8
      Width = 365
      Height = 13
      Caption = 
        #1050#1085#1080#1075#1080' '#1085#1077#1082#1086#1090#1086#1088#1086#1081' '#1082#1072#1090#1077#1075#1086#1088#1080#1080', '#1082#1086#1090#1086#1088#1099#1077' '#1073#1099#1083#1080' '#1074#1079#1103#1090#1099' '#1079#1072' '#1091#1082#1072#1079#1072#1085#1085#1099#1081' '#1087#1077#1088#1080#1086 +
        #1076
    end
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 24
    Width = 57
    Height = 17
    Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
    TabOrder = 0
  end
  object DBLookupComboBoxCat: TDBLookupComboBox
    Left = 8
    Top = 40
    Width = 145
    Height = 21
    KeyField = 'id_Category'
    ListField = 'title'
    ListSource = DataLibrary.DSCategories
    TabOrder = 1
    OnClick = DBLookupComboBoxCatClick
  end
  object StaticText2: TStaticText
    Left = 184
    Top = 24
    Width = 42
    Height = 17
    Caption = #1055#1077#1088#1080#1086#1076
    TabOrder = 2
  end
  object DateTimePickerFrom: TDateTimePicker
    Left = 200
    Top = 40
    Width = 186
    Height = 21
    Date = 40994.748348935190000000
    Time = 40994.748348935190000000
    TabOrder = 3
    OnChange = DBLookupComboBoxCatClick
  end
  object DateTimePickerTo: TDateTimePicker
    Left = 416
    Top = 40
    Width = 186
    Height = 21
    Date = 40994.748366898150000000
    Time = 40994.748366898150000000
    TabOrder = 4
    OnChange = DBLookupComboBoxCatClick
  end
  object StaticText3: TStaticText
    Left = 184
    Top = 40
    Width = 11
    Height = 17
    Caption = #1057
    TabOrder = 5
  end
  object StaticText4: TStaticText
    Left = 392
    Top = 40
    Width = 18
    Height = 17
    Caption = #1055#1086
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 846
    Height = 562
    Align = alClient
    DataSource = DataLibrary.DSQuery1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'title'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'author'
        Title.Caption = #1040#1074#1090#1086#1088
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'year'
        Title.Caption = #1043#1086#1076' '#1080#1079#1076#1072#1085#1080#1103
        Width = 100
        Visible = True
      end>
  end
end
