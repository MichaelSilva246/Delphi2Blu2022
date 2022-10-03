unit Otimo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
   TFuncionario = record
    Salario: Double;
    //SalarioMinimo: Double;
    SalarioReajustado: Double;
    Reajuste: Double;
    FolhaPagamento: Double;
    Nome: String;
  end;

  TForm1 = class(TForm)
    btnInsere: TButton;
    btnExibe: TButton;
    mmInformacoes: TMemo;
    procedure btnInsereClick(Sender: TObject);
    procedure btnExibeClick(Sender: TObject);
  private
   FSalario : array[0..5] of TFuncionario;

   procedure ReajusteSalarial;
   procedure CalculaReajuste(var Afun :TFuncionario; const aSalarioMinimo: Double);
   procedure RetornaMensagens;
   { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


{ TForm1 }

procedure TForm1.btnExibeClick(Sender: TObject);
begin
  self.RetornaMensagens;
end;

procedure TForm1.btnInsereClick(Sender: TObject);
begin
  self.ReajusteSalarial;
end;

procedure TForm1.CalculaReajuste(var Afun :TFuncionario; const aSalarioMinimo: Double);
const
  cTresSalarios = 0.50;
  cTresADez = 0.20;
  cDezAVinte = 0.15;
  cRestante = 0.10;
var
  xAfun: TFuncionario;


begin


  if (Afun.Salario < (3 * aSalarioMinimo)) then
  begin
    Afun.Reajuste := (Afun.Salario * cTresSalarios);
    Afun.SalarioReajustado := Afun.Salario + Afun.Reajuste;
  end

  else if (Afun.Salario < (10 * aSalarioMinimo)) then
  begin
    Afun.Reajuste := (Afun.Salario * cTresADez);
    Afun.SalarioReajustado := Afun.Salario + Afun.Reajuste;
  end

  else if (Afun.Salario < (20 * aSalarioMinimo)) then
  begin
    Afun.Reajuste := (Afun.Salario * cDezAVinte);
    Afun.SalarioReajustado := Afun.Salario + Afun.Reajuste;
  end
  else
    Afun.Reajuste := (Afun.Salario * cRestante);
    Afun.SalarioReajustado := Afun.Salario + Afun.Reajuste;

end;

procedure TForm1.ReajusteSalarial;

var
  //xSalario : array[0..5] of TFuncionario;
  I: Integer;
  xReajusteFolha: Double;
  xsalariominimo: Double;

begin

  xSalarioMinimo:= StrToFloat(inputbox('SalarioMinimo', 'Digite o Valor do salario Minimo', ''));
  xReajusteFolha:= 0;
  for I := 0 to 2 do
  begin
    FSalario[I].Nome:= inputbox('Nome', 'Digite Seu Nome', '');
    FSalario[I].Salario:= StrToFloat(inputbox('Salario', 'Digite Seu Salario Atual ', ''));
    CalculaReajuste(FSalario[I], xSalarioMinimo);
    xReajusteFolha:= xReajusteFolha + (FSalario[I].Reajuste);
    //FSalario[I].SalarioMinimo:= FSalario[0].SalarioMinimo;
  end;


end;

procedure TForm1.RetornaMensagens;
var
  I:Integer;
begin
  for I := 0 to 2 do
  begin
    mmInformacoes.lines.add(FSalario[I].Nome+ ' Voce recebeu um reajuste salarial no valor de '+FloatToSTr(FSalario[I].Salario)) ;
  end;
end;


end.
{28. Escreva um algoritmo para uma empresa que decide dar um reajuste
a seus 584 funcionários de acordo com os seguintes critérios:

a. 50% para aqueles que ganham menos do que três salários mínimos;
b. 20% para aqueles que ganham entre três até dez salários mínimos;
c. 15% para aqueles que ganham acima de dez até vinte salários mínimos;
d. 10% para os demais funcionários.

Leia o nome do funcionário, seu salário e o valor do salário
mínimo. Calcule o seu novo salário reajustado. Escrever o nome do
funcionário, o reajuste e seu novo salário. Calcule quanto à
empresa vai aumentar sua folha de pagamento;

TSalario : array of string;
Tsalarioreajuste : array of Tsalario;