unit uFrmOrientacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UTriangulo;

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
    procedure Button1Click(Sender: TObject);
  private
    procedure CalculaArea;
    procedure CalculaAreaOOP;
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

procedure TForm1.Button1Click(Sender: TObject);
begin
  self.CalculaAreaOOP;
end;

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

  lbTrianguloX.caption := 'Triangulo X Área: '+FormatFloat('0.000' ,xResultadoX);
  lbTrianguloY.caption := 'Triangulo Y Área: '+FormatFloat('0.000' ,xResultadoY);

  if xResultadoX > xResultadoY then
    begin
      lbResultado.caption  := 'O Triangulo X é Maior!';
    end
  else if xResultadoX < xResultadoY then
    begin
      lbResultado.caption  := 'O Triangulo Y é Maior!';
    end
  else
    begin
       lbResultado.caption  := 'Os Triangulos tem o mesmo Valor!';
    end;

end;

procedure TForm1.CalculaAreaOOP;
var
  xTrianguloX: Ttriangulo;
  xTrianguloY: Ttriangulo;

  xAreaX: Double;
  xAreaY: Double;

begin
  xTrianguloX := TTriangulo.Create;
  xTrianguloY := TTriangulo.Create;

  try
      //Triangulo X
     xTrianguloX.A := StrToFloatDef(edtA.Text,0);
     xTrianguloX.B := StrToFloatDef(edtB.Text,0);
     xTrianguloX.C := StrToFloatDef(edtC.Text,0);

     xAreaX := xTrianguloX.Area;

     //Triangulo Y
     xTrianguloY.A := StrToFloatDef(edtD.Text,0);
     xTrianguloY.B := StrToFloatDef(edtE.Text,0);
     xTrianguloY.C := StrToFloatDef(edtF.Text,0);

     xAreaY := xTrianguloY.Area;

     lbTrianguloX.caption := 'Triangulo X Area : ' +FormatFloat('0.000' ,xAreaX );
     lbTrianguloY.caption := 'Triangulo Y Area : ' +FormatFloat('0.000' ,xAreaY );

     if(xAreaX > xAreaY) then
      lbResultado.caption := 'O Triangulo X é Maior!'
     else if (xAreaX < xAreaY) then
      lbResultado.caption := 'O Triangulo Y é Maior!'
     else
      lbResultado.caption  := 'Os Triangulos tem o mesmo Valor!';

  finally
    FreeAndNil(xTrianguloX);
    FreeAndNil(xTrianguloY);

  end;



end;

end.
{Fazer um programa para ler as medidas dos lados de dois
triângulos X e Y (suponha medidas válidas). Em seguida,
mostrar o valor das áreas dos dois triângulos e
dizer qual dos dois triângulos possui a maior área.

A fórmula para calcular a área de um triângulo a partir das
medidas de seus lados a, b e c é a seguinte (fórmula de Heron):

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
  Triagulo Y é maior


RESOLVENDO COM OOP }
