unit cliente;

interface

uses system.SysUtils, pessoa;

type
  TCliente = class(TPessoa)
    private
      FCPF: String;
    public
      property CPF: String read FCPF write FCPF;
      function RetornaDados: String; virtual;
  end;

implementation

{ TCliente }

function TCliente.RetornaDados: String;
begin
  Result:= 'Nome: '             + Self.Nome            +
           ' Data Nascimento: ' + Self.DataNascimento  +
           ' Idade: '           + Self.Idade.ToString +
           ' CPF: '             + FCPF;
end;

end.
