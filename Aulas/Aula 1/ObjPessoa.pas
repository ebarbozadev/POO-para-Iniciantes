unit ObjPessoa;

interface

type
  TPessoa = class
  private
  public
    Id: Integer;
    Nome: String;
    {
      J: Pessoa Jur�dica
      F: Pessoa F�sica
    }
    Tipo: String;
    Email: String;
  end;

implementation

end.
