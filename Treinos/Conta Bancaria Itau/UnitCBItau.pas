unit UnitCBItau;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Dados;

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
  cBancaria1: TDados;
begin
  cBancaria1:= TDados.Create;
  try
    cBancaria1.Nome:= 'Emanuel';
    cBancaria1.NumeroCasa:= '214';
    cBancaria1.Depositar(100);
    cBancaria1.Sacar(20);

    Memo1.Lines.Add(cBancaria1.Nome);
    Memo1.Lines.Add(cBancaria1.NumeroCasa);
    Memo1.Lines.Add(cBancaria1.Saldo.ToString);
  finally
    cBancaria1.Free;
  end;
end;

end.
