unit pessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
    private
    FNome: String;
    FDataDeNascimento: String;
    public
      property Nome: String read FNome write FNome;
      property DataDeNascimento: String read FDataDeNascimento write FDataDeNascimento;

      function Idade: Integer;
      function exibeDados: String; virtual;
  end;

implementation

{ TPessoa }

function TPessoa.exibeDados: String;
begin
  Result:= 'Nome: '                + FNome             +
           ' Data de Nascimento: ' + FDataDeNascimento +
           ' Idade: '              + Idade.ToString;
end;

function TPessoa.Idade: Integer;
begin
  Result:= Trunc((now - StrToDate(FDataDeNascimento)) / 365.25);
end;

end.
