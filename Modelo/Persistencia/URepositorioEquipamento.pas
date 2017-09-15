unit URepositorioEquipamento;

interface

uses
   UEquipamento
 , UEntidade
 , URepositorioDB
 , SqlExpr
 ;

type
  TRepositorioEquipamento = class (TRepositorioDB<TEQUIPAMENTO>)
  public
    constructor Create;

    procedure AtribuiDBParaEntidade (const coEQUIPAMENTO: TEQUIPAMENTO); override;
    procedure AtribuiEntidadeParaDB (const coEQUIPAMENTO: TEQUIPAMENTO;
                                     const coSQLQuery: TSQLQuery); override;
  end;

implementation

uses
    UDM
  ;

  {TRepositorioMaterial}

constructor TRepositorioEquipamento.Create;
begin
  inherited Create (TEQUIPAMENTO, TBL_EQUIPAMENTO, FLD_ENTIDADE_ID, STR_EQUIPAMENTO);
end;

procedure  TRepositorioEquipamento.AtribuiDBParaEntidade(const coEquipamento: TEquipamento);
begin
  inherited;
  with FSQLSelect do
  begin
    coEQUIPAMENTO.NOME    := FieldByName (FLD_EQUIPAMENTO_NOME).AsString;
    coEQUIPAMENTO.MARCA   := FieldByName (FLD_EQUIPAMENTO_MARCA).AsString;
    coEQUIPAMENTO.N_SERIE := FieldByName (FLD_EQUIPAMENTO_N_SERIE).AsString;
  end;
end;

procedure TRepositorioEquipamento.AtribuiEntidadeParaDB(
  const coEQUIPAMENTO: TEQUIPAMENTO; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName (FLD_EQUIPAMENTO_NOME).AsString    := coEQUIPAMENTO.NOME;
    ParamByName (FLD_EQUIPAMENTO_MARCA).AsString   := coEQUIPAMENTO.MARCA;
    ParamByName (FLD_EQUIPAMENTO_N_SERIE).AsString := coEQUIPAMENTO.N_SERIE;
  end;
end;

end.
