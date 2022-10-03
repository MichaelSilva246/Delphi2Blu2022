unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TNumeros = (zero, UM , Dois, Tres , Quatro, Cinco);
  TForm1 = class(TForm)
    edtNumero: TEdit;
    lbResultado: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    procedure NumeroPorExtenso;
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
  self.NumeroPorExtenso;
end;

procedure TForm1.NumeroPorExtenso;
var
  I: Integer;
  xNum: Integer;
  xFrase: String;
begin
  xNum := StrToInt(edtNumero.text);

  case TNumeros(xNum) of             //Somente valores ordinais

    Um:
    begin
     xFrase := ' UM ';
    end;
    Dois:
    begin
      xFrase := ' Dois ';
    end;
    Tres:
    begin
      xFrase := ' Tres ';
    end;
    Quatro:
    begin
     xFrase := ' Quatro ';
    end;
    Cinco:
    begin
      xFrase := ' Cinco ';
    end;
    else
    begin
      xFrase:= ' Numero Invalido ';
    end;

  end;
  lbResultado.caption := xFrase;


end;

end.
{. Faça um algoritmo que leia um número de 1 a 5 e escreva
por extenso. Caso o usuário digite um número que não esteja
neste intervalo, exibir a seguinte mensagem: número inválido;


