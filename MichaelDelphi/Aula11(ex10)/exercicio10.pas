unit exercicio10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtPreco: TEdit;
    edtPercentual: TEdit;
    lbPrecoFinal: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
  procedure PrecoFinal;
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
  self.PrecoFinal;
end;

procedure TForm1.PrecoFinal;
var
  xPrecoProduto,xPercentual,xPrecoFinal: Double;
begin
  xPrecoProduto:= StrToFloat(edtPreco.text);
  xPercentual:= xPrecoProduto *StrToFloat(edtPercentual.text)/100;
  xPrecoFinal:= xPrecoProduto + xPercentual;
  lbPrecoFinal.caption:= FloatToStr(xPrecoFinal);
end;

end.
{Faça um algoritmo que receba o preço de custo de um produto
e mostre o valor de venda. Sabe-se que o preço de custo
receberá um acréscimo de acordo com um percentual informado
pelo usuário;}

