unit unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tvhod }

  Tvhod = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  vhod: Tvhod; y:string;
  h,q,n:string;
  f:textfile;

implementation
  uses unit2, crt;
{$R *.lfm}

{ Tvhod }


procedure Tvhod.Button1Click(Sender: TObject);
begin
  if length(edit1.text) < 2 then showmessage('Введите имя')
  else
    begin
  {n:='';
    assignfile(f,'rez.txt');
    reset(f);
    while (not eof(f)) do
    begin
      readln(f, n);
      end;
    append(f);
  writeln(f, n);
  writeln(f, edit1.text);
  closefile(f);}
  menuu.show;
  vhod.hide;
  end;
end;

procedure Tvhod.Button2Click(Sender: TObject);
begin
  vhod.Close;
end;

procedure Tvhod.Edit1Change(Sender: TObject);
begin
  y:=edit1.text;
end;

procedure Tvhod.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  if Key = #13 then
  begin
    Button1.Click;
    Key := #0
  end;
end;

procedure Tvhod.FormCreate(Sender: TObject);
begin
  vhod.WindowState:=wsMaximized;
  vhod.BorderStyle:=bsNone;
  vhod.Width:=screen.Width;
  vhod.height:=screen.Height;
  FormStyle:=fsStayOnTop;
end;

end.

