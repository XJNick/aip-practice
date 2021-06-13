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
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Edit1.Text <> '' then
    if ((StrToInt(Edit1.Text) mod 4 = 0) or (StrToInt(Edit1.Text) mod 100 = 0)
      and (StrToInt(Edit1.Text) mod 400 <> 0)) then
      MessageBox(0, 'Этот год имеет 366 дней', 'Високоснось года', 0)
    else
      MessageBox(0, 'Этот год имеет 365 дней', 'Високоснось года', 0)
   else
    MessageBox(0, 'Введите число в строку', 'Високоснось года', 0);
  
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Visible := true;
  Memo1.Font.Size := 14;
  Memo1.Text := 'Дан номер года. Указать кол-во дней в этом году.';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Memo1.Visible := true;
  Memo1.Font.Size := 10;
  Memo1.Text := 'Введите число в строку и нажмите "Ввод"';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Memo1.Visible := true;
  Memo1.Font.Size := 10;
  Memo1.Text := 'Задачу выполнил Громыко Никита обучающийся группы 207-П на факультете ВТиПО';
end;

end.
