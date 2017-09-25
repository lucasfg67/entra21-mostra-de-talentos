unit UFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus
  , StdCtrls, ComCtrls
  , URepositorioPapel
  , UUtilitarios
  ;

type
  TFrmPrincipal = class(TForm)
    mmPrincipal: TMainMenu;
    miSair: TMenuItem;
    sbPrincipal: TStatusBar;
    miCadastro: TMenuItem;
    miMaterial: TMenuItem;
    miCliente: TMenuItem;
    miEquipamento: TMenuItem;
    miUsuario: TMenuItem;
    miTecnico: TMenuItem;
    miOS: TMenuItem;
    miLogoff: TMenuItem;
    miEncerrarApplicao: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure miMaterialClick(Sender: TObject);
    procedure miClienteClick(Sender: TObject);
    procedure miEquipamentoClick(Sender: TObject);
    procedure miUsuarioClick(Sender: TObject);
    procedure miTecnicoClick(Sender: TObject);
    procedure miOSClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure miLogoffClick(Sender: TObject);
    procedure miEncerrarApplicaoClick(Sender: TObject);
  private
    FRepositorioPapel: TRepositorioPapel;

    procedure AtivaMenus;
    procedure AtualizaUsuarioLogado;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
    UDM
  , DB
  , UFrmCadastroMaterial
  , UFrmCadastroCliente
  , UFrmCadastroEquipamento
  , UFrmCadastroUsuario
  , UFrmCadastroTecnico
  , UFrmCadastroOS
  , UUsuarioLogado
  , UPapel
  , UFrmLogin
  ;

{$R *.dfm}

procedure TFrmPrincipal.miClienteClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroCliente, FrmCadastroCliente);
end;

procedure TFrmPrincipal.miEncerrarApplicaoClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.miEquipamentoClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroEquipamento, FrmCadastroEquipamento);
end;

procedure TFrmPrincipal.miLogoffClick(Sender: TObject);
begin
  TUsuarioLogado.Logoff;
  Application.CreateForm(TFrmLogin, FrmLogin);
  if FrmLogin.ShowModal = mrYes then
    begin
      FreeAndNil(FrmLogin);
      AtivaMenus;
      AtualizaUsuarioLogado;
    end
  else
    Close;
end;

procedure TFrmPrincipal.miMaterialClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroMaterial, FrmCadastroMaterial);
end;

procedure TFrmPrincipal.miOSClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroOS, FrmCadastroOS);
end;

procedure TFrmPrincipal.miTecnicoClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroTecnico, FrmCadastroTecnico);
end;

procedure TFrmPrincipal.miUsuarioClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroUsuario, FrmCadastroUsuario);
end;

procedure TFrmPrincipal.AtivaMenus;
begin
  miUsuario.Visible := TUsuarioLogado.PossuiPapel(tpluAdministrativo);
end;

procedure TFrmPrincipal.AtualizaUsuarioLogado;
var
  loPAPEL: TPAPEL;
begin
  sbPrincipal.Panels[1].Text := 'Usuario Logado: '
    + TUsuarioLogado.USUARIO.NOME;

  loPAPEL := TPAPEL(FRepositorioPapel.Retorna(Integer(TUsuarioLogado.USUARIO.PAPEL)));
  sbPrincipal.Panels[2].Text := 'Perfil: '
    + loPAPEL.DESCRICAO;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  FRepositorioPapel := TRepositorioPapel.Create;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  sbPrincipal.Panels[0].Text :=
    'Banco de Dados: ' + dmEntra21.SQLConnection.Params.Values[CNT_DATA_BASE];

  AtivaMenus;
  AtualizaUsuarioLogado;
end;

end.
