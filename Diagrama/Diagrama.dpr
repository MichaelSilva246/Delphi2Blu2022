program Diagrama;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {Form1},
  UPessoa in 'UPessoa.pas',
  UPessoaFisica in 'UPessoaFisica.pas',
  UpessoaJuridica in 'UpessoaJuridica.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
