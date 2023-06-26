unit cliente;

interface

uses pessoa;

type
  TCliente = class(TPessoa)
    private
      // Vari�veis
      FSaldo             : Currency;

      // Fun��es
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

// Fun��es
function TCliente.GetSaldo: Currency;
begin
  Result:= FSaldo;
end;

end.
