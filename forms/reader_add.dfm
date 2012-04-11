object ReaderAddForm: TReaderAddForm
  Left = 717
  Top = 260
  Width = 274
  Height = 562
  Caption = #1053#1086#1074#1099#1081' '#1095#1080#1090#1072#1090#1077#1083#1100
  Color = clBtnFace
  Constraints.MaxHeight = 562
  Constraints.MinHeight = 562
  Constraints.MinWidth = 274
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
    Width = 266
    Height = 493
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      266
      493)
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 84
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 49
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object Label1: TLabel
      Left = 8
      Top = 88
      Width = 22
      Height = 13
      Caption = #1048#1084#1103
    end
    object Label4: TLabel
      Left = 8
      Top = 128
      Width = 47
      Height = 13
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    end
    object Label5: TLabel
      Left = 8
      Top = 168
      Width = 79
      Height = 13
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
    end
    object Label6: TLabel
      Left = 8
      Top = 208
      Width = 32
      Height = 13
      Caption = #1059#1083#1080#1094#1072
    end
    object Label7: TLabel
      Left = 8
      Top = 248
      Width = 63
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1076#1086#1084#1072
    end
    object Label8: TLabel
      Left = 8
      Top = 288
      Width = 65
      Height = 13
      Caption = #1050#1086#1088#1087#1091#1089' '#1076#1086#1084#1072
    end
    object Label9: TLabel
      Left = 8
      Top = 328
      Width = 72
      Height = 13
      Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
    end
    object Label10: TLabel
      Left = 8
      Top = 368
      Width = 88
      Height = 13
      Caption = #1056#1072#1073#1086#1095#1080#1081' '#1090#1077#1083#1077#1092#1086#1085
    end
    object Label11: TLabel
      Left = 8
      Top = 408
      Width = 101
      Height = 13
      Caption = #1044#1086#1084#1072#1096#1085#1080#1081' '#1090#1077#1083#1077#1092#1086#1085
    end
    object Label12: TLabel
      Left = 8
      Top = 448
      Width = 105
      Height = 13
      Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085
    end
    object Edit1: TEdit
      Left = 8
      Top = 24
      Width = 251
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 8
      Top = 64
      Width = 251
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 8
      Top = 104
      Width = 251
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 8
      Top = 144
      Width = 251
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
    end
    object DateTimePicker1: TDateTimePicker
      Left = 8
      Top = 184
      Width = 251
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Date = 40986.759322858800000000
      Time = 40986.759322858800000000
      TabOrder = 4
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 224
      Width = 251
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      KeyField = 'id_Street'
      ListField = 'title'
      ListSource = DataLibrary.DSStreets
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 8
      Top = 264
      Width = 251
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 6
    end
    object Edit7: TEdit
      Left = 8
      Top = 304
      Width = 251
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 7
    end
    object Edit8: TEdit
      Left = 8
      Top = 344
      Width = 251
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 8
    end
    object Edit9: TEdit
      Left = 8
      Top = 384
      Width = 251
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 9
    end
    object Edit10: TEdit
      Left = 8
      Top = 424
      Width = 251
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 10
    end
    object Edit11: TEdit
      Left = 8
      Top = 464
      Width = 251
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 11
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 493
    Width = 266
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 121
      Height = 35
      Align = alLeft
      Alignment = taLeftJustify
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        121
        35)
      object CancelButton: TButton
        Left = 0
        Top = 0
        Width = 113
        Height = 33
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = #1054#1090#1084#1077#1085#1072
        ParentBiDiMode = False
        TabOrder = 0
        OnClick = CancelButtonClick
      end
    end
    object Panel5: TPanel
      Left = 136
      Top = 0
      Width = 130
      Height = 35
      Align = alRight
      Alignment = taRightJustify
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        130
        35)
      object SaveButton: TButton
        Left = 17
        Top = 0
        Width = 113
        Height = 33
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        ParentBiDiMode = False
        TabOrder = 0
        OnClick = SaveButtonClick
      end
    end
  end
end
