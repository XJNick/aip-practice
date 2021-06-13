unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.Buttons;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    MemoTask: TMemo;
    MemoAboutMe: TMemo;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure MakeWords;
    procedure Task2;
    procedure Task3;
    procedure Task4;
    function Mirror(s : string) : String;
    function CheckSymbols (s : string) : Boolean;
    { Public declarations }
  end;

var
  Form1: TForm1;
  s : string;
  Words : array of string;
  n : integer;

implementation

{$R *.dfm}

function TForm1.Mirror(s : string) : String;
var
  s1 : string;
  i , j : integer;
begin
  j := 0;
  s1 := '';
  for i := length(s) downto 1 do begin
    inc (j);
    insert(s[i] , s1 , j);
  end;
  Mirror := s1;
end;

procedure TForm1.Task2;
var
  i : integer;
  word : string;
begin
  label3.Caption := 'б) ';
  for i := 0 to n do begin
    word := words[i];
    if (word[1] = 'а') and (word[length(word)] = '€') then
      label3.Caption := label3.Caption + word + ' ';
  end;

end;

procedure TForm1.Task3;
var
  i: Integer;
begin
  label4.Caption := 'в) ';
  for i := 0 to n do begin
    if ((i + 1) mod 2 ) = 0 then begin
      words[i] := Mirror(words[i]);
      label4.Caption := label4.Caption + words[i] + ' ';
    end;

  end;
end;

function TForm1.CheckSymbols (s : string): Boolean;
var
  i, k : integer;
  mn : set of char;
begin
  mn := [];
  k := 0;
  for i := 1 to length(s) do begin
    if not(s[i] in mn) then begin
      inc (k);
      mn := mn + [s[i]];
    end;
  end;

  CheckSymbols := k > 2;
end;

procedure TForm1.Task4;
var
  i : integer;
begin
  MakeWords;
  label5.Caption := 'г) ';
  for i := 0 to n do
    if (CheckSymbols(words[i])) then
      label5.Caption := label5.Caption + words[i] + ' ';
end;

procedure TForm1.MakeWords;
var
  i , k : integer;
  word : string;
begin
  i := 1;
  k := 0;
  word := '';
  while i <= Length(s) do begin
    if s[i] <> ' ' then
      word := word + s[i]
    else
      if word <> '' then begin
        inc(k);
        SetLength(words , k);
        words[k - 1] := word;
        word := '';
      end;
    inc (i);
  end;
  n := k - 1;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  i : integer;
begin
  label2.Caption := '–езультат: ';
  s := Edit1.Text + ' ';
  MakeWords;
  Task2;
  Task3;
  Task4;

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
