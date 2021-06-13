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
    Button2: TButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Label1: TLabel;
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
  arr, arr2: array[1..16] of real;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
  f: TextFile;
  i: Integer;
begin
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenDialog1.Execute then
  begin
    AssignFile(f, OpenDialog1.FileName);
    reset(f);
    for i := 1 to 16 do
    begin
      read(f, arr[i]);
      ListBox1.Items.Add(FloatToStr(arr[i]))
    end;
    CloseFile(f);
    Button2.Enabled := true;
  end;
end;


procedure TForm1.Button2Click(Sender: TObject);
var
  i, j: Integer;
begin
  j := 1;
  for i := 1 to 16 do
  begin
    if arr[i]>0 then
    begin
      arr2[j] := arr[i];
      inc(j);
    end;
  end;

  for i := 1 to 16 do
  begin
    if arr[i]<0 then
    begin
      arr2[j] := arr[i];
      inc(j);
    end;
  end;
  for i := 1 to 16 do
    ListBox2.Items.Add(FloatToStr(arr2[i]));
end;

procedure TForm1.N1Click(Sender: TObject);
begin
   Memo1.Text := '���� �������������� ����� a[1], ..., a[16]. ����������� ����� ����������������� ���,' + #13#10 +
                  '����� ������� ������������� ��� �� ��������������� �����, � ����� - ��� �������������. ������� ��� ����� ��������������� ������, ��� � ����� ������������� ������ ���� �������� �������.';
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
