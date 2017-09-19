unit UFrmCadastroUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Menus, Buttons, StdCtrls, ExtCtrls
  , UUsuario
  , UUtilitarios
  , URegraCRUDUsuario
  ;

type
  TFrmCadastroUsuario = class(TFrmCRUD)
    gbInformacoes: TGroupBox;
    edNome: TLabeledEdit;
    edSenha: TLabeledEdit;
  protected
    FUSUARIO: TUSUARIO;
    FRegraCRUDUsuario: TRegraCRUDUsuario;

    procedure Inicializa; override;
    procedure Finaliza; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
  end;

var
  FrmCadastroUsuario: TFrmCadastroUsuario;

implementation

{$R *.dfm}

uses
    UOpcaoPesquisa
  , UEntidade
  , UDialogo
  ;

{ TFrmCadastroUsuario }

procedure TFrmCadastroUsuario.Finaliza;
begin
  inherited;
  FreeAndNil(FRegraCRUDUsuario);
end;

procedure TFrmCadastroUsuario.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  gbInformacoes.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TFrmCadastroUsuario.Inicializa;
begin
  inherited;

  DefineEntidade(@FUSUARIO, TUSUARIO);
  DefineRegraCRUD(@FRegraCRUDUsuario, TRegraCRUDUsuario);

   AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(VW_USUARIO)
    .DefineNomeCampoRetorno(VW_USUARIO_ID)
    .AdicionaFiltro(VW_USUARIO_NOME)
    .DefineNomePesquisa('Pesquisa de Usuários'));
end;

procedure TFrmCadastroUsuario.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edNome.SetFocus;
end;

procedure TFrmCadastroUsuario.PreencheEntidade;
begin
  inherited;
  FUSUARIO.NOME  := edNome.Text;
  FUSUARIO.SENHA :=  edSenha.Text;
end;

procedure TFrmCadastroUsuario.PreencheFormulario;
begin
  inherited;
  edNome.Text  := FUSUARIO.NOME;
  edSenha.Text := FUSUARIO.SENHA;
end;
end.
