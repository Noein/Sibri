object TakenBooksQForm: TTakenBooksQForm
  Left = 234
  Top = 251
  Width = 871
  Height = 524
  Caption = #1047#1072#1087#1088#1086#1089' '#1074#1079#1103#1090#1099#1093' '#1082#1085#1080#1075
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 233
    Height = 497
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 4
    object MonthCalendar: TMonthCalendar
      Left = 8
      Top = 96
      Width = 155
      Height = 161
      Date = 41006.696236666670000000
      ShowToday = False
      ShowTodayCircle = False
      TabOrder = 0
      OnClick = DBLookupComboBoxCatClick
    end
    object Memo1: TMemo
      Left = 8
      Top = 8
      Width = 233
      Height = 41
      BorderStyle = bsNone
      Color = clScrollBar
      Lines.Strings = (
        #1050#1085#1080#1075#1080' '#1085#1077#1082#1086#1090#1086#1088#1086#1081' '#1082#1072#1090#1077#1075#1086#1088#1080#1080','
        ' '#1082#1086#1090#1086#1088#1099#1077' '#1073#1099#1083#1080' '#1074#1079#1103#1090#1099' '#1079#1072' '#1091#1082#1072#1079#1072#1085#1085#1099#1081' '#1084#1077#1089#1103#1094)
      TabOrder = 1
    end
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 40
    Width = 57
    Height = 17
    Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
    TabOrder = 0
  end
  object DBLookupComboBoxCat: TDBLookupComboBox
    Left = 8
    Top = 56
    Width = 217
    Height = 21
    KeyField = 'id_Category'
    ListField = 'title'
    ListSource = DataLibrary.DSCategories
    TabOrder = 1
    OnClick = DBLookupComboBoxCatClick
  end
  object StaticText2: TStaticText
    Left = 8
    Top = 80
    Width = 37
    Height = 17
    Caption = #1052#1077#1089#1103#1094
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 233
    Top = 0
    Width = 630
    Height = 497
    Align = alClient
    DataSource = DataLibrary.DSQuery1
    TabOrder = 3
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
