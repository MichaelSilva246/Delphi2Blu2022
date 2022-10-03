unit Top;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lbResultadoMedia: TLabel;
    lbProdutos: TLabel;
    btnProdutos: TButton;
    procedure btnProdutosClick(Sender: TObject);
  private
    procedure CalculaLucro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnProdutosClick(Sender: TObject);
begin
  self.CalculaLucro;
end;

procedure TForm1.CalculaLucro;
var
  xGravaProduto: array[1..3] of String;
  xProduto: String;
  xPrecoCusto, xPrecoVenda: Double;
  xTotalCusto, xTotalVenda: Double;
  xMediaVenda, xMediaCusto, xLucro :Double;
  I: Integer;

begin
  xTotalCusto := 0;
  xTotalVenda := 0;
  xMediaVenda := 0;
  xMediaCusto := 0;


  for I := 1 to 3 do
  begin
    xProduto    := inputbox('Produto', 'Digite o Produto', '');
    xPrecoCusto := StrToFloat(inputbox('Preco Custo', 'Digite o Pre�o de custo', ''));
    xPrecoVenda := StrToFloat(inputbox('Preco Venda', 'Digite o Pre�o de Venda', ''));

    if xPrecoCusto >= xPrecoVenda then
    begin
      xGravaProduto[I] := 'O Produto '+xproduto+' Deu Prejuizo '+#10#13+#10#13+
                          'Valor de venda foi de : ' +FloatToStr(xPrecoVenda)+#10#13+
                          'E o valor de custo foi de : ' +FloatToStr(xPrecoCusto)
    end
    else
    begin
      xGravaProduto[I] := 'O Produto '+xproduto+' Deu Lucro '+#10#13+
                          'Valor de venda foi de : ' +FloatToStr(xPrecoVenda)+#10#13+
                          'E o valor de custo foi de : ' +FloatToStr(xPrecoCusto);
    end;

    xTotalCusto := xTotalCusto + xPrecoCusto;
    xTotalVenda := xTotalVenda + xPrecoVenda;


  end;
  xMediaVenda := xTotalVenda /3;
  xMediaCusto := xTotalCusto /3;
  xLucro      := xTotalVenda - xTotalCusto;

  lbResultadoMedia.caption := 'A media de venda foi de : '+FormatFloat('#.00',xMediaVenda)+#10#13+
                              'A media de custo foi de : '+FormatFloat('#,00',xMediaCusto)+#10#13+
                              'Total Lucro foi de : '  +FormatFloat('#.00',xLucro);
  lbProdutos.caption :=  'Lista de produtos : ' ;

  for I := 1 to 3 do
  begin
    lbProdutos.caption := lbProdutos.caption + #10#13 + xGravaProduto[I];
  end;

end;

end.
{Fa�a um algoritmo que receba o pre�o de custo e o pre�o de venda
de 40 produtos. Mostre como resultado se houve lucro, preju�zo ou
empate para cada produto.

Informe o valor de custo de cada produto,o valor de venda de
cada produto, a m�dia de pre�o de custo e do pre�o de venda;
