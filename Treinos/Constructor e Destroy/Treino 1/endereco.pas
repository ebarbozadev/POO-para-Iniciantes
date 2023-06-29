unit endereco;

interface

type
  TEndereco = class
    private
    FRua     : String;
    FNumero  : String;
    public
      constructor Create;

      property Rua     : String read FRua    write FRua;
      property Numero  : String read FNumero write FNumero;
  end;

implementation

{ TEndereco }

constructor TEndereco.Create;
begin
  FRua     := 'Rua n�o cadastrada'   ;
  FNumero  := 'Numero n�o cadastrado';
end;

end.
