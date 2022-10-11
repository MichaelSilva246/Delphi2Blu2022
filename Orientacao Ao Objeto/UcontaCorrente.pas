unit UcontaCorrente;

interface

  Type
  TContaCorrente = class
    FNumConta : Integer;
    FNome   : String;
    FSaldo  : Currency;

  private
    function GetNome: String;
    function GetNumConta: Integer;
    function GetSaldo: Currency;

    procedure SetNome(const aValue: String);
    procedure SetNumConta(const aValue: Integer);
    procedure SetSaldo(const aValue: Currency);



  public
    property Nome    : String   read GetNome     write SetNome;
    property NumConta: Integer  read GetNumConta write SetNumConta;
    property Saldo   : Currency read GetSaldo    write SetSaldo;


    procedure AlteraNome(const aValue: String);
    function Deposito  : currency;
    function Saque     : currency;

    constructor Create(const aNumConta: Integer; const aNome: String; const aSaldo: Currency = 0);


  end;



implementation

{ TContaCorrente }

procedure TContaCorrente.AlteraNome(const aValue: String);
begin
  Nome := aValue;
end;

constructor TContaCorrente.Create(const aNumConta: Integer; const aNome: String;
  const aSaldo: Currency);
begin
  FNumConta := aNumconta;
  Fnome     := aNome;
  FSaldo    := aSaldo;
end;

function TContaCorrente.Deposito: currency;
begin
  Result := Saldo + Deposito;
end;


function TContaCorrente.Saque: currency;
begin
  Result := Saldo - Saque;
end;

function TContaCorrente.GetNome: String;
begin
  Result := FNome;
end;

function TContaCorrente.GetNumConta: Integer;
begin
  Result := FNumConta;
end;

function TContaCorrente.GetSaldo: Currency;
begin
  Result := FSaldo;
end;


procedure TContaCorrente.SetNome(const aValue: String);
begin
  FNome := aValue;
end;

procedure TContaCorrente.SetNumConta(const aValue: Integer);
begin
  FNumConta := aValue;
end;

procedure TContaCorrente.SetSaldo(const aValue: Currency);
begin
  FSaldo := aValue;
end;

end.
