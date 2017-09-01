unit UPais;

interface
uses
   UEntidade
   ;

type
    TPAIS = class (TENTIDADE)
    public
    NOME:  String;
    SIGLA: String;
    end;
const
  TBL_PAIS       = 'PAIS';
  FLD_PAIS_NOME  = 'NOME';
  FLD_PAIS_SIGLA = 'SIGLA';

  VW_PAIS        = 'PAIS';
  VW_PAIS_NOME   = 'País';
  VW_PAIS_SIGLA  = 'Sigla';
  VW_PAIS_ID     = 'Cód.';

  resourcestring

  STR_PAIS = 'País';


implementation

end.
