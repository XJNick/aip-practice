object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1040#1073#1088#1072#1084#1086#1074'_829'
  ClientHeight = 226
  ClientWidth = 434
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
  object Label1: TLabel
    Left = 8
    Top = 93
    Width = 7
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 129
    Width = 7
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 9
    Width = 34
    Height = 25
    Caption = #1042#1077#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 240
    Top = 9
    Width = 166
    Height = 19
    Caption = #1044#1072#1090#1099' "'#1095#1077#1088#1085#1099#1093' '#1087#1103#1090#1085#1080#1094'"'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 32
    Top = 33
    Width = 33
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 2
    NumbersOnly = True
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 80
    Top = 33
    Width = 106
    Height = 33
    Caption = #1042#1074#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 252
    Top = 34
    Width = 166
    Height = 176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 25
    ParentFont = False
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 418
    Height = 210
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object MainMenu1: TMainMenu
    Left = 65520
    Top = 40
    object E1: TMenuItem
      Caption = #1059#1089#1083#1086#1074#1080#1077
      OnClick = E1Click
    end
    object N1: TMenuItem
      Caption = #1056#1077#1096#1077#1085#1080#1077
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054#1073' '#1072#1074#1090#1086#1088#1077
      OnClick = N2Click
    end
  end
end
