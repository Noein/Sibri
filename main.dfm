object MainForm: TMainForm
  Left = 193
  Top = 149
  Width = 1084
  Height = 837
  Caption = 'Sibri'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1073
    Height = 769
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1041#1080#1073#1083#1080#1086#1090#1077#1082#1072
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 1065
        Height = 741
        ActivePage = TabSheet5
        Align = alClient
        TabOrder = 0
        object TabSheet5: TTabSheet
          Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1095#1080#1090#1072#1090#1077#1083#1103
          object Label1: TLabel
            Left = 8
            Top = 496
            Width = 70
            Height = 13
            Caption = #1042#1079#1103#1090#1099#1077' '#1082#1085#1080#1075#1080
          end
          object Label2: TLabel
            Left = 552
            Top = 496
            Width = 103
            Height = 13
            Caption = #1055#1088#1080#1084#1077#1085#1105#1085#1085#1099#1077' '#1084#1077#1088#1099
          end
          object DBNavigator1: TDBNavigator
            Left = 8
            Top = 392
            Width = 1040
            Height = 25
            TabOrder = 0
          end
          object DBGrid2: TDBGrid
            Left = 8
            Top = 512
            Width = 385
            Height = 120
            DataSource = DataLibrary.DSTakenBooks
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object LabeledEdit1: TLabeledEdit
            Left = 8
            Top = 24
            Width = 281
            Height = 21
            EditLabel.Width = 96
            EditLabel.Height = 13
            EditLabel.Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
            TabOrder = 2
          end
          object Button1: TButton
            Left = 376
            Top = 24
            Width = 121
            Height = 25
            Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081' '#1087#1086#1080#1089#1082
            TabOrder = 3
          end
          object Button2: TButton
            Left = 304
            Top = 24
            Width = 65
            Height = 25
            Caption = #1053#1072#1081#1090#1080
            TabOrder = 4
          end
          object DBGrid3: TDBGrid
            Left = 552
            Top = 512
            Width = 353
            Height = 121
            DataSource = DataLibrary.DSApplRestr
            TabOrder = 5
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object Button3: TButton
            Left = 400
            Top = 512
            Width = 137
            Height = 33
            Caption = #1042#1086#1079#1074#1088#1072#1090#1080#1090#1100' '#1082#1085#1080#1075#1091
            TabOrder = 6
          end
          object Button4: TButton
            Left = 400
            Top = 560
            Width = 137
            Height = 33
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1085#1080#1075#1091
            TabOrder = 7
          end
          object Button5: TButton
            Left = 920
            Top = 512
            Width = 129
            Height = 33
            Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1085#1086#1074#1091#1102
            TabOrder = 8
          end
          object Button6: TButton
            Left = 920
            Top = 560
            Width = 129
            Height = 33
            Caption = #1054#1095#1080#1089#1090#1080#1090#1100
            TabOrder = 9
          end
          object DBNavigator2: TDBNavigator
            Left = 8
            Top = 632
            Width = 380
            Height = 25
            DataSource = DataLibrary.DSTakenBooks
            TabOrder = 10
          end
          object DBNavigator3: TDBNavigator
            Left = 552
            Top = 632
            Width = 350
            Height = 25
            DataSource = DataLibrary.DSApplRestr
            TabOrder = 11
          end
          object Button7: TButton
            Left = 8
            Top = 440
            Width = 169
            Height = 33
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            TabOrder = 12
            OnClick = Button7Click
          end
          object Button8: TButton
            Left = 200
            Top = 440
            Width = 177
            Height = 33
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            TabOrder = 13
          end
          object Button9: TButton
            Left = 408
            Top = 440
            Width = 177
            Height = 33
            Caption = #1059#1076#1072#1083#1080#1090#1100
            TabOrder = 14
          end
          object DBGrid1: TDBGrid
            Left = 0
            Top = 64
            Width = 1041
            Height = 321
            DataSource = DataLibrary.DSReaders
            TabOrder = 15
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1050#1085#1080#1075#1080
          ImageIndex = 1
          object DBGrid4: TDBGrid
            Left = 16
            Top = 72
            Width = 1025
            Height = 369
            DataSource = DataLibrary.DSBooks
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object DBNavigator4: TDBNavigator
            Left = 16
            Top = 440
            Width = 1020
            Height = 25
            DataSource = DataLibrary.DSBooks
            TabOrder = 1
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      ImageIndex = 1
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 1065
        Height = 741
        ActivePage = TabSheet8
        Align = alClient
        TabOrder = 0
        object TabSheet8: TTabSheet
          Caption = #1040#1074#1090#1086#1088#1099
          ImageIndex = 1
          object DBGrid6: TDBGrid
            Left = 24
            Top = 80
            Width = 993
            Height = 289
            DataSource = DataLibrary.DSAuthors
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object DBNavigator6: TDBNavigator
            Left = 24
            Top = 376
            Width = 990
            Height = 33
            DataSource = DataLibrary.DSAuthors
            TabOrder = 1
          end
        end
        object TabSheet3: TTabSheet
          Caption = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1072
          ImageIndex = 5
          object DBGrid10: TDBGrid
            Left = 16
            Top = 48
            Width = 1025
            Height = 401
            DataSource = DataLibrary.DSPublishers
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object DBNavigator10: TDBNavigator
            Left = 16
            Top = 448
            Width = 1020
            Height = 33
            DataSource = DataLibrary.DSPublishers
            TabOrder = 1
          end
        end
        object TabSheet7: TTabSheet
          Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080
          object DBGrid5: TDBGrid
            Left = 16
            Top = 80
            Width = 1009
            Height = 281
            DataSource = DataLibrary.DSCategories
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object DBNavigator5: TDBNavigator
            Left = 16
            Top = 360
            Width = 880
            Height = 33
            DataSource = DataLibrary.DSCategories
            TabOrder = 1
          end
        end
        object TabSheet9: TTabSheet
          Caption = #1055#1088#1080#1095#1080#1085#1099' '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1103
          ImageIndex = 2
          object DBGrid7: TDBGrid
            Left = 16
            Top = 88
            Width = 1025
            Height = 369
            DataSource = DataLibrary.DSReasons
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object DBNavigator7: TDBNavigator
            Left = 16
            Top = 456
            Width = 1020
            Height = 25
            DataSource = DataLibrary.DSReasons
            TabOrder = 1
          end
        end
        object TabSheet10: TTabSheet
          Caption = #1052#1077#1088#1099
          ImageIndex = 3
          object DBGrid8: TDBGrid
            Left = 16
            Top = 112
            Width = 1017
            Height = 305
            DataSource = DataLibrary.DSRestrictions
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object DBNavigator8: TDBNavigator
            Left = 16
            Top = 424
            Width = 1010
            Height = 33
            DataSource = DataLibrary.DSRestrictions
            TabOrder = 1
          end
        end
        object TabSheet11: TTabSheet
          Caption = #1059#1083#1080#1094#1099
          ImageIndex = 4
          object DBGrid9: TDBGrid
            Left = 16
            Top = 136
            Width = 1009
            Height = 313
            DataSource = DataLibrary.DSStreets
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object DBNavigator9: TDBNavigator
            Left = 16
            Top = 448
            Width = 1000
            Height = 33
            DataSource = DataLibrary.DSStreets
            TabOrder = 1
          end
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 772
    Width = 1076
    Height = 19
    Panels = <>
  end
  object XPManifest1: TXPManifest
    Left = 296
    Top = 65528
  end
  object MainMenu1: TMainMenu
    Left = 264
    Top = 65528
    object File1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N4: TMenuItem
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
      end
      object N12: TMenuItem
        Caption = #1042#1099#1081#1090#1080
        OnClick = N12Click
      end
    end
    object N5: TMenuItem
      Caption = #1047#1072#1087#1088#1086#1089#1099
      object N7: TMenuItem
        Caption = #1042#1079#1103#1090#1099#1077' '#1082#1085#1080#1075#1080
      end
      object N8: TMenuItem
        Caption = #1044#1086#1083#1078#1085#1080#1082#1080
      end
      object N9: TMenuItem
        Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      end
    end
    object N6: TMenuItem
      Caption = #1054#1090#1095#1105#1090#1099
      object N10: TMenuItem
        Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      end
      object N11: TMenuItem
        Caption = #1053#1077#1074#1086#1079#1074#1088#1072#1097#1077#1085#1085#1099#1077
      end
    end
    object N3: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
    end
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object N2: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N2Click
      end
    end
  end
end
