unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtNumero: TEdit;
    btnTeste: TButton;
    Label1: TLabel;
    lbResultado: TLabel;
    procedure btnTesteClick(Sender: TObject);
  private
  procedure TestaIntervalo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnTesteClick(Sender: TObject);
begin
  self.TestaIntervalo;
end;

procedure TForm1.TestaIntervalo;
var
  xNumero: Integer;
begin
  xNumero:= StrToInt(edtNumero.text);
  if (xNumero >= 100) and (xNumero <= 200) then
    lbResultado.caption := ' O numero ' +IntToStr(xNumero)+ ' Est� entre 100 e 200'
  else
  lbResultado.caption := ' O numero ' +IntToStr(xNumero)+ ' N�o est� entre 100 e 200';

end;

end.
{ Fa�a um algoritmo que receba um n�mero e diga
se este n�mero est� no intervalo entre 100 e 200;}

