unit UAnimal;

interface

type
  TEnumAnimal = (stCachorro, stGato, stPassaro);

  //TObject - Primeira classe do Delphi - Toda classe herda dela
  TAnimal = class //Classe Abstrata ou classe base
    private
      Fpatas: Byte;
      function GetPatas: Byte;
      procedure SetPatas(const aValue: Byte);

    public
      //Metodo Absrtato
      //Virtual Abstract sempre sao as filhas que irão que implementar
      function RetornarSom: String; virtual; abstract;
      property Patas: Byte read GetPatas write SetPatas;
  end;

  TCAchorro = class(TAnimal)
    private
    public
      constructor Create;
      function RetornarSom: String; override;
  end;

  TGato = class(TAnimal)
    private
    public
      constructor Create;
      function RetornarSom: String; override;
  end;

  TPassaro = class(TAnimal)
    private
    public
      constructor Create;
      function RetornarSom: String; override;
  end;

implementation

{ TCAchorro }

constructor TCAchorro.Create;
begin
  FPatas:= 4;
end;

function TCAchorro.RetornarSom: String;
begin
  Result := 'Au AU';
end;

{ TAnimal }

function TAnimal.GetPatas: Byte;
begin
  Result := FPatas;
end;

procedure TAnimal.SetPatas(const aValue: Byte);
begin
  FPatas := aValue;
end;

{ TPassaro }

constructor TPassaro.Create;
begin
  FPatas:= 2;
end;

function TPassaro.RetornarSom: String;
begin
  Result := 'Piu Piu';
end;

{ TGato }

constructor TGato.Create;
begin
  FPatas:= 4;
end;

function TGato.RetornarSom: String;
begin
  Result := 'Miau';
end;

end.
