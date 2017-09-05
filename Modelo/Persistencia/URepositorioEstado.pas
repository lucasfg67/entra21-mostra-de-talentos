unit URepositorioEstado;

interface

uses
   UEstado
 , UPais
 , UCidade
 , UEntidade
 , URepositorioDB
 , URepositorioPais
 , SqlExpr
 ;

type
  TRepositorioEstado = class (TRepositorioDB<TESTADO>)
  private
    FRepositorioPais: TRepositorioPais;

  public
    constructor Create;
    destructor Destroy; override;

    procedure AtribuiDBParaEntidade (const coESTADO: TESTADO); override;
    procedure AtribuiEntidadeParaDB (const coESTADO: TESTADO;
                                     const coSQLQuery: TSQLQuery); override;
  end;

implementation

uses
   UDM
 , SysUtils
 ;


   {TRepositorioEstado}


constructor TRepositorioEstado.Create;
begin
  Inherited Create (TESTADO, TBL_ESTADO, FLD_ENTIDADE_ID, STR_ESTADO);
  FRepositorioPais := TRepositorioPais.Create;
end;

destructor TRepositorioEstado.Destroy;
begin
  FreeAndNil(FRepositorioPais);
  inherited;
end;

procedure TRepositorioEstado.AtribuiDBParaEntidade(const coESTADO: TESTADO);
begin
  inherited;
  with FSQLSelect do
  begin
    coESTADO.NOME := FieldByName(FLD_ESTADO_NOME).AsString;
    coESTADO.UF   := FieldByName(FLD_ESTADO_UF).AsString;
    coESTADO.PAIS := TPAIS (FRepositorioPais.Retorna(
      FieldByName(FLD_ESTADO_PAIS_ID).AsInteger));
  end;
end;

procedure TRepositorioEstado.AtribuiEntidadeParaDB(
  const coESTADO: TESTADO; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_ESTADO_NOME).AsString     := coESTADO.NOME;
    ParamByName(FLD_ESTADO_UF).AsString       := coESTADO.UF;
    ParamByName(FLD_ESTADO_PAIS_ID).AsInteger := coESTADO.PAIS.ID;
  end;
end;
end.
