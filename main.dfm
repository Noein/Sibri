object MainForm: TMainForm
  Left = 188
  Top = 112
  Width = 1084
  Height = 834
  Caption = 'Sibri'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1076
    Height = 764
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1041#1080#1073#1083#1080#1086#1090#1077#1082#1072
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 1068
        Height = 736
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
          object Label3: TLabel
            Left = 216
            Top = 440
            Width = 5
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 25
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Panel10: TPanel
            Left = 0
            Top = 392
            Width = 1060
            Height = 316
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 15
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 440
            Width = 617
            Height = 241
            Caption = #1042#1079#1103#1090#1099#1077' '#1082#1085#1080#1075#1080
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
          end
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 1060
            Height = 49
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 13
            object FindReaderEdit: TLabeledEdit
              Left = 8
              Top = 16
              Width = 281
              Height = 21
              EditLabel.Width = 96
              EditLabel.Height = 13
              EditLabel.Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
              TabOrder = 0
            end
            object CheckBox1: TCheckBox
              Left = 808
              Top = 24
              Width = 249
              Height = 17
              Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1095#1080#1090#1072#1090#1077#1083#1077#1081', '#1087#1088#1086#1089#1088#1086#1095#1080#1074#1096#1080#1093' '#1082#1085#1080#1075#1080
              TabOrder = 1
              OnClick = CheckBox1Click
            end
            object DateTimePicker3: TDateTimePicker
              Left = 551
              Top = 20
              Width = 186
              Height = 21
              Date = 41008.968108668980000000
              Time = 41008.968108668980000000
              TabOrder = 2
            end
            object CheckBox2: TCheckBox
              Left = 552
              Top = 0
              Width = 201
              Height = 17
              Caption = #1092#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1076#1072#1090#1077' '#1074#1079#1103#1090#1080#1103' '#1082#1085#1080#1075#1080
              TabOrder = 3
              OnClick = CheckBox2Click
            end
          end
          object GroupBox1: TGroupBox
            Left = 616
            Top = 440
            Width = 441
            Height = 241
            Caption = #1055#1088#1080#1084#1077#1085#1105#1085#1085#1099#1077' '#1084#1077#1088#1099
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
          end
          object DBGrid2: TDBGrid
            Left = 0
            Top = 472
            Width = 609
            Height = 153
            DataSource = DataLibrary.DSTakenBooks
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'id_Taken_book'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'book_id'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'book_title'
                Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'authors'
                Title.Caption = #1040#1074#1090#1086#1088#1099
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'reader_id'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'taken_date'
                Title.Caption = #1044#1072#1090#1072' '#1074#1079#1103#1090#1080#1103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'return_date'
                Title.Caption = #1044#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'must_return_date'
                Title.Caption = #1044#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
                Width = 110
                Visible = True
              end>
          end
          object ExtendSearchButton: TButton
            Left = 368
            Top = 16
            Width = 121
            Height = 25
            Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081' '#1087#1086#1080#1089#1082
            TabOrder = 1
            OnClick = ExtendSearchButtonClick
          end
          object FindReaderButton: TButton
            Left = 296
            Top = 16
            Width = 65
            Height = 25
            Caption = #1053#1072#1081#1090#1080
            TabOrder = 2
            OnClick = FindReaderButtonClick
          end
          object DBGrid3: TDBGrid
            Left = 624
            Top = 472
            Width = 425
            Height = 153
            Align = alCustom
            DataSource = DataLibrary.DSApplRestr
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'id_Applied_restriction'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'reader_id'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'restriction_id'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'restriction'
                Title.Caption = #1052#1077#1088#1072
                Width = 131
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'applied_date'
                Title.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1084#1077#1085#1077#1085#1080#1103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'time'
                Title.Caption = #1042#1088#1077#1084#1103
                Width = 65
                Visible = True
              end>
          end
          object ReturnBookButton: TButton
            Left = 8
            Top = 632
            Width = 137
            Height = 33
            Caption = #1042#1086#1079#1074#1088#1072#1090#1080#1090#1100' '#1082#1085#1080#1075#1091
            TabOrder = 4
            OnClick = ReturnBookButtonClick
          end
          object AppyRestButton: TButton
            Left = 624
            Top = 632
            Width = 129
            Height = 33
            Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1085#1086#1074#1091#1102
            TabOrder = 5
            OnClick = AppyRestButtonClick
          end
          object CleanRestButton: TButton
            Left = 768
            Top = 632
            Width = 129
            Height = 33
            Caption = #1054#1095#1080#1089#1090#1080#1090#1100
            TabOrder = 6
            OnClick = CleanRestButtonClick
          end
          object AddReaderButton: TButton
            Left = 0
            Top = 408
            Width = 169
            Height = 33
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            TabOrder = 7
            OnClick = AddReaderButtonClick
          end
          object EditReaderButton: TButton
            Left = 176
            Top = 408
            Width = 177
            Height = 33
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            TabOrder = 8
            OnClick = EditReaderButtonClick
          end
          object DelReaderButton: TButton
            Left = 360
            Top = 408
            Width = 177
            Height = 33
            Caption = #1059#1076#1072#1083#1080#1090#1100
            TabOrder = 9
            OnClick = DelReaderButtonClick
          end
          object DBGrid1: TDBGrid
            Left = 0
            Top = 49
            Width = 1060
            Height = 343
            Align = alClient
            DataSource = DataLibrary.DSReaders
            TabOrder = 10
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid1DrawColumnCell
            OnMouseMove = DBGrid1MouseMove
            OnTitleClick = DBGrid1TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'id_Reader'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'passport_number'
                Title.Caption = #1053#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'last_name'
                Title.Caption = #1060#1072#1084#1080#1083#1080#1103
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'first_name'
                Title.Caption = #1048#1084#1103
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'patronymic'
                Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'birth_date'
                Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'street_id'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'street'
                Title.Caption = #1059#1083#1080#1094#1072
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'home_number'
                Title.Caption = #1053#1086#1084#1077#1088' '#1076#1086#1084#1072
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'home_case'
                Title.Caption = #1050#1086#1088#1087#1091#1089
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'work_place'
                Title.Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'work_phone'
                Title.Caption = #1056#1072#1073#1086#1095#1080#1081' '#1090#1077#1083#1077#1092#1086#1085
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'home_phone'
                Title.Caption = #1044#1086#1084#1072#1096#1085#1080#1081' '#1090#1077#1083#1077#1092#1086#1085
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cell_phone'
                Title.Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085
                Width = 63
                Visible = True
              end>
          end
          object NEEDMoreTimeButton: TButton
            Left = 160
            Top = 632
            Width = 129
            Height = 33
            Caption = #1055#1088#1086#1076#1083#1080#1090#1100' '#1082#1085#1080#1075#1091
            TabOrder = 11
            OnClick = NEEDMoreTimeButtonClick
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1050#1085#1080#1075#1080
          ImageIndex = 1
          OnShow = TabSheet6Show
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 1060
            Height = 65
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 4
            object FindBookEdit: TLabeledEdit
              Left = 8
              Top = 20
              Width = 249
              Height = 21
              EditLabel.Width = 100
              EditLabel.Height = 13
              EditLabel.Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
              TabOrder = 0
            end
          end
          object DBGridBooks: TDBGrid
            Left = 0
            Top = 65
            Width = 1060
            Height = 583
            Align = alClient
            DataSource = DataLibrary.DSBooks
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'id_Book'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'publisher_id'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'category_id'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'reason_id'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'title'
                Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'authors'
                Title.Caption = #1040#1074#1090#1086#1088#1099
                Width = 166
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'publication_date'
                Title.Caption = #1044#1072#1090#1072' '#1087#1091#1073#1083#1080#1082#1072#1094#1080#1080
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'publisher'
                Title.Caption = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'category'
                Title.Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ISBN'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BBC'
                Title.Caption = #1041#1041#1050
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UDC'
                Title.Caption = #1059#1044#1050
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'count'
                Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'reason'
                Title.Caption = #1087#1088#1080#1095#1080#1085#1072' '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descryption'
                Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
                Visible = True
              end>
          end
          object FindBookButton: TButton
            Left = 264
            Top = 24
            Width = 65
            Height = 25
            Caption = #1053#1072#1081#1090#1080
            TabOrder = 1
            OnClick = FindBookButtonClick
          end
          object Button4: TButton
            Left = 336
            Top = 24
            Width = 129
            Height = 25
            Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081' '#1087#1086#1080#1089#1082
            TabOrder = 2
            OnClick = Button4Click
          end
          object Panel8: TPanel
            Left = 0
            Top = 648
            Width = 1060
            Height = 60
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 3
            object AddBookButton: TButton
              Left = 0
              Top = 16
              Width = 177
              Height = 33
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              TabOrder = 0
              OnClick = AddBookButtonClick
            end
            object EditBookButton: TButton
              Left = 200
              Top = 16
              Width = 153
              Height = 33
              Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
              TabOrder = 1
              OnClick = EditBookButtonClick
            end
            object DelBookButton: TButton
              Left = 376
              Top = 16
              Width = 153
              Height = 33
              Caption = #1059#1076#1072#1083#1080#1090#1100
              TabOrder = 2
              OnClick = DelBookButtonClick
            end
            object TakeBookButton: TButton
              Left = 648
              Top = 16
              Width = 401
              Height = 33
              Caption = #1042#1079#1103#1090#1100' '#1076#1083#1103' '#1095#1080#1090#1072#1090#1077#1083#1103
              TabOrder = 3
              WordWrap = True
              OnClick = TakeBookButtonClick
            end
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
        Width = 1068
        Height = 736
        ActivePage = TabSheet8
        Align = alClient
        TabOrder = 0
        object TabSheet8: TTabSheet
          Caption = #1040#1074#1090#1086#1088#1099
          ImageIndex = 1
          object DBGrid6: TDBGrid
            Left = 0
            Top = 0
            Width = 1060
            Height = 675
            Align = alClient
            DataSource = DataLibrary.DSAuthors
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid6DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'id_Author'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'last_name'
                Title.Caption = #1060#1072#1084#1080#1083#1080#1103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'first_name'
                Title.Caption = #1048#1084#1103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'patronymic'
                Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pseudonym'
                Title.Caption = #1055#1089#1077#1074#1076#1086#1085#1080#1084
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'birth_date'
                Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'country'
                Title.Caption = #1057#1090#1088#1072#1085#1072
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'biography'
                Title.Caption = #1041#1080#1086#1075#1088#1072#1092#1080#1103
                Visible = True
              end>
          end
          object DateTimePicker2: TDateTimePicker
            Left = 32
            Top = 376
            Width = 186
            Height = 21
            Date = 40988.858331365730000000
            Time = 40988.858331365730000000
            TabOrder = 1
            Visible = False
            OnChange = DateTimePicker2Change
            OnDropDown = DateTimePicker2DropDown
          end
          object Panel1: TPanel
            Left = 0
            Top = 675
            Width = 1060
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object DBNavigator6: TDBNavigator
              Left = 0
              Top = 0
              Width = 1060
              Height = 41
              DataSource = DataLibrary.DSAuthors
              Align = alClient
              TabOrder = 0
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = #1048#1079#1076#1072#1090#1077#1083#1100#1089#1090#1074#1072
          ImageIndex = 5
          object DBGrid10: TDBGrid
            Left = 0
            Top = 0
            Width = 1060
            Height = 675
            Align = alClient
            DataSource = DataLibrary.DSPublishers
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnColExit = DBGrid10ColExit
            OnDrawColumnCell = DBGrid10DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'id_Publisher'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'title'
                Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'country'
                Title.Caption = #1057#1090#1088#1072#1085#1072
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'city'
                Title.Caption = #1043#1086#1088#1086#1076
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'foundation_date'
                Title.Caption = #1044#1072#1090#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'noncommercial'
                Title.Caption = #1053#1077#1082#1086#1084#1084#1077#1088#1095#1077#1089#1082#1072#1103'?'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'website'
                Title.Caption = #1057#1072#1081#1090
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descryption'
                Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
                Visible = True
              end>
          end
          object DBCheckBox1: TDBCheckBox
            Left = 24
            Top = 368
            Width = 97
            Height = 17
            Color = clBtnHighlight
            DataField = 'noncommercial'
            DataSource = DataLibrary.DSPublishers
            ParentColor = False
            TabOrder = 1
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
            TabOrder = 2
            Visible = False
            OnChange = DateTimePicker1Change
            OnDropDown = DateTimePicker1DropDown
          end
          object Panel2: TPanel
            Left = 0
            Top = 675
            Width = 1060
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 3
            object DBNavigator10: TDBNavigator
              Left = 0
              Top = 0
              Width = 1060
              Height = 41
              DataSource = DataLibrary.DSPublishers
              Align = alClient
              TabOrder = 0
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080
          object DBGrid5: TDBGrid
            Left = 0
            Top = 0
            Width = 1060
            Height = 675
            Align = alClient
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
          object Panel3: TPanel
            Left = 0
            Top = 675
            Width = 1060
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object DBNavigator5: TDBNavigator
              Left = 0
              Top = 0
              Width = 1060
              Height = 41
              DataSource = DataLibrary.DSCategories
              Align = alClient
              TabOrder = 0
            end
          end
        end
        object TabSheet9: TTabSheet
          Caption = #1055#1088#1080#1095#1080#1085#1099
          ImageIndex = 2
          object DBGrid7: TDBGrid
            Left = 0
            Top = 0
            Width = 1060
            Height = 675
            Align = alClient
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
          object Panel4: TPanel
            Left = 0
            Top = 675
            Width = 1060
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object DBNavigator7: TDBNavigator
              Left = 0
              Top = 0
              Width = 1060
              Height = 41
              DataSource = DataLibrary.DSReasons
              Align = alClient
              TabOrder = 0
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = #1052#1077#1088#1099
          ImageIndex = 3
          object DBGrid8: TDBGrid
            Left = 0
            Top = 0
            Width = 1060
            Height = 675
            Align = alClient
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
          object Panel5: TPanel
            Left = 0
            Top = 675
            Width = 1060
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object DBNavigator8: TDBNavigator
              Left = 0
              Top = 0
              Width = 1060
              Height = 41
              DataSource = DataLibrary.DSRestrictions
              Align = alClient
              TabOrder = 0
            end
          end
        end
        object TabSheet11: TTabSheet
          Caption = #1059#1083#1080#1094#1099
          ImageIndex = 4
          object DBGrid9: TDBGrid
            Left = 0
            Top = 0
            Width = 1060
            Height = 675
            Align = alClient
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
          object Panel6: TPanel
            Left = 0
            Top = 675
            Width = 1060
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object DBNavigator9: TDBNavigator
              Left = 0
              Top = 0
              Width = 1060
              Height = 41
              DataSource = DataLibrary.DSStreets
              Align = alClient
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 764
    Width = 1076
    Height = 16
    Panels = <
      item
        Text = #1042#1089#1077#1075#1086' '#1095#1080#1090#1072#1090#1077#1083#1077#1081': '
        Width = 500
      end
      item
        Text = #1042#1089#1077#1075#1086' '#1082#1085#1080#1075':'
        Width = 50
      end>
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
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1044#1086#1083#1078#1085#1080#1082#1080
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
        OnClick = N9Click
      end
    end
    object N6: TMenuItem
      Caption = #1054#1090#1095#1105#1090#1099
      object N10: TMenuItem
        Caption = #1050' '#1089#1087#1080#1089#1072#1085#1080#1102
        OnClick = N10Click
      end
      object N11: TMenuItem
        Caption = #1053#1077#1074#1086#1079#1074#1088#1072#1097#1077#1085#1085#1099#1077
        OnClick = N11Click
      end
    end
    object N3: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      OnClick = N3Click
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
