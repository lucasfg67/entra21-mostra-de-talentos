unit URepositorioUsuario;

interface

uses
    UUsuario
  , UEntidade
  , URepositorioDB
  , SqlExpr
  , URepositorioPapelPermissao
  ;

type
  TRepositorioUsuario = class (TRepositorioDB<TUSUARIO>)
  private
    RepositorioPapelPermissao: TRepositorioPapelPermissao;

  public
    constructor Create;
    destructor Destroy; override;

    procedure AtribuiDBParaEntidade (const coUSUARIO: TUSUARIO); override;
    procedure AtribuiEntidadeParaDB (const coUSUARIO: TUSUARIO;
                                     const coSQLQuery: TSQLQuery); override;

  function RetornaPeloLogin(const csLogin: String): TUSUARIO;


  end;

implementation

uses
    UDM
  , UUtilitarios
  , SysUtils
  ;

const
  CNT_SELECT_PELO_LOGIN = 'select * from usuario where login = :login';

  {TRepositorioUsuario}


constructor TRepositorioUsuario.Create;
begin
  inherited Create (TUSUARIO, TBL_USUARIO, FLD_ENTIDADE_ID, STR_USUARIO);
  RepositorioPapelPermissao := TRepositorioPapelPermissao.Create;
end;

destructor TRepositorioUsuario.Destroy;
begin
  FreeAndNil(RepositorioPapelPermissao);
  inherited;
end;

function TRepositorioUsuario.RetornaPeloLogin(const csLogin: String): TUSUARIO;
begin
  FSQLSelect.Close;
  FSQLSelect.CommandText := CNT_SELECT_PELO_LOGIN;
  FSQLSelect.Prepared    := True;
  FSQLSelect.ParamByName(FLD_USUARIO_LOGIN).AsString := csLogin;
  FSQLSelect.Open;

  Result := nil;
  if not FSQLSelect.Eof then
    begin
      Result := TUSUARIO.Create;
      AtribuiDBParaEntidade(Result);
    end;
end;


procedure TRepositorioUsuario.AtribuiDBParaEntidade(const coUsuario: TUSUARIO);
var
  PermissaoUsuario: TPermissaoUsuario;
begin
  inherited;
  with FSQLSelect do
  begin
    coUSUARIO.LOGIN := FieldByName(FLD_USUARIO_LOGIN).AsString;
    coUSUARIO.NOME  := FieldByName(FLD_USUARIO_NOME).AsString;
    coUSUARIO.SENHA := FieldByName(FLD_USUARIO_SENHA).AsString;
    coUSUARIO.PAPEL := TPapelUsuario(FieldByName(FLD_USUARIO_ID_PAPEL).AsInteger);
    coUSUARIO.DESCRICAO_SERVICO := FieldByName(FLD_USUARIO_DESCRICAO_SERVICO).AsString;

    for PermissaoUsuario in RepositorioPapelPermissao.RetornaPermissoes(coUSUARIO.PAPEL) do
      coUSUARIO.PERMISSOES := coUSUARIO.PERMISSOES + [PermissaoUsuario];
  end;
end;

procedure TRepositorioUsuario.AtribuiEntidadeParaDB (
  const coUsuario: TUSUARIO; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_USUARIO_LOGIN).AsString := coUSUARIO.LOGIN;
    ParamByName(FLD_USUARIO_NOME).AsString  := coUSUARIO.NOME;
    ParamByName(FLD_USUARIO_SENHA).AsString := coUSUARIO.SENHA;
    ParamByName(FLD_USUARIO_ID_PAPEL).AsInteger := Integer(coUSUARIO.PAPEL);
    ParamByName(FLD_USUARIO_DESCRICAO_SERVICO).AsString := coUSUARIO.DESCRICAO_SERVICO;
  end;
end;

end.
