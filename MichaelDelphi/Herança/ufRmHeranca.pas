unit ufRmHeranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    cbAnimal: TComboBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UAnimal;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  xAnimal: TAnimal;
begin
  xAnimal := nil; //Sem referencia a algum ponteiro na memoria
                  //Assim qeu inicializa um objeto no delphi

  try
    case TEnumAnimal (cbAnimal.ItemIndex) of
      stCachorro:
        xAnimal := TCachorro.Create;
      stGato:
        xAnimal := TGato.Create;
      stPassaro:
        xAnimal := TPassaro.Create;
    end;

    ShowMessage(xAnimal.RetornarSom);
    ShowMessage('Tenho '+ IntToStr(xAnimal.Patas) + ' Patas. ');
  finally
    FreeAndNil (xAnimal);
  end;


end;

end.
