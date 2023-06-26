unit Acoplamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, pessoa;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  pessoa: TPessoa;
begin
  pessoa:= TPessoa.Create;
  try
    pessoa.Nome:= 'Jo�o';
    pessoa.DataNascimento:= '25/12/1980';
    ShowMessage(pessoa.Nome + ' - ' + pessoa.Idade.CalcularIdade(pessoa.DataNascimento).ToString);
  finally
    pessoa.Free;
  end;
end;

end.
