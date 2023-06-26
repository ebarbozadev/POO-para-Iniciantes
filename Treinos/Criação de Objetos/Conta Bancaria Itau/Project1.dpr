program Project1;

uses
  Vcl.Forms,
  UnitCBItau in 'UnitCBItau.pas' {Form1},
  Dados in 'Dados.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
