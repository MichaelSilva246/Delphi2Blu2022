unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
    TmyMonth = (vasio, Janeiro,Fevereiro, Marco, Abril,
                Maio, Junho,Julho,Agosto,Setembro,
                Outubro, Novembro,Dezembro);
    TDayofWeek = (nada, Segunda, Terca, Quarta,
                  Quinta, Sexta, Sabado, Domingo);
    TtlResultado = class(TForm)
    Label1: TLabel;
    lbResultado: TLabel;
    btnInteiro: TButton;
    btnDataExtenso: TButton;
    btnData: TButton;
    btnPonto: TButton;
    edtValor: TEdit;
    procedure btnInteiroClick(Sender: TObject);
    procedure btnPontoClick(Sender: TObject);
    procedure btnDataClick(Sender: TObject);
    procedure btnDataExtensoClick(Sender: TObject);
  private
    function SomaConverte: String;
    procedure SomaDouble;
    procedure SomaData;
    procedure DataPorExtenso;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tlResultado: TtlResultado;

implementation

{$R *.dfm}

{ TForm1 }

procedure TtlResultado.btnDataClick(Sender: TObject);
begin
  Self.SomaData;
end;

procedure TtlResultado.btnDataExtensoClick(Sender: TObject);
begin
  Self.DataPorExtenso;
end;

procedure TtlResultado.btnInteiroClick(Sender: TObject);
begin
  lbResultado.caption:= self.SomaConverte;
end;

procedure TtlResultado.btnPontoClick(Sender: TObject);
begin
  self.SomaDouble;
end;


procedure TtlResultado.DataPorExtenso;
var
  myDate : TDateTime;
  myYear, myMonth, myDay : word;
  xMes: String;
  xDiaSemana: word;
  xDia: String;

begin
  myDate := StrToDate(edtValor.text);
  DecodeDate(myDate, myYear, myMonth, myDay);
  xDiaSemana:= Dayofweek(myday);
  case TmyMonth(MyMonth) of
    Janeiro :
    begin
      xMes:= 'Janeiro';
    end;
    Fevereiro:
    begin
      xMes:= 'Fevereiro';
    end;
    Marco:
    begin
      xMes:= 'Mar?o';
    end;
    Abril:
    begin
      xMes:= 'Abril';
    end;
    Maio:
    begin
      xMes:= 'Maio';
    end;
    Junho:
    begin
      xMes:= 'Junho';
    end;
    Julho:
    begin
      xMes:= 'Julho';
    end;
    Agosto:
    begin
      xMes:= 'Agosto';
    end;
    Setembro:
    begin
      xMes:= 'Setembro';
    end;
    Outubro:
    begin
      xMes:= 'Outubro';
    end;
    Novembro:
    begin
      xMes:= 'Novembro';
    end;
    Dezembro:
    begin
      xMes:= 'Dezembro';
    end;
  end;

  case TDayofWeek(xDiaSemana) of
    Domingo:
    begin
      Xdia:= 'Domingo ';
    end;
    Segunda:
    begin
      Xdia:= 'Segunda-Feira ';
    end;
    Terca:
    begin
      xDia:= 'Ter?a-Feira ';
    end;
    Quarta:
    begin
      xDia:= 'Quarta-Feira ';
    end;
    quinta:
    begin
      xDia:= 'Quinta-Feira ';
    end;
    Sexta:
    begin
      xDia:= 'Sexta-Feira ';
    end;
    Sabado:
    begin
      Xdia:= 'Sabado ';
    end;

  end;
  lbResultado.caption := ('Hoje ? '+xDia+ ','+IntToStr(myDay)+ ' de ' +xMes+ ' de '+IntToStr(MyYear)+'.');

end;


function TtlResultado.SomaConverte: String;
var
  xValor: integer;
begin
  xValor:= StrToInt(edtValor.text) + 10;
  Result:= IntToStr(xValor);
end;


procedure TtlResultado.SomaData;
var
  xCalculaData: TDate;
begin
  xCalculaData := StrToDate(edtValor.text)+2;
  lbResultado.caption:= DateToStr(xCalculaData);
end;

procedure TtlResultado.SomaDouble;
var
  xValor: Double;
begin
  xValor:= 10.50 +StrToFloat(edtValor.text);
  lbResultado.caption:= FloatToStr(xvalor);
end;


end.
