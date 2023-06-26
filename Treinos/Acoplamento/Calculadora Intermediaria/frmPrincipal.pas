unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, calculadora;

type
  TForm1 = class(TForm)
    Button1: TButton;
    edtValor1: TEdit;
    edtValor2: TEdit;
    edtResultado: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// Somar
procedure TForm1.Button1Click(Sender: TObject);
var
  calculadora: TCalculadora;
begin
  edtResultado.Text:= CurrToStr(calculadora.funcoes.somar(StrToCurr(edtValor1.Text), StrToCurr(edtValor2.Text)));
end;

// Subtrair
procedure TForm1.Button2Click(Sender: TObject);
var
  calculadora: TCalculadora;
begin
  edtResultado.Text:= CurrToStr(calculadora.funcoes.subtrair(StrToCurr(edtValor1.Text), StrToCurr(edtValor2.Text)));
end;

// Dividir
procedure TForm1.Button3Click(Sender: TObject);
var
  calculadora: TCalculadora;
begin
  edtResultado.Text:= CurrToStr(calculadora.funcoes.dividir(StrToCurr(edtValor1.Text), StrToCurr(edtValor2.Text)));
end;

// Resto
procedure TForm1.Button4Click(Sender: TObject);
var
  calculadora: TCalculadora;
begin
  edtResultado.Text:= IntToStr(calculadora.funcoes.resto(StrToInt(edtValor1.Text), StrToInt(edtValor2.Text)));
end;

// Multiplicar
procedure TForm1.Button5Click(Sender: TObject);
var
  calculadora: TCalculadora;
begin
  edtResultado.Text:= CurrToStr(calculadora.funcoes.multiplicar(StrToCurr(edtValor1.Text), StrToCurr(edtValor2.Text)));
end;

end.
