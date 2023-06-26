unit UnitContaBancaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ObjContaBancaria;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
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
  ContaBancaria: TContaBancaria;
begin
  ContaBancaria:= TContaBancaria.Create;
  try
    ContaBancaria.Nome:= 'Emanuel';
    ContaBancaria.Depositar(100);
    ContaBancaria.Sacar(0);

    Memo1.Lines.Add(ContaBancaria.Nome);
    Memo1.Lines.Add(ContaBancaria.Saldo.ToString);
  finally

  end;
end;

end.
