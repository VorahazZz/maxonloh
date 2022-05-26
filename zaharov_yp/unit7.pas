unit Unit7;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { Tglava1 }

  Tglava1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  glava1: Tglava1;

implementation
  uses unit2, unit3,unit8;
{$R *.lfm}

{ Tglava1 }

procedure Tglava1.Button3Click(Sender: TObject);
begin
  test1.show;
  glava1.hide;
end;

procedure Tglava1.FormCreate(Sender: TObject);
begin
  glava1.WindowState:=wsMaximized;
  glava1.BorderStyle:=bsNone;
  glava1.Width:=screen.Width;
  glava1.height:=screen.Height;
  FormStyle:=fsStayOnTop;
end;

procedure Tglava1.Button1Click(Sender: TObject);
begin
  ster1.show;
  glava1.hide;
end;

procedure Tglava1.Button2Click(Sender: TObject);
begin
  menuu.show;
  glava1.Hide;
end;

end.

