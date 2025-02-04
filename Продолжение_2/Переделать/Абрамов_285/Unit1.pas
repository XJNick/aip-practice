﻿unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Button1: TBitBtn;
    Button2: TBitBtn;
    ListBox1: TListBox;
    OpenDialog1: TOpenDialog;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Memo1: TMemo;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    function chk : Boolean;
    { Public declarations }
  end;

var
  Form1: TForm1;
  arr1 : array of real;
  n : longint;
  f : textfile;
  r : Boolean;

implementation

{$R *.dfm}

function TForm1.chk : Boolean;
var
  i : integer;
  arr2 : array of real;
begin
  setlength (arr2 , n + 1);
  chk := False;

  for i := 1 to n do
    if arr2[i] < 0 then
      arr2[i] := sqr(arr1[i])
    else
      arr2[i] := arr1[i];

  r := false;
  for i := 1 to n - 1 do
  begin
    if not(arr2[i] > arr2[i + 1]) and not(r) then
      chk := True
    else begin
      r := True;
      chk := False;
    end;
  end;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Memo1.Visible := true;
  Memo1.Text := 'Даны действительные числа a1, ..., an. Если в результате замены отрицательных членов последовательности a1, ..., an их квадратами члены будут' +#13#10 +
                'обращовывать неубывающую последовательность, то получить сумму членов исходной последовательности; в противном случае получить их произведение.';
  GroupBox1.Visible := False;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Memo1.Visible := False;
  GroupBox1.Visible := True;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Memo1.Visible := True;
  Memo1.Text := 'Программу подготовил и выполнил Громыко Никита, обучающийся на факультете ВТиПО';
  GroupBox1.Visible := False;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  if opendialog1.Execute then
  begin
    ListBox1.Items.LoadFromFile(OpenDialog1.FileName);
    Button2.Enabled := True;
    Assignfile (f , OpenDialog1.FileName);
    reset (f);
    setlength (arr1 , 100);
    n := 0;
    while not eof(f) do
    begin
      inc(n);
      read (f , arr1[n]);
    end;
    closefile (f);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i , j : integer;
  result : real;
begin
  if chk then
  begin
    result := 0;
    for i := 1 to n do
      result := result + arr1[i]
  end
  else
  begin
    result := 1;
    for i := 1 to n do
      result := result * arr1[i];
  end;

  Label2.Caption := 'Результат: ' + FloatToStr (result);
end;

end.
