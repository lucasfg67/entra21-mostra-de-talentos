unit URegraCRUDTecnico;

interface
 uses
    URegraCRUD
  , URepositorioDB
  , URepositorioTecnico
  , UEntidade
  , UTecnico
  ;


type
  TRegraCRUDTecnico = class(TRegraCRUD)
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

{ TRegraCRUDTecnico }

constructor TRegraCRUDTecnico.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioTecnico.Create);
end;

procedure TRegraCRUDTecnico.ValidaInsercao(const coENTIDADE: TENTIDADE);
var
  coTecnico: TTECNICO;
begin
  inherited;
  coTecnico := TTECNICO(coENTIDADE);

  if trim (coTecnico.NOME) = EmptyStr then
    raise EValidacaoNegocio.Create(STR_TECNICO_NOME_NAO_INFORMADO);

  if (coTecnico.VALOR_HORA) = 0 then
    raise EValidacaoNegocio.Create(STR_TECNICO_VALOR_HORA_NAO_INFORMADO);



end;

end.
