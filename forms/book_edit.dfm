object BookEditForm: TBookEditForm
  Left = 628
  Top = 188
  Width = 304
  Height = 671
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1085#1080#1075#1080
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
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 41
    Height = 13
    Caption = #1040#1074#1090#1086#1088#1099':'
  end
  object UpdateButton: TButton
    Left = 184
    Top = 600
    Width = 105
    Height = 33
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 0
    OnClick = UpdateButtonClick
  end
  object CancelButton: TButton
    Left = 8
    Top = 600
    Width = 113
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 1
    OnClick = CancelButtonClick
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 8
    Width = 57
    Height = 17
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
    TabOrder = 2
  end
  object StaticText2: TStaticText
    Left = 8
    Top = 232
    Width = 56
    Height = 17
    Caption = #1048#1079#1076#1072#1090#1077#1083#1100':'
    TabOrder = 3
  end
  object StaticText3: TStaticText
    Left = 8
    Top = 272
    Width = 57
    Height = 17
    Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
    TabOrder = 4
  end
  object StaticText4: TStaticText
    Left = 8
    Top = 512
    Width = 106
    Height = 17
    Caption = #1055#1088#1080#1095#1080#1085#1072' '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1103
    TabOrder = 5
  end
  object StaticText5: TStaticText
    Left = 8
    Top = 312
    Width = 92
    Height = 17
    Caption = #1044#1072#1090#1072' '#1087#1091#1073#1083#1080#1082#1072#1094#1080#1080
    TabOrder = 6
  end
  object StaticText6: TStaticText
    Left = 8
    Top = 472
    Width = 63
    Height = 17
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
    TabOrder = 7
  end
  object StaticText7: TStaticText
    Left = 8
    Top = 352
    Width = 29
    Height = 17
    Caption = 'ISBN'
    TabOrder = 8
  end
  object StaticText8: TStaticText
    Left = 8
    Top = 392
    Width = 25
    Height = 17
    Caption = #1041#1041#1050
    TabOrder = 9
  end
  object StaticText9: TStaticText
    Left = 8
    Top = 432
    Width = 28
    Height = 17
    Caption = #1059#1044#1050
    TabOrder = 10
  end
  object StaticText10: TStaticText
    Left = 8
    Top = 552
    Width = 54
    Height = 17
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077
    TabOrder = 11
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 273
    Height = 21
    TabOrder = 12
  end
  object DBGridPA: TDBGrid
    Left = 8
    Top = 64
    Width = 281
    Height = 137
    DataSource = DataLibrary.DSPartAuthors
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnColExit = DBGridPAColExit
    OnDrawColumnCell = DBGridPADrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'id_Participating_author'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'book_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'author_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'author'
        Width = 250
        Visible = True
      end>
  end
  object DBNavPA: TDBNavigator
    Left = 8
    Top = 200
    Width = 280
    Height = 25
    DataSource = DataLibrary.DSPartAuthors
    TabOrder = 14
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 248
    Width = 281
    Height = 21
    KeyField = 'id_Publisher'
    ListField = 'title'
    ListSource = DataLibrary.DSPublishers
    TabOrder = 15
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 8
    Top = 288
    Width = 281
    Height = 21
    KeyField = 'id_Category'
    ListField = 'title'
    ListSource = DataLibrary.DSCategories
    TabOrder = 16
  end
  object DateTimePicker1: TDateTimePicker
    Left = 8
    Top = 328
    Width = 281
    Height = 21
    Date = 40987.808116701390000000
    Time = 40987.808116701390000000
    TabOrder = 17
  end
  object Edit2: TEdit
    Left = 8
    Top = 368
    Width = 281
    Height = 21
    TabOrder = 18
  end
  object Edit3: TEdit
    Left = 8
    Top = 408
    Width = 281
    Height = 21
    TabOrder = 19
  end
  object Edit4: TEdit
    Left = 8
    Top = 448
    Width = 281
    Height = 21
    TabOrder = 20
  end
  object Edit5: TEdit
    Left = 8
    Top = 488
    Width = 281
    Height = 21
    TabOrder = 21
  end
  object Edit7: TEdit
    Left = 8
    Top = 568
    Width = 281
    Height = 21
    TabOrder = 22
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 8
    Top = 528
    Width = 281
    Height = 21
    KeyField = 'id_Absence_reason'
    ListField = 'title'
    ListSource = DataLibrary.DSReasons
    TabOrder = 23
  end
  object DBLookupComboBoxAuthor: TDBLookupComboBox
    Left = 16
    Top = 160
    Width = 257
    Height = 21
    DataField = 'author_id'
    DataSource = DataLibrary.DSPartAuthors
    KeyField = 'id_Author'
    ListField = 'last_name;first_name'
    ListSource = DataLibrary.DSAuthors
    TabOrder = 24
    Visible = False
  end
end
