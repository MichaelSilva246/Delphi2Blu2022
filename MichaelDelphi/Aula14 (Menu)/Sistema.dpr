program Sistema;

uses
  Vcl.Forms,
  uFmMenu in 'uFmMenu.pas' {fmSisetmaMenu},
  uFrmCliente in 'uFrmCliente.pas' {fmClientes},
  ufrmFornecedor in 'ufrmFornecedor.pas' {fmFornecedor},
  uFrmProdutos in 'uFrmProdutos.pas' {fmProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmSisetmaMenu, fmSisetmaMenu);
  Application.Run;
end.
