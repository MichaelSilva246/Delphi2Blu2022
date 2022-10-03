unit uFrmCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfmClientes = class(TForm)
    fmCliente: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmClientes: TfmClientes;

implementation

{$R *.dfm}

procedure TfmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action    := caFree;
  fmCliente := Nil;
end;

end.
