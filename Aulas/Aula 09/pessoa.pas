unit pessoa;

interface

type
  TPessoa = class
    private
    FNome: String;
    public
      property Nome: String read FNome write FNome;

      function EEmpresa(Valor : String) : String; virtual; abstract;
  end;

implementation

end.
