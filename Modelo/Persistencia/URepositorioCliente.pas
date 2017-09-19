unit URepositorioCliente;

interface

uses
    UCidade
  , UCliente
  , UEntidade
  , URepositorioDB
  , URepositorioCidade
  , SqlExpr
  ;

type
  TRepositorioCliente = class(TRepositorioDB<TCLIENTE>)
  private
    FRepositorioCidade: TRepositorioCidade;

  public
    constructor Create;
    destructor Destroy; override;

    procedure AtribuiDBParaEntidade(const coCLIENTE: TCLIENTE); override;
    procedure AtribuiEntidadeParaDB(const coCLIENTE: TCLIENTE;
                                    const coSQLQuery: TSQLQuery); override;
  end;

implementation

uses
   UDM
 , SysUtils
 , UUtilitarios
 ;

{ TRepositorioCliente }

constructor TRepositorioCliente.Create;
begin
  Inherited Create(TCLIENTE, TBL_CLIENTE, FLD_ENTIDADE_ID, STR_CLIENTE);
  FRepositorioCidade := TRepositorioCidade.Create;
end;

destructor TRepositorioCliente.Destroy;
begin
  FreeAndNil(FRepositorioCidade);
  Inherited;
end;

procedure TRepositorioCliente.AtribuiDBParaEntidade(const coCLIENTE: TCLIENTE);
begin
  Inherited;
  with FSQLSelect do
  begin
    coCLIENTE.NOME        := FieldByName(FLD_CLIENTE_NOME).AsString;
    coCLIENTE.SOLICITANTE := FieldByName(FLD_CLIENTE_SOLICITANTE).AsString;
    coCLIENTE.CNPJ_CPF    := FieldByName(FLD_CLIENTE_CNPJ_CPF).AsString;
    coCLIENTE.TELEFONE    := FieldByName(FLD_CLIENTE_TELEFONE).AsString;
    coCLIENTE.ENDEREÇO    := FieldByName(FLD_CLIENTE_ENDERECO).AsString;
    cOCLIENTE.TIPO_PESSOA := TTipoPessoa(FieldByName(FLD_CLIENTE_TIPO_PESSOA).AsInteger);
    coCLIENTE.CIDADE      := TCIDADE(FRepositorioCidade.Retorna(FieldByName(FLD_CLIENTE_ID_CIDADE).AsInteger));
  end;
end;

procedure TRepositorioCliente.AtribuiEntidadeParaDB(const coCLIENTE: TCLIENTE;
  const coSQLQuery: TSQLQuery);
begin
  Inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_CLIENTE_NOME).AsString         := coCLIENTE.NOME;
    ParamByName(FLD_CLIENTE_SOLICITANTE).AsString  := coCLIENTE.SOLICITANTE;
    ParamByName(FLD_CLIENTE_CNPJ_CPF).AsString     := coCLIENTE.CNPJ_CPF;
    ParamByName(FLD_CLIENTE_TELEFONE).AsString     := coCLIENTE.TELEFONE;
    ParamByName(FLD_CLIENTE_ENDERECO).AsString     := coCLIENTE.ENDEREÇO;
    ParamByName(FLD_CLIENTE_TIPO_PESSOA).AsInteger := Integer(coCLIENTE.TIPO_PESSOA);
    ParamByName(FLD_CLIENTE_ID_CIDADE).AsInteger   := coCLIENTE.CIDADE.ID;
  end;
end;

end.
