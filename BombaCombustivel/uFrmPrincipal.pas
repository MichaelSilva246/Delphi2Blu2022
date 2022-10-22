unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,UBombaCombustivel;


type
   TCombustivel = (tpGasolina, tpGasolina_Adtv, tpAlcool, tp_Diesel);
   Trocar = (tpPrecoLitro, tpQtdBomba , tpCombustivel);
  TForm1 = class(TForm)
    edtCombustivel: TEdit;
    rdTipoCombustivel: TRadioGroup;
    lbResultado: TLabel;
    btnAbastecer: TButton;
    btnNovoPreco: TButton;
    lbCreate: TLabel;
    Label6: TLabel;
    rdAbastecer: TRadioGroup;
    edtNovoValor: TEdit;
    rdTrocaValores: TRadioGroup;
    procedure Abastecer;
    procedure TrocarValores;
    procedure btnAbastecerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoPrecoClick(Sender: TObject);
    procedure Informacoes;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PassaCombustivel(const aValue: String);
  private
    FBomba : TBomba;
     { Private declarations }
  public

    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Abastecer;
begin
  case TCombustivel(rdTipoCombustivel.ItemIndex) of

    tpGasolina:
      Self.PassaCombustivel(' Gasolina ');

    tpGasolina_Adtv:
      Self.PassaCombustivel(' Gasolina Adtv ');

    tpAlcool:
      Self.PassaCombustivel(' Alcool ');

    tp_Diesel:
       Self.PassaCombustivel(' Diesel ');

  end;
end;

procedure TForm1.TrocarValores;
begin
  case Trocar(rdTrocaValores.ItemIndex) of

  tpPrecoLitro:
    FBomba.alterarValor(StrToCurr(edtNovoValor.text));


  tpQtdBomba:
    FBomba.QuantidadeNaBomba:=(StrToFloat(edtNovoValor.text));


  tpCombustivel:
    FBomba.alterarCombustivel(edtNovoValor.text);

  end;
end;

procedure TForm1.btnAbastecerClick(Sender: TObject);
begin
  Abastecer;
  Informacoes;
end;

procedure TForm1.btnNovoPrecoClick(Sender: TObject);
begin
  TrocarValores;
  Informacoes;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FBomba);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FBomba := Tbomba.Create(StrToCurr(inputbox('Valor', 'Digite, o valor por litro', ''))
        ,StrToFloat(inputbox('Quantidade', 'Digite a Quantidade de Combustivel na Bomba', '')),
        (inputbox('Tipo', 'Digite o Tipo de Combustivel', '')));

  lbCreate.caption := FBomba.TipoCombustivel+ '  Valor : ' +CurrToStr(FBomba.ValorPorLitro)+('/l.')+#13#10+
                    ('Quantidade na Bomba : ')+FloatToStr(FBomba.QuantidadeNaBomba)+(' Litros.');

end;


procedure TForm1.Informacoes;
begin
    lbCreate.caption := FBomba.TipoCombustivel+ '  Valor : ' +CurrToStr(FBomba.ValorPorLitro)+('/l.')+#13#10+
                    ('Quantidade na Bomba : ')+FloatToStr(FBomba.QuantidadeNaBomba)+(' Litros.');
end;


procedure TForm1.PassaCombustivel(const aValue: String);
var
  xValor : Currency;
begin
  if rdAbastecer.ItemIndex = 0 then
    begin
      xValor := Fbomba.abastecePorValor(StrToCurr(edtCombustivel.text));
      lbResultado.caption := (' Voce Abasteceu ' + aValue)+#13#10+(' Quantidade : ')+FloatToStr(xValor);
    end
  else
    begin
      xValor := FBomba.abastecerPorLitro(StrToFloat(edtCombustivel.Text));
      lbResultado.caption := (' Voce Abasteceu '+ aValue)+#13#10+(' Valor a ser pago : ')+CurrToStr(xValor);
      FBomba.alterarQuantidadeCombustivel(StrToFloat(edtCombustivel.Text));
    end;
end;

end.
 {3. Crie uma classe para representar uma BombaCombustivel.
   A classe BombaCombustivel deve conter os seguintes atributos: tipo de
   combustível, valor por litro e quantidade de combustível.

   Além desses atributos a classes deve conter os seguintes métodos.

   a.	abastecerPorValor; //método onde é informado o valor a ser abastecido
   e mostra a quantidade de litros que foi colocada no veículo

   b.	abastecerPorLitro; // método onde é informado a quantidade em litros
   de combustível e mostra o valor a ser pago pelo cliente.

   c.	alterarValor; //altera o valor do litro do combustível.

   d.	alterarCombustivel; //altera o tipo do combustível.

   e.	alterarQuantidadeCombustivel; //altera a quantidade de combustível
   restante na bomba. }
