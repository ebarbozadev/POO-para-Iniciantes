program Project1;

uses
  Vcl.Forms,
  UnitContaBancaria in 'UnitContaBancaria.pas' {Form1},
  ObjContaBancaria in 'ObjContaBancaria.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
