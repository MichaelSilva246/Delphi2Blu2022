unit Exercicio4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lbTemperatura: TLabel;
    btnCelsius: TEdit;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    function ConverteTemperatura: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  lbTemperatura.Caption := Self.ConverteTemperatura;
end;

function TForm1.ConverteTemperatura: String;
Var
  xFahrenheit: Double;
begin
  xFahrenheit:= (9* StrToFloat(btnCelsius.text)+160) /5;
  Result:= FloatToStr(XFahrenheit);

end;

end.


{Leia uma temperatura em graus Celsius e aprente convertida em graus
Fahrenheit. A formula de conversão é F(9*C+160) /5, sendo F a temperatura
em Fahrenheit e C a temperatura em Celsius}
