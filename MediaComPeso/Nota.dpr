program Nota;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {Form1},
  UAluno in 'UAluno.pas',
  UDisciplina in 'UDisciplina.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
