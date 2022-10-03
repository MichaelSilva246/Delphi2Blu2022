unit Conversao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lbReal: TLabel;
    edtCotacao: TEdit;
    edtDolar: TEdit;
    btnCalculo: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure DolarParaReal;
    procedure btnCalculoClick(Sender: TObject);
  private
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
self.DolarParaReal;
end;

procedure TForm1.DolarParaReal;
var
  xDolar, xCotacao, xReal: Double;

begin
  xDolar := StrToFloat(edtDolar.Text);
  xCotacao := StrToFloat(edtCotacao.Text);
  xReal := xDolar * xCotacao;
  lbReal.caption:= ('Você tem : '+FloatToStr(xReal));

end;

end.
{Elabore um algoritimo que efetue a aprensetacao do valor da conversao em Real
de um valor lido em Dolar. O algoritimo devera soliciar o valor da cotacao
do dolar e tambem a quantiadde de dolares disponiveis com o usuario}