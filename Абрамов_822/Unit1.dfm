object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1076#1085#1077#1081' '#1074' '#1075#1086#1076#1091
  ClientHeight = 202
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 60
    Top = 15
    Width = 180
    Height = 39
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1075#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 90
    Top = 128
    Width = 120
    Height = 49
    Caption = #1042#1074#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 100
    Top = 70
    Width = 100
    Height = 47
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 4
    NumbersOnly = True
    ParentFont = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 256
    Top = -1
    Width = 100
    Height = 30
    Caption = #1059#1089#1083#1086#1074#1080#1077
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 256
    Top = 26
    Width = 100
    Height = 30
    Caption = #1056#1077#1096#1077#1085#1080#1077
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 256
    Top = 53
    Width = 100
    Height = 30
    Caption = #1054#1073' '#1072#1074#1090#1086#1088#1077
    TabOrder = 4
    OnClick = Button4Click
  end
  object Memo1: TMemo
    Left = 216
    Top = 89
    Width = 139
    Height = 105
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    Visible = False
  end
end
