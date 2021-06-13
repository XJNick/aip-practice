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
    ListBox1: TListBox;
    ListBox2: TListBox;
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
  arr, arr2: array of integer;
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
    ListBox1.Clear;
    n := 0;
    while not eof(f) do
    begin
      inc(n);
      SetLength(arr, n+1);
      read(f, arr[n]);
      ListBox1.Items.Add(IntToStr(n) + ') ' +IntToStr(arr[n]));
    end;
    Button2.Enabled := true;
    CloseFile(f);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i, result, max: Integer;
  res: boolean;
  j: Integer;
begin
  ListBox2.Clear;
  max := arr[1];
  for i := 2 to n do
    if arr[i]>max then
      max := arr[i];
  i := 1;
  while i<n do
  begin
    if arr[i]=max then
    begin
      for j := i to n-1 do
        arr[j] := arr[j+1];
      dec(n);
      dec(i);
    end;
    inc(i);
  end;
  dec(n);
  SetLength(arr, n);
  for i := 1 to n do
    ListBox2.Items.Add(IntToStr(i) + ') ' +IntToStr(arr[i]));

end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Memo1.Text := '���� ����� ����� a[1], ..., a[n]. �������� ����� ������������������, �������� �� �������� ��� ����� �� ��������� max.';
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
