unit URepositorioMaterial;

interface

uses
   UMaterial
 , UEntidade
 , URepositorioDB
 , SqlExpr
 ;

type
  TRepositorioMaterial = class (TRepositorioDB<TMATERIAL>)
  public
    constructor Create;

    procedure AtribuiDBParaEntidade (const coMATERIAL: TMATERIAL); override;
    procedure AtribuiEntidadeParaDB (const coMATERIAL: TMATERIAL;
                                     const coSQLQuery: TSQLQuery); override;
  end;

implementation

uses
   UDM
 ;

  {TRepositorioMaterial}


constructor TRepositorioMaterial.Create;
begin
  inherited Create (TMATERIAL, TBL_MATERIAL, FLD_ENTIDADE_ID, STR_MATERIAL);
end;

procedure TRepositorioMaterial.AtribuiDBParaEntidade(const coMATERIAL: TMaterial);
begin
  inherited;
  with FSQLSelect do
  begin
    coMATERIAL.DESCRIÇÃO      := FieldByName(FLD_MATERIAL_DESCRICAO).AsString;
    coMATERIAL.VALOR_UNITARIO := FieldByName (FLD_MATERIAL_VALOR_UNITARIO).AsFloat;
  end;
end;

procedure TRepositorioMaterial.AtribuiEntidadeParaDB(
  const coMATERIAL: TMaterial; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_MATERIAL_DESCRICAO).AsString     := coMATERIAL.DESCRIÇÃO;
    ParamByName(FLD_MATERIAL_VALOR_UNITARIO).AsFloat := coMATERIAL.VALOR_UNITARIO;
  end;
end;

end.
