unit uFrmGit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TConsumo = (Residencia, Comercio , Industria);

  TForm1 = class(TForm)
    rdImovel: TRadioGroup;
    edtConsumo: TEdit;
    lbResultado: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
  procedure CalculaKw;
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
  self.CalculaKw;
end;


procedure TForm1.CalculaKw;
const
  cResidencia = 0.60;
  cComercio   = 0.48;
  cIndustria  = 1.29;

begin


  case TConsumo(rdImovel.ItemIndex) of

    Residencia:
    begin
      lbResultado.Caption :='Seu Consumo foi de: '+ FloatToStr( StrToFloat(edtConsumo.text) * cResidencia);
    end;
    Comercio:
    begin
       lbResultado.Caption :='Seu Consumo foi de: '+ FloatToStr( StrToFloat(edtConsumo.text) * cComercio);
    end;
    Industria:
    begin
      lbResultado.Caption :='Seu Consumo foi de: '+ FloatToStr( StrToFloat(edtConsumo.text) * cIndustria);
    end;
  end;

end;

end.
 { Faça um algoritmo que calcule o valor da conta de luz de uma pessoa. Sabe-se que o cálculo
da conta de luz segue a tabela abaixo:
  Tipo de Cliente Valor do KW/h
    a. (Residência) 0,60;
    b. (Comércio) 0,48;
    c. (Indústria) 1,29.}