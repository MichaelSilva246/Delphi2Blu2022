program temp;

uses
  Vcl.Forms,
  Exercicio4 in 'Exercicio4.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
