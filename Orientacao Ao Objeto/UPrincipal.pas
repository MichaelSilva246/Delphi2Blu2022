unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  UcontaCorrente;


type
  TForm1 = class(TForm)
    btnAlteraNome: TButton;
    Button6: TButton;
    mmSaldo: TMemo;
    btnOk: TButton;
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
    edtNovoNome: TEdit;
    lbConta: TLabel;
    procedure btnOkClick(Sender: TObject);
    procedure btnAlteraNomeClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
   FContaCorrente : TContaCorrente;
  procedure CriaConta;
  procedure ExibeConta;
      { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}

{ TForm1 }


procedure TForm1.btnAlteraNomeClick(Sender: TObject);
begin
  FcontaCorrente.AlteraNome(edtNovoNome.text);
  ExibeConta;
end;

procedure TForm1.btnOkClick(Sender: TObject);
begin
  (FContaCorrente.SaqueDeposito(FContaCorrente.saldo,
      StrToCurrDef(edtSaque.text, 0), StrToCurrDef(edtDeposito.text, 0)));
   mmSaldo.lines.add(CurrToStr(FContaCorrente.Saldo)+ ' Saldo ');
   ExibeConta;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  CriaConta; ExibeConta;
  edtDeposito.Enabled := True;
  edtSaque.Enabled := True;
  edtNovoNome.Enabled := True;
  btnOk.Enabled := True;
  btnAlteraNome.Enabled := True;
  edtNovoNome.Enabled := True;
end;

procedure TForm1.CriaConta;
begin
   FContaCorrente := TContaCorrente.Create(StrToInt(edtConta.text),
     edtNome.Text, StrToCurrDef(edtSaldo.Text, 0));
end;

procedure TForm1.ExibeConta;
begin
  lbConta.caption := (' Conta N? : ' +IntToStr(FContaCorrente.NumConta)+ #10#13 +
                '  Nome: ' +(FContaCorrente.Nome)+ #10#13 + ' Saldo : '+CurrToStr(FContaCorrente.Saldo));
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FContaCorrente);
end;

end.


{2. Crie uma classe para implementar uma ContaCorrente.
   A classe deve possuir os seguintes atributos:
  n?mero da conta, nome do correntista e saldo.

   Os m?todos s?o os seguintes: alterarNome, dep?sito e saque;
   No construtor, saldo ? opcional, com valor default zero
   e os demais atributos s?o obrigat?rios.}

