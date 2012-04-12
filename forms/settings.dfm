object SettingsForm: TSettingsForm
  Left = 390
  Top = 317
  Width = 522
  Height = 336
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 514
    Height = 266
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 497
      Height = 81
      Caption = #1053#1072#1089#1090#1088#1086#1082#1080' '#1079#1072#1087#1088#1086#1089#1086#1074
      TabOrder = 0
      object Label2: TLabel
        Left = 8
        Top = 24
        Width = 482
        Height = 13
        Caption = 
          #1042#1099#1073#1077#1088#1080#1090#1077' '#1084#1077#1088#1091', '#1087#1086#1089#1083#1077' '#1087#1088#1080#1084#1077#1085#1077#1085#1080#1103' '#1082#1086#1090#1086#1088#1086#1081' '#1095#1080#1090#1072#1090#1077#1083#1100' '#1085#1077' '#1089#1076#1072#1074#1096#1080#1081' '#1082#1085#1080#1075 +
          #1091', '#1089#1095#1080#1090#1072#1077#1090#1089#1103' '#1076#1086#1083#1078#1085#1080#1082#1086#1084
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 8
        Top = 48
        Width = 145
        Height = 21
        KeyField = 'id_Sanction'
        ListField = 'title'
        ListSource = DataLibrary.DSSanctions
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 96
      Width = 497
      Height = 81
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1086#1090#1095#1105#1090#1086#1074
      TabOrder = 1
      object Label3: TLabel
        Left = 8
        Top = 24
        Width = 382
        Height = 13
        Caption = 
          #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1088#1080#1095#1080#1085#1091' '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1103', '#1082#1086#1090#1086#1088#1072#1103' '#1103#1074#1083#1103#1077#1090#1089#1103' '#1087#1088#1080#1095#1080#1085#1086#1081' '#1089#1087#1080#1089#1072#1085#1080#1103' ' +
          #1082#1085#1080#1075#1080
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 8
        Top = 48
        Width = 145
        Height = 21
        KeyField = 'id_Reason'
        ListField = 'title'
        ListSource = DataLibrary.DSReasons
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 184
      Width = 497
      Height = 81
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1080
      TabOrder = 2
      object Label4: TLabel
        Left = 8
        Top = 24
        Width = 448
        Height = 13
        Caption = 
          #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1088#1080#1095#1080#1085#1091' '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1103', '#1082#1086#1090#1086#1088#1072#1103' '#1074#1099#1073#1080#1088#1072#1077#1090#1089#1103' '#1082#1086#1075#1076#1072' '#1082#1085#1080#1075#1080' '#1088#1072#1079#1086 +
          #1073#1088#1072#1085#1099' '#1095#1080#1090#1072#1090#1077#1083#1103#1084#1080
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 8
        Top = 48
        Width = 145
        Height = 21
        KeyField = 'id_Reason'
        ListField = 'title'
        ListSource = DataLibrary.DSReasons
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 266
    Width = 514
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Button1: TButton
      Left = 416
      Top = 8
      Width = 91
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 8
      Width = 97
      Height = 25
      Caption = #1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1077
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
