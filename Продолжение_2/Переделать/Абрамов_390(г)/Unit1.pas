unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Grids, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    ListBox1: TListBox;
    StringGrid1: TStringGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Edit2: TEdit;
    Label3: TLabel;
    MemoAboutMe: TMemo;
    MemoTask: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ClearStringGrid;
    procedure Task;
    function CheckElements(i : integer) : Boolean;
    { Public declarations }
  end;

var
  Form1: TForm1;
  n , m : word;
implementation

{$R *.dfm}

function TForm1.CheckElements(i: Integer) : Boolean;
var
  j : Integer;
  l : Boolean;
begin
  l := False;
  with StringGrid1 do begin
    for j := 1 to n do begin
      if (abs(StrToFloat(Cells[j , i])) >= 1) and (abs(StrToFloat(Cells[j , i])) <= 1.5) and not(l) then
        l := True;
    end;
  end;
  CheckElements := l;
end;

procedure TForm1.Task;
var
  i , j : Integer;
  Composition : real;
begin
  with StringGrid1 do begin
    ListBox1.Clear;
    for i := 1 to m do 
      if CheckElements(i) then begin
        Composition := 1;
        for j := 1 to n do
          Composition := Composition * StrToFloat(Cells[j , i]) * StrToFloat(Cells[j , i]);
        ListBox1.Items.Add('������ ' + IntToStr(i) + ': ' + FormatFloat('0.00000E+00' , Composition));
      end;
  end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  ClearStringGrid;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Task;
end;

procedure TForm1.ClearStringGrid;
var
  i , j : integer;
begin
  with StringGRid1 do
    for i := 0 to RowCount do
      for j := 0 to ColCount do
        Cells[j, i] := '';
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

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  i , j : integer;
begin
  ClearStringGrid;
  if (Edit1.Text <> '') and (Edit2.Text <> '') then begin
    n := StrToInt(edit2.Text);
    m := StrToInt(edit1.Text);

    With StringGrid1 do begin

      if n > 10 then
        ColCount := n + 1
      else
        ColCount := 10;

      if m > 10 then
        RowCount := m + 1
      else
        RowCount := 10;

      for i := 0 to n do
        Cells[i , 0] := ' ' + IntToStr(i);
      for i := 0 to m do
        Cells[0 , i] := ' ' + IntToStr(i);

      for i := 1 to m do
        for j := 1 to n do
          Cells[j, i] := formatfloat('0.##' , Random * 21 - 10);
    end;

  end;
end;

end.
