unit Poupanca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lbJuros: TLabel;
    edtPoupanca: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    function CalculaPoupanca: Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
self.calculapoupanca;
end;

function TForm1.CalculaPoupanca: Double;
const
  cJuros = 1.07;
var
  xPoupanca: Double;
begin
 xPoupanca:= StrToFloat(edtPoupanca.Text) * cJuros;
 lbJuros.caption:= ('Valor apos 1 mês na poupança = a : '+FloatToStr(xPoupanca));


end;

end.
{Faça um algoritmo que receba um valor que foi depositado e
 exiba o valor com rendimento após um mês.
 Considere fixo o juros da poupança em 0,07% a.m;}
