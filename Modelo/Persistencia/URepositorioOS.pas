unit URepositorioOS;

interface

uses
    UOs
  , UEquipamento
  , UCliente
  , UEntidade
  , URepositorioDB
  , URepositorioCliente
  , URepositorioEquipamento
  , SqlExpr
  ;

type
  TRepositorioOS = class (TRepositorioDB<TOS>)
  private
    FRepositorioCliente: TRepositorioCliente;
    FRepositorioEquipamento: TRepositorioEquipamento;

  public
    constructor Create;
    destructor Destroy; override;

    procedure AtribuiDBParaEntidade (const coOS: TOS); override;
    procedure AtribuiEntidadeParaDB (const coOS: TOS;
                                     const coSQLQuery: TSQLQuery); override;
  end;


implementation

uses
   UDM
 , SysUtils
 ;

    {TRepositorioOS}

constructor TRepositorioOS.Create;
begin
  inherited Create (TOS, TBL_OS, FLD_ENTIDADE_ID, STR_OS);
  FRepositorioCliente     := TRepositorioCliente.Create;
  FRepositorioEquipamento := TRepositorioEquipamento.Create;
end;

destructor TRepositorioOS.Destroy;
begin
  FreeAndNil(FRepositorioCliente);
  FreeAndNil(FRepositorioEquipamento);
  inherited;
end;

procedure TRepositorioOS.AtribuiDBParaEntidade(const coOS: TOS);
begin
  inherited;
  with FSQLSelect do
  begin
    coOS.DATA_ENTRADA      := FieldByName(FLD_OS_DATA_ENTRADA).AsDateTime;
    coOS.CLIENTE           := TCLIENTE(
      FRepositorioCliente.Retorna(FieldByName(FLD_OS_ID_CLIENTE).AsInteger));
    coOS.EQUIPAMENTO       := TEQUIPAMENTO (
      FRepositorioEquipamento.Retorna(FieldByName(FLD_OS_ID_EQUIPAMENTO).AsInteger));
  end;
end;

procedure TRepositorioOS.AtribuiEntidadeParaDB(const coOS: TOS; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_OS_DATA_ENTRADA).AsDateTime    := coOS.DATA_ENTRADA;
    ParamByName(FLD_OS_ID_CLIENTE).AsInteger       := coOS.CLIENTE.ID;
    ParamByName(FLD_OS_ID_EQUIPAMENTO).AsInteger   := coOS.EQUIPAMENTO.ID;
  end;
end;

end.
