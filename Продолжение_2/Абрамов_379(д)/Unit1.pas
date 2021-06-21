unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    StringGrid1: TStringGrid;
    Button1: TButton;
    ListBox1: TListBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Button2: TButton;
    GroupBox2: TGroupBox;
    OpenDialog1: TOpenDialog;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure main;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  b: array[1..9] of real;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
  i, j: Integer;
begin
  if (Edit1.Text <> '') and (Edit2.Text <> '') then
  begin
    if (StrToInt(Edit1.Text)>2) and (StrToInt(Edit1.Text)>2) then
    begin
      for i := 0 to StringGrid1.RowCount-1 do
    StringGrid1.Rows[i].Clear;
      ListBox1.Clear;
      StringGrid1.RowCount := StrToInt(Edit1.Text);
      StringGrid1.ColCount := StrToInt(Edit2.Text);
      randomize;
      for i := 0 to StringGrid1.RowCount-1 do
        for j := 0 to StringGrid1.ColCount-1 do
          StringGrid1.Cells[j, i] := FormatFloat('0.#', (random(100)/(random(10)+1)));
          main;
    end
    else
      MessageBox(0, '���������� ����� � �������� ������ ���� ������ ����', '������', mb_iconError);
  end
  else
    MessageBox(0, '��� ��������� ���������� ��������� ���� "������" � ���� "�������"', '������', mb_iconError);

end;

procedure TForm1.main;
var
  i, j: Integer;
  max, min: real;
begin
  for i := 0 to StringGrid1.RowCount-1 do
  begin
    max := StrToFloat(StringGrid1.Cells[1, i]);
    min := StrToFloat(StringGrid1.Cells[1, i]);
    for j := 0 to StringGrid1.ColCount-1 do
    begin
      if StrToFloat(StringGrid1.Cells[j, i]) > max then
        max := StrToFloat(StringGrid1.Cells[j, i]);
      if StrToFloat(StringGrid1.Cells[j, i]) < min then
        min := StrToFloat(StringGrid1.Cells[j, i]);
    end;
    b[i] := max-min;
    ListBox1.Items.Add('������ '+ IntToStr(i+1) + ') ' + FloatToStr(b[i]));
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  f: TextFile;
  i, j: Integer;
  a: real;
begin
  ListBox1.Clear;
  OpenDialog1.InitialDir := ExtractFilePath(ParamStr(0));
  if OpenDialog1.Execute then
  begin
    for i := 0 to StringGrid1.RowCount-1 do
    StringGrid1.Rows[i].Clear;
    AssignFile(f, OpenDialog1.FileName);
    Reset(f);
    i := 0;
    j := 0;
    while not eof(f) do
    begin
      if eoln(f) then
      begin
        inc(i);
        j := 0;
      end;
       read(f, a);
       StringGrid1.Cells[j, i] := FloatToStr(a);
       inc(j);
    end;

    StringGrid1.RowCount := i+1;
    StringGrid1.ColCount := j;
    CloseFile(f);
    main;
  end;

end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Memo1.Text := '���� �������������� ������� MxN. ���������� ����� b[1],...,b[m], ������ ��������� ���������� � ���������� �������� ��������� �����';
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
