unit PrecoCarro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtCustoFab: TEdit;
    edtImpostos: TEdit;
    edtLucro: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnCalculo: TButton;
    lbPrecoFinal: TLabel;
    procedure btnCalculoClick(Sender: TObject);
  private
  procedure CalculaCusto;
    { Private declarations }
  public
      { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnCalculoClick(Sender: TObject);
begin
  self.CalculaCusto;
end;

procedure TForm1.CalculaCusto;
var
xCusto,xImpostos,xCustoComImposto,
 xLucro,xPrecoFinal: Double;
begin
  xCusto:= StrToFloat(edtCustoFab.text);
  xImpostos:= StrToFloat(edtImpostos.text);
  xLucro:= StrToFloat(edtLucro.text);

  //xCustoComImposto:=(xCusto*xImpostos/100)+xCusto;
  //xPrecoFinal:= (xCustoComImposto*xLucro/100)+xCustoComImposto;

  xPrecoFinal := ((xCusto * (xImpostos / 100 + 1)) * (xLucro / 100 + 1));

  lbPrecoFinal.caption := FloatToStr(xPrecoFinal);

end;

end.
{O custo de um carro novo ao consumidor é a soma do custo de
 fábrica mais o percentual do distribuidor e dos impostos
aplicados (primeiro os impostos são aplicados sobre o custo
de fábrica, e depois o percentual do distribuidor sobre o resultado).

Supondo que o percentual do distribuidor seja de 28% e os impostos 45%,
escreva um algoritmo que leia o custo de fábrica de um carro e
informe o custo ao consumidor do mesmo;}
