program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmProceduresFunctions};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmProceduresFunctions, frmProceduresFunctions);
  Application.Run;
end.
