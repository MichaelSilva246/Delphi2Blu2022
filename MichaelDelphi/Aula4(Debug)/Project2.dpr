program Project2;

uses
  Vcl.Forms,
  Project1 in 'Project1.pas' {Form1},
  UCalculadora in 'UCalculadora.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
