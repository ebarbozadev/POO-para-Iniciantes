unit ObjContaBancaria;

interface

type
  TContaBancaria = class
    private
      FNome     : String;
      FSaldo    : Double;
    function GetSaldo: Double;
    public
      property Nome: String read FNome write FNome;
      property Saldo: Double read GetSaldo;
      procedure Depositar(Valor: Double);
      procedure Sacar(Valor: Double);
  end;

implementation

{ ContaBancaria }

procedure TContaBancaria.Depositar(Valor: Double);
begin
  FSaldo:= FSaldo + Valor + (Valor * 0.10);
end;

function TContaBancaria.GetSaldo: Double;
begin
  Result:= FSaldo;
end;

procedure TContaBancaria.Sacar(Valor: Double);
begin
  FSaldo:= FSaldo - Valor;
end;

end.
