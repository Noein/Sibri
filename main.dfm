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
          object DBGrid2: TDBGrid
            Left = 0
            Top = 448
            Width = 521
            Height = 153
            DataSource = DataLibrary.DSTakenBooks
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object FindReaderEdit: TLabeledEdit
            Left = 8
            Top = 24
            Width = 281
            Height = 21
            EditLabel.Width = 96
            EditLabel.Height = 13
            EditLabel.Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
            TabOrder = 1
          end
          object ExtendSearchButton: TButton
            Left = 376
            Top = 24
            Width = 121
            Height = 25
            Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081' '#1087#1086#1080#1089#1082
            TabOrder = 2
            OnClick = ExtendSearchButtonClick
          end
          object FindReaderButton: TButton
            Left = 304
            Top = 24
            Width = 65
            Height = 25
            Caption = #1053#1072#1081#1090#1080
            TabOrder = 3
            OnClick = FindReaderButtonClick
          end
          object DBGrid3: TDBGrid
            Left = 536
            Top = 448
            Width = 521
            Height = 153
            DataSource = DataLibrary.DSApplRestr
            TabOrder = 4
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object ReturnBookButton: TButton
            Left = 0
            Top = 608
            Width = 137
            Height = 33
            Caption = #1042#1086#1079#1074#1088#1072#1090#1080#1090#1100' '#1082#1085#1080#1075#1091
            TabOrder = 5
            OnClick = ReturnBookButtonClick
          end
          object AppyRestButton: TButton
            Left = 536
            Top = 608
            Width = 129
            Height = 33
            Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1085#1086#1074#1091#1102
            TabOrder = 6
            OnClick = AppyRestButtonClick
          end
          object CleanRestButton: TButton
            Left = 672
            Top = 608
            Width = 129
            Height = 33
            Caption = #1054#1095#1080#1089#1090#1080#1090#1100
            TabOrder = 7
            OnClick = CleanRestButtonClick
          end
          object AddReaderButton: TButton
            Left = 0
            Top = 392
            Width = 169
            Height = 33
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            TabOrder = 8
            OnClick = AddReaderButtonClick
          end
          object EditReaderButton: TButton
            Left = 184
            Top = 392
            Width = 177
            Height = 33
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            TabOrder = 9
            OnClick = EditReaderButtonClick
          end
          object DelReaderButton: TButton
            Left = 376
            Top = 392
            Width = 177
            Height = 33
            Caption = #1059#1076#1072#1083#1080#1090#1100
            TabOrder = 10
            OnClick = DelReaderButtonClick
          end
          object DBGrid1: TDBGrid
            Left = 0
            Top = 64
            Width = 1057
            Height = 321
            DataSource = DataLibrary.DSReaders
            TabOrder = 11
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object NEEDMoreTimeButton: TButton
            Left = 152
            Top = 608
            Width = 129
            Height = 33
            Caption = #1055#1088#1086#1076#1083#1080#1090#1100' '#1082#1085#1080#1075#1091
            TabOrder = 12
            OnClick = NEEDMoreTimeButtonClick
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1050#1085#1080#1075#1080
          ImageIndex = 1
          OnShow = TabSheet6Show
          object DBGridBooks: TDBGrid
            Left = 0
            Top = 64
            Width = 1057
            Height = 497
            DataSource = DataLibrary.DSBooks
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object AddBookButton: TButton
            Left = 0
            Top = 568
            Width = 177
            Height = 33
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            TabOrder = 1
            OnClick = AddBookButtonClick
          end
          object FindBookEdit: TLabeledEdit
            Left = 8
            Top = 24
            Width = 249
            Height = 21
            EditLabel.Width = 100
            EditLabel.Height = 13
            EditLabel.Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
            TabOrder = 2
          end
          object FindBookButton: TButton
            Left = 264
            Top = 24
            Width = 65
            Height = 25
            Caption = #1053#1072#1081#1090#1080
            TabOrder = 3
            OnClick = FindBookButtonClick
          end
          object Button4: TButton
            Left = 336
            Top = 24
            Width = 129
            Height = 25
            Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081' '#1087#1086#1080#1089#1082
            TabOrder = 4
          end
          object EditBookButton: TButton
            Left = 200
            Top = 568
            Width = 153
            Height = 33
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            TabOrder = 5
            OnClick = EditBookButtonClick
          end
          object DelBookButton: TButton
            Left = 376
            Top = 568
            Width = 153
            Height = 33
            Caption = #1059#1076#1072#1083#1080#1090#1100
            TabOrder = 6
            OnClick = DelBookButtonClick
          end
          object TakeBookButton: TButton
            Left = 824
            Top = 576
            Width = 225
            Height = 129
            Caption = #1042#1079#1103#1090#1100' '#1076#1083#1103' '#1095#1080#1090#1072#1090#1077#1083#1103
            TabOrder = 7
            OnClick = TakeBookButtonClick
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
            Top = 16
            Width = 993
            Height = 601
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
            Top = 624
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
            Top = 16
            Width = 1025
            Height = 617
            DataSource = DataLibrary.DSPublishers
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnColExit = DBGrid10ColExit
            OnDrawColumnCell = DBGrid10DrawColumnCell
          end
          object DBNavigator10: TDBNavigator
            Left = 16
            Top = 640
            Width = 1020
            Height = 33
            DataSource = DataLibrary.DSPublishers
            TabOrder = 1
          end
          object DBCheckBox1: TDBCheckBox
            Left = 24
            Top = 368
            Width = 97
            Height = 17
            DataField = 'noncommercial'
            DataSource = DataLibrary.DSPublishers
            TabOrder = 2
            ValueChecked = #1044#1072
            ValueUnchecked = #1053#1077#1090
            Visible = False
            OnClick = DBCheckBox1Click
          end
          object DateTimePicker1: TDateTimePicker
            Left = 24
            Top = 344
            Width = 186
            Height = 21
            Date = 40988.880151203710000000
            Time = 40988.880151203710000000
            TabOrder = 3
            Visible = False
            OnChange = DateTimePicker1Change
            OnDropDown = DateTimePicker1DropDown
          end
        end
        object TabSheet7: TTabSheet
          Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080
          object DBGrid5: TDBGrid
            Left = 16
            Top = 16
            Width = 1009
            Height = 617
            DataSource = DataLibrary.DSCategories
            TabOrder = 0
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
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descryption'
                Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
                Visible = True
              end>
          end
          object DBNavigator5: TDBNavigator
            Left = 16
            Top = 640
            Width = 1010
            Height = 33
            DataSource = DataLibrary.DSCategories
            TabOrder = 1
          end
        end
        object TabSheet9: TTabSheet
          Caption = #1055#1088#1080#1095#1080#1085#1099
          ImageIndex = 2
          object DBGrid7: TDBGrid
            Left = 16
            Top = 16
            Width = 1025
            Height = 609
            DataSource = DataLibrary.DSReasons
            TabOrder = 0
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
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descryption'
                Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
                Visible = True
              end>
          end
          object DBNavigator7: TDBNavigator
            Left = 16
            Top = 632
            Width = 1020
            Height = 33
            DataSource = DataLibrary.DSReasons
            TabOrder = 1
          end
        end
        object TabSheet10: TTabSheet
          Caption = #1052#1077#1088#1099
          ImageIndex = 3
          object DBGrid8: TDBGrid
            Left = 16
            Top = 16
            Width = 1017
            Height = 593
            DataSource = DataLibrary.DSRestrictions
            TabOrder = 0
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
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descryption'
                Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
                Visible = True
              end>
          end
          object DBNavigator8: TDBNavigator
            Left = 16
            Top = 616
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
            Top = 16
            Width = 1009
            Height = 585
            DataSource = DataLibrary.DSStreets
            TabOrder = 0
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
                Visible = True
              end>
          end
          object DBNavigator9: TDBNavigator
            Left = 16
            Top = 608
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
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object N2: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N2Click
      end
    end
    object N4: TMenuItem
      Caption = #1042#1099#1081#1090#1080
      OnClick = N4Click
    end
  end
end
