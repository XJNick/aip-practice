﻿unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    StringGrid1: TStringGrid;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Label1: TLabel;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  arr: array[1..9, 1..9] of integer;
  last: set of byte;
  k: byte;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  res: boolean;
  i, j, max, max1, ms, ms1: Integer;
  j1: Integer;
begin
  k := 0;
  ms := -1;
  for i := 1 to StringGrid1.RowCount do
  begin
    max1 := -1;
    for j := 1 to StringGrid1.ColCount do
    begin
      last := [arr[i, j]];
      max := 0;
      for j1 := 1 to StringGrid1.ColCount do
        if arr[i, j1] in last then
          inc(max);
      if max>=max1 then
        max1 := max;
    end;
    ms1 := max1;
    if ms1>ms then
    begin
      ms := ms1;
      k := i;
    end;
  end;
  Label1.Caption := 'Строка с наибольшим кол-м одинаковых элементов: ' + IntToStr(k);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  f: TextFile;
  i, j: Integer;
  a: real;
begin
  last := [];
  OpenDialog1.InitialDir := ExtractFilePath(ParamStr(0));
  if OpenDialog1.Execute then
  begin
    for i := 1 to StringGrid1.RowCount do
      StringGrid1.Rows[i].Clear;
    AssignFile(f, OpenDialog1.FileName);
    Reset(f);
    i := 1;
    j := 1;
    while not eof(f) do
    begin
      if eoln(f) then
      begin
        inc(i);
        j := 1;
      end;
       read(f, arr[i, j]);
       StringGrid1.Cells[j-1, i-1] := IntToStr(arr[i, j]);
       inc(j);
    end;

    StringGrid1.RowCount := i;
    StringGrid1.ColCount := j-1;

    CloseFile(f);
    Button1.Enabled := true;
  end;

end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Memo1.Text := 'Дана целочисленная матрица размера M × N. Найти номер последней из ее строк, содержащих максимальное количество одинаковых элементов.';

  Memo1.Visible := true;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Memo1.Visible := false;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Memo1.Visible := true;
  Memo1.Text := 'Задачу подготовил Громыко Никита, обучающийся группы 207-П, на факультете ВТиПО'
end;

end.
