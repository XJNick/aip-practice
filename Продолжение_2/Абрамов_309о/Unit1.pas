unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Image1: TImage;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n, nn: integer;
  arr: array of integer;
  i, j: byte;
  down: boolean;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
  f: textFile;
begin
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenDialog1.Execute then
  begin
    AssignFile(f,OpenDialog1.FileName);
    Reset(f);
    SetLength(arr, 100);
    nn := 0;
    while not eof(f) do
    begin
      inc(nn);
      read(f, arr[nn]);
    end;
    SetLength(arr, nn+1);

    CloseFile(f);
    Button2.Enabled := true;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Timer1.Enabled := true;
  Image1.Canvas.Brush.Color := clWhite;
  i := 1;
  j := 1;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
   Memo1.Text := '���� ����������� ����� x[1], y[1], r[1], ..., x[n], y[n], r[n]. ����� x[i], y[i] �������� ������� ������ ������� r[i]. ��������� �� ������ ����� �������� �������������������,'+ #13#10
    +'� ����� ��������� ��. ������� ������ ���������� � ����� ��� � 1 � ������������� ������ ��� � n; ������� �������� � �������� �������.';
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

procedure TForm1.Timer1Timer(Sender: TObject);
var
  k: Integer;
begin
  Timer1.Enabled := j>0;
  randomize;
  Image1.Canvas.Ellipse(arr[j]-arr[j+2], arr[j+1]-arr[j+2], arr[j]+arr[j+2], arr[j+1]+arr[j+2] );
  if i<=nn div 3 then
  begin
    Image1.Canvas.Brush.Color := clWhite;
    inc(j, 3);
  end
  else
  begin
    Image1.Canvas.Brush.Color := rgb(random(255), random(255), random(255));
    dec(j, 3);
  end;
  inc(i);
end;

end.
