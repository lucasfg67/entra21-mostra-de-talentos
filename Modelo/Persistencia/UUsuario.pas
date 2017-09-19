unit UUsuario;

interface

uses
    UEntidade
    ;

type
  TUSUARIO = class (TENTIDADE)
  public
    NOME : String;
    SENHA: String;
  end;

const

  TBL_USUARIO       = 'USUARIO';
  FLD_USUARIO_NOME  = 'NOME';
  FLD_USUARIO_SENHA = 'SENHA';

  VW_USUARIO        = 'VW_USUARIO';
  VW_USUARIO_NOME   = 'Nome';
  VW_USUARIO_SENHA  = 'Senha';
  VW_USUARIO_ID     = 'Cód.';

  resourcestring

  STR_USUARIO = 'Usuario';


implementation

end.
