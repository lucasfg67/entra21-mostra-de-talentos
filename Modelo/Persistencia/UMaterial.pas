unit UMaterial;

interface

uses
    UEntidade
    ;

type
  TMaterial= class (TENTIDADE)
  public
    DESCRIÇÃO     : String;
    VALOR_UNITARIO: Double;
  end;

const
  TBL_MATERIAL                = 'MATERIAL';
  FLD_MATERIAL_DESCRICAO      = 'DESCRICAO';
  FLD_MATERIAL_VALOR_UNITARIO = 'VALOR_UNITARIO';

  VW_MATERIAL                 = 'MATERIAL';
  VW_MATERIAL_DESCRICAO       = 'Descrição';
  VW_MATERIAL_VALOR_UNITARIO  = 'Valor Unitário';
  VW_MATERIAL_ID              = 'Cód.';

  resourcestring

  STR_MATERIAL                  = 'Material';

implementation

end.
