unit cliente;

interface

uses endereco, pessoa;

type
  TCliente = class
    private
      FVIP: String;
      FEndereco: TEndereco;
      FPessoa: TPessoa;
    public
      constructor Create;
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
  FVIP       := 'Cliente não é VIP';
end;

destructor TCliente.Destroy;
begin
  FEndereco.Free;
  FPessoa.Free;
  inherited;
end;

end.
