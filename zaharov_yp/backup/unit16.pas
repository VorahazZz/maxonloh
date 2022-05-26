unit Unit16;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tglava5 }

  Tglava5 = class(TForm)
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
  glava5: Tglava5;

implementation
   uses unit2,Unit17,unit3;
{$R *.lfm}

{ Tglava5 }

procedure Tglava5.Button2Click(Sender: TObject);
begin
  menuu.show;
  hide;
end;

procedure Tglava5.Button3Click(Sender: TObject);
begin
  test5.show;
  hide;
end;

procedure Tglava5.FormCreate(Sender: TObject);
begin
  glava5.WindowState:=wsMaximized;
  glava5.BorderStyle:=bsNone;
  glava5.Width:=screen.Width;
  glava5.height:=screen.Height;
  FormStyle:=fsStayOnTop;
end;

procedure Tglava5.Button1Click(Sender: TObject);
begin
  ster1.show;
  hide;
end;

end.

