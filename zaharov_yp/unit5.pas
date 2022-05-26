unit Unit5;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tstest1 }

  Tstest1 = class(TForm)
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
  stest1: Tstest1;

implementation
  uses unit2, unit6, unit8, unit12, unit13, unit15,unit17;
{$R *.lfm}

{ Tstest1 }

procedure Tstest1.Button26Click(Sender: TObject);
begin
  menuu.show;
  stest1.Hide;

end;

procedure Tstest1.FormCreate(Sender: TObject);
begin
  stest1.WindowState:=wsMaximized;
  stest1.BorderStyle:=bsNone;
  stest1.Width:=screen.Width;
  stest1.height:=screen.Height;
  FormStyle:=fsStayOnTop;
end;

procedure Tstest1.Label2Click(Sender: TObject);
begin
  test1.show;
  stest1.hide;
end;

procedure Tstest1.Label3Click(Sender: TObject);
begin
  test2.show;
  stest1.hide;
end;

procedure Tstest1.Label4Click(Sender: TObject);
begin
  test3.show;
  stest1.hide;
end;

procedure Tstest1.Label5Click(Sender: TObject);
begin
  test4.show;
  hide;
end;

procedure Tstest1.Label6Click(Sender: TObject);
begin
  test5.show;
  hide;
end;

procedure Tstest1.Button25Click(Sender: TObject);
begin
  stest2.show;
  stest1.hide;

end;

procedure Tstest1.Button1Click(Sender: TObject);
begin
  test1.show;
  stest1.hide;
end;

end.

