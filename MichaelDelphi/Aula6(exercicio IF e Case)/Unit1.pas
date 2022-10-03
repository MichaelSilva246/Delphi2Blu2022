unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TNivel = (tpEstagiario, tpJunior, tpPleno, tpSenior);

  TForm1 = class(TForm)
    Label1: TLabel;
    edtNome: TEdit;
    btnCase: TButton;
    rdoNivel: TRadioGroup;
    btnIF: TButton;
    procedure btnCaseClick(Sender: TObject);
    procedure btnIFClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCaseClick(Sender: TObject);
var
  xFrase: String;
begin
  case TNivel(rdoNivel.ItemIndex) of
    tpEstagiario:
    begin
      Xfrase := ' Eu ' +edtNome.text + ', Seu nivel � Estagiario voc� chega l�!';
    end;
      tpJunior:
    begin
      Xfrase := ' Eu ' +edtNome.text + ', Seu nivel � Junior, voc� est� melhorando!.';
    end;
      tpPleno:
    begin
      Xfrase := ' Eu ' +edtNome.text + ', Seu nivel � Pleno, falta pouco!!!!';
    end;
      tpSenior:
    begin
      Xfrase := ' Eu ' +edtNome.text + ', Seu nivel � Senior, parabens voce conseguiu!';
    end ;
  end ;
  showMessage(xfrase);
end;

procedure TForm1.btnIFClick(Sender: TObject);
begin
  if edtNome.Text = 'michael' then
    ShowMessage('Sou eu.Presente')
  else
    showMessage('Voc� n�o e o michael')

end;

end.
