unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  tMonth = (jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec);
  TForm1 = class(TForm)
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    E1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a, c, ul_calendar, gr_calendar: integer;
  b: tMonth;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
const
  mth: array[0..11] of byte = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
var
  i: word;
  diff, add_day: byte;
  leap, can_do: boolean;
  m: string;
begin
  add_day := 0;
  can_do := false;
  if (Edit1.Text<>'') and (Edit2.Text<>'') then
  begin
    c := StrToInt(Edit2.Text);
    a := StrToInt(Edit1.Text);
    leap := (c mod 4 = 0) and ((c mod 100 <> 0) or (c mod 400 = 0));
    if leap then
      add_day := 1;
    can_do := (a>0) and (a<=mth[ord(b)]+add_day) and (StrToInt(Edit2.Text)>0);
  end;

  if can_do then
  begin
    case ComboBox1.ItemIndex of
      0: b := jan;
      1: b := feb;
      2: b := mar;
      3: b := apr;
      4: b := may;
      5: b := jun;
      6: b := jul;
      7: b := aug;
      8: b := sep;
      9: b := oct;
      10: b := nov;
      11: b := dec;
    end;

    ul_calendar := 0;
    gr_calendar := 0;

    for i := 1 to c do
    begin
      if i mod 4 = 0 then
        inc(ul_calendar);
      if (i mod 4 = 0) and ((i mod 100 <> 0) or (i mod 400 = 0)) then
        inc(gr_calendar);
    end;

    diff := ul_calendar-gr_calendar-2;

    a := a + diff;
    if a-add_day>mth[ord(b)] then
    begin
      a := a - mth[ord(b)] - add_day;
      if b = dec then
      begin
        b := jan;
        inc(c);
      end
      else
        b := succ(b);
    end;

   case b of
    jan: m := ' ������ ';
    feb: m := ' ������� ';
    mar: m := ' ����� ';
    apr: m := ' ������ ';
    may: m := ' ��� ';
    jun: m := ' ���� ';
    jul: m := ' ���� ';
    aug: m := ' ������� ';
    sep: m := ' �������� ';
    oct: m := ' ������� ';
    nov: m := ' ������ ';
    dec: m := ' ������� ';
   end;

    Label1.Caption := '�� ������������ ���������,' + #13#10 + '�������� ���� ���� �������������:' + #13#10
                      + IntToStr(a) + m + IntToStr(c) + ' ����';
  end
  else
    MessageBox(0, '���������� ��������� ��������� ��� ����', '������', mb_iconError);
end;

procedure TForm1.E1Click(Sender: TObject);
begin
  Memo1.Font.Size := 14;
  Memo1.Text := '���� ����������� ����� a, b � c, ������������ ����� ����� � ��� �� ���������� ���������. �������� ��� ���� �� ������������ ���������';
  Memo1.Visible := true;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Memo1.Visible := false;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Memo1.Font.Size := 16;
  Memo1.Text := '������ �������� ������� ������, ����������� ������ 207-�, �� ���������� �����';
  Memo1.Visible := true;
end;

end.
