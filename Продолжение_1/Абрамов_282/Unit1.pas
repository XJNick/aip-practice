unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,
  Vcl.WinXCalendars;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure task1;
    procedure Button2Click(Sender: TObject);
//    procedure task2;
//    procedure task3;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  arr, task1_arr, task2_arr, task3_arr: array of integer;
  nn, n: byte;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
  f: textFile;
  i: Integer;
  s: string;
begin
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenDialog1.Execute then
  begin
    AssignFile(f,OpenDialog1.FileName);
    Reset(f);
    SetLength(arr, 100);
    nn := 0;
    while not eof(f) do
    begin
      inc(nn);
      read(f, arr[nn]);
    end;
    if nn mod 2 <> 0 then
    begin
      MessageBox(0, '� ����� �������� ���������� ���������, ������� ��������� ������� ��� ��������������', '�����!', mb_iconInformation);
      dec(nn);
    end;
    n := nn div 2;
    SetLength(arr, nn);
    for i := 1 to nn do
      Edit1.Text := Edit1.Text + arr[i].ToString + ' ';


    CloseFile(f);
    Button2.Enabled := true;
  end;
end;

procedure TForm1.task1;
var
  i, add: byte;
begin
  SetLength(task1_arr, nn);
  add := 0;
  for i := 1 to nn do
  begin
    if (i mod 2 = 0) then
      task1_arr[i] := arr[n+add]
    else
    begin
      inc(add);
      task1_arr[i] := arr[add];
    end;
    Edit1.Text := Edit1.Text + task1_arr[i].ToString + ' '
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Text := '';
  task1;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
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
