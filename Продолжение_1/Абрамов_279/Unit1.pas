unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    ListBox1: TListBox;
    Memo1: TMemo;
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
  n: byte;
  a_arr, b_arr: array of integer;
  result: longint;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
  f: TextFile;
  i: Integer;
  s: string;
begin
  if OpenDialog1.Execute then
  begin
    ListBox1.Clear;
    AssignFile(f, OpenDialog1.FileName);
    Reset(f);
    readln(f, n);
    SetLength(a_arr, n);
    SetLength(b_arr, n);
    for i := 1 to n do
    begin
      read(f, a_arr[i]);
      s := s + '  ' + IntToStr(a_arr[i]);
    end;
    ListBox1.Items.Add(s);
    s := '';
    for i := 1 to n do
    begin
      read(f, b_arr[i]);
      s := s + '  ' + IntToStr(b_arr[i]);
    end;
    ListBox1.Items.Add(s);

    CloseFile(f);
    Button2.Enabled := true;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: Integer;
begin
  result := 1;
  for i := 1 to n do
    result := result * (a_arr[i] + b_arr[n-i+1]);
    Label2.Caption := 'Результат: ' + IntToStr(result);
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Memo1.Visible := true;
  Memo1.Text := 'Даны действительные числа a[1],...,a[n], b[1],...,b[n]. Вычислить (a[1+]b[1])(a[2]+b[n-1])...(a[n]+b[1]).';
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Memo1.Visible := false;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Memo1.Visible := true;
  Memo1.Text := 'Задачу подготовил Громыко Никита, обучающийся группы 207-П, на факультете ВТиПО'
end;

end.
