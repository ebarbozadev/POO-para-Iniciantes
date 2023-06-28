unit Forma;

interface

type
  TForma = class
    private
    FCalculo: Integer;
    FMedida: String;
    public
      property calculo: Integer read Fcalculo write Fcalculo;
      property Medida: String read FMedida write FMedida;

      function calcularArea(a, b : Integer) : String; virtual; abstract;
  end;

implementation

end.
