unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  contabancaria_overload_override_inherit, pessoa_abstract;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
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
  pessoa1  : TPessoa;
  pessoa2  : TContaBancaria;
begin
  pessoa1  := TPessoa.Create;
  pessoa2  := TContaBancaria.Create;
  try
    pessoa1.Nome:= 'Emanuel';
    Memo1.Lines.Add(pessoa1.mostraDados);

    pessoa2.Nome:= 'Miguel';
    pessoa2.Depositar(10);
    pessoa2.Depositar(10.50);
    pessoa2.Sacar(1.99);
    pessoa2.Sacar(2);
    Memo2.Lines.Add(pessoa2.mostraDados);
  finally
    pessoa1.Free;
    pessoa2.Free;
  end;
end;

end.
