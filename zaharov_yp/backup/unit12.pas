unit Unit12;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { Ttest2 }

  Ttest2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CheckGroup1: TCheckGroup;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  test2: Ttest2;
  k12, t12,j, neponyatnayaperemennaya:integer;
  a,lab2:string;
  s:textfile;

implementation
  uses unit5, unit10, unit9, unit1;
{$R *.lfm}

{ Ttest2 }

procedure Ttest2.FormCreate(Sender: TObject);
begin
  test2.WindowState:=wsMaximized;
  test2.BorderStyle:=bsNone;
  test2.Width:=screen.Width;
  test2.height:=screen.Height;
  FormStyle:=fsStayOnTop;
  Timer1.Enabled:=false;
end;

procedure Ttest2.FormShow(Sender: TObject);
begin
  showmessage('На выполнение теста дается 2 минуты.');
  Timer1.Enabled:=true;
  j:=120;
end;

procedure Ttest2.Timer1Timer(Sender: TObject);
  var
H,M,S:Integer;
begin
j := j - 1;
H := J div 3600;
M := (J - H*3600) div 60;
S := J - H*3600 - M*60;
Label7.Caption := IntToStr(H) + ':' + IntToStr(M) + ':' + IntToStr(S);
if j = 0 then
begin
Timer1.Enabled := False;
ShowMessage('Время истекло');
Button3.Click;
end;
end;

procedure Ttest2.Button3Click(Sender: TObject);
begin
  t12:=100;
  k12:=0;
  if radiogroup1.itemindex = 0 then inc (k12);
  if checkgroup1.checked[1]
    or checkgroup1.checked[2]
    or (checkgroup1.checked[1] and checkgroup1.checked[2])
    or (checkgroup1.checked[0] and checkgroup1.checked[1] and checkgroup1.checked[2])
    or (checkgroup1.checked[0] and checkgroup1.checked[1]) then inc (neponyatnayaperemennaya)
  else
  begin
     if checkgroup1.checked[0] then
    begin
      inc (k12);
    end;
  end;
  if edit1.text = 'высокая стена лотрика' then inc (k12);
  if radiogroup2.ItemIndex = 0 then inc (k12);
  if radiogroup3.ItemIndex = 0 then inc (k12);
  lab2:=inttostr(k12);
  a:='';
    assignfile(s,'rez.txt');
    reset(s);
    while (not eof(s)) do
    begin
      readln(s, a);
      end;
    append(s);
  write(s, a);
  write(s, y+'||'+'Тест 2'+'||' +'Правильных ответов:' +lab2+ '||');
  closefile(s);
  showmessage('Данные сохранены');
  rez1.show;
  test2.hide;
end;

procedure Ttest2.Button2Click(Sender: TObject);
begin
  stest1.show;
  test2.hide;
end;

procedure Ttest2.Button1Click(Sender: TObject);
begin
  glava2.show;
  test2.hide;
end;

end.

