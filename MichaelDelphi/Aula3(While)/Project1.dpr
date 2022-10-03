program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  xSaldo, XSangria: Currency;
  xContinuar : Byte;

begin
  try
    //Retirada de dinheiro na conta
    Writeln('Retirado de dinheiro na conta');

    Writeln('Entre com o saldo da sua conta:');
    Readln(xSaldo);

    while xSaldo > 0 do
    begin
      Writeln('Qual ser� o valor da sua retirada:');
      Readln(xSangria);

      xSaldo := xSaldo - xSangria;

      Writeln('Deseja continuar com as retiradas?? (1-Sim 2-N�o)');
      Readln(xContinuar);

      if xContinuar <> 1 then
        break;
    end;

    Writeln('Seu saldo atual �: ' + FloatToStr(Xsaldo));
    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
