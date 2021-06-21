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
    Edit1: TEdit;
    ListBox1: TListBox;
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
  arr: array of integer;
  n: byte;
  min, x: real;

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
  i: Integer;
  id1, id2: byte;
  j: Integer;
begin
  min := 100;
  if (Edit1.Text <> '') then
  begin
    x := StrToInt(Edit1.Text);
    for i := 1 to n do
      for j := 1 to n do
      begin
        if (abs(x-abs(arr[i]+arr[j])/2)<abs(x-min)) and (i<>j) then
        begin
        min := abs(arr[i]+arr[j])/2;
        id1 := i;
        id2 := j;
        end;
    end;
    Label1.Caption := '������� �������������� ����� � ��������: ' + #13#10 + IntToStr(id1) + ' � ' + IntToStr(id2) + ' ����� ����� � ' + FloatToStr(x);
  end
  else
    MessageBox(0, '���� "�" �� ����� ���� ������', '������', mb_iconError);
end;

 procedure TForm1.N1Click(Sender: TObject);
begin
   Memo1.Text := '���� �������������� ����� x, y[1], ..., y[n]. � ������������������ y[1], ..., y[n] ����� ��� �����, ������� �������������� ������� ����� ����� � x.';
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
