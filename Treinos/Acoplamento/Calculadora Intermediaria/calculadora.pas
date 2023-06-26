unit calculadora;

interface

uses
  uteis;

type
  TCalculadora = class
    private
    public
      funcoes: TUteis;

      constructor Create;
  end;

implementation

{ TCalculadora }

constructor TCalculadora.Create;
begin
  funcoes:= TUteis.Create;
end;

end.
