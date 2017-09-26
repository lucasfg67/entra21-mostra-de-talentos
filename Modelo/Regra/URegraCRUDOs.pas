unit URegraCRUDOs;

interface
  uses

    URegraCRUD
  , URepositorioDB
  , URepositorioOs
  , UEntidade
  , UCliente
  , UEquipamento
  , UOs
  ;

  type
  TRegraCRUDOs = class(TRegraCRUD)
  private
    procedure ValidaCliente(const coCLIENTE: TCLIENTE);
    procedure ValidaEquipamento(const coEQUIPAMENTO: TEquipamento);

  protected
    procedure ValidaInsercao(const coENTIDADE: TENTIDADE); override;
    procedure ValidaAtualizacao(const coENTIDADE: TENTIDADE); override;
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

{ TRegraCRUDOs }

constructor TRegraCRUDOs.Create;
begin
  inherited;
    FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioOs.Create);
end;

procedure TRegraCRUDOs.ValidaAtualizacao(const coENTIDADE: TENTIDADE);
begin
    with TOs(coENTIDADE) do
      begin
        ValidaCliente(CLIENTE);
      end;
end;

procedure TRegraCRUDOs.ValidaCliente(const coCLIENTE: TCLIENTE);
begin
  if (coCLIENTE = nil) or (coCLIENTE.ID = 0) then
    raise EValidacaoNegocio.Create(STR_OS_CLIENTE_NAO_INFORMADO);

end;

procedure TRegraCRUDOs.ValidaEquipamento(const coEQUIPAMENTO: TEquipamento);
begin
  if (coEQUIPAMENTO = nil) or (coEQUIPAMENTO.ID = 0) then
    raise EValidacaoNegocio.Create(STR_OS_EQUIPAMENTO_NAO_INFORMADO);
end;

procedure TRegraCRUDOs.ValidaInsercao(const coENTIDADE: TENTIDADE);
var
  coOs: TOS;
begin
  inherited;
  coOs := TOS(coENTIDADE);

   if (coOs.DATA_ENTRADA) = 0 Then
     raise EValidacaoNegocio.Create(STR_OS_DATA_ENTRADA_NAO_INFORMADO);

    ValidaCliente(coOs.CLIENTE);
    ValidaEquipamento(coOs.EQUIPAMENTO);


end;

end.
