unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus;

type

  stroka = array of real;

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
    function IncreasingCheck (St : stroka ; n : word) : Boolean;
    function DecreationCheck (St : stroka ; n : word) : Boolean;
    procedure ReadFromFile;
    { Public declarations }
  end;

var
  Form1: TForm1;
  m : stroka;
  n : longint;
  f : textfile;

implementation

{$R *.dfm}

function TForm1.IncreasingCheck (St : stroka ; n : word) : Boolean;
var
  i : integer;
  flag : Boolean;
begin
  Flag := True;
  for i := 1 to n - 1 do
    if not(st[i] <= st[i + 1]) and (Flag) then
      Flag := false;
  IncreasingCheck := Flag;
end;

function TForm1.DecreationCheck (St: stroka; n: Word) : Boolean;
var
  i : integer;
  flag : Boolean;
begin
  Flag := True;
  for i := 1 to n - 1 do
    if not(st[i] >= st[i + 1]) and (Flag) then
      Flag := false;
  DecreationCheck := Flag;
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
  i , j , k : integer;
  m1 , m2 : array of real;
begin
  ReadFromFile;
  Label2.Caption := '���������: ';
  setlength (m1 , n + 1);

  j := 0;
  k := 0;
  if not(not(IncreasingCheck(m , n)) or not(DecreationCheck(m , n))) then begin
    for i := 1 to n do begin
      inc (j);
      m1[j] := m[i];
    end;
  end
  else begin
    for i := 1 to n do
      if i mod 4 <> 0 then begin
        inc (j);
        m1[j] := m[i];
      end;
    n := j;
    setlength (m1 , n)
  end;


  for i := 1 to n do begin
    Label2.Caption := Label2.Caption + FormatFloat ('0.##' , m1[i]) + ' ';
  end;

end;

end.
