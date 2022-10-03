unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtNum1: TEdit;
    edtNum2: TEdit;
    lbResultado: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnComparaNum: TButton;
    procedure btnComparaNumClick(Sender: TObject);
  private
    procedure VerificaNumero;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnComparaNumClick(Sender: TObject);
begin
  self.VerificaNumero;
end;

procedure TForm1.VerificaNumero;
var
  xNumero1, xNumero2: Integer;

begin
  xNumero1 := StrToInt(edtNum1.text);
  xNumero2 := StrToInt(edtNum2.text);

  if xNumero1 <> xNumero2 then
  begin
    if xNumero1 > xNumero2 then
      lbResultado.caption := ' O numero '+IntToStr(xNumero1)+ ' � o maior '
    else
      lbResultado.caption := ' O numero '+IntToStr(xNumero2)+ ' � o maior ';
  end
  else
    lbResultado.caption := ' Os numeros s�o iguais. ';
end;


end.
{Fa�a um algoritmo que leia dois n�meros e identifique
se s�o iguais ou diferentes. Caso eles  sejam iguais imprima
uma mensagem dizendo que eles s�o iguais. Caso sejam diferentes,
informe qual n�mero � o maior, e uma mensagem que s�o diferentes;}
