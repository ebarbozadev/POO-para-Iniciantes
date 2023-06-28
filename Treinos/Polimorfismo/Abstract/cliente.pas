unit cliente;

interface

uses
  pessoa;

type
  TCliente = class(TPessoa)
    private
    public
      function EEmpresa(Valor: String) : String; override;
  end;

implementation

{ TCliente }

function TCliente.EEmpresa(Valor: String): String;
begin
  Result:= Valor;
end;

end.
