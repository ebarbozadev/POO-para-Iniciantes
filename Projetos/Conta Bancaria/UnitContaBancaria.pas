unit UnitContaBancaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ContaBancaria, Vcl.StdCtrls;

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
  ContaBancaria: TContaBancaria;
begin
  ContaBancaria:= TContaBancaria.Create;
  try
    ContaBancaria.NomeBanco:= 'Bradesco';
    ContaBancaria.NumeroAgencia:= '5879';
    ContaBancaria.NumeroContaDepositos:= '598.586.684-58';
    ContaBancaria.NumeroContaTransferencias:= '487.987.841-84';
    ContaBancaria.CodigoDoBanco:= '854772';

    Memo1.Lines.Add(ContaBancaria.NomeBanco);
    Memo1.Lines.Add(ContaBancaria.NumeroAgencia);
    Memo1.Lines.Add(ContaBancaria.NumeroContaDepositos);
    Memo1.Lines.Add(ContaBancaria.NumeroContaTransferencias);
    Memo1.Lines.Add(ContaBancaria.CodigoDoBanco);

    ContaBancaria.Depositar(100);
    Memo1.Lines.Add(ContaBancaria.Saldo.ToString);
    ContaBancaria.Sacar(20);
    Memo1.Lines.Add(ContaBancaria.Saldo.ToString);

    Memo1.Lines.Add(ContaBancaria.CPF);

  finally
    ContaBancaria.Free;
  end;
end;

end.
