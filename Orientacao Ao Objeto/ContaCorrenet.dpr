program ContaCorrenet;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Form1},
  UcontaCorrente in 'UcontaCorrente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
