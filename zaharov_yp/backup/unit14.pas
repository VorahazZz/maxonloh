unit Unit14;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tglava4 }

  Tglava4 = class(TForm)
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
  glava4: Tglava4;

implementation
  uses unit2, unit3, Unit15;
{$R *.lfm}

{ Tglava4 }

procedure Tglava4.Button2Click(Sender: TObject);
begin
  menuu.show;
  glava4.hide;
end;

procedure Tglava4.Button3Click(Sender: TObject);
begin
  test4.show;
  glava4.hide;
end;

procedure Tglava4.FormCreate(Sender: TObject);
begin
  glava4.WindowState:=wsMaximized;
  glava4.BorderStyle:=bsNone;
  glava4.Width:=screen.Width;
  glava4.height:=screen.Height;
  FormStyle:=fsStayOnTop;
end;

procedure Tglava4.Button1Click(Sender: TObject);
begin
  ster1.show;
  glava4.hide;
end;

end.

