unit Triangulo;

interface

uses System.SysUtils, Forma;

type
  TTriangulo = class(TForma)
    private
    public

      function calcularArea(a, b : Integer) : String; override;
  end;

implementation

{ TTriangulo }

function TTriangulo.calcularArea(a, b: Integer): String;
begin
  inherited
  Calculo:= (a * b) div 2;
  Result:= Calculo.ToString;
end;


end.
