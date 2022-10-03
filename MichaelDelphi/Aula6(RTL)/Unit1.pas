unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnRtl1: TButton;
    btnRtl2: TButton;
    btnString: TButton;
    btnTrim: TButton;
    procedure btnRtl1Click(Sender: TObject);
    procedure btnRtl2Click(Sender: TObject);
    procedure btnStringClick(Sender: TObject);
    procedure btnTrimClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnRtl2Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Show a custom dialog
  buttonSelected := MessageDlg('Custom dialog',mtCustom,
                              [mbYes,mbAll,mbCancel], 0);

  // Show the button type selected
  if buttonSelected = mrYes    then ShowMessage('Yes pressed');
  if buttonSelected = mrAll    then ShowMessage('All pressed');
  if buttonSelected = mrCancel then ShowMessage('Cancel pressed');
end;

procedure TForm1.btnStringClick(Sender: TObject);
var
  before, after : string;

begin
  //Try to replace all occurrences of a or A to THe
  before := 'This is a way to live A big Life';

  after := StringReplace(before, ' a ' , ' THE ',
                        [rfReplaceAll, rfIgnoreCase]);

  ShowMessage('Before = ' +before);
  ShowMessage('After = ' +after);
end;

procedure TForm1.btnTrimClick(Sender: TObject);
const
  PaddedString = '  Letters     ';
begin
  ShowMessage('[' + TrimLeft(PaddedString)  + ']');
  ShowMessage('[' + TrimRight(PaddedString) + ']');
  ShowMessage('[' + Trim(PaddedString)      + ']');
end;

procedure TForm1.btnRtl1Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Show a confirmation dialog
  buttonSelected := MessageDlg('Confirmation',mtError, mbOKCancel, 0);

  // Show the button type selected
  if buttonSelected = mrOK     then ShowMessage('OK pressed');
  if buttonSelected = mrCancel then ShowMessage('Cancel pressed');
end;

end.
