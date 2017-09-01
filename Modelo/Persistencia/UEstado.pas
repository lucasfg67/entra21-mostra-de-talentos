unit UEstado;

interface

uses
  UEntidade
 ,UPais
  ;

type
  TESTADO = class (TENTIDADE)
  public
  NOME: String;
  UF:   String;
  PAIS: TPAIS;

  constructor Create;  override;
  destructor  Destroy; override;

  end;

const
  TBL_ESTADO         = 'ESTADO';
  FLD_ESTADO_NOME    = 'NOME';
  FLD_ESTADO_UF      = 'UF';
  FLD_ESTADO_PAIS_ID = 'ID_PAIS';

  VW_ESTADO          = 'ESTADO';
  VW_ESTADO_NOME     = 'Estado';
  VW_ESTADO_UF       = 'UF';
  VW_ESTADO_ID_PAIS  = 'País';
  VW_ESTADO_ID       = 'Cód.';

   resourcestring

  STR_ESTADO         = 'Estado';

implementation

uses
    SysUtils
   ,Dialogs
   ;

{ TESTADO }

constructor TESTADO.Create;
begin
  inherited;
  PAIS:= TPAIS.Create;
end;

destructor TESTADO.Destroy;
begin
  FreeAndNil(PAIS);
  inherited;
end;

end.
