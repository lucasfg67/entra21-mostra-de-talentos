unit UFrmCadastroEquipamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, ExtCtrls, Menus, Buttons, StdCtrls
  , UUtilitarios
  , UEquipamento
  , URegraCRUDEquipamento
  ;

type
  TFrmCadastroEquipamento = class(TFrmCRUD)
    gbInformacoes: TGroupBox;
    edNome: TLabeledEdit;
    edMarca: TLabeledEdit;
    edN_Serie: TLabeledEdit;
  protected
    FEQUIPAMENTO: TEQUIPAMENTO;
    FRegraCRUDEquipamento: TRegraCRUDEquipamento;

    procedure Inicializa; override;
    procedure Finaliza; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
  end;

var
  FrmCadastroEquipamento: TFrmCadastroEquipamento;

implementation

{$R *.dfm}

uses
    UOpcaoPesquisa
  ;

{ TFrmCadastroEquipamento }

procedure TFrmCadastroEquipamento.Finaliza;
begin
  inherited;
  FreeAndNil(FRegraCRUDEquipamento);
end;

procedure TFrmCadastroEquipamento.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  gbInformacoes.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TFrmCadastroEquipamento.Inicializa;
begin
  inherited;

  DefineEntidade(@FEQUIPAMENTO, TEQUIPAMENTO);
  DefineRegraCRUD(@FRegraCRUDEquipamento, TRegraCRUDEquipamento);

  AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(VW_EQUIPAMENTO)
    .DefineNomeCampoRetorno(VW_EQUIPAMENTO_ID)
    .AdicionaFiltro(VW_EQUIPAMENTO_NOME)
    .DefineNomePesquisa('Pesquisa de Equipamentos'));
end;

procedure TFrmCadastroEquipamento.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edNome.SetFocus;
end;

procedure TFrmCadastroEquipamento.PreencheEntidade;
begin
  inherited;
  FEQUIPAMENTO.NOME    := edNome.Text;
  FEQUIPAMENTO.MARCA   := edMarca.Text;
  FEQUIPAMENTO.N_SERIE := edN_Serie.Text;
end;

procedure TFrmCadastroEquipamento.PreencheFormulario;
begin
  inherited;
  edNome.Text    := FEQUIPAMENTO.NOME;
  edMarca.Text   := FEQUIPAMENTO.MARCA;
  edN_Serie.Text := FEQUIPAMENTO.N_SERIE;
end;
end.
