unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
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
  end;

var
  Form1: TForm1;
  n, m: integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  vis, can_do: boolean;
  i: integer;
  k: byte;
  en: string;
begin
  k := 0;
  can_do := true;
  n := StrToInt(Edit1.Text);
  m := StrToInt(Edit2.Text);
  if n>m then
  begin
    MessageBox(0, 'Первое число должно быть меньше второго', 'Ошибка', mb_iconerror);
    can_do := false;
  end;
  if (n<=0) or (m<=0) then
  begin
    MessageBox(0, 'Числа не могут быть меньше или равны нулю', 'Ошибка', mb_iconerror);
    can_do := false
  end;

  if can_do then
  begin
    for i := n to m do
      if (i mod 4 = 0) or (i mod 100 = 0) and (i mod 400 <> 0) then
        inc(k);
    ShowMessage('Кол-во лет между ' + IntToStr(n) + ' и ' + IntToStr(m) + ' = ' + IntToStr(k));
  end;

end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Memo1.Text := 'Даны натуральные числа n и m. Определить сколько из чисел от n до m являются високосными';
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Memo1.Text := 'Введите числа в поля и нажмите на кнопку "Проверить"';
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Memo1.Text := 'Задача выполнена обучающимся 207-П группы Громыко Никитой'
end;

end.
