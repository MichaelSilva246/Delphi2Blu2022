program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  x,y: Integer;
begin
  try
    x := 5;
    y := 0;

    while (x > 2) do
    begin
      writeln(x);

     // if x = 4 then
      //  continue;   Tomar muito cuidado para não ocorrer loop infinito

      y := y + x;
      x := x - 1;

      //if x = 3 then
        //break;


    end;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
