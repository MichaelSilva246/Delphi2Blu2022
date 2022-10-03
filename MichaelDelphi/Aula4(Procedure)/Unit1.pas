unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DateUtils, Vcl.StdCtrls;

type
  TfrmProceduresFunctions = class(TForm)
    btnProcedure: TButton;
    btnFunction: TButton;
    btnParametroRef: TButton;
    btnParamertoConstante: TButton;
    btnArrayAberto: TButton;
    btnVariant: TButton;
    btnExemplos: TButton;
    btnData: TButton;
    btnSobrecarga: TButton;
    Button1: TButton;
    btnForward: TButton;
    procedure btnProcedureClick(Sender: TObject);
    procedure btnFunctionClick(Sender: TObject);
    procedure btnParametroRefClick(Sender: TObject);
    procedure btnParamertoConstanteClick(Sender: TObject);
    procedure btnArrayAbertoClick(Sender: TObject);
    procedure btnVariantClick(Sender: TObject);
    procedure btnExemplosClick(Sender: TObject);
    procedure btnDataClick(Sender: TObject);
    procedure btnSobrecargaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnForwardClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProceduresFunctions: TfrmProceduresFunctions;

implementation

{$R *.dfm}


//// Procedures e Functions  ////
  //Isso � uma Procedure
procedure OlaMundo;
begin
  ShowMessage('Ol� Mundo!!!');
end;

   //Isso � uma Function ////
function RetornarNomeSobrenome: String;
begin
  Result := 'Michael Silva';
end;

 // Procedure com parametros por Referencia
procedure DoubleTheValue(var Value: Integer);
begin
  Value := Value * 2;
end;

  // Parametro Constante
function DoubleTheValue2(const Value: Integer): Integer;
begin
  //Value := Value * 2; //compiler error
  Result := Value;
end;

  //Parametros com Array aberto
function Sum(const A: Array of Integer): Integer;
var
  i: Integer;
begin
  Result := 0;

  for I := Low (A) to High (A) do
    Result := Result + A[I];
end;

//Sobrecarga de funcoes
function Min(A, B: Integer): Integer; Overload;
begin
  Result := A;
  if B < A then
    Result := B;
end;

function Min(A, B: Double): Double; Overload;
begin
  Result := A;
  if B < A then
    Result := B;
end;

function Min(A, B: Extended): Extended; Overload;
begin
  Result := A;
  if B < A then
    Result := B;
end;

//parametros default
procedure NewMessage(aMsg: String; aCaption: String = 'Message';
                      aSeparator: String = SlineBreak);
var
  xMensagem: String;
begin
  xMensagem := acaption;
  xMensagem := xMensagem + ': ';
  xMensagem := xMensagem + aMsg;
  xMensagem := xMensagem + aSeparator;

  ShowMessage(xMensagem);
end;

// Declaracao Forward
procedure Hello; forward;
procedure DoubleHello; forward;

procedure Hello;
begin
  if MessageDLg('Do you want a double message?' , mtConfirmation,
                [mbYes, mbNo], 0) = mrYes then
  DoubleHello
  else
    ShowMessage('Hello');
end;

procedure DoubleHello;
begin
    Hello;
    Hello;
end;

procedure TfrmProceduresFunctions.btnParamertoConstanteClick(Sender: TObject);
var
  x: Integer;
begin
  x := 10;
  DoubleTheValue2(x);
  ShowMessage(x.ToString);
end;

procedure TfrmProceduresFunctions.btnParametroRefClick(Sender: TObject);
var
  x: Integer;
begin
  x := 10;
  DoubleTheValue(x);
  ShowMessage(x.ToString);
end;

procedure TfrmProceduresFunctions.btnProcedureClick(Sender: TObject);
begin
  OlaMundo;
end;

procedure TfrmProceduresFunctions.btnSobrecargaClick(Sender: TObject);
var
  xNum1, xNum2: Integer;
  xNum3, xNum4: Double;
  xNum5, xNum6: Extended;
