unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tmenuu }

  Tmenuu = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  menuu: Tmenuu;

implementation
  uses vhod1, unit3, unit5, unit7;
{$R *.lfm}

{ Tmenuu }

procedure Tmenuu.Button1Click(Sender: TObject);
begin
  glava1.show;
  menuu.hide;

end;

procedure Tmenuu.Button2Click(Sender: TObject);
begin
  ster1.show;
  menuu.hide;

end;

procedure Tmenuu.Button3Click(Sender: TObject);
begin
  stest1.show;
  menuu.hide;

end;

procedure Tmenuu.Button4Click(Sender: TObject);
begin
  vhod.show;
  menuu.hide;

end;

procedure Tmenuu.FormCreate(Sender: TObject);
begin
  menuu.WindowState:=wsMaximized;
  menuu.BorderStyle:=bsNone;
  menuu.Width:=screen.Width;
  menuu.height:=screen.Height;
  FormStyle:=fsStayOnTop;
end;

end.

