unit cliente;

interface

uses pessoa;

type
  TCliente = class(TPessoa)
    private
      // Variáveis
      FSaldo             : Currency;

      // Funções
      function GetSaldo  : Currency;
    public
      // Property's
      property Saldo     : Currency read GetSaldo;

      // Procedures
      procedure Depositar(Valor: Currency);
      procedure Sacar(Valor: Currency);
  end;

implementation

// Procedures
procedure TCliente.Depositar(Valor: Currency);
begin
  FSaldo:= FSaldo + Valor;
end;

procedure TCliente.Sacar(Valor: Currency);
begin
  FSaldo:= FSaldo - Valor;
end;

// Funções
function TCliente.GetSaldo: Currency;
begin
  Result:= FSaldo;
end;

end.
