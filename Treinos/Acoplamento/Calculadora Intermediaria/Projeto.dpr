program Projeto;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  calculadora in 'calculadora.pas',
  uteis in 'uteis.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
