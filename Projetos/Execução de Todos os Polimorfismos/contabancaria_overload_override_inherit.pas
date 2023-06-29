unit contabancaria_overload_override_inherit;

interface

uses
  pessoa_abstract, System.SysUtils;

type
  TContaBancaria = class(TPessoa)
    private
    FSaldo               : Currency;

    function GetSaldo: Currency;
    public
      property Saldo     : Currency read GetSaldo;

      procedure Sacar    (Valor : Currency) overload;
      procedure Sacar    (Valor : Integer ) overload;
      procedure Depositar(Valor : Currency) overload;
      procedure Depositar(Valor : Integer ) overload;

      function mostraObjeto                : String; override;
      function mostraDados                 : String; override;

  end;

implementation

{ TContaBancaria }

procedure TContaBancaria.Depositar(Valor: Currency);
begin
  FSaldo:= FSaldo + Valor;
end;

procedure TContaBancaria.Depositar(Valor: Integer);
begin
  FSaldo:= FSaldo + Valor;
end;

procedure TContaBancaria.Sacar(Valor: Currency);
begin
  FSaldo:= FSaldo - Valor;
end;

procedure TContaBancaria.Sacar(Valor: Integer);
begin
  FSaldo:= FSaldo - Valor;
end;

function TContaBancaria.GetSaldo: Currency;
begin
  Result:= FSaldo;
end;

function TContaBancaria.mostraDados: String;
begin
  inherited;
  Dados:= Dados + mostraObjeto + Saldo.ToString;
  Result:= Dados;
end;

function TContaBancaria.mostraObjeto: String;
begin
  Result:= ' objeto contaBancaria ';
end;

end.
