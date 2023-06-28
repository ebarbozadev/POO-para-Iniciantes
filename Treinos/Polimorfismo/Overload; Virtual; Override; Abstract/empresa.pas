unit empresa;

interface

uses contabancaria;

type
  TEmpresa = class(TContaBancaria)
    private
    FRazaoSocial: String;
    public
      property RazaoSocial  : String read FRazaoSocial write FRazaoSocial;

      function RetornaDados        : String; override;
  end;

implementation

{ TEmpresa }

function TEmpresa.RetornaDados: String;
begin
  inherited;
  Result:= Dados + ' Raz�o Social: ' + FRazaoSocial;
end;

end.
