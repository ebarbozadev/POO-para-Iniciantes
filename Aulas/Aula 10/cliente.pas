unit cliente;

interface

uses system.SysUtils, pessoa, endereco;

type
  TCliente = class(TPessoa)
    private
      FCPF: String;
    FEndereco: TEndereco;
    public
      constructor Create; overload;
      constructor Create(Valor : String); overload;
      constructor Create(Valor : TPessoa); overload;

      destructor Destroy; override;

      property CPF           : String read FCPF write FCPF;
      property Endereco      : TEndereco read FEndereco write FEndereco;

      function RetornaDados  : String; reintroduce; virtual;
      function Deficiente    : String; override;
  end;

implementation

{ TCliente }

constructor TCliente.Create;
begin
  Nome:= 'Emanuel';
  FEndereco := TEndereco.Create;
end;

constructor TCliente.Create(Valor: String);
begin
  Nome:= Valor;
end;

constructor TCliente.Create(Valor: TPessoa);
begin
  Nome           := Valor.Nome;
  DataNascimento := Valor.DataNascimento;
end;

function TCliente.Deficiente: String;
begin
  Result:= 'TCliente Deficiente';
end;

destructor TCliente.Destroy;
begin
  FEndereco.Free;
end;

function TCliente.RetornaDados: String;
begin
  Result:= 'Nome: '             + Self.Nome            +
           ' Data Nascimento: ' + Self.DataNascimento  +
           ' Idade: '           + Self.Idade.ToString  +
           ' CPF: '             + FCPF                 +
           ' Deficiente: '      + Deficiente;
end;

end.
