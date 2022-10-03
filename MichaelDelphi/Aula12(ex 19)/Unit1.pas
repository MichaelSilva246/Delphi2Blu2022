unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    lbResultad: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    procedure QualoSexo;
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
  self.QualoSexo;
end;

procedure TForm1.QualoSexo;
var
 xNome, xSexo: String;
 I: Integer;
 xMulher, xHomem: Integer;
begin
  xMulher:=0;
  xHomem:=0;
  for I := 0 to 10 do
    begin
    xNome:= inputbox('Nome', 'Digite Seu Nome', '');
    xSexo:= inputbox('Sexo', 'Digite F/M', '');

      if AnsiUpperCase (xSexo) = 'F' then
      inc(xMulher)

      else if AnsiUpperCase (xSexo) = 'M' then
      inc(xHomem)
    end;
  lbResultad.caption:=('Total Homens: '+IntToStr(xHomem)+ ' Total mulheres: '+IntToStr(xMulher));



end;

end.
{Escreva um algoritmo que leia o nome e o sexo de 56
(pode usar 5 para testar) pessoas e informe o nome e se ela é
homem ou mulher. No final informe total de homens e de mulheres;}

