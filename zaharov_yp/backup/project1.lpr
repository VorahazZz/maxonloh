program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10,
  Unit12, Unit11, Unit13, Unit14, Unit15, Unit16, Unit17
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(Tvhod, vhod);
  Application.CreateForm(Tmenuu, menuu);
  Application.CreateForm(Tster1, ster1);
  Application.CreateForm(Tster2, ster2);
  Application.CreateForm(Tstest1, stest1);
  Application.CreateForm(Tstest2, stest2);
  Application.CreateForm(Tglava1, glava1);
  Application.CreateForm(Ttest1, test1);
  Application.CreateForm(Trez1, rez1);
  Application.CreateForm(Tglava2, glava2);
  Application.CreateForm(Ttest2, test2);
  Application.CreateForm(Tglava3, glava3);
  Application.CreateForm(Ttest3, test3);
  Application.CreateForm(Tglava4, glava4);
  Application.CreateForm(Ttest4, test4);
  Application.CreateForm(Tglava5, glava5);
  Application.CreateForm(Ttest5, test5);
  Application.Run;
end.

