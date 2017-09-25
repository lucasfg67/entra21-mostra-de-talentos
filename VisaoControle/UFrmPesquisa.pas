unit UFrmPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids , Provider, DBClient
  , UEntidade
  , Generics.Collections
  , UOpcaoPesquisa
  ;

type
  TfrmPesquisa = class(TForm)
    pnlBotoes: TPanel;
    btnSair: TBitBtn;
    btnConfirmar: TBitBtn;
    gbParametros: TGroupBox;
    pnlCabecalho: TPanel;
    lbCabecalho: TLabel;
    dbgCliente: TDBGrid;
    edPesquisa: TEdit;
    lbOpcao: TLabel;
    lbIgualA: TLabel;
    cbOpcoes: TComboBox;
    procedure btnConfirmarClick(Sender: TObject);
    procedure dbgClienteDblClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edPesquisaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbOpcoesChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    FDataSource     : TDataSource;
    FDataSetProvider: TDataSetProvider;
    FClientDataSet  : TClientDataSet;
    FRetorno        : Variant;
    FOpcaoPesquisa  : TOpcaoPesquisa;

    function RetornaDataSet: TSQLDataSet;
    procedure ResizeDBGrid;

  public
    class function MostrarPesquisa(const coOpcaoPesquisa: TOpcaoPesquisa): Variant;
    procedure Inicializa;

    property Retorno      : Variant        read FRetorno;
    property OpcaoPesquisa: TOpcaoPesquisa read FOpcaoPesquisa write FOpcaoPesquisa;
  end;

const
  CNT_DATA_SET_PROVIDER_NAME = 'dspPesquisa';
  CNT_SELECT_ALL             = 'select * from %s';

implementation

uses
    UDM
  ;

{$R *.dfm}

{ TfrmPesquisa }

class function TfrmPesquisa.MostrarPesquisa(const coOpcaoPesquisa: TOpcaoPesquisa): Variant;
var
  frmPesquisa: TfrmPesquisa;
begin
  frmPesquisa := TfrmPesquisa.Create(Application);
  try
    frmPesquisa.OpcaoPesquisa := coOpcaoPesquisa;
    frmPesquisa.Inicializa;

    if frmPesquisa.ShowModal = mrOk then
      Result := frmPesquisa.Retorno
    else
      Result := '';
  finally
    FreeAndNil(frmPesquisa);
  end;
end;

procedure TfrmPesquisa.ResizeDBGrid;
var
  I, TotalWidht, VarWidth, QtdTotalColuna : Integer;
  xColumn : TColumn;
begin
  // Largura total de todas as colunas antes de redimensionar
  TotalWidht := 0;

  // Quantas colunas devem ser auto-redimensionamento
  QtdTotalColuna := 0;

  for I := 0 to -1 + dbgCliente.Columns.Count do
  begin
    TotalWidht := TotalWidht + dbgCliente.Columns[I].Width;
    if dbgCliente.Columns[I].Field.Tag <> 0 then
      Inc(QtdTotalColuna);
  end;

  // Adiciona 1px para a linha de separador de coluna
  if dgColLines in dbgCliente.Options then
    TotalWidht := TotalWidht + dbgCliente.Columns.Count;

  // Adiciona a largura da coluna indicadora
  if dgIndicator in dbgCliente.Options then
    TotalWidht := TotalWidht + IndicatorWidth;

  // width vale "Left"
  VarWidth :=  dbgCliente.ClientWidth - TotalWidht;


  // Da mesma forma distribuir VarWidth para todas as colunas auto-resizable
  if QtdTotalColuna > 0 then
    VarWidth := varWidth div QtdTotalColuna;

  for I := 0 to -1 + dbgCliente.Columns.Count do
  begin
    xColumn := dbgCliente.Columns[I];
    if xColumn.Field.Tag <> 0 then
    begin
      xColumn.Width := xColumn.Width + VarWidth;
      if xColumn.Width < xColumn.Field.Tag then
        xColumn.Width := xColumn.Field.Tag;
    end;
  end;
end;

function TfrmPesquisa.RetornaDataSet: TSQLDataSet;
begin
  UDM.dmEntra21.SQLSelect.Close;

  //select *
  //  from 'nome da tabela'
  UDM.dmEntra21.SQLSelect.CommandText := FOpcaoPesquisa.SQL;
  UDM.dmEntra21.SQLSelect.Open;

  Result := UDM.dmEntra21.SQLSelect;
end;

procedure TfrmPesquisa.Inicializa;
begin
  FDataSetProvider         := TDataSetProvider.Create(Self);
  FDataSetProvider.Name    := CNT_DATA_SET_PROVIDER_NAME;
  FDataSetProvider.DataSet := RetornaDataSet;

  FClientDataSet              := TClientDataSet.Create(Self);
  FClientDataSet.ProviderName := CNT_DATA_SET_PROVIDER_NAME;
  FClientDataSet.ReadOnly     := True;
  FClientDataSet.Active       := True;

  FDataSource         := TDataSource.Create(Self);
  FDataSource.DataSet := FClientDataSet;
  FDataSource.Enabled := True;

  dbgCliente.DataSource := FDataSource;

  Caption             := Caption + ' - ' + FOpcaoPesquisa.NOME_PESQUISA;
  lbCabecalho.Caption := AnsiUpperCase(lbCabecalho.Caption + ' - ' + FOpcaoPesquisa.NOME_PESQUISA);

  FRetorno := 0;
  ResizeDBGrid;
end;

procedure TfrmPesquisa.btnConfirmarClick(Sender: TObject);
begin
  FRetorno := FClientDataSet.FieldValues[FOpcaoPesquisa.NOME_CAMPO_RETORNO];
end;

procedure TfrmPesquisa.dbgClienteDblClick(Sender: TObject);
begin
  FRetorno    := FClientDataSet.FieldValues[FOpcaoPesquisa.NOME_CAMPO_RETORNO];
  ModalResult := mrOk;
end;

procedure TfrmPesquisa.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPesquisa.cbOpcoesChange(Sender: TObject);
begin
  FClientDataSet.IndexFieldNames := cbOpcoes.Text;
end;

procedure TfrmPesquisa.FormResize(Sender: TObject);
begin
  ResizeDBGrid;
end;

procedure TfrmPesquisa.FormShow(Sender: TObject);
var
  I: Integer;
  lsCampo: String;
begin
  for lsCampo in FOpcaoPesquisa.FILTROS do
    cbOpcoes.Items.Add(lsCampo);

  cbOpcoes.ItemIndex             := 0;
  FClientDataSet.IndexFieldNames := cbOpcoes.Text;

  for I := 0 to FClientDataSet.FieldCount - 1 do
    FClientDataSet.Fields[i].Tag := 60;

  ResizeDBGrid;
end;

procedure TfrmPesquisa.edPesquisaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  FClientDataSet.FindNearest([edPesquisa.Text]);
  FClientDataSet.GotoNearest;
end;

procedure TfrmPesquisa.dbgClienteKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RETURN:
      begin
        FRetorno    := FClientDataSet.FieldValues[FOpcaoPesquisa.NOME_CAMPO_RETORNO];
        ModalResult := mrOk;
      end;
    VK_ESCAPE: ModalResult := mrCancel;
  end;    
end;

end.
