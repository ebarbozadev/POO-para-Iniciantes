unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cliente;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  lCliente : TCliente;
begin
  lCliente := TCliente.Create;
  try
    lCliente.Pessoa.Nome:= 'Emanuel';
    lCliente.Endereco.Rua:= 'Canarinho';
    lCliente.VIP:= 'Cliente � VIP';
    Memo1.Lines.Add(lCliente.Pessoa.Nome + ' - ' + lCliente.Endereco.Rua + ' - ' + lCliente.VIP);
  finally
    lCliente.Free;
  end;
end;

end.
