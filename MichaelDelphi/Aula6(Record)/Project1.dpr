program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  TRegCliente = record
    Codigo: Integer;
    Nome: String;
    Idade: Byte;
  end;
var
  xCliente: TRegCliente;

begin
  try
    writeln('Entre com o codigo do Cliente: ');
    Readln(xCliente.Codigo);

    writeln('Entre com o Nome do Cliente: ');
    Readln(xCliente.nome);

    writeln('Entre com a idade do Cliente: ');
    Readln(xCliente.idade);

    writeln('Codigo: ' + xCliente.Codigo.ToString) ;
    writeln('Nome..: ' + xCliente.nome);
    writeln('Idade.: ' + xCliente.Idade.ToString);

    readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
