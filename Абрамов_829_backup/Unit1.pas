unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function black_friday_count(year: integer):integer;
    function days_name(day, month, year: Integer): integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.days_name(day, month, year: Integer): integer;
var
  year_code: integer;
  month_code: byte;
begin
  year := year * 100 - 99;
  year_code := year div 100;
  case year_code of
    1, 5, 9, 13, 17, 21, 25, 29: year_code := 4;
    2, 6, 10, 14, 18, 22, 26, 30: year_code := 2;
    3, 7, 11, 15, 19, 23, 27, 31: year_code := 0;
    4, 8, 12, 16, 20, 24, 28, 32: year_code := 6;
  end;
  year_code := (year_code + year mod 100 + (year mod 100) div 4) mod 7;
  case month of
    1, 10: month_code := 1;
    5: month_code := 2;
    8: month_code := 3;
    2, 3, 11: month_code := 4;
    6: month_code := 5;
    9, 12: month_code := 6;
    4, 7: month_code := 0;
  end;
  case (day + month_code + year_code) mod 7 of
    0: days_name := 6;
    1: days_name := 7;
    2: days_name := 1;
    3: days_name := 2;
    4: days_name := 3;
    5: days_name := 4;
    6: days_name := 5;
  end;
end;

function TForm1.black_friday_count(year: integer):integer;
const
  mth: array[1..12] of byte = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
var
  i: Integer;
  day, month, k: integer;
begin
  case days_name(1, 1, year) of
    1: day := 5;
    2: day := 4;
    3: day := 3;
    4: day := 2;
    5: day := 1;
    6: day := 7;
    7: day := 6;
  end;
  year := year * 100 - 99;
  k := 0;
  i := 1;
  while (day + mth[i]) mod 7 <> 0 do    {��� �����, ����� ��-�����}
  begin                                 {����� ����� 13� ����� � ��� ���� ������}
    inc(i);
  end;
  month := i;
  for i := year to year + 99 do
  begin
    while month <= 12 do
    begin
      day := day mod 7;
      if day = 0 then
        inc(k);
      case month of
        1, 3, 5, 7, 8, 10, 12: day := day + 31;
        2: if (i mod 4 = 0) or (i mod 100 = 0) and (i mod 400 <> 0) then
            day := day + 29
           else
            day := day + 28;
        else
          day := day + 30;
      end;
      inc(month);
    end;
    month := 1;
  end;
  black_friday_count := k;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (Edit1.Text <> '') then
  begin
//    Label1.Caption := '� 20� ���� ' + IntToStr(black_friday_count(20)) + ' �������';
    Label2.Caption := '� ' + Edit1.Text + '� ���� ' + IntToStr(black_friday_count(StrToInt(Edit1.Text))) + ' �������';
//    Label1.Caption := IntToStr(days_name(1, 1, 21));
  end;
end;

end.
