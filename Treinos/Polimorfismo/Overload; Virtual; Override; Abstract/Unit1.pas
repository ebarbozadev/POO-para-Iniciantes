unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, contabancaria, empresa,
  pessoa;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
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
  pessoa         : TPessoa;
  contabancaria  : TContaBancaria;
  empresa        : TEmpresa;
begin
  pessoa         := TPessoa.Create;
  contabancaria  := TContaBancaria.Create;
  empresa        := TEmpresa.Create;
  try

  // Pessoa
  pessoa.Nome                     := 'Emanuel';
  pessoa.DataDeNascimento         := '18/04/2003';
  pessoa.CPF                      := '123.456.789-10';

  // Conta Bancaria
  contabancaria.Nome              := 'Claudemir';
  contabancaria.DataDeNascimento  := '14/12/1989';
  contabancaria.CPF               := '987.654.321-00';
  contabancaria.Banco             := 'Bradesco';
  contabancaria.Depositar(138.78);
  contabancaria.Sacar(99.99);

  // Empresa
  empresa.Nome                    := 'Miguel';
  empresa.DataDeNascimento        := '15/02/1979';
  empresa.CPF                     := '654.789.321.79';
  empresa.Banco                   := 'NuBank';
  empresa.RazaoSocial             := 'Miguel tecnologia';
  empresa.Depositar(6578.20);
  empresa.Sacar(1487.30);

  Memo1.Lines.Add(pessoa.RetornaDados);
  Memo2.Lines.Add(contabancaria.RetornaDados);
  Memo3.Lines.Add(empresa.RetornaDados);

  finally
    pessoa.Free;
    contabancaria.Free;
    empresa.Free;
  end;
end;

end.
