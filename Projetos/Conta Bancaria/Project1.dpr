program Project1;

uses
  Vcl.Forms,
  UnitContaBancaria in 'UnitContaBancaria.pas' {Form1},
  ContaBancaria in 'ContaBancaria.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
