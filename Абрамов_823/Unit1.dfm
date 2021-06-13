object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1050#1086#1083'-'#1074#1086' '#1074#1080#1089#1086#1082#1086#1089#1085#1099#1093' '#1075#1086#1076#1086#1074
  ClientHeight = 196
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 23
    Width = 22
    Height = 23
    Caption = #1054#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 79
    Width = 23
    Height = 23
    Caption = #1044#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 16
    Top = 45
    Width = 105
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 4
    NumbersOnly = True
    ParentFont = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 16
    Top = 101
    Width = 105
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 4
    NumbersOnly = True
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 16
    Top = 138
    Width = 105
    Height = 43
    Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 127
    Top = 23
    Width = 154
    Height = 158
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      #1044#1072#1085#1099' '#1085#1072#1090#1091#1088#1072#1083#1100#1085#1099#1077' '
      #1095#1080#1089#1083#1072' n '#1080' m. '
      #1054#1087#1088#1077#1076#1077#1083#1080#1090#1100' '
      #1089#1082#1086#1083#1100#1082#1086' '#1080#1079' '#1095#1080#1089#1077#1083' '
      #1086#1090' n '#1076#1086' m '
      #1103#1074#1083#1103#1102#1090#1089#1103' '
      #1074#1080#1089#1086#1082#1086#1089#1085#1099#1084#1080)
    ParentFont = False
    TabOrder = 3
  end
  object MainMenu1: TMainMenu
    Top = 168
    object N1: TMenuItem
      Caption = #1059#1089#1083#1086#1074#1080#1077
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1056#1077#1096#1077#1085#1080#1077
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1054#1073' '#1072#1074#1090#1086#1088#1077
      OnClick = N3Click
    end
  end
end
