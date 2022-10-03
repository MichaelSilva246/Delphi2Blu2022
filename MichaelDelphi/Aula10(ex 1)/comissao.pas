unit comissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtNome: TEdit;
    btnCalculo: TButton;
    edtSalario: TEdit;
    edtVendas: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    tmComissao: TMemo;
    procedure btnCalculoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure SalarioVendedor;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnCalculoClick(Sender: TObject);
begin
  self.SalarioVendedor;
end;

procedure TForm1.SalarioVendedor;
var
  xComissao: Double;
  xSalarioTotal: Double;

begin
  xComissao:= StrToFloat(edtVendas.text) * (0.15);
  xSalarioTotal:= xComissao + StrToFloat(edtsalario.text);
  tmComissao.lines.add('Ol� ' +edtNome.Text+ ', Seu Salario Fixo �: '
                  +edtSalario.text+#10#13+ ' Voc� vendeu um total de: '
                  +edtVendas.Text+#10#13+' Sua Comiss�o Foi de: '
                  +FloatToStr(xComissao)+#10#13+ ' Formando um Salario total de: '
                  +FloatToStr(xSalarioTotal));
end;

end.

{Escreva um algorito qeu leia o nome de um vendedor,
o seu salario fixo e o total de vendas efetuadas
por ele no mes(em dinheiro). Sabendo que este vendedor
ganha 15% de comissao sobre suas vendas informar
seu nome, o salario fixo e o salario n final do mes;}
