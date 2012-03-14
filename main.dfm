object Form1: TForm1
  Left = 214
  Top = 381
  Width = 871
  Height = 640
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
  object DBGrid1: TDBGrid
    Left = 56
    Top = 296
    Width = 321
    Height = 209
    DataSource = DataModule1.DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DebugConsole: TMemo
    Left = 8
    Top = 584
    Width = 849
    Height = 25
    Lines.Strings = (
      'DebugConsole')
    TabOrder = 1
    Visible = False
  end
  object TabControl1: TTabControl
    Left = 48
    Top = 32
    Width = 337
    Height = 241
    MultiSelect = True
    TabOrder = 2
    Tabs.Strings = (
      '1'
      '2')
    TabIndex = 0
  end
  object XPManifest1: TXPManifest
    Left = 824
    Top = 544
  end
end
