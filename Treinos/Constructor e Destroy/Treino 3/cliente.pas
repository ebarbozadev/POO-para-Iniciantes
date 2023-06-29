unit cliente;

interface

uses endereco, pessoa;

type
  TCliente = class
    private
    FEndereco: TEndereco;
    FPessoa: TPessoa;
    FVIP: String;
    public
      constructor Create;
      destructor Destroy; override;

      property VIP: String read FVIP write FVIP;
      property Endereco: TEndereco read FEndereco write FEndereco;
      property Pessoa: TPessoa read FPessoa write FPessoa;
  end;

implementation

{ TCliente }

constructor TCliente.Create;
begin
  FPessoa    := TPessoa.Create;
  FEndereco  := TEndereco.Create;
  FVip       := 'N�o � VIP';
end;

destructor TCliente.Destroy;
begin
  FPessoa.Free;
  FEndereco.Free;
  inherited;
end;

end.
