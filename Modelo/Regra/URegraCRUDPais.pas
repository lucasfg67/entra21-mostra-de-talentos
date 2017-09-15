unit URegraCRUDPais;

interface

uses
  URegraCRUD
 ,URepositorioDB
 ,URepositorioPais
 ,UEntidade
 ,UPais
 ;

 type
  TRegraCRUDPais  = class (TRegraCRUD)
  protected
    procedure ValidaInsercao(const coENTIDADE: TENTIDADE); override;
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

{ TRegraCRUDPais }

constructor TRegraCRUDPais.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioPais.Create);
end;

procedure TRegraCRUDPais.ValidaInsercao(const coENTIDADE: TENTIDADE);
var
  coPais : TPAIS;
begin
  inherited;
  coPais := TPAIS(coENTIDADE);

  if trim(coPais.NOME) = EmptyStr then
    raise EValidacaoNegocio.Create(STR_PAIS_NAO_INFORMADO);

  if trim (coPais.SIGLA) = EmptyStr then
    raise EValidacaoNegocio.Create(STR_SIGLA_NAO_INFORMADO);

end;

end.
