program Project1;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  Forma in 'Forma.pas',
  Triangulo in 'Triangulo.pas',
  frmTriangulo in 'frmTriangulo.pas' {perTriangulo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TperTriangulo, perTriangulo);
  Application.Run;
  //
  {
    Erros que j� deram:
    - Application.CreateForm(TForm1, Frm1Application.Run;
      Estava sem o ')' no final e tamb�m n�o faz sentido aquilo estar ali, s� coloquei no final 'Application.run' para iniciar o aplicativo
  }
end.

Application.CreateForm(TF, F);

Application.CreateForm(TF, F);

Application.CreateForm(TF, F);
Application.CreateForm(TForm3, Form3);Application.CreateForm(TF, F);
