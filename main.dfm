object Form1: TForm1
  Left = 200
  Top = 179
  Width = 988
  Height = 787
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
    Width = 977
    Height = 793
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1041#1080#1073#1083#1080#1086#1090#1077#1082#1072
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 969
        Height = 769
        ActivePage = TabSheet5
        TabOrder = 0
        object TabSheet5: TTabSheet
          Caption = #1050#1085#1080#1075#1080
          object DBGrid1: TDBGrid
            Left = 8
            Top = 8
            Width = 817
            Height = 425
            DataSource = DataModule1.DSBooks
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'id_Books'
                Title.Caption = 'id_Book'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'author_id'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'category_id'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'reason_id'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'title'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descryption'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'publication_date'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cost'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'number'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'publisher'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ISBN'
                Visible = True
              end>
          end
          object Button1: TButton
            Left = 16
            Top = 464
            Width = 257
            Height = 113
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            TabOrder = 1
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 600
            Top = 464
            Width = 289
            Height = 113
            Caption = #1059#1076#1072#1083#1080#1090#1100
            TabOrder = 2
          end
          object Button3: TButton
            Left = 304
            Top = 464
            Width = 257
            Height = 113
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            TabOrder = 3
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1063#1080#1090#1072#1090#1077#1083#1080
          ImageIndex = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      ImageIndex = 1
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 969
        Height = 761
        ActivePage = TabSheet7
        TabOrder = 0
        object TabSheet7: TTabSheet
          Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080
        end
        object TabSheet8: TTabSheet
          Caption = #1040#1074#1090#1086#1088#1099
          ImageIndex = 1
        end
        object TabSheet9: TTabSheet
          Caption = #1055#1088#1080#1095#1080#1085#1099' '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1103
          ImageIndex = 2
        end
        object TabSheet10: TTabSheet
          Caption = #1052#1077#1088#1099
          ImageIndex = 3
        end
        object TabSheet11: TTabSheet
          Caption = #1059#1083#1080#1094#1099
          ImageIndex = 4
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1054#1090#1095#1105#1090#1099
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = #1044#1080#1072#1075#1088#1072#1084#1084#1099
      ImageIndex = 3
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 793
    Width = 977
    Height = 19
    Panels = <>
  end
  object XPManifest1: TXPManifest
    Left = 912
    Top = 792
  end
  object MainMenu1: TMainMenu
    Left = 888
    Top = 792
    object File1: TMenuItem
      Caption = #1060#1072#1081#1083
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
