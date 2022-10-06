unit uFrmOrientacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtF: TEdit;
    edtC: TEdit;
    edtA: TEdit;
    edtB: TEdit;
    edtE: TEdit;
    edtD: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    lbTrianguloX: TLabel;
    lbTrianguloY: TLabel;
    lbResultado: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button2Click(Sender: TObject);
  private
    procedure CalculaArea;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Math;

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  self.CalculaArea;
end;

procedure TForm1.CalculaArea;

var
  xMedidaA,xMedidaB,xMedidaC,
    xMedidaTotalX, xMedidaTotalY,
       xResultadoX, xResultadoY  : Double;

begin
  xMedidaA      := StrToFloat(edtA.text);
  xMedidaB      := StrToFloat(edtB.text);
  xMedidaC      := StrToFloat(edtC.text);
  xMedidaTotalX := (xMedidaA + xMedidaB + xMedidaC) /2;
  xResultadoX   := Sqrt(xMedidaTotalX*(xMedidaTotalX-xMedidaA)
                  *(xMedidaTotalX-xMedidaB)  *(xMedidaTotalX-xMedidaC));

  xMedidaA      := StrToFloat(edtD.text);
  xMedidaB      := StrToFloat(edtE.text);
  xMedidaC      := StrToFloat(edtF.text);
  xMedidaTotalY := (xMedidaA + xMedidaB +xMedidaC) /2;
  xResultadoY   := Sqrt(xMedidaTotalY*(xMedidaTotalY-xMedidaA)
                *(xMedidaTotalY-xMedidaB) *(xMedidaTotalY-xMedidaC));

  if xResultadoX > xResultadoY then
    begin
      lbTrianguloX.caption := 'Triangulo X �rea: '+FormatFloat('0.000' ,xResultadoX);
      lbTrianguloY.caption := 'Triangulo Y �rea: '+FormatFloat('0.000' ,xResultadoY);
      lbResultado.caption  := 'O Triangulo X � Maior!';
    end;
  if xResultadoX < xResultadoY then
    begin
      lbTrianguloX.caption := 'Triangulo X �rea: '+FormatFloat('0.000', xResultadoX);
      lbTrianguloY.caption := 'Triangulo Y �rea: '+FormatFloat('0.000', xResultadoY);
      lbResultado.caption  := 'O Triangulo Y � Maior!';
    end
  else
    begin
      lbTrianguloX.caption := 'Triangulo X �rea: '+FormatFloat('0.000', xResultadoX);
      lbTrianguloY.caption := 'Triangulo Y �rea: '+FormatFloat('0.000', xResultadoY);
      lbResultado.caption  := 'Os Triangulos tem o mesmo Valor!';
    end;





end;

end.
{Fazer um programa para ler as medidas dos lados de dois
tri�ngulos X e Y (suponha medidas v�lidas). Em seguida,
mostrar o valor das �reas dos dois tri�ngulos e
dizer qual dos dois tri�ngulos possui a maior �rea.

A f�rmula para calcular a �rea de um tri�ngulo a partir das
medidas de seus lados a, b e c � a seguinte (f�rmula de Heron):

 area = RaizQuadrada (p(p-a)(p-b)(p-c))
 onde p = a+b+c / 2

Usar o Math.Sqrt

Exemplo
  Medidas X
   3,00
   4,00
   5,00
  Medidas Y
   7,5
   4,50
   4,02

  Area X = 6,000
  Area Y = 7,5638
  Triagulo Y � maior


RESOLVENDO COM OOP }