unit URepositorioPapel;

interface

uses
    UPapel
  , UEntidade
  , URepositorioDB
  , SqlExpr
  ;

type
  TRepositorioPapel = class(TRepositorioDB<TPAPEL>)
  public
    constructor Create;

    procedure AtribuiDBParaEntidade(const coPAPEL: TPAPEL); override;
    procedure AtribuiEntidadeParaDB(const coPAPEL: TPAPEL;
                                    const coSQLQuery: TSQLQuery); override;
  end;

implementation

uses
    UDM
  , UUtilitarios
  , SysUtils
  ;

{ TRepositorioPapel }

constructor TRepositorioPapel.Create;
begin
  Inherited Create(TPAPEL, TBL_PAPEL, FLD_ENTIDADE_ID, STR_PAPEL);
end;

procedure TRepositorioPapel.AtribuiDBParaEntidade(const coPAPEL: TPAPEL);
begin
  inherited;
  with FSQLSelect do
  begin
    coPAPEL.DESCRICAO := FieldByName(FLD_PAPEL_DESCRICAO).AsString;
  end;
end;

procedure TRepositorioPapel.AtribuiEntidadeParaDB(const coPAPEL: TPAPEL;
  const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_PAPEL_DESCRICAO).AsString := coPAPEL.DESCRICAO;
  end;
end;

end.
