program Project1;

uses
  Vcl.Forms,
  Primeiro in 'Primeiro.pas' {Form1},
  UAnimal in 'UAnimal.pas',
  Usecoes in 'Usecoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
