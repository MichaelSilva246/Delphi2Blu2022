program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
    xQtdeEntrada: Integer;
    xNumero: Integer;
    I: Integer;
    xSoma: Integer;

begin
  try
    xSoma := 0;

    //Imprimir a soma da quantidade de numer de entrada
    writeLn('Entre com a quantiadde total de números');
    Readln(xQtdeEntrada);

    for I := 0 to xQtdeEntrada-1  do
    begin
      WriteLn('Enre com o ' + IntToStr(I+1) + '• numero: ');
      Readln(xNumero);

      xSoma := xSoma + xNumero;
    end;

    WriteLn('A soma dos numeros é: ' + IntToStr(xSoma));
    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

