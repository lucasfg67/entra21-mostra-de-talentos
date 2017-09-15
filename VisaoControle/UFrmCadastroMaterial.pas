unit UFrmCadastroMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Menus, Buttons, StdCtrls, ExtCtrls
  , UUtilitarios
  , UMATERIAL
  , URegraCRUDMaterial
  ;

type
  TFrmCadastroMaterial = class(TFrmCRUD)
    gbInformacoes: TGroupBox;
    edDescricao: TLabeledEdit;
    edValorUnitario: TLabeledEdit;
  private
    FMATERIAL: TMATERIAL;
    FRegraCRUDMaterial: TRegraCRUDMaterial;
  protected
    procedure Inicializa; override;
    procedure Finaliza; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
  end;

var
  FrmCadastroMaterial: TFrmCadastroMaterial;

implementation

{$R *.dfm}

uses
    UOpcaoPesquisa
  , UEntidade
  , UDialogo
  ;

{ TFrmCadastroMaterial }

procedure TFrmCadastroMaterial.Finaliza;
begin
  inherited;
  FreeAndNil(FRegraCRUDMaterial);
end;

procedure TFrmCadastroMaterial.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  gbInformacoes.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TFrmCadastroMaterial.Inicializa;
begin
  inherited;

  DefineEntidade(@FMATERIAL, TMATERIAL);
  DefineRegraCRUD(@FRegraCRUDMaterial, TRegraCRUDMaterial);

  AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(VW_MATERIAL)
    .DefineNomeCampoRetorno(VW_MATERIAL_ID)
    .AdicionaFiltro(VW_MATERIAL_DESCRICAO)
    .DefineNomePesquisa('Pesquisa de Materiais'));
end;

procedure TFrmCadastroMaterial.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edDescricao.SetFocus;
end;

procedure TFrmCadastroMaterial.PreencheEntidade;
begin
  inherited;
  FMATERIAL.DESCRICAO      := edDescricao.Text;
  FMATERIAL.VALOR_UNITARIO := StrToFloatDef(edValorUnitario.Text, 0);
end;

procedure TFrmCadastroMaterial.PreencheFormulario;
begin
  inherited;
  edDescricao.Text     := FMATERIAL.DESCRICAO;
  edValorUnitario.Text := FloatToStr(FMATERIAL.VALOR_UNITARIO);
end;

end.
