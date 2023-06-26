unit pessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
    private
    public
      nome: String;
      dataNascimento: String;
      function idade: Integer;
  end;

implementation

function TPessoa.idade: Integer;
begin
  result:= Trunc((now - StrToDate(DataNascimento)) / 365.25);
end;

end.
