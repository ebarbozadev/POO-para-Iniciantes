unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, pessoa, cliente;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
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
  pessoa1: TPessoa;
  pessoa2: TCliente;
begin
  Memo1.Clear;
  pessoa1:= TPessoa.Create;
  pessoa2:= TCLiente.Create;
  try
    pessoa1.nome            := 'Emanuel';
    pessoa1.dataNascimento  := '18/04/2003';

    pessoa2.nome            := 'Camila';
    pessoa2.dataNascimento  := '03/07/2004';
    pessoa2.ValorCredito    := 6598.87;

    Memo1.Lines.Add('Pessoa: ');
    Memo1.Lines.Add('Nome: ' + pessoa1.nome);
    Memo1.Lines.Add('Data de Nascimento: ' + pessoa1.dataNascimento);
    Memo1.Lines.Add('Idade: ' + pessoa1.idade.ToString);
    Memo1.Lines.Add('==============================================');

    Memo1.Lines.Add('Pessoa: ');
    Memo1.Lines.Add('Nome: ' + pessoa2.nome);
    Memo1.Lines.Add('Data de Nascimento: ' + pessoa2.dataNascimento);
    Memo1.Lines.Add('Idade: ' + pessoa2.idade.ToString);
    Memo1.Lines.Add('Valor de Crédito: ' + pessoa2.ValorCredito.ToString);
    Memo1.Lines.Add('==============================================');

  finally
    pessoa1.Free;
  end;
end;

end.
