unit cliente;

interface

uses
  System.SysUtils,
  pessoa;

type
  TCliente = class(TPessoa)
  private
    FValorCredito: Currency;
  public
    property ValorCredito: Currency read FValorCredito;

    function Receber(Valor: Integer) : String; overload;
    function Receber(Valor: Currency) : String; overload;
  end;

implementation

{ TCliente }

function TCliente.Receber(Valor: Integer): String;
begin
  FValorCredito:= Valor;
  Result:= Valor.ToString;
end;

function TCliente.Receber(Valor: Currency): String;
begin
  FValorCredito:= Valor;
  Result:= CurrToStr(Valor);
end;

end.
