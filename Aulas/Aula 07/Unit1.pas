unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, pessoa, cliente;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
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
  pessoa: TPessoa;
  cliente: TCliente;
begin
  pessoa:= TPessoa.Create;
  cliente:= TCliente.Create;
  try
    pessoa.Nome:= 'Emanuel';
    pessoa.DataNascimento:= '18/04/2003';

    cliente.Nome:= 'Thay';
    cliente.CPF:= '123456789-10';
    cliente.DataNascimento:= '15/05/1984';

    Memo1.Lines.Add('='      );
    Memo1.Lines.Add('Pessoa' );
    Memo1.Lines.Add('='      );
    Memo1.Lines.Add('Nome: '                 + pessoa.Nome);
    Memo1.Lines.Add('Data de Nascimento: '   + pessoa.DataNascimento);
    Memo1.Lines.Add('Idade:'                 + pessoa.Idade.ToString);
    Memo1.Lines.Add('='      );
    Memo1.Lines.Add('Cliente');
    Memo1.Lines.Add('='      );
    Memo1.Lines.Add('Nome: '                 + cliente.Nome);
    Memo1.Lines.Add('Data de Nascimento: '   + cliente.DataNascimento);
    Memo1.Lines.Add('Idade:'                 + cliente.Idade.ToString);
    Memo1.Lines.Add('CPF:'                   + cliente.CPF);

    Memo2.Lines.Add('='      );
    Memo2.Lines.Add('Pessoa' );
    Memo2.Lines.Add('='      );
    Memo2.Lines.Add(pessoa.RetornaDados);
    Memo2.Lines.Add('='      );
    Memo2.Lines.Add('Cliente');
    Memo2.Lines.Add('='      );
    Memo2.Lines.Add(cliente.RetornaDados);
  finally
    pessoa.Free;
    cliente.Free;
  end;
end;

end.
