unit UAluno;


interface
  Type
    TAluno = class

  private
    FMatricula    : Integer;
    FNome         : String;
    FNotaProva1   : Integer;
    FNotaProva2   : Integer;
    FNotaTrabalho : Integer;

    procedure SetNome(const Value: String);
    procedure SetNotaProva1(const Value: Integer);
    procedure SetNotaProva2(const Value: Integer);
    procedure SetNotaTrabalho(const Value: Integer);
    procedure SetMatricula(const Value: Integer);

    function GetNome: String;
    function GetNotaProva1: Integer;
    function GetNotaProva2: Integer;
    function GetNotaTrabalho: Integer;
    function GetMatricula: Integer;

  public

    property Matricula : Integer    read GetMatricula write SetMatricula;
    property Nome : String  read GetNome write SetNome;
    property NotaProva1 : Integer   read GetNotaProva1 write SetNotaProva1;
    property NotaProva2 : Integer  read GetNotaProva2 write SetNotaProva2;
    property NotaTrabalho : Integer  read GetNotaTrabalho write SetNotaTrabalho;

    procedure media;
    procedure provafinal;

  end;

implementation

{ TAluno }

function TAluno.GetMatricula: Integer;
begin
  Result := FMatricula;
end;

function TAluno.GetNome: String;
begin
  Result := FNome;
end;

function TAluno.GetNotaProva1: Integer;
begin
  Result := FNotaProva1;
end;

function TAluno.GetNotaProva2: Integer;
begin
  Result := FNotaProva2;
end;

function TAluno.GetNotaTrabalho: Integer;
begin
  Result := FNotaTrabalho;
end;

procedure TAluno.media;
var
  xMedia : Extended;
begin
  xMedia :=(NotaProva1 + NotaProva2) /2 ;

end;

procedure TAluno.provafinal;
begin

end;

procedure TAluno.SetMatricula(const Value: Integer);
begin
  FMatricula := Value;
end;

procedure TAluno.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TAluno.SetNotaProva1(const Value: Integer);
begin
  FNotaProva1 := Value;
end;

procedure TAluno.SetNotaProva2(const Value: Integer);
begin
  FNotaProva2 := Value;
end;

procedure TAluno.SetNotaTrabalho(const Value: Integer);
begin
  FNotaTrabalho := Value;
end;

end.
