unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus;

type
  tMonth = (jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec);
  tDay = (mon, tue, wed, thu, fri, sat, sun);
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ListBox1: TListBox;
    MainMenu1: TMainMenu;
    E1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function black_friday_count(year: word):byte;
    function days_name(year: word): tDay;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.days_name(year: word): tDay;
var
  year_code: word;
  month: tMonth;
  i, code: byte;
begin
  year := year * 100 - 99;
  year_code := year div 100;
  code := 6;
  for i := 17 to year_code do
  begin
    code := code - 2;
    if code>100 then
      code := 6
  end;
  year_code := (code + year mod 100 + ((year mod 100) div 4)) mod 7;
//     day  month_code
  case (1 +     1    +  year_code) mod 7 of
    0: days_name := sat;
    1: days_name := sun;
    2: days_name := mon;
    3: days_name := tue;
    4: days_name := wed;
    5: days_name := thu;
    6: days_name := fri;
  end;
end;

procedure TForm1.E1Click(Sender: TObject);
begin
  Memo1.Text := '��������� ���������� ������, ������������ �� 13-� �����' + #13#10 + '�) XX ��������;' + #13#10 + '�) �������� � ������� n, ��� n-������ ����������� �����';
  Memo1.Visible := true;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Memo1.Visible := false;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Memo1.Text := '������ �������� ������� ������, ����������� ������ 207-�, �� ���������� �����';
  Memo1.Visible := true;
end;

function TForm1.black_friday_count(year: word):byte;
const
  mth: array[1..12] of byte = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
var
  i: word;
  day: integer;
  k: byte;
  month: tMonth;
begin
  ListBox1.Clear;
  day := 5 - ord(days_name(year));
  if day <= 0 then
    day := day + 7;
  i := 1;

  while day <> 13 do
  begin
    day := day + 7;
    if day > mth[i] then
    begin
      day :=  day - mth[i];
      inc(i);
    end;
  end;

  year := year * 100 - 99;
  k := 0;
  month := tMonth(i-1);
  day := 0;

  for i := year to year + 99 do
  begin
    while month <= dec do
    begin
      day := day mod 7;
      if day = 0 then
      begin
        inc(k);
        ListBox1.Items.Add(IntToStr(k) + ') ' + IntToStr(ord(month)+1) + '.' + IntToStr(i));
      end;
      case month of
        jan, mar, may, jul, aug, oct, dec: day := day + 31;
        feb: if (i mod 4 = 0) or (i mod 100 = 0) and (i mod 400 <> 0) then
            day := day + 29
           else
            day := day + 28;
        else
          day := day + 30;
      end;
      inc(month);
    end;
    month := jan;
  end;

  black_friday_count := k;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (Edit1.Text <> '') then
  begin
    if StrToInt(Edit1.Text) > 16 then
    begin
//      Label1.Caption := '� 20 ���� ' + IntToStr(black_friday_count(20)) + ' �������';
      Label2.Caption := '���-�� ������ � ' + Edit1.Text + ' ����:' + #13#10
                       + IntToStr(black_friday_count(StrtoInt(Edit1.Text)));
    end
    else
      MessageBox(0, '�.�. ������������� ��������� ��� ������ � 16 ����, ������� � ���� ����� ������ 16', '������', mb_iconInformation);
  end
  else
    MessageBox(0, '���������� ������ ���', '������', mb_iconError);
end;

end.
