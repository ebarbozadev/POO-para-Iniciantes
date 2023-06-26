unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ContaBancaria;

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
  Conta1: TContaBancaria;
begin
  Conta1:= TContaBancaria.Create;
  try
    Conta1.Nome:= 'Victor';
    Conta1.Depositar(1280);
    Conta1.Sacar(80);

    Memo1.Lines.Add(Conta1.Nome);
    Memo1.Lines.Add(Conta1.Saldo.ToString);
  finally

  end;
end;

end.
