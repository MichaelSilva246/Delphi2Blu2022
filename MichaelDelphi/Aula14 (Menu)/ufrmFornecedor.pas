unit ufrmFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfmFornecedor = class(TForm)
    fmFornecedor: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFornecedor: TfmFornecedor;

implementation

{$R *.dfm}

procedure TfmFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action       := caFree;
  fmFornecedor := Nil;
end;

end.
