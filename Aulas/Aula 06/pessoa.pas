unit pessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
    private
      FNome: String;
      FDataNascimento: String;
      FEmail: String;
    public
      function idade: Integer;

      property Nome: String read FNome write FNome;
      property DataNascimento: String read FDataNascimento write FDataNascimento;
      property Email: String read FEmail write FEmail;
  end;

implementation

function TPessoa.idade: Integer;
begin
  result:= Trunc((now - StrToDate(DataNascimento)) / 365.25);
end;

end.
