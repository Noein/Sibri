object DebtorsQForm: TDebtorsQForm
  Left = 225
  Top = 296
  Width = 809
  Height = 351
  Caption = #1044#1086#1083#1078#1085#1080#1082#1080
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
    Width = 801
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 8
      Width = 361
      Height = 13
      Caption = 
        #1063#1080#1090#1072#1090#1077#1083#1080', '#1082#1086#1090#1086#1088#1099#1077' '#1085#1077' '#1089#1076#1072#1083#1080' '#1082#1085#1080#1075#1080' '#1087#1086#1089#1083#1077' '#1074#1090#1086#1088#1086#1075#1086' '#1090#1077#1083#1077#1092#1086#1085#1085#1086#1075#1086' '#1079#1074#1086#1085#1082 +
        #1072
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 801
    Height = 284
    Align = alClient
    DataSource = DataLibrary.DSQuery2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
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
        FieldName = 'home_phone'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adress'
        Title.Caption = #1040#1076#1088#1077#1089
        Visible = True
      end>
  end
end
