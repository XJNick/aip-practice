object Form1: TForm1
  Left = 0
  Top = 0
  Caption = '305'
  ClientHeight = 285
  ClientWidth = 752
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MemoAboutMe: TMemo
    Left = 16
    Top = 23
    Width = 465
    Height = 204
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      #1042#1099#1087#1086#1083#1085#1080#1083' '#1089#1090#1091#1076#1077#1085#1090' '#1082#1086#1083#1083#1077#1076#1078#1072' '
      #1040#1083#1084#1072#1090#1080#1085#1089#1082#1086#1075#1086' '#1082#1086#1083#1083#1077#1076#1078#1072' '
      #1101#1082#1086#1085#1086#1084#1080#1082#1080' '#1080' '
      #1087#1088#1072#1074#1072' '
      #1075'.'#1040#1083#1084#1072#1090#1099
      #1052#1099#1083#1090#1099#1082#1073#1072#1077#1074' '#1040#1083#1080#1073#1077#1082' '
      #1075#1088#1091#1087#1087#1099' '
      '207 '#1055' '
      #1092#1072#1082#1091#1083#1100#1090#1077#1090' '#1042#1058#1080#1055#1054)
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    Visible = False
  end
  object MemoTask: TMemo
    Left = 16
    Top = 23
    Width = 465
    Height = 204
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      '305. '#1044#1072#1085#1099' '#1076#1077#1081#1089#1090#1074#1080#1090#1077#1083#1100#1085#1099#1077' '#1095#1080#1089#1083#1072' a1, ..., a16. '#1054#1089#1090#1072#1074#1080#1090#1100' '#1073#1077#1079' '
      #1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1087#1086#1089#1083#1077#1076#1086#1074#1072#1090#1077#1083#1100#1085#1086#1089#1090#1100' a1, ..., a30, '#1077#1089#1083#1080' '#1086#1085#1072' '
      #1091#1087#1086#1088#1103#1076#1086#1095#1077#1085#1072' '#1087#1086' '#1085#1077#1091#1073#1099#1074#1072#1085#1080' '#1080#1083#1080' '#1087#1086' '#1087#1086' '#1085#1077#1074#1086#1079#1088#1072#1089#1090#1072#1085#1080#1102'; '#1074' '
      #1087#1088#1086#1090#1080#1074#1085#1086#1084' '#1089#1083#1091#1095#1072#1077' '#1091#1076#1072#1083#1080#1090#1100' '#1080#1079' '#1087#1086#1089#1083#1077#1076#1086#1074#1072#1090#1077#1083#1100#1085#1086#1089#1090#1080' '#1090#1077' '
      #1095#1083#1077#1085#1099', '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1077' '#1085#1086#1084#1077#1088#1072' '#1082#1086#1090#1086#1088#1099#1093' '#1082#1088#1072#1090#1085#1099' '#1095#1077#1090#1099#1088#1077#1084', '
      #1089#1086#1093#1088#1072#1085#1080#1074' '#1087#1088#1077#1078#1085#1080#1084' '#1087#1086#1088#1103#1076#1086#1082' '#1086#1089#1090#1072#1074#1083#1077#1085#1085#1099#1093' '#1095#1083#1077#1085#1086#1074'.')
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 23
    Width = 721
    Height = 252
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 251
      Height = 16
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1072#1081#1083' '#1076#1083#1103' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1076#1077#1081#1089#1090#1074#1080#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label2: TLabel
      Left = 16
      Top = 217
      Width = 84
      Height = 19
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 164
      Width = 89
      Height = 33
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 111
      Top = 164
      Width = 89
      Height = 34
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
      Enabled = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object ListBox1: TListBox
      Left = 16
      Top = 39
      Width = 697
      Height = 119
      ItemHeight = 13
      TabOrder = 2
    end
  end
  object MainMenu1: TMainMenu
    Left = 376
    object N1: TMenuItem
      Caption = #1059#1089#1083#1086#1074#1080#1077
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1056#1077#1096#1077#1085#1080#1077
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1054' '#1089#1077#1073#1077
      OnClick = N3Click
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Text files|*.txt'
    InitialDir = 'Extractfilepath(Application.exename)'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 336
  end
end
