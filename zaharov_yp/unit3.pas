unit Unit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tster1 }

  Tster1 = class(TForm)
    Button25: TButton;
    Button26: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label26: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
  private

  public

  end;

var
  ster1: Tster1;

implementation
  uses unit2, unit4, unit7, unit10, unit11, unit14,unit16;
{$R *.lfm}

{ Tster1 }

procedure Tster1.Button26Click(Sender: TObject);
begin
  menuu.show;
  ster1.hide;

end;

procedure Tster1.FormCreate(Sender: TObject);
begin
  ster1.WindowState:=wsMaximized;
  ster1.BorderStyle:=bsNone;
  ster1.Width:=screen.Width;
  ster1.height:=screen.Height;
  FormStyle:=fsStayOnTop;
end;

procedure Tster1.Label2Click(Sender: TObject);
begin
  glava1.show;
  ster1.hide;
end;

procedure Tster1.Label3Click(Sender: TObject);
begin
  glava2.show;
  ster1.hide;
end;

procedure Tster1.Label4Click(Sender: TObject);
begin
  glava3.show;
  ster1.hide;
end;

procedure Tster1.Label5Click(Sender: TObject);
begin
  glava4.show;
  hide;
end;

procedure Tster1.Label6Click(Sender: TObject);
begin
  glava5.show;
  hide;
end;

procedure Tster1.Button25Click(Sender: TObject);
begin
  ster2.show;
  ster1.hide;

end;

procedure Tster1.Button1Click(Sender: TObject);
begin
  glava1.show;
  ster1.Hide;

end;

end.

