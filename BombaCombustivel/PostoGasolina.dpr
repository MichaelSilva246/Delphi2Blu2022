program PostoGasolina;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {Form1},
  UGasolina in 'UGasolina.pas',
  UAlcool in 'UAlcool.pas',
  UDiesel in 'UDiesel.pas',
  UBombaCombustivel in 'UBombaCombustivel.pas',
  UGasolinaAditivada in 'UGasolinaAditivada.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
