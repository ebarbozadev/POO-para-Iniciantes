unit ContaBancaria;

interface

type
  TContaBancaria = class
    private
    // Vari�veis privadas
    FNumeroContaBancaria: String;
    FSenha: String;
    FNomeCompleto: String;
    FRG: String;
    FCPF: String;
    FSaldo: Double;

    // Fun��es para ver os privados
    function GetSaldo: Double;
    function GetCPF: String;
    function GetRG: String;
    function GetNomeCompleto: String;
    function GetSenha: String;
    function GetNumeroContaBancaria: String;

    public
    // Vari�veis p�blicas
    FNomeBanco: String;
    FNumeroAgencia: String;
    FNumeroContaDepositos: String;
    FNumeroContaTransferencias: String;
    FCodigoDoBanco: String;

    // Property's
    property NomeBanco: String read FNomeBanco write FNomeBanco;
    property NumeroAgencia: String read FNumeroAgencia write FNumeroAgencia;
    property NumeroContaDepositos: String read FNumeroContaDepositos write FNumeroContaDepositos;
    property NumeroContaTransferencias: String read FNumeroContaTransferencias write FNumeroContaTransferencias;
    property CodigoDoBanco: String read FCodigoDoBanco write FCodigoDoBanco;

    // Property's para privados
    property Saldo: Double read GetSaldo;
    property CPF: String read GetCPF;
    property RG: String read GetRG;
    property NomeCompleto: String read GetNomeCompleto;
    property Senha: String read GetSenha;
    property NumeroContaBancaria: String read GetNumeroContaBancaria;

    // Procedures
    procedure Depositar(Valor: Double);
    procedure Sacar(Valor: Double);
  end;

implementation

// Procedures
procedure TContaBancaria.Depositar(Valor: Double);
begin
  FSaldo:= FSaldo + Valor;
  Saldo
end;

procedure TContaBancaria.Sacar(Valor: Double);
begin
  FSaldo:= FSaldo - Valor;
end;

// Fun��es
function TContaBancaria.GetCPF: String;
begin
  Result:= FCPF;
end;

function TContaBancaria.GetNomeCompleto: String;
begin
  Result:= FNomeCompleto;
end;

function TContaBancaria.GetNumeroContaBancaria: String;
begin
  Result:= FNumeroContaBancaria;
end;

function TContaBancaria.GetRG: String;
begin
  Result:= FRG;
end;

function TContaBancaria.GetSaldo: Double;
begin
  Result:= FSaldo;
end;

function TContaBancaria.GetSenha: String;
begin
  Result:= FSenha;
end;

end.
