unit UFrmCadastroOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Menus, Buttons, StdCtrls, ExtCtrls
  , UUtilitarios
  , UOS
  , UCliente
  , UEquipamento
  , URegraCRUDOs
  , URegraCRUDCliente
  , URegraCRUDEquipamento, ComCtrls
  ;

type
  TFrmCadastroOS = class(TFrmCRUD)
    pgOrdemServico: TPageControl;
    tsGeral: TTabSheet;
    gbInformacoes: TGroupBox;
    lbDataEntrada: TLabel;
    edDescricao_Servico: TLabeledEdit;
    edCliente: TLabeledEdit;
    edEquipamento: TLabeledEdit;
    edDataEntrada: TDateTimePicker;
    stNomeCliente: TStaticText;
    btnLocalizarCliente: TButton;
    stNomeEquipamento: TStaticText;
    btnLocalizaEquipamento: TButton;
    tsTecnicos: TTabSheet;
    tsMateriais: TTabSheet;
    pnlTecnicos: TPanel;
    lvTecnicos: TListView;
    Panel1: TPanel;
    lvMateriais: TListView;
    procedure edClienteExit(Sender: TObject);
    procedure edEquipamentoExit(Sender: TObject);
    procedure btnLocalizarClienteClick(Sender: TObject);
    procedure btnLocalizaEquipamentoClick(Sender: TObject);
  private
    FOS: TOS;
    FRegraCRUDOs: TRegraCRUDOs;
    FRegraCRUDCliente: TRegraCRUDCliente;
    FRegraCRUDEquipamento: TRegraCRUDEquipamento;

  protected
    procedure Inicializa; override;
    procedure Finaliza; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
  end;

var
  FrmCadastroOS: TFrmCadastroOS;

implementation

{$R *.dfm}

uses
    UOpcaoPesquisa
  , UEntidade
  , UDialogo
  , UFrmPesquisa
  ;

{ TFrmCadastroOS }

procedure TFrmCadastroOS.btnLocalizaEquipamentoClick(Sender: TObject);
begin
  inherited;
  edEquipamento.Text := TfrmPesquisa.MostrarPesquisa(TOpcaoPesquisa
    .Create
    .DefineVisao(VW_EQUIPAMENTO)
    .DefineNomeCampoRetorno(VW_EQUIPAMENTO_ID)
    .DefineNomePesquisa(STR_EQUIPAMENTO)
    .AdicionaFiltro(VW_EQUIPAMENTO_NOME));

  if Trim(edEquipamento.Text) <> EmptyStr then
    edEquipamento.OnExit(btnLocalizaEquipamento);
end;

procedure TFrmCadastroOS.btnLocalizarClienteClick(Sender: TObject);
begin
  inherited;
  edCliente.Text := TfrmPesquisa.MostrarPesquisa(TOpcaoPesquisa
    .Create
    .DefineVisao(VW_CLIENTE)
    .DefineNomeCampoRetorno(VW_CLIENTE_ID)
    .DefineNomePesquisa(STR_CLIENTE)
    .AdicionaFiltro(VW_CLIENTE_NOME));

  if Trim(edCliente.Text) <> EmptyStr then
    edCliente.OnExit(btnLocalizarCliente);
end;

procedure TFrmCadastroOS.edClienteExit(Sender: TObject);
begin
  inherited;
    stNomeCliente.Caption := EmptyStr;
  if Trim(edCliente.Text) <> EmptyStr then
    try
      FRegraCRUDCliente.ValidaExistencia(StrToIntDef(edCliente.Text, 0));
      FOS.CLIENTE := TCLIENTE(
      FRegraCRUDCliente.Retorna(StrToIntDef(edCliente.Text, 0)));

      stNomeCliente.Caption := FOS.CLIENTE.NOME;
    except
      on E: Exception do
        begin
          TDialogo.Excecao(E);
          edCliente.SetFocus;
        end;
    end;
end;

procedure TFrmCadastroOS.edEquipamentoExit(Sender: TObject);
begin
  stNomeEquipamento.Caption := EmptyStr;
  if Trim(edEquipamento.Text) <> EmptyStr then
    try
      FRegraCRUDEquipamento.ValidaExistencia(StrToIntDef(edEquipamento.Text, 0));
      FOS.EQUIPAMENTO := TEQUIPAMENTO(
      FRegraCRUDEquipamento.Retorna(StrToIntDef(edEquipamento.Text, 0)));

      stNomeEquipamento.Caption := FOS.EQUIPAMENTO.NOME;
    except
      on E: Exception do
        begin
          TDialogo.Excecao(E);
          edEquipamento.SetFocus;
        end;
    end;
end;

procedure TFrmCadastroOS.Finaliza;
begin
  inherited;
  FreeAndNil(FRegraCRUDOs);
end;

procedure TFrmCadastroOS.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  gbInformacoes.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TFrmCadastroOS.Inicializa;
begin
  inherited;

  DefineEntidade(@FOS, TOS);
  DefineRegraCRUD(@FRegraCRUDOs, TRegraCRUDOs);

  AdicionaOpcaoPesquisa(TOpcaoPesquisa
    .Create
    .AdicionaFiltro(VW_OS_DESCRICAO_SERVICO)
    .DefineNomeCampoRetorno(VW_OS_ID)
    .DefineNomePesquisa(STR_OS)
    .DefineVisao(VW_OS));

  FRegraCRUDCliente     := TRegraCRUDCliente.Create;
  FRegraCRUDEquipamento := TRegraCRUDEquipamento.Create;

end;

procedure TFrmCadastroOS.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edDataEntrada.SetFocus;
end;

procedure TFrmCadastroOS.PreencheEntidade;
begin
  inherited;
  FOS.DATA_ENTRADA      := edDataEntrada.DateTime;
  FOS.DESCRICAO_SERVICO := edDescricao_Servico.Text;

end;

procedure TFrmCadastroOS.PreencheFormulario;
begin
  inherited;
  edDataEntrada.DateTime    := FOS.DATA_ENTRADA;
  edDescricao_Servico.Text  := FOS.DESCRICAO_SERVICO;
  edCliente.Text            := IntToStr(FOS.CLIENTE.ID);
  stNomeCliente.Caption     := FOS.CLIENTE.NOME;
  edEquipamento.Text        := IntToStr(FOS.EQUIPAMENTO.ID);
  stNomeEquipamento.Caption := FOS.EQUIPAMENTO.NOME;
end;

end.
