unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    E1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  week: array[0..6] of string = ('�����������', '�������', '�����', '�������', '�������', '�������', '�����������');
var
  Form1: TForm1;
  can_do: boolean;
  a: 1..31;
  b: 1..12;
  from_beginning: 0..365;
  week_day: string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i: byte;
begin
  if Edit1.Text <> '' then
  begin
    a := StrToInt(Edit1.Text);
    can_do := (a>0) and (a<32);
    from_beginning := 1;
  end;
  if can_do then
  begin
    b := ComboBox1.ItemIndex + 1;
    for i := 0 to b-1 do
    begin
      case i of
        1, 3, 5, 7, 8, 10, 12: from_beginning := from_beginning + 31;
        2: from_beginning := from_beginning + 28;
        4, 6, 9, 11: from_beginning := from_beginning + 30;
      end;
    end;
    from_beginning := (from_beginning + a) mod 7;
  Label1.Caption := IntToStr(a) + '.' + IntToStr(b) + ' ���� ����,' + #13#10 +
                    '������� ���������� �� �����,' + #13#10 +
                    '����� ' + week[from_beginning];
  end
  else
    MessageBox(0, '���� ��������� �����������', '������', mb_iconError);
end;

procedure TForm1.E1Click(Sender: TObject);
begin
  Memo1.Font.Size := 14;
  Memo1.Text := '���� ����������� ����� a,b, ������� ���������� ����� � �����. �� ����� ���� ������ ���������� ��� ����, ���� ��� - ������������, 1 ������ ����� ���� - �����.';
  Memo1.Visible := true;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Memo1.Visible := false;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Memo1.Font.Size := 16;
  Memo1.Text := '������ ���������� � ����: ������� ������, ����������� ������ 207-�, �� ���������� �����.';
  Memo1.Visible := true;;
end;

end.
