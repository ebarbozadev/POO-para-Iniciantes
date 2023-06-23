unit ObjPessoa;

interface

type
  TPessoa = class
  private
  public
    Id: Integer;
    Nome: String;
    {
      J: Pessoa Jurídica
      F: Pessoa Física
    }
    Tipo: String;
    Email: String;
  end;

implementation

end.
