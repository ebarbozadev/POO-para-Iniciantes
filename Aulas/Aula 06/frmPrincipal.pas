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
  pessoa: TPessoa;
  cliente: TCliente;
begin
  Memo1.Clear;

  pessoa:= TPessoa.Create;
  cliente:= TCliente.Create;
  try
    pessoa.Nome                            := 'Jhennifer';
    pessoa.DataNascimento                  := '29/05/2008';
    pessoa.Email                           := 'Jhennifer@gmail.com';

    Memo1.Lines.Add('Nome: '               + pessoa.Nome);
    Memo1.Lines.Add('Data de Nascimento: ' + pessoa.DataNascimento);
    Memo1.Lines.Add('Email: '              + pessoa.Email);
    Memo1.Lines.Add('Idade: '              + pessoa.Idade.ToString);
    Memo1.Lines.Add('Receber: '            + Cliente.Receber(600));
    Memo1.Lines.Add('Receber: '            + Cliente.Receber(165.54));
    Memo1.Lines.Add('Valor do Cr�dito: '   + CurrToStr(Cliente.ValorCredito));

  finally
    pessoa.Free;
    cliente.Free;
  end;
end;

end.
