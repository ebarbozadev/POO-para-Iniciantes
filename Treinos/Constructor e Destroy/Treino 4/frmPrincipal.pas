unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cliente, pessoa;

type
  TForm1 = class(TForm)
    Ver: TButton;
    Memo1: TMemo;
    procedure VerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.VerClick(Sender: TObject);
var
  lCliente1, lCliente2, lCliente3 : TCliente;
  lPessoa1 : TPessoa;
begin
  lPessoa1         := TPessoa.Create;
  lPessoa1.Nome    := 'Emanuel - Cliente3';

  lCliente1        := TCliente.Create;
  lCliente1.Nome   := 'Claudemir - Cliente1';
  lCliente2        := TCliente.Create('Carlos - Cliente2');
  lCliente3        := TCliente.Create(lPessoa1);

  try
    Memo1.Lines.Add(lCliente1.Nome + ' - ' + lCliente2.Nome + ' - ' + lCliente3.Nome);
  finally
    lPessoa1.Free;
    lCliente1.Free;
    lCliente2.Free;
    lCliente3.Free;
  end;

end;

end.
