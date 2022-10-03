program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {btnConsultar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TbtnConsultar, btnConsultar);
  Application.Run;
end.
