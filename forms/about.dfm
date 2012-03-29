object AboutForm: TAboutForm
  Left = 424
  Top = 226
  Width = 557
  Height = 537
  Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 463
    Width = 549
    Height = 47
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      549
      47)
    object Button1: TButton
      Left = 441
      Top = 8
      Width = 105
      Height = 33
      Anchors = [akRight]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ModalResult = 2
      TabOrder = 0
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 549
    Height = 422
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      object StaticText1: TStaticText
        Left = 16
        Top = 24
        Width = 4
        Height = 4
        TabOrder = 0
      end
      object StaticText2: TStaticText
        Left = 16
        Top = 48
        Width = 4
        Height = 4
        TabOrder = 1
      end
      object StaticText3: TStaticText
        Left = 16
        Top = 64
        Width = 4
        Height = 4
        TabOrder = 2
      end
      object Memo2: TMemo
        Left = 0
        Top = 0
        Width = 541
        Height = 394
        Align = alClient
        BorderStyle = bsNone
        Color = clActiveBorder
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Lines.Strings = (
          #1040#1074#1090#1086#1084#1072#1090#1080#1079#1080#1088#1086#1074#1072#1085#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1072#1103' '#1089#1080#1089#1090#1077#1084#1072' '#1076#1083#1103' '#1073#1080#1073#1083#1080#1086#1090#1077#1082'.'
          #1040#1074#1090#1086#1088#1089#1082#1080#1077' '#1087#1088#1072#1074#1072' '#1087#1088#1080#1085#1072#1076#1083#1077#1078#1072#1090' '#1052#1080#1083#1077#1096#1082#1080#1085#1091' '#1042#1083#1072#1076#1080#1089#1083#1072#1074#1091' '#1042#1080#1090#1072#1083#1100#1077#1074#1080#1095#1091'.'
          
            #1055#1088#1086#1075#1088#1072#1084#1084#1072' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1103#1077#1090#1089#1103' '#1085#1072' '#1091#1089#1083#1086#1074#1080#1103#1093' GNU General Public License' +
            ' '
          #1074#1077#1088#1089#1080#1080' 3.'
          ''
          'Copyright '#169' 2012 Vladislav Mileshkin'
          ''
          
            'This program is free software: you can redistribute it and/or mo' +
            'dify'
          
            'it under the terms of the GNU General Public License as publishe' +
            'd by'
          
            'the Free Software Foundation, either version 3 of the License, o' +
            'r'
          '(at your option) any later version.'
          ''
          'This program is distributed in the hope that it will be useful,'
          'but WITHOUT ANY WARRANTY; without even the implied warranty of'
          'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the'
          'GNU General Public License for more details.'
          ''
          
            'You should have received a copy of the GNU General Public Licens' +
            'e'
          
            'along with this program.  If not, see <http://www.gnu.org/licens' +
            'es/>.')
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1051#1080#1094#1077#1085#1079#1080#1103
      ImageIndex = 1
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 541
        Height = 394
        Align = alClient
        BorderStyle = bsNone
        Color = clActiveBorder
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 549
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = -3
      Width = 72
      Height = 42
      Caption = 'Sibri'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Liberation Mono'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 96
      Top = 16
      Width = 79
      Height = 13
      Caption = #1042#1077#1088#1089#1080#1103' 1.0 beta'
    end
  end
end
