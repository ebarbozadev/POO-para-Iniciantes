program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  pessoa_abstract in 'pessoa_abstract.pas',
  contabancaria_overload_override_inherit in 'contabancaria_overload_override_inherit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
