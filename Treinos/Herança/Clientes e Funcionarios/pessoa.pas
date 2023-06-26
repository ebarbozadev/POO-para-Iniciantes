unit pessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
    nome           : String;
    dataNascimento : String;
    function idade : Integer;
  end;

implementation

function TPessoa.idade: Integer;
begin
  Result:= Trunc((now - StrToDate(dataNascimento)) / 365.25);
end;

end.
