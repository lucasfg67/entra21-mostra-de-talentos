unit URegraCRUDUsuario;

interface
uses

    URegraCRUD
  , URepositorioDB
  , URepositorioUsuario
  , UEntidade
  , UUsuario
  ;

type
  TRegraCRUDUsuario = class(TRegraCRUD)
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


{ TRegraCRUDUsuario }

constructor TRegraCRUDUsuario.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioUsuario.Create);
end;

procedure TRegraCRUDUsuario.ValidaInsercao(const coENTIDADE: TENTIDADE);
var
  coUsuario : TUSUARIO;
begin
  inherited;
  coUsuario := TUSUARIO(coENTIDADE);

  if trim(coUsuario.NOME) = EmptyStr then
    raise EValidacaoNegocio.Create(STR_USUARIO_NOME_NAO_INFORMADO);

  if (coUsuario.SENHA) = EmptyStr  then
    raise EValidacaoNegocio.Create(STR_USUARIO_SENHA_NAO_INFORMADO );


end;

end.
