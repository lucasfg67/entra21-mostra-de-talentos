unit URepositorioTecnico;

interface

uses
    UTecnico
  , UEntidade
  , URepositorioDB
  , SqlExpr
  ;

type
  TRepositorioTecnico = class (TRepositorioDB<TTECNICO>)
  public
    constructor Create;

    procedure AtribuiDBParaEntidade (const coTECNICO: TTECNICO); override;
    procedure AtribuiEntidadeParaDB (const coTECNICO: TTECNICO;
                                     const coSQLQuery: TSQLQuery); override;
  end;

implementation

uses
   UDM
 ;

  {TRepositorioTecnico}


constructor TRepositorioTecnico.Create;
begin
  inherited Create (TTECNICO, TBL_TECNICO, FLD_ENTIDADE_ID, STR_TECNICO);
end;

procedure TRepositorioTecnico.AtribuiDBParaEntidade(const coTECNICO: TTECNICO);
begin
  Inherited;
  with FSQLSelect do
  begin
    coTECNICO.NOME       := FieldByName(FLD_TECNICO_NOME).AsString;
    coTECNICO.VALOR_HORA := FieldByName(FLD_TECNICO_VALOR_HORA).AsFloat;
  end;
end;

procedure TRepositorioTecnico.AtribuiEntidadeParaDB(
 const coTECNICO: TTECNICO; const coSQLQuery: TSQLQuery);
begin
  Inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_TECNICO_NOME).AsString      := coTECNICO.NOME;
    ParamByName(FLD_TECNICO_VALOR_HORA).AsFloat := coTECNICO.VALOR_HORA;
  end;
end;

end.
