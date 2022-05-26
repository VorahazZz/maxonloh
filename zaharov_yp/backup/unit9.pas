unit Unit9;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Trez1 }

  Trez1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private

  public

  end;

var
  rez1: Trez1; a:string; s:textfile
implementation
   uses unit1,unit2,unit3, unit5,unit8,unit13, unit12, unit15, Unit19, unit17;
{$R *.lfm}

{ Trez1 }

procedure Trez1.Button1Click(Sender: TObject);
begin
  menuu.show;
  label2.Caption := 'Нажмите, чтобы узнать результат';
  k8:=0;
  k12:=0;
  k13:=0;
  k15:=0;
  k17:=0;
  k19:=0;

  t8:=0;
  t12:=0;
  t13:=0;
  t15:=0;
  t17:=0;
  t19:=0;
  rez1.hide;
end;

procedure Trez1.Button2Click(Sender: TObject);
begin
  stest1.show;
  label2.Caption := 'Нажмите, чтобы узнать результат';
  k8:=0;
  k12:=0;
  k13:=0;
  k15:=0;
  k17:=0;
  k19:=0;

  t8:=0;
  t12:=0;
  t13:=0;
  t15:=0;
  t17:=0;
  t19:=0;
  rez1.hide;
end;

procedure Trez1.Button3Click(Sender: TObject);
begin
  ster1.show;
  label2.Caption := 'Нажмите, чтобы узнать результат';
  k8:=0;
  k12:=0;
  k13:=0;
  k15:=0;
  k17:=0;
  k19:=0;

  t8:=0;
  t12:=0;
  t13:=0;
  t15:=0;
  t17:=0;
  t19:=0;
  rez1.hide
end;

procedure Trez1.Button4Click(Sender: TObject);
begin
  a:='';
    assignfile(s,'rez.txt');
    reset(s);
    while (not eof(s)) do
    begin
      readln(s, a);
      memo1.lines.add(a);
      end;
  closefile(s);
end;

procedure Trez1.FormCreate(Sender: TObject);
begin
  rez1.WindowState:=wsMaximized;
  rez1.BorderStyle:=bsNone;
  rez1.Width:=screen.Width;
  rez1.height:=screen.Height;
  FormStyle:=fsStayOnTop;
end;

procedure Trez1.Label2Click(Sender: TObject);
begin
  if t8 = 100 then label2.caption:=y+' набрал '+inttostr(k8)+' баллов';
  if t12 = 100 then label2.caption:=y+' набрал '+inttostr(k12)+' баллов';
  if t13 = 100 then label2.caption:=y+' набрал '+inttostr(k13)+' баллов';
  if t15 = 100 then label2.caption:=y+' набрал '+inttostr(k15)+' баллов';
  if t17 = 100 then label2.caption:=y+' набрал '+inttostr(k17)+' баллов';
  if t19 = 100 then label2.caption:=y+' набрал '+inttostr(k19)+' баллов';
end;



end.

