object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1050#1072#1088#1090#1086#1095#1082#1072' 3'
  ClientHeight = 211
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -27
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 33
  object Label1: TLabel
    Left = 213
    Top = 39
    Width = 13
    Height = 45
    Caption = ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 337
    Top = 38
    Width = 13
    Height = 45
    Caption = ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 241
    Top = 143
    Width = 25
    Height = 25
    Caption = 'k='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 177
    Top = 11
    Width = 94
    Height = 33
    Caption = 'h1 | m1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 301
    Top = 8
    Width = 94
    Height = 33
    Caption = 'h2 | m2'
  end
  object Button1: TButton
    Left = 29
    Top = 45
    Width = 102
    Height = 40
    Caption = #1057#1088#1072#1074#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 174
    Top = 45
    Width = 40
    Height = 43
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 2
    NumbersOnly = True
    ParentFont = False
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 226
    Top = 45
    Width = 39
    Height = 43
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 2
    NumbersOnly = True
    ParentFont = False
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 298
    Top = 44
    Width = 40
    Height = 43
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 2
    NumbersOnly = True
    ParentFont = False
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 349
    Top = 44
    Width = 40
    Height = 43
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 2
    NumbersOnly = True
    ParentFont = False
    TabOrder = 4
  end
  object Button2: TButton
    Left = 29
    Top = 91
    Width = 197
    Height = 41
    Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1085#1072' h1+4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 29
    Top = 137
    Width = 196
    Height = 40
    Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1085#1072' h1-k'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button3Click
  end
  object Edit5: TEdit
    Left = 272
    Top = 132
    Width = 40
    Height = 43
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 2
    NumbersOnly = True
    ParentFont = False
    TabOrder = 7
  end
  object Memo1: TMemo
    Left = 29
    Top = 8
    Width = 367
    Height = 185
    TabOrder = 8
    Visible = False
  end
  object MainMenu1: TMainMenu
    Top = 200
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
