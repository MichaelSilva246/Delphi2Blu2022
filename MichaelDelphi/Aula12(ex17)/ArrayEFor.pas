unit ArrayEFor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  tNumeros = array[1..5] of integer;
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.Button1Click(Sender: TObject);
var
  I: Integer;
  xQuantidade: Integer;
  xNumeros: tNumeros;
begin
  xQuantidade:= 0;
  for I := 1 to Length(xNumeros) do

  begin
    xNumeros[I]:= StrToInt(inputbox('Informar','Informe um Numero', ''));

    if (xNumeros[I] >=10) and (xNumeros[I] <= 150) then
      inc(xQuantidade);

  end;
  showMessage('Existem '+IntToStr(xQuantidade)+ ' , Numeros no Intervalo enrte 10 e 150 ' );

end;

end.
{Leia 80 (pode usar 5 para testar) n?meros e ao final informar quantos
n?mero(s) est(?)?o no intervalo entre 10 (inclusive) e 150 (inclusive)};
