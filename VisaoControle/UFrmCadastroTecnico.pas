unit UFrmCadastroTecnico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Menus, Buttons, StdCtrls, ExtCtrls
  , UTecnico
  , UUtilitarios
  , URegraCRUDTecnico
  ;

type
  TFrmCadastroTecnico = class(TFrmCRUD)
    gbInformacoes: TGroupBox;
    edNome: TLabeledEdit;
    edValorHora: TLabeledEdit;
  protected
    FTECNICO: TTECNICO;
    FRegraCRUDTecnico: TRegraCRUDTecnico;

    procedure Inicializa; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
  end;

var
  FrmCadastroTecnico: TFrmCadastroTecnico;

implementation

{$R *.dfm}

uses
    UOpcaoPesquisa
  , UEntidade
  , UDialogo
  ;

{ TFrmTecnico }

procedure TFrmCadastroTecnico.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  gbInformacoes.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TFrmCadastroTecnico.Inicializa;
begin
  inherited;

  DefineEntidade(@FTECNICO, TTECNICO);
  DefineRegraCRUD(@FRegraCRUDTecnico, TRegraCRUDTecnico);

  AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(VW_TECNICO)
    .DefineNomeCampoRetorno(VW_TECNICO_ID)
    .AdicionaFiltro(VW_TECNICO_NOME)
    .DefineNomePesquisa('Pesquisa de Técnicos'));
end;

procedure TFrmCadastroTecnico.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edNome.SetFocus;
end;

procedure TFrmCadastroTecnico.PreencheEntidade;
begin
  inherited;
  FTECNICO.NOME := edNome.Text;
  FTECNICO.VALOR_HORA := StrToFloatDef(edValorHora.Text, 0);
end;

procedure TFrmCadastroTecnico.PreencheFormulario;
begin
  inherited;
  edNome.Text      := FTECNICO.NOME;
  edValorHora.Text := FloatToStr(FTECNICO.VALOR_HORA);
end;

end.
