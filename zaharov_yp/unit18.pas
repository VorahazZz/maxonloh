unit Unit18;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tglava6 }

  Tglava6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  glava6: Tglava6;

implementation
  uses unit2,unit3,unit19;
{$R *.lfm}

{ Tglava6 }

procedure Tglava6.Button3Click(Sender: TObject);
begin
  test6.show;
  hide;
end;

procedure Tglava6.Button1Click(Sender: TObject);
begin
  ster1.show;
  hide;
end;

procedure Tglava6.Button2Click(Sender: TObject);
begin
  menuu.show;
  hide;
end;

end.

