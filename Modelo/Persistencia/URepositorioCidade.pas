unit URepositorioCidade;

interface

uses
    UCidade
  , UEstado
  , UEntidade
  , URepositorioDB
  , URepositorioEstado
  , SqlExpr
  ;

type
  TRepositorioCidade = class(TRepositorioDB<TCIDADE>)
  private
    FRepositorioEstado: TRepositorioEstado;

  public
    constructor Create;
    destructor Destroy; override;

    procedure AtribuiDBParaEntidade (const coCIDADE: TCIDADE); override;
    procedure AtribuiEntidadeParaDB (const coCIDADE: TCIDADE;
                                     const coSQLQuery: TSQLQuery); override;

  end;


implementation

uses
   UDM
 , SysUtils
 ;

 {TRepositorioCidade}


constructor TRepositorioCidade.Create;
begin
  Inherited Create(TCIDADE, TBL_CIDADE, FLD_ENTIDADE_ID, STR_CIDADE);
  FRepositorioEstado := TRepositorioEstado.Create;
end;

destructor TRepositorioCidade.Destroy;
begin
  FreeAndNil(FRepositorioEstado);
  inherited;
end;

procedure TRepositorioCidade.AtribuiDBParaEntidade (const coCIDADE: TCIDADE);
begin
  Inherited;
  with FSQLSelect do
  begin
    coCIDADE.NOME   := FieldByName(FLD_CIDADE_NOME).AsString;
    coCIDADE.ESTADO := TESTADO(FRepositorioEstado.Retorna(
      FieldByName(FLD_CIDADE_ID_ESTADO).AsInteger));
  end;
end;

procedure TRepositorioCidade.AtribuiEntidadeParaDB (const coCIDADE: TCIDADE;
  const coSQLQuery: TSQLQuery);
begin
  Inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_CIDADE_NOME).AsString       := coCIDADE.NOME;
    ParamByName(FLD_CIDADE_ID_ESTADO).AsInteger := coCIDADE.ESTADO.ID;
  end;
end;

end.
