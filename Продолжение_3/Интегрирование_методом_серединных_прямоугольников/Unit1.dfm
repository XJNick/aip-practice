object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1048#1085#1090#1077#1075#1088#1080#1088#1086#1074#1072#1085#1080#1077' '#1084#1077#1090#1086#1076#1086#1084' '#1089#1077#1088#1077#1076#1080#1085#1085#1099#1093' '#1087#1088#1103#1084#1086#1091#1075#1086#1083#1100#1085#1080#1082#1086#1074
  ClientHeight = 551
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 557
    Top = 304
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 557
    Top = 376
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 542
    Top = 106
    Width = 185
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1091#1085#1082#1094#1080#1102
    Items.Strings = (
      'sin(x)'
      'cos(x)'
      'sin(x) - cos(x)'
      'sin^2(x) - cos(x)'
      'sin(x)/cos(x) * sin(x)')
  end
  object Button1: TButton
    Left = 557
    Top = 232
    Width = 145
    Height = 41
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 19
    Width = 531
    Height = 526
    Caption = #1050#1086#1086#1088#1076#1080#1085#1072#1090#1085#1072#1103' '#1087#1083#1086#1089#1082#1086#1089#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Image1: TImage
      Left = 12
      Top = 23
      Width = 500
      Height = 500
    end
  end
  object GroupBox2: TGroupBox
    Left = 542
    Top = 139
    Width = 185
    Height = 78
    Caption = #1042#1077#1088#1093#1085#1080#1081' '#1080' '#1085#1080#1078#1085#1080#1081' '#1087#1088#1077#1076#1077#1083#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Edit1: TEdit
      Left = 31
      Top = 32
      Width = 49
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 0
      Text = '-5'
    end
    object Edit2: TEdit
      Left = 111
      Top = 32
      Width = 49
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 1
      Text = '5'
    end
  end
  object GroupBox3: TGroupBox
    Left = 542
    Top = 19
    Width = 185
    Height = 81
    Caption = #1052#1072#1089#1096#1090#1072#1073
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object decBtn: TButton
      Left = 28
      Top = 34
      Width = 30
      Height = 30
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = decBtnClick
    end
    object incBtn: TButton
      Left = 120
      Top = 34
      Width = 30
      Height = 30
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = incBtnClick
    end
    object scaleEdit: TEdit
      Left = 64
      Top = 33
      Width = 49
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = '50'
    end
  end
  object Memo1: TMemo
    Left = 311
    Top = 8
    Width = 185
    Height = 524
    ReadOnly = True
    TabOrder = 5
    Visible = False
  end
  object MainMenu1: TMainMenu
    Left = 696
    Top = 24
    object N1: TMenuItem
      Caption = #1059#1089#1083#1086#1074#1080#1077
    end
    object N2: TMenuItem
      Caption = #1056#1077#1096#1077#1085#1080#1077
    end
    object N3: TMenuItem
      Caption = #1054#1073' '#1072#1074#1090#1086#1088#1077
    end
  end
end
