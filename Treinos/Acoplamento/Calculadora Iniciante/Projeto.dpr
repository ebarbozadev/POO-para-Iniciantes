program Projeto;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  calculadora in 'calculadora.pas',
  utils in 'utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
