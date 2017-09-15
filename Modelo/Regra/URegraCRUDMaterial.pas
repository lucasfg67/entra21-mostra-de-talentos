unit URegraCRUDMaterial;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioMaterial
  , UEntidade
  , UMaterial
  ;

type
  TRegraCRUDMaterial = class(TRegraCRUD)
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

{ TRegraCRUDMaterial }

constructor TRegraCRUDMaterial.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioMaterial.Create);
end;

procedure TRegraCRUDMaterial.ValidaInsercao(const coENTIDADE: TENTIDADE);
var
  coMaterial: TMATERIAL;
begin
  inherited;
  coMaterial := TMATERIAL(coENTIDADE);;

    if Trim(coMaterial.DESCRICAO) = EmptyStr Then
      raise EValidacaoNegocio.Create(STR_MATERIAL_DESCRICAO_NAO_INFORMADO);

    if (coMaterial.VALOR_UNITARIO) = 0 then
      raise EValidacaoNegocio.Create(STR_MATERIAL_VALOR_UNITARIO_NAO_INFORMADO);

end;

end.
