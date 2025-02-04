unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function w_end(day: integer):string;
  end;

const
  mth: array[1..12] of string = ('������', '�������', '����', '������', '���', '����', '����', '������', '��������', '�������', '������', '�������');

var
  Form1: TForm1;
  a: 1..31;
  b: 1..12;
  c: word;
  can_do, leap: boolean;
  from_beginning, to_the_end: 0..366;

implementation

{$R *.dfm}

procedure TForm1.N1Click(Sender: TObject);
begin
  Memo1.Font.Size := 14;
  Memo1.Visible := true;
  Memo1.Text := '���� ����������� ����� a, b, c, ������� ���������� �����, ����� � ���.' + #13#10 +
                '�) ��������� ������������ ���� ����.' + #13#10 +
                '�) ����� ����� ����� ��� � ������ ����.' + #13#10 +
                '�) ���������� ������� ������ ���� �������� �� ����� ����.' + #13#10;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Memo1.Visible := false;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Memo1.Font.Size := 16;
  Memo1.Visible := true;
  Memo1.Text := '������ ���������� � ����: ������� ������, ����������� ������ 207-�, �� ���������� �����.'
end;

function TForm1.w_end(day: integer):string;
begin
  if (day mod 10 = 1) and (day <> 11) then
    w_end := ' ����'
  else if (day mod 10 > 1) and (day mod 10 < 5) and not(day in [12..19]) then
        w_end := ' ���'
       else
        w_end := ' ����'  
       
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i: byte;
begin
  from_beginning := 0;
  if (Edit1.Text <> '') and (Edit2.Text <> '') then
  begin
    a := StrToInt(Edit1.Text);
    c := StrToInt(Edit2.Text);
    leap := (c mod 4 = 0) and ((c mod 100 <> 0) or ( c mod 400 = 0));
  end
  else
    MessageBox(0, '���������� ��������� ��� ����', '������', mb_iconerror);
    b := ComboBox1.ItemIndex + 1;
  can_do := (a<32) and (a>0) and (c>0);
  if leap then
    to_the_end := 366
  else
    to_the_end := 365;
  if not leap and (b=2) and (a>28) then
    can_do := false;
  if can_do then
  begin
    for i := 1 to b-1 do
    begin
      case i of
        1, 3, 5, 7, 8, 10, 12: from_beginning := from_beginning + 31;
        4, 6, 9, 11: from_beginning := from_beginning + 30;
          2: if leap then
              from_beginning := from_beginning + 29
             else
              from_beginning := from_beginning + 28;
        end;
      end;
      from_beginning := from_beginning + a;
      to_the_end := to_the_end - from_beginning;
      Label2.Caption := '��� ���� ���������';
      Label3.Caption := '���-�� ���� � ������ ����: ' + IntToStr(from_beginning) + w_end(from_beginning);
      Label4.Caption := '�� ����� ����: ' + IntToStr(to_the_end) + w_end(to_the_end);
  end
  else
  begin
    Label2.Caption := '��� ���� �����������';
    Label3.Caption := '���-�� ���� � ������ ����: ' +  'undefined';
    Label4.Caption := '�� ����� ����: ' + 'undefined';
  end;
end;

end.
