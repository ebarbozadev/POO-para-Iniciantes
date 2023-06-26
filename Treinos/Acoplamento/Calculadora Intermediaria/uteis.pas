unit uteis;

interface

type
  TUteis = class
    private
    public
      function somar      (valor1, valor2    : currency) : currency;
      function subtrair   (valor1, valor2    : currency) : currency;
      function multiplicar(valor1, valor2    : currency) : currency;
      function dividir    (valor1, valor2    : currency) : currency;
      function resto      (valor1, valor2    : integer ) : integer ;
  end;

implementation

{ TUteis }

function TUteis.dividir(valor1, valor2: currency): currency;
begin
  Result:= valor1 / valor2;
end;

function TUteis.multiplicar(valor1, valor2: currency): currency;
begin
  Result:= valor1 * valor2;
end;

function TUteis.resto(valor1, valor2: integer): integer;
begin
  Result:= valor1 mod valor2;
end;

function TUteis.somar(valor1, valor2: currency): currency;
begin
  Result:= valor1 + valor2;
end;

function TUteis.subtrair(valor1, valor2: currency): currency;
begin
  Result:= valor1 - valor2;
end;

end.
