unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, pessoa, cliente, Vcl.Menus;

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
  cliente1: TCliente;
begin
  Memo1.Clear;

  cliente1:= TCliente.Create;
  pessoa1:= TPessoa.Create;
  try
    pessoa1.nome            := 'Claudemir';
    pessoa1.dataNascimento  := '14/07/1990';

    Memo1.Lines.Add('Nome: ' + pessoa1.nome);
    Memo1.Lines.Add('Data de Nascimento: ' + pessoa1.dataNascimento);
    Memo1.Lines.Add('Idade: ' + pessoa1.idade.ToString);
    Memo1.Lines.Add('=');

    cliente1.nome           := 'Rebeca';
    cliente1.dataNascimento := '03/12/2009';
    cliente1.Depositar(200);
    cliente1.Sacar(20);

    Memo1.Lines.Add('Nome: ' + cliente1.nome);
    Memo1.Lines.Add('Data de Nascimento: ' + cliente1.dataNascimento);
    Memo1.Lines.Add('Idade: ' + cliente1.idade.ToString);
    Memo1.Lines.Add('Saldo: ' + cliente1.Saldo.ToString);
    Memo1.Lines.Add('=');

  finally
    cliente1.Free;
    pessoa1.Free;
  end;
end;

end.
