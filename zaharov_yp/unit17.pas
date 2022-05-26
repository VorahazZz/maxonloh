unit Unit17;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { Ttest5 }

  Ttest5 = class(TForm)
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
  test5: Ttest5;
  k17,t17,j, neponyatnayaperemennaya:integer;
  a,lab2:string;
  s:textfile;
implementation
  uses unit16,unit5,unit9, unit1;
{$R *.lfm}

{ Ttest5 }

procedure Ttest5.Button1Click(Sender: TObject);
begin
  glava5.show;
  hide;
end;

procedure Ttest5.Button2Click(Sender: TObject);
begin
  stest1.show;
  hide;
end;

procedure Ttest5.Button3Click(Sender: TObject);
begin
  t17:=100;
  k17:=0;
  if radiogroup1.itemindex = 0 then inc (k17);
  if checkgroup1.checked[1]
    or checkgroup1.checked[2]
    or (checkgroup1.checked[1] and checkgroup1.checked[2])
    or (checkgroup1.checked[0] and checkgroup1.checked[1] and checkgroup1.checked[2])
    or (checkgroup1.checked[0] and checkgroup1.checked[1]) then inc (neponyatnayaperemennaya)
  else
  begin
     if checkgroup1.checked[0] then
    begin
      inc (k17);
    end;
  end;
  if edit1.text = 'великое древо' then inc (k17);
  if radiogroup2.ItemIndex = 0 then inc (k17);
  if radiogroup3.ItemIndex = 0 then inc (k17);
  lab2:=inttostr(k17);
  a:='';
    assignfile(s,'rez.txt');
    reset(s);
    while (not eof(s)) do
    begin
      readln(s, a);
      end;
    append(s);
  writeln(s, y+'||'+'Тест 5'+'||' +'Правильных ответов:' +lab2+ '||');
  closefile(s);
  showmessage('Данные сохранены');
  rez1.show;
  test5.hide;
  hide;
end;

procedure Ttest5.FormCreate(Sender: TObject);
begin
  test5.WindowState:=wsMaximized;
  test5.BorderStyle:=bsNone;
  test5.Width:=screen.Width;
  test5.height:=screen.Height;
  FormStyle:=fsStayOnTop;
end;

procedure Ttest5.FormShow(Sender: TObject);
begin
  showmessage('На выполнение теста дается 2 минуты.');
  Timer1.Enabled:=true;
  j:=120;
end;

procedure Ttest5.Timer1Timer(Sender: TObject);
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

