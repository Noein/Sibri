object StatisticsQForm: TStatisticsQForm
  Left = 193
  Top = 159
  Width = 994
  Height = 717
  Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 986
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 8
      Width = 275
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1082#1085#1080#1075' '#1087#1086' '#1082#1072#1090#1077#1075#1086#1088#1080#1103#1084' '#1080' '#1074#1086#1079#1088#1072#1089#1090#1091' '#1095#1080#1090#1072#1090#1077#1083#1077#1081
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 986
    Height = 336
    Align = alClient
    DataSource = DataLibrary.DSQuery3
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 369
    Width = 986
    Height = 321
    Align = alBottom
    TabOrder = 2
  end
end
