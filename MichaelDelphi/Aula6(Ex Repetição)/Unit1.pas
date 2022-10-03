unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TComando = (tFor, tWhile, tRepeat);

  TForm1 = class(TForm)
    Label1: TLabel;
    edtUM: TEdit;
    edtDois: TEdit;
    btnExecutar: TButton;
    rdoComando: TRadioGroup;
    Valor1: TLabel;
    Valor2: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnExecutarClick(Sender: TObject);
  private
    function SomaPares: Integer;
    function Sangria: Integer;
    procedure MetaFinanceira;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.btnExecutarClick(Sender: TObject);
var
xMetaFinanceira: integer;
begin
  case TComando(rdoComando.ItemIndex) of
      tFor:
    begin
     Self.SomaPares;
    end;
      tWhile:
    begin
      Self.Sangria;
      showMessage('Seu caixa ficar� zerado em :' + IntToStr(Self.Sangria)+ ' Dias');
    end;
      tRepeat:
    begin
      Self.MetaFinanceira;
    end;
  end ;


end;

procedure TForm1.MetaFinanceira;
var
  xMeta: Integer;
  xNum1: Integer;
begin
  xmeta:= 0;
  xNum1:= StrToInt(edtUm.text);
  repeat
  xNum1:= xNum1 - StrToInt(edtDois.text);
  Inc(xMeta);

  until (xNum1 <= 0);
  showMessage('Voc� vai atingir sua meta financeira em :' + IntToStr(xmeta)+ ' Dias');

end;

function TForm1.Sangria: Integer;
var
  xDias: Integer;
  xedtUm: Integer;

  begin
  xDias := 0;
  xedtUm:= StrToInt(edtUm.text);

  while xEdtUm > 0 do
  begin
    xEdtUm := xEdtum - StrToInt(edtDois.text);
    Inc(xDias);
  end;
  Result:= xDias;

end;

function TForm1.SomaPares: Integer;
var
  I: Integer;
  xSoma: Integer;
begin
  xSoma:= 0;

  for I := StrToInt(edtUm.text) to StrToInt(edtDois.text) do
    if  (i mod 2) =0 then
      xSoma:= xSoma + I;

  Result := xSoma;

  showMessage('A soma dos numeros pares �:' + IntToStr(xSoma));
end;

end.
