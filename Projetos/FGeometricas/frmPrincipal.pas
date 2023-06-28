unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus,
  frmTriangulo;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    Calcular1: TMenuItem;
    Permetro1: TMenuItem;
    rea1: TMenuItem;
    Crculo1: TMenuItem;
    ringulo1: TMenuItem;
    Retngulo1: TMenuItem;
    procedure ringulo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ringulo1Click(Sender: TObject);
var
  perTriangulo: TperTriangulo;
begin
  perTriangulo:= TperTriangulo.Create(nil);
  try
    perTriangulo.ShowModal;
  finally
    perTriangulo.Free;
  end;
end;

end.
