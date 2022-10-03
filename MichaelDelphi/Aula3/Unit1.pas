unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAnimal = (tpCachorro, tpPassaro, tpGato, tpPeixe);

  TForm1 = class(TForm)
    Label1: TLabel;
    btnProcessar: TButton;
    cmbAnimal: TComboBox;
    mmHistorico: TMemo;
    procedure btnProcessarClick(Sender: TObject);
  private
    { Private declarations }
    procedure QueAnimalSouEu;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnProcessarClick(Sender: TObject);
begin
   {case cmbAnimal.ItemIndex of
   0: //Cachorro
   begin
    mmHistorico.Lines.Add('Sou um cachorro e tenho 4 patas.');
   end;
   1: //Pássaro
   begin
     mmHistorico.Lines.Add('Sou um pássaro e tenho 2 patas.');
    end;
   2: //Gato
   begin
     mmHistorico.Lines.Add('Sou um gato e tenho 4 patas.');
   end;
   3: // Peixe
   begin
     mmHistorico.Lines.Add('Sou um peixe e possuo nadadeiras.');
   end;
   else // Sem definição
   begin
     mmHistorico.Lines.Add('Não foi definido nenhum animal.');
   end;
  end; }
  QueAnimalSouEu
end;


procedure TForm1.QueAnimalSouEu;
var
  xFrase: String;
begin
  case TAnimal(cmbAnimal.ItemIndex) of
    tpCachorro: // Cachrro
    begin
      Xfrase := 'Sou um cachorro e tenho 3 patas.';
    end;
      tpPassaro: // Passáro
    begin
      Xfrase := 'Sou um pássaro e tenho 2 patas.';
    end;
      tpGato: // gato
    begin
      Xfrase := 'Sou um gato e tenho 4 patas.';
    end;
      tpPeixe: // Peixe
    begin
      Xfrase := 'Sou um peixe e possuo nadadeiras.';
    end ;
    else // Sem definição
    begin
      Xfrase := 'Não foi definido nenhum animal.';
    end;
  end ;

  mmHistorico.Lines.Add(xFrase);
end;



end.
