unit URegraCRUDEstado;

interface
uses
  URegraCRUD
 ,URepositorioDB
 ,URepositorioEstado
 ,UEntidade
 ,UPais
 ,UEstado
 ;

 type
  TRegraCRUDEstado  = class (TRegraCRUD)
  private
    procedure ValidaPais(const coPais: TPAIS);
  protected
    procedure ValidaInsercao(const coENTIDADE: TENTIDADE); override;
    procedure ValidaAtualizacao(const coENTIDADE: TENTIDADE); override;
  public
    constructor Create ; override ;
  end;
implementation
uses
    SysUtils
  , UUtilitarios
  , UMensagens
  , UConstantes
  ;

{ TRegraCRUDEstado }

constructor TRegraCRUDEstado.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioEstado.Create);
end;

procedure TRegraCRUDEstado.ValidaAtualizacao(const coENTIDADE: TENTIDADE);
begin
  with TESTADO(coENTIDADE) do
    begin
      ValidaPais(PAIS);
    end;
end;

procedure TRegraCRUDEstado.ValidaInsercao(const coENTIDADE: TENTIDADE);
var
   coEstado : TESTADO;
begin
  inherited;
  coEstado := TESTADO(coENTIDADE);

   if Trim(coEstado.NOME) = EmptyStr Then
      raise EValidacaoNegocio.Create(STR_ESTADO_ESTADO_NAO_INFORMADO);

   if Trim(coEstado.UF) = EmptyStr Then
      raise EValidacaoNegocio.Create(STR_ESTADO_UF_NAO_INFORMADO );

  ValidaPais(coEstado.PAIS);

end;

procedure TRegraCRUDEstado.ValidaPais(const coPais: TPAIS);
begin
  if (coPAIS = nil) or (coPais.ID = 0) then
    raise EValidacaoNegocio.Create(STR_ESTADO_PAIS_NAO_INFORMADO);
end;

end.
