object StatisticsQForm: TStatisticsQForm
  Left = 223
  Top = 361
  Width = 708
  Height = 421
  Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
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
    Width = 700
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 8
      Width = 283
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1082#1085#1080#1075' '#1087#1086' '#1082#1072#1090#1077#1075#1086#1088#1080#1103#1084' '#1080' '#1087#1088#1080#1095#1080#1085#1072#1084' '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1103
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 700
    Height = 361
    Align = alClient
    DataSource = DataLibrary.DSQuery3
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Count-id_Book'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1081
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sum-count'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1101#1082#1079#1077#1084#1087#1083#1103#1088#1086#1074
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CATEGORIES.title'
        Title.Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ABSENCE_REASONS.title'
        Title.Caption = #1055#1088#1080#1095#1080#1085#1072' '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1103
        Visible = True
      end>
  end
end
