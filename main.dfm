object Form1: TForm1
  Left = 335
  Top = 334
  Width = 988
  Height = 823
  Caption = 'Sibri'
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
  object DebugConsole: TMemo
    Left = 0
    Top = 744
    Width = 865
    Height = 25
    Lines.Strings = (
      'DebugConsole')
    TabOrder = 0
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 40
    Width = 977
    Height = 697
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1099
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      ImageIndex = 1
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
    Top = 777
    Width = 980
    Height = 19
    Panels = <>
  end
  object XPManifest1: TXPManifest
    Left = 888
    Top = 744
  end
end
