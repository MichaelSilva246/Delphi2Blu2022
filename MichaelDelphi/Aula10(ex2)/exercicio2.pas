unit exercicio2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtNome: TEdit;
    edtNota1: TEdit;
    edtNota2: TEdit;
    edtNota3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    tmMedia: TMemo;
    btnCalcula: TButton;
    btnLimpaTela: TButton;
    procedure btnCalculaClick(Sender: TObject);
    procedure btnLimpaTelaClick(Sender: TObject);
  private
    procedure MediaAluno;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnCalculaClick(Sender: TObject);
begin
  self.MediaAluno;
end;

procedure TForm1.btnLimpaTelaClick(Sender: TObject);
var
  I : Integer;
begin
  for I := 0 to Self.ComponentCount - 1 do
    if (Self.Components[i] is TEdit) then
      (Self.Components[i] as TEdit).Clear;
end;

procedure TForm1.MediaAluno;
var
  xMedia: Double;

begin
  xMedia:= (StrToFloat(edtNota1.text)+StrToFloat(edtNota2.text)+StrToFloat(edtNota3.text)) /3;
  if xMedia >= 7 then
    tmMedia.lines.add(' Parab�ns ' +edtNome.text+ ' Aprovado com media superior a 7, sua media foi de: ' +FloatToStr(xMedia))
  else
    tmMedia.lines.add(' Recupera��o ' +edtNome.text+ ' Recuperacao com media inferior  a 7, sua media foi de: ' +FloatToStr(xMedia))

end;

end.
{ Escreva um algoritimo que leia o nome de um aluno e as notas das 3 provas
que ele obteve no semeste. No final informar o nome do aluno e a sua media.

