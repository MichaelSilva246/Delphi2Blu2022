unit Media;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lbNota1: TEdit;
    lbNota2: TEdit;
    lbNota3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnCalculaMedia: TButton;
    btnMedia: TLabel;
  private
    procedure CalculaMedia;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.CalculaMedia;
var
  xMedia: Double;
begin
  xMedia:= (StrToFloat(lbNota1.text)+StrToFloat(lbNota2.text)
                    +StrToFloat(lbNota3.text))/3;

  if xMedia >= 7 then
    btnMedia.caption:=(' Aprovado!!, Parabéns sua media foi superior a 7')
  else if xMedia <= 5 then
    btnMedia.Caption:=(' Reprovado"!!, Sua media foi inferior a 5')
  else
    btnMedia.caption:=(' Em recuperacao sua media ficou entre 5.1 e 6.9');

end;

end.
{Escreva um algoritmo que leia o nome e as três notas obtidas por
um aluno durante o semestre. Calcular a sua média (aritmética),
informar o nome e sua menção aprovado (media >= 7),
Reprovado (media <= 5) e Recuperação (media entre 5.1 a 6.9);
