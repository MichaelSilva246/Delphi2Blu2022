unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    edtNome: TEdit;
    edtEndereco: TEdit;
    edtIdade: TEdit;
    edtCPF: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnOK: TButton;
    mmDados: TMemo;
    rdPessoa: TRadioGroup;
    procedure btnOKClick(Sender: TObject);
  private
    procedure PessoaFisicaOuJuridica;
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
   Upessoa, UPessoaFisica, UPessoaJuridica;

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnOKClick(Sender: TObject);
begin
  PessoaFisicaOuJuridica;
end;

procedure TForm1.PessoaFisicaOuJuridica;
var
  xPessoa : TPessoa;
begin
  xPessoa := nil;
  try
    case rdPessoa.ItemIndex of
      0:  xPessoa := TPessoaFisica.Create(edtNome.text, edtEndereco.text,
             StrToInt(edtIdade.text), edtCPF.text);   //Pessoa Fisica
      1:  xPessoa := TPessoaJuridica.Create(edtNome.text, edtEndereco.text,
             edtIdade.text, edtCPF.text);  // Pessoa Juridica
    end;

    if xPessoa is Tpessoafisica then
      if TpessoaFisica(Xpessoa).isCPF then
        begin
        ShowMessage('Pessoa Cadastrada com sucesso');
        mmDados.Lines.Add(#13#10+ ' Nome: ' +xPessoa.nome+ #13#10+ ' Endere�o: ' +xPessoa.Endereco
                         +#13#10+ ' Idade: ' +IntToStr(TPessoaFisica(xPessoa).idade)
                         +#13#10+ ' CPF : ' +TPessoaFisica(xPessoa).CPF);
        end
      else
        ShowMessage('CPF INVALIDO, Digite um CPF Valido');

    if xPessoa is TPessoaJuridica then
      if TPessoaJuridica(Xpessoa).isCNPJ then
      begin
        ShowMessage('Pessoa Cadastrada com sucesso');
        mmDados.Lines.Add(#13#10+' Nome: '+xPessoa.nome+ #13#10+ ' Endere�o: '+xPessoa.Endereco+
                          #13#10+ ' Idade: ' +TPessoaJuridica(xPessoa).IE+
                          #13#10+ ' CPF : ' +TPessoaJuridica(xPessoa).CNPJ);
      end
      else
        ShowMessage('CNPJ INVALIDO, Digite um CNPJ Valido');



  finally
    FreeAndNil (xPessoa);

  end;
end;

end.
