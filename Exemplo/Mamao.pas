unit Mamao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lbPrestacao: TLabel;
    edtCompra: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    btnCalculaValor: TButton;
    procedure btnCalculaValorClick(Sender: TObject);
  private
  function ValorPrestacao: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnCalculaValorClick(Sender: TObject);
begin
  lbPrestacao.caption:= Self.ValorPrestacao;
end;

function TForm1.ValorPrestacao: String;
var
  xValorPrestacao: double;
begin
  xValorPrestacao:= StrToFloat(edtCompra.text) /5;
  Result:= '5 Parcelas de: '+FloatToStr(xValorprestacao);
end;

end.
{ A Loja Mam�o com A��car est� vendendo seus produtos em 5 (cinco)
 presta��es sem juros. Fa�a um algoritmo que receba um valor
 de uma compra e mostre o valor das presta��es;}
