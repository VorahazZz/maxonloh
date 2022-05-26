unit Unit10;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tglava2 }

  Tglava2 = class(TForm)
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
  glava2: Tglava2;

implementation
  uses unit2, unit3, unit12;
{$R *.lfm}

{ Tglava2 }

procedure Tglava2.Button2Click(Sender: TObject);
begin
  menuu.show;
  glava2.hide;
end;

procedure Tglava2.Button3Click(Sender: TObject);
begin
  test2.show;
  glava2.hide;
end;

procedure Tglava2.FormCreate(Sender: TObject);
begin
  glava2.WindowState:=wsMaximized;
  glava2.BorderStyle:=bsNone;
  glava2.Width:=screen.Width;
  glava2.height:=screen.Height;
  FormStyle:=fsStayOnTop;
end;

procedure Tglava2.Button1Click(Sender: TObject);
begin
  ster1.show;
  glava2.hide;
end;

end.

