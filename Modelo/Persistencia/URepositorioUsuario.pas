unit URepositorioUsuario;

interface

uses
    UUsuario
  , UEntidade
  , URepositorioDB
  , SqlExpr
  ;

type
  TRepositorioUsuario = class (TRepositorioDB<TUSUARIO>)
  public
    constructor Create;

    procedure AtribuiDBParaEntidade (const coUsuario: TUSUARIO); override;
    procedure AtribuiEntidadeParaDB (const coUsuario: TUSUARIO;
                                     const coSQLQuery: TSQLQuery); override;
  end;

implementation

uses
   UDM
 ;

  {TRepositorioUsuario}


constructor TRepositorioUsuario.Create;
begin
  inherited Create (TUSUARIO, TBL_USUARIO, FLD_ENTIDADE_ID, STR_USUARIO);
end;

procedure TRepositorioUsuario.AtribuiDBParaEntidade(const coUsuario: TUSUARIO);
begin
  inherited;
  with FSQLSelect do
  begin
    coUSUARIO.NOME  := FieldByName(FLD_USUARIO_NOME).AsString;
    coUSUARIO.SENHA := FieldByName(FLD_USUARIO_SENHA).AsString;
  end;
end;

procedure TRepositorioUsuario.AtribuiEntidadeParaDB (
  const coUsuario: TUSUARIO; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_USUARIO_NOME).AsString  := coUSUARIO.NOME;
    ParamByName(FLD_USUARIO_SENHA).AsString := coUSUARIO.SENHA;
  end;
end;

end.
