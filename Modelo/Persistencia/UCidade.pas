unit UCidade;

interface

uses
    UEntidade
   ,UEstado
   ;

type
  TCIDADE = class(TENTIDADE)
  public
    NOME: String;
    ESTADO: TESTADO;

    constructor Create;  override;
    destructor  Destroy; override;

  end;

const

  TBL_CIDADE           = 'CIDADE';
  FLD_CIDADE_NOME      = 'NOME';
  FLD_CIDADE_ID_ESTADO = 'ID_ESTADO';

  VW_CIDADE            = 'CIDADE';
  VW_CIDADE_NOME       = 'Nome';
  VW_CIDADE_ID         = 'Cód.';
  VW_CIDADE_ID_ESTADO  = 'Estado';

  resourcestring

  STR_CIDADE          = 'Cidade';

implementation

uses
    SysUtils
   ,Dialogs
   ;

{ TCIDADE }

constructor TCIDADE.Create;
begin
  inherited;
  ESTADO:= TESTADO.Create;
end;

destructor TCIDADE.Destroy;
begin
  FreeAndNil(ESTADO);
  inherited;
end;

end.
