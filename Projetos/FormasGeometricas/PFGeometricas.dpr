program PFGeometricas;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {FormasGeometricas},
  frmPerimetro in 'frmPerimetro.pas' {Perimetro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormas_Geom�tricas, Formas_Geom�tricas);
  Application.CreateForm(TPerimetro, Perimetro);
  Application.Run;
end.
