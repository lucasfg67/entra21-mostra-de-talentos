unit URegraCRUDEquipamento;

interface
  uses

    URegraCRUD
  , URepositorioDB
  , URepositorioEquipamento
  , UEntidade
  , UEquipamento
  ;

type
  TRegraCRUDEquipamento = class(TRegraCRUD)
  protected
    procedure ValidaInsercao(const coENTIDADE: TENTIDADE); override;
  public
    constructor Create; override;
  end;

implementation
uses
    SysUtils
  , UUtilitarios
  , UMensagens
  , UConstantes
  ;

{ TRegraCRUDEquipamento }

constructor TRegraCRUDEquipamento.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioEquipamento.Create);
end;

procedure TRegraCRUDEquipamento.ValidaInsercao(const coENTIDADE: TENTIDADE);
var
  coEquipamento : TEQUIPAMENTO;
begin
  inherited;
  coEquipamento := TEQUIPAMENTO(coENTIDADE);

  if trim(coEquipamento.NOME) = EmptyStr then
    raise EValidacaoNegocio.Create(STR_EQUIPAMENTO_NOME_NAO_INFORMADO);

  if trim(coEquipamento.MARCA) = EmptyStr then
    raise EValidacaoNegocio.Create(STR_EQUIPAMENTO_MARCA_NAO_INFORMADO);

  if trim(coEquipamento.N_SERIE) = EmptyStr then
    raise EValidacaoNegocio.Create( STR_EQUIPAMENTO_N_SERIE_NAO_INFORMADO );
end;

end.
