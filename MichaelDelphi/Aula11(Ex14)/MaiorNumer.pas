unit MaiorNumer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnNum1: TEdit;
    btnNum2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnMaiorNum: TButton;
    lbResultado: TLabel;
    procedure btnMaiorNumClick(Sender: TObject);
  private
    function retornaMaior: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnMaiorNumClick(Sender: TObject);
begin
  lbResultado.caption:= retornaMaior;
end;

function TForm1.retornaMaior: String;
var
  xMaiorNumero: Double;
begin
  if btnNum1.text > btnNum2.text then
  Result:= 'O maior numero � : '+btnNum1.text
  else if btnNum1.text < btnNum2.text then
  Result:= ' O maior numero �: '+btnNum2.text
  else
  Result:= 'Os dois numeros tem o mesmo valor: '+btnNum1.text;


end;

end.
{ Escreva um algoritmo que leia dois valores inteiro
 distintos e informe qual � o maior; }

