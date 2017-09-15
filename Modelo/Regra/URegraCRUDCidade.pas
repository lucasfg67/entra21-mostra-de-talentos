unit URegraCRUDCidade;

interface

uses
  URegraCRUD
 ,URepositorioDB
 ,URepositorioCidade
 ,UEntidade
 ,UCidade
 ,UEstado
 ;

type
  TRegraCRUDCidade  = class (TRegraCRUD)
   private
    procedure ValidaEstado(const coESTADO: TESTADO);
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

{ TRegraCRUDCidade }

constructor TRegraCRUDCidade.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioCidade.Create);
end;

procedure TRegraCRUDCidade.ValidaAtualizacao(const coENTIDADE: TENTIDADE);
begin
  with TCIDADE(coENTIDADE) do
    begin
      ValidaEstado(ESTADO);
    end;
end;

procedure TRegraCRUDCidade.ValidaEstado(const coESTADO: TESTADO);
begin
   if (coESTADO = nil) or (coESTADO.ID = 0) then
    raise EValidacaoNegocio.Create(STR_CIDADE_ESTADO_NAO_INFORMADO);
end;

procedure TRegraCRUDCidade.ValidaInsercao(const coENTIDADE: TENTIDADE);
var
  coCidade : TCIDADE;
begin
  inherited;
  coCidade := TCIDADE(coENTIDADE);

  if Trim(coCidade.NOME) = EmptyStr Then
      raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  ValidaEstado(coCidade.ESTADO);

end;

end.
