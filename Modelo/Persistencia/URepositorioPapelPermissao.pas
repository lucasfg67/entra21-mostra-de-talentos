unit URepositorioPapelPermissao;

interface

uses
    UEntidade
  , URepositorioDB
  , UUtilitarios
  , Generics.Collections
  ;

type
  TRepositorioPapelPermissao = class(TRepositorioDB<TENTIDADE>)
  public
    constructor Create;
    function RetornaPermissoes(const cePapelUsuario: TPapelUsuario): TList<TPermissaoUsuario>;
  end;

const
  TBL_PAPEL_PERMISSAO              = 'PAPEL_PERMISSAO';
  FLD_PAPEL_PERMISSAO_ID_PAPEL     = 'ID_PAPEL';
  FLD_PAPEL_PERMISSAO_ID_PERMISSAO = 'ID_PERMISSAO';

  CNT_SELECT_PERMISSOES_DO_PAPEL = 'select * '
                                 + '  from ' + TBL_PAPEL_PERMISSAO
                                 + ' where ' + FLD_PAPEL_PERMISSAO_ID_PAPEL + ' = :' + FLD_PAPEL_PERMISSAO_ID_PAPEL;

implementation

{ TRepositorioPapelPermissao }

constructor TRepositorioPapelPermissao.Create;
begin
  inherited Create(TENTIDADE, TBL_PAPEL_PERMISSAO, FLD_ENTIDADE_ID, '');
end;

function TRepositorioPapelPermissao.RetornaPermissoes(
  const cePapelUsuario: TPapelUsuario): TList<TPermissaoUsuario>;
begin
  FSQLSelect.Close;
  FSQLSelect.CommandText := CNT_SELECT_PERMISSOES_DO_PAPEL ;
  FSQLSelect.Prepared    := True;
  FSQLSelect.ParamByName(FLD_PAPEL_PERMISSAO_ID_PAPEL).AsInteger := Integer(cePapelUsuario);
  FSQLSelect.Open;

  Result := TList<TPermissaoUsuario>.Create;
  while not FSQLSelect.Eof do
    begin
      Result.Add(TPermissaoUsuario(FSQLSelect.FieldByName(FLD_PAPEL_PERMISSAO_ID_PERMISSAO).AsInteger));
      FSQLSelect.Next
    end;
end;

end.
