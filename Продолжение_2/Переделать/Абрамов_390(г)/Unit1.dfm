object Form1: TForm1
  Left = 0
  Top = 0
  Caption = '390('#1075')'
  ClientHeight = 519
  ClientWidth = 725
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
  object MemoTask: TMemo
    Left = 16
    Top = 16
    Width = 689
    Height = 204
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      
        '390.'#1044#1072#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1090#1077#1083#1100#1085#1072#1103' '#1084#1072#1090#1088#1080#1094#1072' '#1088#1072#1079#1084#1077#1088#1072' n*m. '#1055#1086#1083#1091#1095#1080#1090#1100' '#1087#1086#1089#1083#1077#1076#1086#1074#1072#1090 +
        #1077#1083#1100#1085#1086#1089#1090#1100' b1, ..., bn, '
      #1075#1076#1077' bk - '#1101#1090#1086' '
      
        #1075') '#1087#1088#1086#1080#1079#1074#1077#1076#1077#1085#1080#1077' '#1082#1074#1072#1076#1088#1072#1090#1086#1074' '#1090#1077#1093' '#1101#1083#1077#1084#1077#1085#1090#1086#1074' k-'#1086#1081' '#1089#1090#1088#1086#1082#1080', '#1084#1086#1076#1091#1083#1080' '#1082#1086#1090#1086 +
        #1088#1099#1093' '#1087#1088#1080#1085#1072#1076#1083#1077#1078#1072#1090' '
      #1086#1090#1088#1077#1079#1082#1091' [1, 1.5].')
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    Visible = False
  end
  object MemoAboutMe: TMemo
    Left = 16
    Top = 16
    Width = 689
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
    TabOrder = 1
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 689
    Height = 473
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 282
      Width = 55
      Height = 19
      Caption = #1057#1090#1088#1086#1082': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 454
      Top = 312
      Width = 97
      Height = 36
      Caption = #1055#1088#1086#1080#1079#1074#1077#1076#1077#1085#1080#1077' '#1082#1074#1072#1076#1088#1072#1090#1086#1074
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label3: TLabel
      Left = 16
      Top = 315
      Width = 82
      Height = 19
      Caption = #1057#1090#1086#1083#1073#1094#1086#1074': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 368
      Width = 97
      Height = 33
      Caption = #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1084#1072#1090#1088#1080#1094#1091
      TabOrder = 0
      WordWrap = True
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 128
      Top = 368
      Width = 97
      Height = 33
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
      TabOrder = 1
      WordWrap = True
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 407
      Width = 217
      Height = 34
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object Edit1: TEdit
      Left = 93
      Top = 282
      Width = 44
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 2
      NumbersOnly = True
      ParentFont = False
      TabOrder = 3
    end
    object ListBox1: TListBox
      Left = 287
      Top = 312
      Width = 161
      Height = 111
      ItemHeight = 13
      TabOrder = 4
    end
    object StringGrid1: TStringGrid
      Left = 16
      Top = 19
      Width = 657
      Height = 257
      ColCount = 10
      DoubleBuffered = True
      RowCount = 10
      GradientEndColor = clSilver
      ParentDoubleBuffered = False
      TabOrder = 5
      RowHeights = (
        24
        24
        24
        24
        24
        24
        24
        24
        24
        24)
    end
    object Edit2: TEdit
      Left = 93
      Top = 312
      Width = 44
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 2
      NumbersOnly = True
      ParentFont = False
      TabOrder = 6
    end
  end
  object MainMenu1: TMainMenu
    Left = 608
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
end
