object Form1: TForm1
  Left = 0
  Top = 0
  Caption = '285'
  ClientHeight = 301
  ClientWidth = 518
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
  object GroupBox1: TGroupBox
    Left = 24
    Top = 23
    Width = 449
    Height = 252
    TabOrder = 0
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
    object Button1: TBitBtn
      Left = 16
      Top = 164
      Width = 89
      Height = 33
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TBitBtn
      Left = 328
      Top = 164
      Width = 89
      Height = 34
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
      Enabled = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object ListBox1: TListBox
      Left = 16
      Top = 39
      Width = 401
      Height = 119
      ItemHeight = 13
      TabOrder = 2
    end
  end
  object Memo1: TMemo
    Left = 40
    Top = 30
    Width = 465
    Height = 204
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    Visible = False
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Text files|*.txt'
    InitialDir = 'Extractfilepath(Application.exename)'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 336
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
end
