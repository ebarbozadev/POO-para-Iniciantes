unit ObjContaBancaria;

interface

type
  TContaBancaria = class
  private
    FNome: String;
    FSaldo: Double;
  public
    property Nome: String read FNome write FNome;
    property Saldo: Double read GetSaldo;
    procedure Depositar(Valor: Double);
  end;

implementation

procedure TContaBancaria.Depositar(Valor: Double);
begin
  FSaldo := FSaldo + Valor + (Valor * 0.10);
end;

end.
