object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Matrix_41'
  ClientHeight = 511
  ClientWidth = 702
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
    Left = 14
    Top = 476
    Width = 7
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Left = 14
    Top = 8
    Width = 462
    Height = 462
    Color = clAppWorkSpace
    ColCount = 9
    DefaultColWidth = 50
    DefaultRowHeight = 50
    FixedColor = clMoneyGreen
    FixedCols = 0
    RowCount = 9
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 501
    Top = 8
    Width = 174
    Height = 41
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 501
    Top = 55
    Width = 174
    Height = 36
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    Enabled = False
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
    Left = 482
    Top = 8
    Width = 213
    Height = 462
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    Visible = False
  end
  object MainMenu1: TMainMenu
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
  object OpenDialog1: TOpenDialog
    InitialDir = 'ExtractFilePath(Application.ExeName)'
    Left = 24
  end
end
