unit pessoa;

interface

uses endereco;

type
  TPessoa = class
    private
    FNome: String;
    public

      property Nome: String read FNome write FNome;
  end;

implementation

end.
