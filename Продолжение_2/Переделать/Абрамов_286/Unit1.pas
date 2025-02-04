unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ListBox1: TListBox;
    OpenDialog1: TOpenDialog;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    MemoAboutMe: TMemo;
    MemoTask: TMemo;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ReadFromFile;
    function MaxElement : real;
    { Public declarations }
  end;

var
  Form1: TForm1;
  m : array of real;
  n : longint;
  f : textfile;

implementation

{$R *.dfm}

function TForm1.MaxElement: real ;
var
  i : integer;
  max : real;
begin
  max := 0;
  for i := 1 to n do
    if m[i] > max then
      max := m[i];
  MaxElement := max;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  MemoTask.Visible := True;
  MemoAboutMe.Visible := False;
  GroupBox1.Visible := False;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  MemoTask.Visible := False;
  MemoAboutMe.Visible := False;
  GroupBox1.Visible := True;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  MemoTask.Visible := False;
  MemoAboutMe.Visible := True;
  GroupBox1.Visible := False;
end;

procedure TForm1.ReadFromFile;
var
  i: Integer;
begin
  Assignfile (f , OpenDialog1.FileName);
  reset (f);
  readln (f , n);
  setlength (m , n + 1);
  for i := 1 to n do
    read (f , m[i]);
  closefile (f);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  if opendialog1.Execute then begin
    ListBox1.Items.LoadFromFile(OpenDialog1.FileName);
    BitBtn2.Enabled := True;
  end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
  i , k : integer;
  Max : real;
  m1 : array of real;
begin
  ReadFromFile;
  SetLength (m1 , n);
  Label2.Caption := '���������: ';

  k := 0;
  max := MaxElement;
  for i := 1 to n do
    if max <> m[i] then begin
      inc (k);
      m1[k] := m[i];
    end;

  setlength (m1 , k);
  for i := 1 to k do
    Label2.Caption := Label2.Caption + FormatFloat ('0.##' , m1[i]) + ' ';

end;

end.
