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
var
  xValor : Currency;
begin
  case TCombustivel(rdTipoCombustivel.ItemIndex) of

    tpGasolina:
    begin
     if rdAbastecer.ItemIndex = 0 then // Por Valor
      begin
        xValor := Fbomba.abastecePorValor(StrToCurr(edtCombustivel.text));
        lbResultado.caption := (' Voce Abasteceu Gasolina  ')+#13#10+(' Quantidade : ')+FloatToStr(xValor);
      end
     else                                // Por Litro
      begin
        xValor := FBomba.abastecerPorLitro(StrToFloat(edtCombustivel.Text));
        lbResultado.caption := (' Voce Abasteceu Gasolina ')+#13#10+(' Valor a ser pago : ')+CurrToStr(xValor);
        FBomba.alterarQuantidadeCombustivel(StrToFloat(edtCombustivel.Text));
      end;
    end;

    tpGasolina_Adtv:
    begin
     if rdAbastecer.ItemIndex = 0 then // Por Valor
      begin
        xValor := Fbomba.abastecePorValor(StrToCurr(edtCombustivel.text));
        lbResultado.caption := (' Voce Abasteceu Gasolina Adtv ')+#13#10+(' Quantidade : ')+FloatToStr(xValor);
      end

     else                             // Por Litro
      begin
        xValor := FBomba.abastecerPorLitro(StrToFloat(edtCombustivel.Text));
        lbResultado.caption := (' Voce Abasteceu Gasolina Adtv ')+#13#10+(' Valor a ser pago : ')+CurrToStr(xValor);
        FBomba.alterarQuantidadeCombustivel(StrToFloat(edtCombustivel.Text));
      end;
    end;

    tpAlcool:
    begin
     if rdAbastecer.ItemIndex = 0 then // Por Valor
      begin
         xValor := Fbomba.abastecePorValor(StrToCurr(edtCombustivel.text));
         lbResultado.caption := (' Voce Abasteceu Alcool  ')+#13#10+(' Quantidade : ')+FloatToStr(xValor);
      end

     else                              // Por Litro
      begin
        xValor := FBomba.abastecerPorLitro(StrToFloat(edtCombustivel.Text));
        lbResultado.caption := (' Voce Abasteceu Alcool ')+#13#10+(' Valor a ser pago : ')+CurrToStr(xValor);
        FBomba.alterarQuantidadeCombustivel(StrToFloat(edtCombustivel.Text));
      end;
    end;

    tp_Diesel:
    begin
     if rdAbastecer.ItemIndex = 0 then // Por Valor
      begin
        xValor := Fbomba.abastecePorValor(StrToCurr(edtCombustivel.text));
        lbResultado.caption := (' Voce Abasteceu Diesel  ')+#13#10+(' Quantidade : ')+FloatToStr(xValor);
      end

     else                            // Por Litro
      begin
        xValor := FBomba.abastecerPorLitro(StrToFloat(edtCombustivel.Text));
        lbResultado.caption := (' Voce Abasteceu Diesel ')+#13#10+(' Valor a ser pago : ')+CurrToStr(xValor);
        FBomba.alterarQuantidadeCombustivel(StrToFloat(edtCombustivel.Text));
      end;
    end;

  end;
end;

procedure TForm1.TrocarValores;
var
  xValor : String;
begin
  case Trocar(rdTrocaValores.ItemIndex) of

  tpPrecoLitro:
    begin
      FBomba.alterarValor(StrToCurr(edtNovoValor.text));
    end;

  tpQtdBomba:
    begin
      FBomba.QuantidadeNaBomba:=(StrToFloat(edtNovoValor.text));
    end;

  tpCombustivel:
    begin
      FBomba.alterarCombustivel(edtNovoValor.text);
    end;

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

end.
 {3. Crie uma classe para representar uma BombaCombustivel.
   A classe BombaCombustivel deve conter os seguintes atributos: tipo de
   combust�vel, valor por litro e quantidade de combust�vel.

   Al�m desses atributos a classes deve conter os seguintes m�todos.

   a.	abastecerPorValor; //m�todo onde � informado o valor a ser abastecido
   e mostra a quantidade de litros que foi colocada no ve�culo

   b.	abastecerPorLitro; // m�todo onde � informado a quantidade em litros
   de combust�vel e mostra o valor a ser pago pelo cliente.

   c.	alterarValor; //altera o valor do litro do combust�vel.

   d.	alterarCombustivel; //altera o tipo do combust�vel.

   e.	alterarQuantidadeCombustivel; //altera a quantidade de combust�vel
   restante na bomba. }
