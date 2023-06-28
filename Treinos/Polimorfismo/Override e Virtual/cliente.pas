unit cliente;

interface

uses System.SysUtils, pessoa;

type
  TCliente = class(TPessoa)
    private
    FCPF: String;
    public
      property CPF: String read FCPF write FCPF;

      function exibeDados: String; override;
  end;

implementation

{ TCliente }

function TCliente.exibeDados: String;
begin
  Result:= 'Nome: '                  + Self.Nome +
           ' Data de Nascimento: '   + Self.DataDeNascimento +
           ' Idade: '                + Self.Idade.ToString +
           ' CPF: '                  + FCPF;
end;

end.
