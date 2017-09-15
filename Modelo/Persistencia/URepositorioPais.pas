unit URepositorioPais;

interface

uses
   UPais
 , UEntidade
 , URepositorioDB
 , SqlExpr
 ;

type
  TRepositorioPais = class (TRepositorioDB<TPAIS>)
  public
    constructor Create;

    procedure AtribuiDBParaEntidade (const coPAIS: TPAIS); override;
    procedure AtribuiEntidadeParaDB (const coPAIS: TPAIS;
                                     const coSQLQuery: TSQLQuery); override;
  end;

implementation

uses
   UDM
 ;

  {TRepositorioPais}


constructor TRepositorioPais.Create;
begin
  inherited Create (TPAIS, TBL_PAIS, FLD_ENTIDADE_ID, STR_PAIS);
end;

procedure TRepositorioPais.AtribuiDBParaEntidade(const coPAIS: TPAIS);
begin
  inherited;
  with FSQLSelect do
  begin
    coPAIS.NOME      := FieldByName(FLD_PAIS_NOME).AsString;
    coPAIS.SIGLA := FieldByName (FLD_PAIS_SIGLA).AsString;
  end;
end;

procedure TRepositorioPais.AtribuiEntidadeParaDB(
  const coPAIS: TPAIS; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_PAIS_NOME).AsString     := coPAIS.NOME;
    ParamByName(FLD_PAIS_SIGLA).AsString := coPAIS.SIGLA;
  end;
end;
end.
