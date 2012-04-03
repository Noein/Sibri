object Report1Form: TReport1Form
  Left = 191
  Top = 142
  Width = 855
  Height = 627
  Caption = #1054#1090#1095#1105#1090' '#8470'1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 847
    Height = 600
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 88
      Top = 8
      Width = 113
      Height = 33
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1086#1090#1095#1105#1090
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 208
      Top = 8
      Width = 129
      Height = 33
      Caption = #1044#1080#1072#1075#1088#1072#1084#1084#1072
      TabOrder = 1
    end
  end
  object RvProject1: TRvProject
    ProjectFile = 'Z:\Course_work\Sibri\sibri\forms\reports\report1.rav'
    Top = 8
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DataLibrary.Rep1Query
    Left = 40
    Top = 8
  end
end
