unit cliente;

interface

uses endereco, pessoa;

type
  TCliente = class(TPessoa)
    private
      FVIP: String;
      FEndereco: TEndereco;
      FPessoa: TPessoa;
    public
      constructor Create;                 overload;
      constructor Create(Valor: TPessoa); overload;
      constructor Create(Valor : String); overload;

      destructor Destroy; override;
    
      property Endereco: TEndereco read FEndereco write FEndereco;
      property Pessoa: TPessoa read FPessoa write FPessoa;
      property VIP: String read FVIP write FVIP;
  end;

implementation

{ TCliente }

constructor TCliente.Create;
begin
  FEndereco  := TEndereco.Create;
  FPessoa    := TPessoa.Create;
  FVIP       := 'Cliente n�o � VIP';
end;

constructor TCliente.Create(Valor: TPessoa);
begin
  Nome       := Valor.Nome;
end;

constructor TCliente.Create(Valor: String);
begin
  Nome       := Valor;
end;

destructor TCliente.Destroy;
begin
  FEndereco.Free;
  FPessoa.Free;
  inherited;
end;

end.
