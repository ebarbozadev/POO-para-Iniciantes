unit frmTriangulo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Triangulo;

type
  TperTriangulo = class(TForm)
    Panel1: TPanel;
    edtA: TEdit;
    edtB: TEdit;
    edtResultado: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  perTriangulo: TperTriangulo;

implementation

{$R *.dfm}

procedure TperTriangulo.Button1Click(Sender: TObject);
var
  formula: TTriangulo;
begin
  formula:= TTriangulo.Create;
  try
    edtResultado.Text:= formula.calcularArea(StrToInt(edtA.Text), StrToInt(edtB.Text));
  finally
    formula.Free;
  end;
end;

end.
