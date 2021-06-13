object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1040#1073#1088#1072#1084#1086#1074'_830'
  ClientHeight = 182
  ClientWidth = 356
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
    Left = 8
    Top = 103
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
    Left = 20
    Top = 8
    Width = 319
    Height = 19
    Caption = #1054#1073#1086#1079#1085#1072#1095#1090#1077' '#1076#1072#1090#1091' '#1087#1086' '#1102#1083#1080#1072#1085#1089#1082#1086#1084#1091' '#1082#1072#1083#1077#1085#1076#1072#1088#1102
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 68
    Top = 34
    Width = 35
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
  object ComboBox1: TComboBox
    Left = 104
    Top = 34
    Width = 116
    Height = 33
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 1
    Text = #1071#1085#1074#1072#1088#1100
    Items.Strings = (
      #1071#1085#1074#1072#1088#1100
      #1060#1077#1074#1088#1072#1083#1100
      #1052#1072#1088#1090
      #1040#1087#1088#1077#1083#1100
      #1052#1072#1081
      #1048#1102#1085#1100
      #1048#1102#1083#1100
      #1040#1074#1075#1091#1089#1090
      #1057#1077#1085#1090#1103#1073#1088#1100
      #1054#1082#1090#1103#1073#1088#1100
      #1053#1086#1103#1073#1088#1100
      #1044#1077#1082#1072#1073#1088#1100)
  end
  object Edit2: TEdit
    Left = 222
    Top = 34
    Width = 71
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 4
    NumbersOnly = True
    ParentFont = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 100
    Top = 73
    Width = 120
    Height = 33
    Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 9
    Top = 9
    Width = 341
    Height = 165
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    Visible = False
  end
  object MainMenu1: TMainMenu
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
