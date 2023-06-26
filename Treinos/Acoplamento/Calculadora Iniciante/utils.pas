unit utils;

interface

type
  TUtils = class
    private
    public
      function subtrair(Valor1, Valor2: currency) : currency;
      function somar(Valor1, Valor2: currency) : currency;
  end;

implementation

{ TUtils }

function TUtils.somar(Valor1, Valor2: currency): currency;
begin
  Result:= Valor1 + Valor2;
end;

function TUtils.subtrair(Valor1, Valor2: currency): currency;
begin
  Result:= Valor1 - Valor2;
end;

end.
