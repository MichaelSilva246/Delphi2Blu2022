program Project1;

uses
  Vcl.Forms,
  ufRmHeranca in 'ufRmHeranca.pas' {Form1},
  UAnimal in 'UAnimal.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
