unit Exercicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtUm: TEdit;
    edtDois: TEdit;
    btnSOMA: TButton;
    btnCalculos: TButton;
    btnMedia: TButton;
    edtKm: TEdit;
    edtLitros: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbResultado: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure btnSOMAClick(Sender: TObject);
    procedure btnCalculosClick(Sender: TObject);
    procedure btnMediaClick(Sender: TObject);
  private
  function SomaDoisNumeros: String;
  procedure CalculosExercicioDois;
  function MediaCombustivel: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnCalculosClick(Sender: TObject);
begin
  Self.CalculosExercicioDois;
end;

procedure TForm1.btnMediaClick(Sender: TObject);
begin
   lbResultado.Caption := Self.MediaCombustivel;
end;

procedure TForm1.btnSOMAClick(Sender: TObject);
begin
  lbResultado.Caption := Self.SomaDoisNumeros;
end;

procedure TForm1.CalculosExercicioDois;
var
  xSoma, xSubtrai, xMultiplica, xDivide: Double;
begin
  xSoma:= StrToFloat(edtUm.text)+StrToInt(edtDois.text);
  xSubtrai:= StrToFloat(edtUm.text)-StrToInt(edtDois.text);
  xMultiplica:= StrToFloat(edtUm.text)*StrToInt(edtDois.text);
  xDivide:= StrToFloat(edtUm.text)/StrToInt(edtDois.text);
  lbResultado.Caption := (' A Soma �: ' +FloatToStr(xSoma)+#10#13+
                      ' A Subtra��o �: '+FloatToStr(xSubtrai)+#10#13+
                      ' A Multiplicacao �: '+FloatToStr(xMultiplica)+#10#13+
                      ' A Divis�o �: '+FloatToStr(+xDivide));
end;


function TForm1.MediaCombustivel: String;
var
  xMedia: Double;
begin
  xMedia:= StrToFloat(edtKm.text)/StrToInt(edtLitros.text);
  Result:= FloatToStr(xMedia)+'Km/L';

end;

function TForm1.SomaDoisNumeros: String;
var
  xSoma: Double;
begin
  xSoma:= StrToFloat(edtUm.text)+StrToInt(edtDois.text);
  Result:= FloatToStr(xSoma);
end;

end.

//1 - Faca um algoritimo que receba dois numeros e exiba o resultado da sua soma


//2- Faca um algoritimo que receba dois numeros e ao final mostre a soma,
// subrtacao, mutiplicacao e divisao dos dois numeros lidos


// 3 escreva um algoritimo apra determinar o consumo medio de um automovel
//sendo fornecida a distancia total percorrida pelo automovel e o
//total de combustivel gasto




