unit cliente;

interface

uses pessoa;

type
  TCliente = class(TPessoa)
    private
    FCPF: String;
    public
      property CPF          : String read FCPF write FCPF;

      function NomeCompleto : String;
  end;

implementation

{ TCliente }

function TCliente.NomeCompleto: String;
begin
  Result:= Nome + ' - ' + Sobrenome;
end;

end.
