unit Unit4;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tster2 }

  Tster2 = class(TForm)
    Button25: TButton;
    Button26: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label26: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  ster2: Tster2;

implementation
  uses unit2, unit3;
{$R *.lfm}

{ Tster2 }

procedure Tster2.Button26Click(Sender: TObject);
begin
  menuu.show;
  ster2.hide;

end;

procedure Tster2.FormCreate(Sender: TObject);
begin
  ster2.WindowState:=wsMaximized;
  ster2.BorderStyle:=bsNone;
  ster2.Width:=screen.Width;
  ster2.height:=screen.Height;
  FormStyle:=fsStayOnTop;
end;

procedure Tster2.Button25Click(Sender: TObject);
begin
  ster1.show;
  ster2.hide;

end;

end.