begin
  xNum1 := 1; xNum2 := 2;
  xNum3 := 1; xNum4 := 2;
  xNum5 := 1; xNum6 := 2;

 ShowMessage(Min(xNum1, xNum2).ToString);
 ShowMessage(Min(xNum3, xNum4).ToString);
 ShowMessage(Min(xNum5, xNum6).ToString);
end;

procedure TfrmProceduresFunctions.btnVariantClick(Sender: TObject);
var
  xNum1: Integer;
  xNum2: Double;
begin
  xNum1 := 20;
  xNum2 := 1500.50;

  // %d e de decimal
  // %s e de String
  // %f float

  ShowMessage(
    Format('Total do caixa � de: %d', [xNum1]));

  ShowMessage(
    Format('Ola %s, money: %f',['Armando', xNum2]));

end;

procedure TfrmProceduresFunctions.Button1Click(Sender: TObject);
begin
  NewMessage('Something wrong here');
  NewMessage('Something wrong here', 'Attention');
  NewMessage('Hello', 'Message', '--');
end;

procedure TfrmProceduresFunctions.btnArrayAbertoClick(Sender: TObject);
var
  xSoma: Integer;
begin
  xSoma := Sum([1,2,3]);

  ShowMessage(xSoma.ToString);
end;

procedure TfrmProceduresFunctions.btnDataClick(Sender: TObject);
var
  myDate : TDateTime;
begin
  //Set up our TdateTime variable with a full date and time
  // 5th of June 2000 at 01:02:03.004 (.004 mili-seconds)
  myDate := EncodeDateTime(2022, 9, 13, 19, 23, 3, 4);

  //Date Only - numeric value with no leading zoeroes (except year)
  ShowMessage('         d/m/y = ' +
              FormatDateTime('d/m/y', myDate));

  //Date only - numeric values with leading zeroes
  ShowMessage('              (dd/mm/yy = '+
              FormatDateTime('dd/mm/yy', myDate ));

  //Use long names for the day and month, and add freeform text ('of')
  ShowMessage('dddd of mmm yyyy = ' +
              FormatDateTime('dddd d of mmm yyyy', myDate));

  //Use long names for the day and month
  ShowMessage('dddd of mmm yyyy = ' +
              FormatDateTime('dddd d of mmmm yyy', myDate));

  //Use the ShortDateFormat settings only
  ShowMessage('              dddd = ' +
              FormatDateTime('dddd', myDate));

  //Use the longDateFormat settings only
  ShowMessage('              dddd = ' +
              FormatDateTime('dddddd', myDate));

  //Use the ShortDateFormat + LongTimeFormat setting
  ShowMessage('               c = ' +
              FormatDateTime('c', myDate));


end;

procedure TfrmProceduresFunctions.btnExemplosClick(Sender: TObject);
var
  text : String;
begin
  //Just 1 data item
  ShowMessage(Format('%s', ['Hello']));

  // A Mix o literal text and a data item
  ShowMessage(Format('String = %s', ['Hello']));

  //Examples of each of the data types
  ShowMessage(Format('Decimal               = %d', [-123]));
  ShowMessage(Format('Exponent              = %e', [12345.678]));
  ShowMessage(Format('Fixed                 = %f', [12345.678]));
  ShowMessage(Format('General               = %g', [12345.678]));
  ShowMessage(Format('Number                = %n', [12345.678]));
  ShowMessage(Format('Money                 = %m', [12345.678]));
  ShowMessage(Format('Pointer               = %p', [addr(text)]));
  ShowMessage(Format('String                = %s', ['Hello']));
  ShowMessage(Format('Unsigned decimal      = %u', [123]));
  ShowMessage(Format('Hexadecimal           = %x', [140]));
end;

procedure TfrmProceduresFunctions.btnForwardClick(Sender: TObject);
begin
  DoubleHello;
end;

procedure TfrmProceduresFunctions.btnFunctionClick(Sender: TObject);
var
  xNomeSobrenome: String;
begin
  xNomeSobrenome := RetornarNomeSobrenome;
  ShowMessage(xNomeSobrenome);
end;

end.
