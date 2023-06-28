unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, frmPerimetro;

type
  TFormas_Geométricas = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    Permetro1: TMenuItem;
    Permetro2: TMenuItem;
    rea1: TMenuItem;
    procedure Permetro2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formas_Geométricas: TFormas_Geométricas;

implementation

{$R *.dfm}

procedure TFormas_Geométricas.Permetro2Click(Sender: TObject);
var
  frmPerimetro  : TPerimetro;
begin
  frmPerimetro  := TPerimetro.Create(nil);
  try
    frmPerimetro.ShowModal;
  finally
    frmPerimetro.Free;
  end;
end;

end.
