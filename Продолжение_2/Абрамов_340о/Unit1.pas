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
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
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
  arr: array[1..20] of integer;
  n: byte;
  m: integer;
  i, j, k: byte;
  yes: boolean;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
  f: textFile;
begin
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenDialog1.Execute then
  begin
    ListBox1.Items.Clear;
    AssignFile(f, OpenDialog1.FileName);
    Reset(f);
    n := 0;
    while not eof(f) do
    begin
      inc(n);
      read(f, arr[n]);
      ListBox1.Items.Add(IntToStr(arr[n]));
    end;
    CloseFile(f);
    Button2.Enabled := true;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if (Edit1.Text<>'') and (StrToInt(Edit1.Text)>2) then
  begin
    m := StrToInt(Edit1.Text);
    yes := false;
    i := 0;
    while (not yes) and (i<n-2) do
    begin
      j := i+1;
      inc(i);
      while (not yes) and (j<n-1) do
      begin
        inc(j);
        k := j;
        while (not yes) and (k<n) do
        begin
          inc(k);
          yes := arr[i] + arr[j] + arr[k] = m;
        end;
      end;
    end;
    if yes then
      Label2.Caption := '����� ��� �������� ' + IntToStr(i) + ', ' + IntToStr(j) + ' � ' + IntToStr(k) + #13#10 + ' ���� � ����� ' + IntToStr(m)
    else
      Label2.Caption := '����� ����� �� �������'
  end
  else
    MessageBox(0, '���� "m" ��������� �����������', '������', mb_iconError);
end;

procedure TForm1.N1Click(Sender: TObject);
begin
   Memo1.Text := '���� ����� ����� m, a[1], ..., a[n]. ����� ��� ���������� ����� i, j, k, �����, ��� a[i] + a[j] + a[k] = m. ���� ����� ����� ���, �� �������� �� ����';
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
