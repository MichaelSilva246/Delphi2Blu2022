unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  UcontaCorrente;


type
  TForm1 = class(TForm)
    Button1: TButton;
    Button6: TButton;
    mmSaldo: TMemo;
    Button3: TButton;
    edtConta: TEdit;
    edtNome: TEdit;
    edtSaldo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtDeposito: TEdit;
    edtSaque: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
  private
    FContaCorrente : TContaCorrente;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}

{ TForm1 }



end.


{2. Crie uma classe para implementar uma ContaCorrente.
   A classe deve possuir os seguintes atributos:
  n�mero da conta, nome do correntista e saldo.

   Os m�todos s�o os seguintes: alterarNome, dep�sito e saque;
   No construtor, saldo � opcional, com valor default zero
   e os demais atributos s�o obrigat�rios.}