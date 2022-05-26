unit Unit11;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tglava3 }

  Tglava3 = class(TForm)
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
  glava3: Tglava3;

implementation
  uses unit2, unit3, Unit13;
{$R *.lfm}

{ Tglava3 }

procedure Tglava3.Button3Click(Sender: TObject);
begin
  test3.show;
  glava3.hide;
end;

procedure Tglava3.FormCreate(Sender: TObject);
begin
  glava3.WindowState:=wsMaximized;
  glava3.BorderStyle:=bsNone;
  glava3.Width:=screen.Width;
  glava3.height:=screen.Height;
  FormStyle:=fsStayOnTop;
end;

procedure Tglava3.Button1Click(Sender: TObject);
begin
  ster1.show;
  glava3.hide;
end;

procedure Tglava3.Button2Click(Sender: TObject);
begin
  menuu.show;
  glava3.hide;
end;

end.

