unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXPickers, Vcl.Menus;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Memo1: TMemo;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  dt = record
    day: 1..31;
    maxDay: 28..31;
    month: 1..12;
    year: word;
  end;

var
  Form1: TForm1;
  date: dt;
  can_do: boolean;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  can_do := true;

  if (Edit1.Text <> '') and (Edit2.Text <> '') and (Edit3.Text <> '') then
  begin
    date.day := StrToInt(Edit1.Text);
    date.month := StrToInt(Edit2.Text);
    date.year := StrToInt(Edit3.Text);

    case date.month of
      1, 3, 5, 7, 8, 10, 12: date.maxDay := 31;
      4, 6, 9, 11: date.maxDay := 30;
      2: if (date.year mod 4 = 0) or (date.year mod 100 = 0) and (date.year mod 400 <>0) then
          date.maxDay := 29
         else
          date.maxDay := 28;
    end;
    can_do := (date.day>0) and (date.day<32) and (date.month>0) and
              (date.month<13) and (date.year>0) and (date.day <= date.maxDay);
    if can_do then
    begin
      if date.day+1 > date.maxDay then
        if date.month+1 > 12 then
        begin
          date.year := date.year+1;
          date.month := 1;
          date.day := 1;
        end
        else
        begin
          date.day := 1;
          date.month := date.month+1;
        end
      else
        date.day := date.day+1;
      Label1.Caption := '������ ����� ' + IntToStr(date.day) + '.' + IntToStr(date.month) + '.' + IntToStr(date.year);
    end
    else
      MessageBox(0, '���� ������� �����������', '������', mb_iconerror);
  end
  else
    MessageBox(0, '������� ������ � ����', '������', mb_iconerror);


end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Label1.Visible := false;
  Memo1.Height := 190;
  Memo1.Text := '���� ����������� ����� a, b, c, ������� ���������� ����� ����� � ���. �������� ������ ����� ���������� ���';
  Memo1.Visible := true;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Memo1.Visible := false;
  Label1.Visible := true;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Label1.Visible := false;
  Memo1.Height := 130;
  Memo1.Text := '������ �������� ������� ������, ����������� ������ 207-� �� ���������� �����';
  Memo1.Visible := true;
end;

end.
