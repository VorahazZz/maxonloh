unit Unit13;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { Ttest3 }

  Ttest3 = class(TForm)
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
  test3: Ttest3;
  k13,t13,j, neponyatnayaperemennaya:integer;
  a,lab2:string;
  s:textfile;
implementation
  uses unit5,unit9,Unit11, unit1;
{$R *.lfm}

{ Ttest3 }

procedure Ttest3.Button1Click(Sender: TObject);
begin
  glava3.show;
  test3.hide;
end;

procedure Ttest3.Button2Click(Sender: TObject);
begin
  stest1.show;
  test3.hide;
end;

procedure Ttest3.Button3Click(Sender: TObject);
begin
  t13:=100;
  k13:=0;
  if radiogroup1.itemindex = 0 then inc (k13);
  if checkgroup1.checked[1]
    or checkgroup1.checked[2]
    or (checkgroup1.checked[1] and checkgroup1.checked[2])
    or (checkgroup1.checked[0] and checkgroup1.checked[1] and checkgroup1.checked[2])
    or (checkgroup1.checked[0] and checkgroup1.checked[1]) then inc (neponyatnayaperemennaya)
  else
  begin
     if checkgroup1.checked[0] then
    begin
      inc (k13);
    end;
  end;
  if edit1.text = 'высокая стена лотрика' then inc (k13);
  if radiogroup2.ItemIndex = 0 then inc (k13);
  if radiogroup3.ItemIndex = 0 then inc (k13);
  lab2:=inttostr(k13);
  a:='';
    assignfile(s,'rez.txt');
    reset(s);
    while (not eof(s)) do
    begin
      readln(s, a);
      end;
    append(s);
  write(s, a);
  write(s, y+'||'+'Тест 3'+'||' +'Правильных ответов:' +lab2+ '||');
  closefile(s);
  showmessage('Данные сохранены');
  rez1.show;
  test3.hide;
end;

procedure Ttest3.FormCreate(Sender: TObject);
begin
  test3.WindowState:=wsMaximized;
  test3.BorderStyle:=bsNone;
  test3.Width:=screen.Width;
  test3.height:=screen.Height;
  FormStyle:=fsStayOnTop;
end;

procedure Ttest3.FormShow(Sender: TObject);
begin
  showmessage('На выполнение теста дается 2 минуты.');
  Timer1.Enabled:=true;
  j:=120;
end;

procedure Ttest3.Timer1Timer(Sender: TObject);
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

end.

