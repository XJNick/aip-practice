unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  arr: array[1..100] of char;
  n: byte;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
  f: textFile;
begin
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenDialog1.Execute then
  begin
    AssignFile(f, OpenDialog1.FileName);
    Reset(f);
    Label1.Caption := '��������: ' + #13#10;
    n := 0;
    while not eof(f) do
    begin
      inc(n);
      read(f, arr[n]);
      Label1.Caption := Label1.Caption + arr[n];
    end;
    Button2.Enabled := true;
    CloseFile(f);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: Integer;
  yes: boolean;
  j: Integer;
begin
  yes := false;
  Label2.Caption :='������������������: ';
  i := 1;
  while (i<=n) and (arr[i] <> '*') do
  begin
    for j := 1 to i do
     if arr[j]='/' then
     begin
      arr[j] := ',';
      yes := true;
     end;
    inc(i);
  end;
  if yes then
    for i := 1 to n do
      Label2.Caption := Label2.Caption + arr[i]
  else
  Label2.Caption := '������������������ �� ���� ��������';

end;

procedure TForm1.N1Click(Sender: TObject);
begin
   Memo1.Text := '���� ������� s[1], ..., s[n]. �������� ������������������ ��� ���������, ���� � ��� �� ������ ������ *, ����� ������ ������ /, �������������� ������� ��������� * �������� �� �������.';
  Memo1.Visible := true;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Memo1.Visible := false;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Memo1.Visible := true;
  Memo1.Text := '������ ���������� ������� ������, ����������� ������ 207-�, �� ���������� �����'
end;

end.
