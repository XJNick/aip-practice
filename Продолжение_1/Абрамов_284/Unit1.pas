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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure task1;
    procedure task2;
    procedure task3;
    procedure task4;
    procedure task5;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  arr, task1_arr, task2_arr, task3_arr,
  task4_arr, task5_arr: array of real;
  n: byte;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
  f: textFile;
  i: Integer;
begin
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenDialog1.Execute then
  begin
    AssignFile(f,OpenDialog1.FileName);
    Reset(f);
    SetLength(arr, 100);
    n := 0;
    while not eof(f) do
    begin
      inc(n);
      read(f, arr[n]);
    end;
    SetLength(arr, n+1);
    for i := 1 to n do
      Edit1.Text := Edit1.Text + FloatToStr(arr[i]) + ' ';

    CloseFile(f);
    Button2.Enabled := true;
  end;
end;

procedure TForm1.task1;
var
  i: byte;
  add, add2: byte;
begin
  SetLength(task1_arr, n);
  add := 0;
  add2 := 0;
  for i := 1 to n do
  begin
    if i mod 2 = 0 then
    begin
      task1_arr[i] := arr[n div 2 - add2];
      inc(add2);
    end
    else
    begin
      task1_arr[i] := arr[n - add];
      inc(add);
    end;
  end;
  for i := 1 to n do
    Label1.Caption := Label1.Caption + FloatToStr(task1_arr[i]) + ' ';
end;

procedure TForm1.task2;
var
  i: Integer;
  add: byte;
begin
  SetLength(task2_arr, n);
  add := 1;
 for i := 1 to n do
 begin
   if i mod 2 <> 0 then
   begin
    task2_arr[add] :=  arr[i];
    inc(add);
   end;
 end;
 for i := 1 to n do
 begin
   if i mod 2 = 0 then
   begin
    task2_arr[add] :=  arr[i];
    inc(add);
   end;
 end;
 for i := 1 to n do
   Label2.Caption := Label2.Caption + FloatToStr(task2_arr[i]) + ' ';
end;

procedure TForm1.task3;
var
  i: Integer;
begin
  SetLength(task3_arr, n div 2 +1);
  i := 1;
  while i<n do
  begin
    task3_arr[i] := arr[i];
    task3_arr[i+1] := arr[n div 2 +i];
    inc(i, 2);
  end;
  for i := 1 to length((task3_arr))-1 do
    Label3.Caption := Label3.Caption + FloatToStr(task3_arr[i]) + ' ';
end;

procedure TForm1.task4;
var
  i: integer;
begin
  SetLength(task4_arr, n div 2 +1);
  i := 2;
  while i<n do
  begin
    task4_arr[i-1] := arr[n div 2 +i];
    task4_arr[i] := arr[i];
    inc(i, 2);
  end;
  for i := 1 to length((task4_arr))-1 do
    Label5.Caption := Label5.Caption + FloatToStr(task4_arr[i]) + ' ';
end;

procedure TForm1.task5;
var
  i, j: Integer;
  add, id1, id2: byte;
begin
  if Length(arr)=21 then
  begin
    SetLength(task5_arr, n+1);

//    for i := 1 to n do
//     Label6.Caption := Label6.Caption + FloatToStr(task5_arr[i]) + ' ';
  end
  else
    Label6.Caption := Label6.Caption + 'undefined';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  task1;
  task2;
  task3;
  task4;
  task5;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Memo1.Text := '���� ������������� ����� a[1]..a[n]. ��������' + #13#10 +
                '�) a[n], a[1]..a[n-1]' + #13#10 +
                '�) a[n/2]..a[n], a[1]..a[n/2]' + #13#10 +
                '�) a[n/2]..a[n], a[n/2]..a[1]';
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
