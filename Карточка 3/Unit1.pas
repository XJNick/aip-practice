unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXPickers, Vcl.Menus,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Edit5: TEdit;
    Label3: TLabel;
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure enter();
  end;

  hours = 0..23;
  mins = 0..59;
var
  Form1: TForm1;
  h1, h2: hours;
  m1, m2: mins;
  t, can_do: boolean;
  k: 0..maxint;

implementation

{$R *.dfm}

procedure TForm1.enter;
begin
  if (Edit1.Text <> '') and (Edit2.Text <> '') and (Edit3.Text <> '') and (Edit4.Text <> '') then
  begin
    t := false;
    h1 := StrToInt(Edit1.Text);
    m1 := StrToInt(Edit2.Text);
    h2 := StrToInt(Edit3.Text);
    m2 := StrToInt(Edit4.Text);
    can_do := (h1>=0) and (h2>=0) and (h1<=23) and (h2<=23) and
            (m1>=0) and (m2>=0) and (m1<=59) and (m2<=59);
  end
  else
    MessageBox(0, '���������� ��������� ��� ����', '������', mb_iconerror);

end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Memo1.Font.Size := 10;
  Memo1.Visible := true;
  Memo1.Text := 'var h1, h2: 0..23; m1,m2: 0..59; t: boolean; k: 0..maxint; ' + #13#10 +
                '������ "��������": ���������� t ��������� true, ����  ����� h1, m2' +
                ' ������������ (� ������ �����) ������� h2, m2, � �������� false �����.' + #13#10 +
                ' ������ "��������� �� h1+4": ��������� ���������� h2 ����� 4-�� ����, ����������' +
                '�� ����� h1 (� ������ ����, ��� �� 23 ������ ���� ����� 0 �����).' + #13#10 +
                '��������� ���������� h2 ����� k-�� ����, ���������������' +
                ' ���� h1(� ������ ����, ��� ����� �������� 0 ����� ���� 23 ����). ';
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Memo1.Visible := false;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Memo1.Font.Size := 18;
  Memo1.Visible := true;
  Memo1.Text := '������ ���������� ������� �������, ����������� 207-� ������, �� ���������� �����';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  enter;
  if can_do then
  begin
//    if h1=h2 then
//      t := m2>m1
//    else
//      t := h2>h1

//    �������������� ������� (��������):
    t := h1*60 + m1 < h2*60 + m2;

//    �������������� ������� �2:
//    t := (h1=h2) and (m1<m2) or (h1<h2);

    if t and can_do then
      MessageBox(0, 'True', 'h1:m1>h2:m2', 0)
    else
      MessageBox(0, 'False', 'h1:m1>h2:m2', 0);
  end
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: Integer;
begin
  enter;
  if can_do then
  begin
    //  for i := 1 to 4 do
//  begin
//    if (h1=24) then
//    begin
//      h1 := 0;
//      inc(h1);
//    end
//    else
//      inc(h1);
//    if h1=24 then
//      h2 := 0
//    else
//      h2 := h1;
//  end;

//    �������������� �������:
    h2 := h1+4;
    if h2>=24 then
      h2 := h2-24;
    Edit3.Text := (IntToStr(h2))
  end
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  cd: boolean;
  i: integer;
begin
  enter;
  cd := can_do and (Edit5.Text <> '');
  if cd then
  begin
    k := StrToInt(Edit5.Text);
    ShowMessage('+');
    h2 := h1;
    for i := k downto 1 do
    begin
      if h2=0 then
        h2 := 23
      else
        dec(h2);
    end;
    Edit3.Text := IntToStr(h2);
  end
  else
    ShowMessage('err');
end;

end.
