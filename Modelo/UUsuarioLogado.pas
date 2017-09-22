unit UUsuarioLogado;

interface

uses
    UUsuario
  , URepositorioUsuario
  , UUtilitarios
  ;

type
  TUsuarioLogado = class
  private
    FUSUARIO: TUSUARIO;
    FRepositorioUsuario: TRepositorioUsuario;

    function InternoPossuiPapel(const coPapelUsuario: TPapelUsuario): Boolean;
    function InternoPossuiPermissoes(const coListaPermissoesUsuario: TListaPermissoesUsuario): Boolean;
    function InternoPossuiAoMenosUmDosPapeis(const coListaPapeisUsuario: TListaPapeisUsuario): Boolean;
    function InternoPossuiAoMenosUmaDasPermissoes(const coListaPermissoesUsuario: TListaPermissoesUsuario): Boolean;
    function InternoValidaLogin(const csLogin: String;const csSenha: String): Boolean;
    function InternoRetornaHash(const csSenha: String): String;

    procedure InternoRealizaLogin(const csLogin: String;const csSenha: String);
    procedure InternoLogoff;


  public
    constructor Create;
    destructor Destroy; override;

    class procedure RealizaLogin(const csLogin: String;const csSenha: String);
    class procedure Logoff;

    class function USUARIO: TUSUARIO;

    class function PossuiPapel(const coPapelUsuario: TPapelUsuario): Boolean;
    class function PossuiPermissoes(const coListaPermissoesUsuario: TListaPermissoesUsuario): Boolean;
    class function PossuiAoMenosUmDosPapeis(const coListaPapeisUsuario: TListaPapeisUsuario): Boolean;
    class function PossuiAoMenosUmaDasPermissoes(const coListaPermissoesUsuario: TListaPermissoesUsuario): Boolean;
    class function Unico: TUsuarioLogado;
    class function ValidaLogin(const csLogin: String;const csSenha: String): Boolean;
    class function RetornaHash(const csSenha: String): String;
  end;

implementation

uses
    SysUtils
  , IdHashMessageDigest
  , UMensagens
  ;

var
  UsuarioLogado: TUsuarioLogado = nil;

{ TUsuarioLogado }

constructor TUsuarioLogado.Create;
begin
  FRepositorioUsuario := TRepositorioUsuario.Create;
end;

destructor TUsuarioLogado.Destroy;
begin
  FreeAndNil(FRepositorioUsuario);
  inherited;
end;

procedure TUsuarioLogado.InternoLogoff;
begin
  if Assigned(FUSUARIO) then
    FreeAndNil(FUSUARIO);
end;

class function TUsuarioLogado.PossuiAoMenosUmaDasPermissoes(
  const coListaPermissoesUsuario: TListaPermissoesUsuario): Boolean;
begin
  Result := Unico.InternoPossuiAoMenosUmaDasPermissoes(coListaPermissoesUsuario);
end;

class function TUsuarioLogado.PossuiAoMenosUmDosPapeis(
  const coListaPapeisUsuario: TListaPapeisUsuario): Boolean;
begin
  Result := Unico.InternoPossuiAoMenosUmDosPapeis(coListaPapeisUsuario);
end;

class function TUsuarioLogado.PossuiPapel(
  const coPapelUsuario: TPapelUsuario): Boolean;
begin
  Result := Unico.InternoPossuiPapel(coPapelUsuario);
end;

class function TUsuarioLogado.PossuiPermissoes(
  const coListaPermissoesUsuario: TListaPermissoesUsuario): Boolean;
begin
  Result := Unico.InternoPossuiPermissoes(coListaPermissoesUsuario);
end;

class procedure TUsuarioLogado.RealizaLogin(const csLogin, csSenha: String);
begin
  Unico.InternoRealizaLogin(csLogin, csSenha);
end;

class function TUsuarioLogado.RetornaHash(const csSenha: String): String;
begin
  Result := Unico.InternoRetornaHash(csSenha);
end;

function TUsuarioLogado.InternoPossuiAoMenosUmaDasPermissoes(
  const coListaPermissoesUsuario: TListaPermissoesUsuario): Boolean;
var
  PermissaoUsuario: TPermissaoUsuario;
begin
  Result := False;
  for PermissaoUsuario in coListaPermissoesUsuario do
    if PermissaoUsuario in FUSUARIO.PERMISSOES then
       begin
         Result := True;
         Exit;
       end;
end;

function TUsuarioLogado.InternoPossuiAoMenosUmDosPapeis(
  const coListaPapeisUsuario: TListaPapeisUsuario): Boolean;
var
  PapelUsuario: TPapelUsuario;
begin
  Result := False;
  for PapelUsuario in coListaPapeisUsuario do
    if FUSUARIO.PAPEL = PapelUsuario then
       begin
         Result := True;
         Exit;
       end;
end;

function TUsuarioLogado.InternoPossuiPapel(
  const coPapelUsuario: TPapelUsuario): Boolean;
begin
  Result := FUSUARIO.PAPEL = coPapelUsuario;
end;

function TUsuarioLogado.InternoPossuiPermissoes(
  const coListaPermissoesUsuario: TListaPermissoesUsuario): Boolean;
var
  PermissaoUsuario: TPermissaoUsuario;
begin
  Result := False;
  for PermissaoUsuario in coListaPermissoesUsuario do
    if not (PermissaoUsuario in FUSUARIO.PERMISSOES) then
      Exit;

  Result := True;
end;

procedure TUsuarioLogado.InternoRealizaLogin(const csLogin, csSenha: String);
begin
  if not InternoValidaLogin(csLogin, csSenha) then
    raise EValidacaoNegocio.Create(STR_USUARIO_OU_SENHA_SAO_INVALIDOS);

  FUSUARIO := FRepositorioUsuario.RetornaPeloLogin(csLogin);
end;

function TUsuarioLogado.InternoRetornaHash(const csSenha: String): String;
var
  HashMessageDigest5: TIdHashMessageDigest5;
begin
  HashMessageDigest5 := TIdHashMessageDigest5.Create;
  try
    Result := HashMessageDigest5.HashStringAsHex(csSenha);
  finally
     FreeAndNil(HashMessageDigest5);
  end;
end;

function TUsuarioLogado.InternoValidaLogin(const csLogin, csSenha: String): Boolean;
var
  loUSUARIO: TUSUARIO;
begin
  loUSUARIO := FRepositorioUsuario.RetornaPeloLogin(csLogin);
  if Assigned(loUSUARIO) then
    Result := loUSUARIO.SENHA = InternoRetornaHash(csSenha)
  else
    Result := False;
end;

class procedure TUsuarioLogado.Logoff;
begin
  Unico.InternoLogoff;
end;

class function TUsuarioLogado.Unico: TUsuarioLogado;
begin
  if not Assigned(UsuarioLogado) then
    UsuarioLogado := TUsuarioLogado.Create;

  Result := UsuarioLogado;
end;

class function TUsuarioLogado.USUARIO: TUSUARIO;
begin
  Result := Unico.FUSUARIO;
end;

class function TUsuarioLogado.ValidaLogin(const csLogin, csSenha: String): Boolean;
begin
  Result := Unico.InternoValidaLogin(csLogin, csSenha);
end;

end.
