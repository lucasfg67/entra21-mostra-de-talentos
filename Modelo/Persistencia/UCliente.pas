unit UCliente;

interface

uses
    UEntidade
   ,UCidade
  ;

type
  TCLIENTE = class(TENTIDADE)
  public
    NOME        : String;
    SOLICITANTE : String;
    CNPJ_CPF    : String;
    TELEFONE    : String;
    CIDADE      : TCIDADE;
    ENDEREÇO    : String;
    TIPO_PESSOA : String;

    constructor Create;  override;
    destructor  Destroy; override;
  end;

const

  TBL_CLIENTE             = 'CLIENTE';
  FLD_CLIENTE_NOME        = 'NOME';
  FLD_CLIENTE_SOLICITANTE = 'SOLICITANTE';
  FLD_CLIENTE_CNPJ_CPF    = 'CNPJ_CPF';
  FLD_CLIENTE_TELEFONE    = 'TELEFONE';
  FLD_CLIENTE_ID_CIDADE   = 'ID_CIDADE';
  FLD_CLIENTE_ENDEREÇO    = 'ENDEREÇO';
  FLD_CLIENTE_TIPO_PESSOA = 'TIPO_PESSOA';

  VW_CLIENTE              = 'CLIENTE';
  VW_CLIENTE_NOME         = 'Nome';
  VW_CLIENTE_SOLICITANTE  = 'Solicitante';
  VW_CLIENTE_ID           = 'Cód.';
  VW_CLIENTE_CNPJ_CPF     = 'CNPJ/CPF';
  VW_CLIENTE_TELEFONE     = 'Telefone';
  VW_CLIENTE_ID_CIDADE    = 'Cidade';
  VW_CLIENTE_ENDEREÇO     = 'Endereço';
  VW_CLIENTE_TIPO_PESSOA  = 'Tipo de Pessoa';

  resourcestring

  STR_CLIENTE             = 'Cliente';

implementation

uses
    SysUtils
   ,Dialogs
   ;

{ TCLIENTE }

constructor TCLIENTE.Create;
begin
  Inherited;
  CIDADE:= TCIDADE.Create;
end;

destructor TCLIENTE.Destroy;
begin
  FreeAndNil(CIDADE);
  Inherited;
end;

end.

