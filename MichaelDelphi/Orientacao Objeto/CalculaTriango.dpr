program CalculaTriango;

uses
  Vcl.Forms,
  uFrmOrientacao in 'uFrmOrientacao.pas' {Form1},
  UTriangulo in 'UTriangulo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
