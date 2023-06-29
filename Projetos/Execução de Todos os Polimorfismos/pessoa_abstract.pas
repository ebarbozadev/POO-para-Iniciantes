unit pessoa_abstract;

interface

type
  TPessoa = class
    private
    FNome: String;
    FDados: String;
    public
      property Nome : String read FNome  write FNome;
      property Dados: String read FDados write FDados;

      function mostraDados  : String; virtual;
      function mostraObjeto : String; virtual; abstract;
  end;

implementation

{ TPessoa }

function TPessoa.mostraDados: String;
begin
  Dados:= 'Nome: ' + FNome;
  Result:= Dados;
end;

end.
