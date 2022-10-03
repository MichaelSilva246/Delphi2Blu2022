unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TOperadores = (opSomar, opSubtrair, opMultiplicar, opDividir, opResto, opDivisaoInteira);

  TForm1 = class(TForm)
    CB: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    numerador: TEdit;
    denominador: TEdit;
    Resultado: TEdit;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  xNumero1: Integer;
  xNumero2: Integer;
  xResultado: Integer;

begin
  try
  xNumero1 := StrToIntDef(Numerador.Text, 0);
  except
    on E: Exception do
      raise Exception.Create('Errouuuuu');
  end;

  xNumero2 := StrToIntDef(Denominador.Text, 0);

  XResultado := 0;

  case Toperadores (CB.ItemIndex) of
    opSomar:
    begin
      xResultado := xNumero1 + xNumero2;
    end;
    opSubtrair:
    begin
      xResultado := xNumero1 - xNumero2;
    end;
    opMultiplicar:
    begin
      xResultado := xNumero1 * xNumero2;
    end;
    opDividir:
    begin
      xResultado := Trunc(xNumero1 / Xnumero2);
    end;
    opResto:
    begin
      xResultado := (xNumero1 mod xNumero2);
    end;
    opDivisaoInteira:
    begin
      xResultado := xNumero1 div xNumero2;
    end;

  end;

  Resultado.Text := intToStr(xResultado);

end;

end.
