unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Coordinate = record
    x : integer;
    y : integer;
  end;

var
  Form1: TForm1;
  point: TPoint;
  pointers: array of Coordinate;
  n : integer;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  with Image1.Canvas do begin
    Brush.Color := clYellow;
    FillRect(Rect(0, 0, ClipRect.Right, ClipRect.Bottom));
  end;
  n := 0;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
  GetCursorPos(point);
  Form1.Canvas.Brush.Color := clRed;
  inc (n);
  setlength (pointers , n);

  pointers[n].x := point.X - Form1.Left - 13;
  pointers[n].y := point.Y - Form1.Top - 40;
  Form1.Canvas.Ellipse(pointers[n].x, pointers[n].y, pointers[n].x + 10, pointers[n].y + 10);
end;

end.
