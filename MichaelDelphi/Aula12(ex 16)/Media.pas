unit Media;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnIdade: TButton;
    mmIdade: TMemo;
    procedure btnIdadeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnIdadeClick(Sender: TObject);
var
  xNome: String;
  xIdade: Integer;
  I: Integer;
begin

  for I := 0 to 5 do
    begin
      xNome:= inputbox('Informar','Informe seu nome','');
      xIdade:= StrToInt(inputbox('Informar','Informe sua idade',''));

     if xIdade >= 18 then
      mmIdade.lines.add (xNome+' , você é maior de idade')
     else if xIdade = 17 then
      mmIdade.lines.add(xNome+' , Falta pouco, volte ano que vem!')
     else
      mmIdade.lines.add(xNome+' , voce é menor de idade');
    end;



end;

end.
{Faça um algoritmo que receba a idade de 75 pessoas
e mostre mensagem informando “maior de idade” e
“menor de idade” para cada pessoa. Considere a idade
a partir de 18 anos como maior de idade;}
