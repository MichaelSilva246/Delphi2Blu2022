unit UPessoaFisica;

interface
uses
  UPessoa;

  type
    TpessoaFisica = class(TPessoa)

    private
     FCPF   : String;
     FIdade : Integer;

     public
      property CPF : String


  end;

implementation

{ TpessoaFisica }


