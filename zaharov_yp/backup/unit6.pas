unit Unit6;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tstest2 }

  Tstest2 = class(TForm)
    Button25: TButton;
    Button26: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label26: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  stest2: Tstest2;

implementation
   uses unit2, unit5;
{$R *.lfm}

{ Tstest2 }

procedure Tstest2.Button26Click(Sender: TObject);
begin
  menuu.show;
  stest2.hide;

end;

procedure Tstest2.FormCreate(Sender: TObject);
begin
  stest2.WindowState:=wsMaximized;
  stest2.BorderStyle:=bsNone;
  stest2.Width:=screen.Width;
  stest2.height:=screen.Height;
  FormStyle:=fsStayOnTop;
end;

procedure Tstest2.Button25Click(Sender: TObject);
begin
  stest1.show;
  stest2.Hide;

end;

end.

