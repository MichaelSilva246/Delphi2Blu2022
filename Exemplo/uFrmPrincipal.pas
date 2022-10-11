unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtNome: TEdit;
    edtNasc: TEdit;
    edtAltura: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    btnNascimento: TButton;
    lbResultado: TLabel;
    procedure btnNascimentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses
  Pessoa;

procedure TForm1.btnNascimentoClick(Sender: TObject);
var
  xPessoa : Tpessoa;

begin
  XPessoa := Tpessoa.Create;

  try
    xPessoa.Nome         := edtNome.Text;
    xPessoa.Altura       := StrToFloat(edtAltura.Text);
    xPessoa.Nascimento   := StrToDate(edtNasc.Text);



  lbResultado.caption := xPessoa.RetornaPessoa + Trunc(xPessoa.CalculaIdade).ToString ;
  finally
    FreeAndNil(Xpessoa) ;
  end;


end;

end.

{1. Crie uma classe para representar uma Pessoa com os atributos
 privados de nome, data de nascimento e altura.

 Crie os m�todos  p�blicos necess�rios para getters e setters
 e tamb�m um m�todo para imprimir todos dados de uma pessoa.

 Crie um m�todo para calcular a idade da pessoa.   }
