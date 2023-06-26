unit calculadora;

interface

uses
  utils;

type
  TCalculadora = class
    private
    public
      funcoes     : TUtils;

      constructor Create;
  end;

implementation

constructor TCalculadora.Create;
begin
  funcoes:= TUtils.Create;
end;

end.
