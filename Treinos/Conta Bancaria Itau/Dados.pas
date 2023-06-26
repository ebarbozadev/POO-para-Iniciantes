unit Dados;

interface

type
  TDados = class
    private
      FNome: String;
      FNumeroCasa: String;
      FSaldo: Double;
      function GetSaldo: Double;
    public
      property Nome: String read FNome write FNome;
      property NumeroCasa: String read FNumeroCasa write FNumeroCasa;
      property Saldo: Double read GetSaldo;

      procedure Depositar(Valor: Double);
      procedure Sacar(Valor: Double);
  end;

implementation

procedure TDados.Depositar(Valor: Double);
begin
  FSaldo:= FSaldo + Valor + (Valor * 0.10);
end;

function TDados.GetSaldo: Double;
begin
  Result:= FSaldo;
end;

procedure TDados.Sacar(Valor: Double);
begin
  FSaldo:= FSaldo - Valor;
end;

end.
