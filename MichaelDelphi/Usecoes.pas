unit Usecoes;

interface

  uses //uses para se��o interface
  UAnimal;

  type //Tipos definidos
  TRegistro = record
    Id: Integer;
    Data: TDate;
    Hora: TTime;
    Obse: String
  end;
TCachorro = class (TAnimal)
  procedure MeuSomEh; override;
  end;
  var //Declara��o de variaveis globais - Semper escapar
  vGloball: Integer;

implementation

  uses //Uses para a se��o implementation
    Vcl.Dialogs;
   { TCachorro}


procedure TCachorro.MeuSomEh;
begin
  ShowMessage('Au Au!');
end;

end.



// Comentario
{
Comentario
}
(*
Comentario
*)
