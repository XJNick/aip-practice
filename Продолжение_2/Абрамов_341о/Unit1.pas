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
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
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
  arr: array[1..5] of integer;

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
    AssignFile(f, OpenDialog1.FileName);
    reset(f);
    for i := 1 to 5 do
    begin
      read(f, arr[i]);
      Edit1.Text := Edit1.Text + IntToStr(arr[i]) + '  ';
    end;
    CloseFile(f);
    Button2.Enabled := true;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i, j, min, max, id1, id2, id3, id4: Integer;
begin
  max := -1;
  min := 1000;
  for i := 1 to 5 do
    for j := 1 to 5 do
      if i<>j then
      begin
       if abs(arr[i]-arr[j])<min then
       begin
        min := abs(arr[i]-arr[j]);
        id1 := i;
        id2 := j;
       end;
       if abs(arr[i]-arr[j])>max then
       begin
        max := abs(arr[i]-arr[j]);
        id3 := i;
        id4 := j;
       end;
      end;
    Label2.Caption := '�) |' + IntToStr(arr[id3]) + ' - ' + IntToStr(arr[id4]) + '| = ' + IntToStr(max);
    Label1.Caption := '�) |' + IntToStr(arr[id1]) + ' - ' + IntToStr(arr[id2]) + '| = ' + IntToStr(min);
end;

procedure TForm1.N1Click(Sender: TObject);
begin
   Memo1.Text := '���� ���� ��������� �����. ����� ����� ��� ��� �����, ������ �������� ������� �����' + #13#10 +
                  '�) ���������� ��������;' + #13#10 +
                  '�) ���������� ��������;';
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
