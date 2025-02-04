unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.Buttons;

type

  massiv = array of integer;

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    MemoAboutMe: TMemo;
    MemoTask: TMemo;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ListBox1: TListBox;
    OpenDialog1: TOpenDialog;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    function CheckNumerals (m : massiv ; a : integer): Boolean;
    procedure ReadFromFile;
    procedure Task1;
    procedure Task2;
    procedure Task3;
    procedure Task4;
    procedure Task5;
    procedure Task6;
    { Public declarations }
  end;

var
  Form1: TForm1;
  m : massiv;
  n : word;
  f : textfile;

implementation

{$R *.dfm}

function TForm1.CheckNumerals (m : massiv ; a : integer): Boolean;
var
  i : integer;
  mn : set of byte;
  flag : Boolean;
begin
  mn := [];
  flag := True;
  for i := 1 to n do begin
    if (m[i] = a) and not(m[i] in mn) then
      mn := mn + [m[i]]
    else
      if m[i] = a then
        flag := false;
  end;
  CheckNumerals := flag;
end;

procedure TForm1.Task1;
var
  i , CountDifferent : integer;
begin
  CountDifferent := 0;
  label2.Caption := '�) ';
  for i := 1 to n do
    if CheckNumerals(m , m[i]) then
      label2.Caption := label2.Caption + IntToStr(m[i]) + ' ';
end;

procedure TForm1.Task2;
var
  i : integer;
  mn : set of byte;
begin
  label3.Caption := '�) ';
  mn := [];
  for i := 1 to n do begin
    if not(CheckNumerals(m , m[i])) and not(m[i] in mn) then begin
      mn := mn + [m[i]];
      label3.Caption := label3.Caption + IntToStr(m[i]) + ' ';
    end;
  end;
end;

procedure TForm1.Task3;
var
  i , CountDifferent : integer;
  mn : set of byte;
begin
  label4.Caption := '�) ';
  for i := 1 to n do begin
    if not(m[i] in mn) then begin
      mn := mn + [m[i]];
      inc (CountDifferent);
    end;
  end;

  label4.Caption := label4.Caption + IntToStr(CountDifferent);
end;

procedure TForm1.Task4;
var
  Count , i : integer;
begin
  label5.Caption := '�) ';
  Count := 0;
  for i := 1 to n do
    if CheckNumerals(m, m[i]) then
      inc(count);
  label5.caption := label5.caption + IntToStr(Count);
end;

procedure TForm1.Task5;
var
  Count , i : integer;
  mn : set of byte;
begin
  label6.Caption := '�) ';
  Count := 0;
  mn := [];
  for i := 1 to n do
    if not(CheckNumerals(m, m[i])) and not(m[i] in mn) then begin
      inc(count);
      mn := mn + [m[i]];
    end;
  label6.caption := label6.caption + IntToStr(Count);
end;

procedure TForm1.Task6;
var
  i , j : integer;
  CheckNumber : Boolean;
  mn : set of byte;
begin
  CheckNumber := False;
  mn := [];
  Label7.Caption := '�) ';
  for i := 1 to n do
    for j := 1 to n do begin
      if (i <> j) and (m[i] = m[j]) and not(m[i] in mn) then begin
        CheckNumber := True;
        mn := mn + [m[i]];
      end;
    end;

  if CheckNumber then
    Label7.Caption := Label7.Caption + '�������'
  else
    Label7.Caption := Label7.Caption + '�� �������';
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
begin
  ReadFromFile;
  Task1;
  Task2;
  Task3;
  Task4;
  Task5;
  Task6;
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

end.
