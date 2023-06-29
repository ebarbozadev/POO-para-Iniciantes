unit pessoa;

interface

type
  TPessoa = class
    private
    FNome: String;
    FSobrenome: String;

    protected
      FDados: String;

    public
      property Nome: String read FNome write FNome;
      property Sobrenome: String read FSobrenome write FSobrenome;
  end;

implementation

end.
