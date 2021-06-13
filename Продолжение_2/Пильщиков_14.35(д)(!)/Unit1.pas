unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  letters = set of 'a'..'z';

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
    Memo2: TMemo;
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
  s, sm: string;
  m, m1, sg: set of char;

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
    read(f, s);
    Memo2.Text := s;
    Button2.Enabled := true;
    CloseFile(f);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i, j: byte;
  c: char;
begin
  ListBox1.Clear;
  s[length(s)] := ',';
  m := [];
  sm := '';
  sg := ['a'..'z'] - ['a', 'e', 'i', 'o', 'u'];
  for i := 1 to length(s) do
    if s[i]<>',' then
      sm := sm+s[i];
  for i := 1 to length(sm) do
    if not(sm[i] in m) and (sm[i] in sg) then
      m := m+[sm[i]]
    else if sm[i] in sg then
      m1 := m1+[sm[i]];
      m := m-m1;

  if m=[] then
    Listbox1.Items.Add('��� ���� �� �������')
  else
  begin
    Listbox1.Items.Add('����� �� �������:');
    for c := 'b' to 'z' do
      if c in m then
        Listbox1.Items.Add(c);
  end;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
   Memo1.Text := '���� �������� ������������������ ���� �� �������� ����; ����� ��������� ������� - �������, �� ��������� ������ - �����. ���������� � ���������� ������� ��� ��������� �����, ������� ������ ������ � ���� �����.';
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
