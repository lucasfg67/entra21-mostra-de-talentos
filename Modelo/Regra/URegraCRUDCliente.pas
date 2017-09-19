unit URegraCRUDCliente;

interface

 uses
    URegraCRUD
  , URepositorioDB
  , URepositorioCliente
  , UEntidade
  , UCliente
  , UCidade
  ;

type
  TRegraCRUDCliente = class(TRegraCRUD)
  private
    procedure ValidaCidade(const coCIDADE: TCIDADE);

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

{ TRegraCRUDCliente }

constructor TRegraCRUDCliente.Create;
begin
  inherited;
    FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioCliente.Create);
end;

procedure TRegraCRUDCliente.ValidaAtualizacao(const coENTIDADE: TENTIDADE);
begin
  with TCLIENTE(coENTIDADE) do
    begin
      ValidaCidade(CIDADE);
    end;
end;

procedure TRegraCRUDCliente.ValidaCidade(const coCIDADE: TCIDADE);
begin
  if (coCIDADE = nil) or (coCIDADE.ID = 0) then
    raise EValidacaoNegocio.Create(STR_CLIENTE_CIDADE_NAO_INFORMADO);
end;

procedure TRegraCRUDCliente.ValidaInsercao(const coENTIDADE: TENTIDADE);
var
  coCliente: TCLIENTE;
begin
  inherited;
  coCliente := TCLIENTE(coENTIDADE);

  if Trim(coCliente.NOME) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CLIENTE_NOME_NAO_INFORMADO);

  if Trim (coCliente.SOLICITANTE) = EmptyStr  Then
    raise EValidacaoNegocio.Create(STR_CLIENTE_SOLICITANTE_NAO_INFORMADO);

  if Trim (coCliente.CNPJ_CPF) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CLIENTE_CPF_CNPJ_NAO_INFORMADO);

  if Trim (coCliente.TELEFONE) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CLIENTE_TELEFONE_NAO_INFORMADO);

  ValidaCidade(coCliente.CIDADE);

  if Trim (coCliente.ENDEREÇO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CLIENTE_ENDERECO_NAO_INFORMADO);
end;

end.
