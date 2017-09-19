unit UFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus
  , StdCtrls, ComCtrls
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
    procedure miSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure miMaterialClick(Sender: TObject);
    procedure miClienteClick(Sender: TObject);
    procedure miEquipamentoClick(Sender: TObject);
    procedure miUsuarioClick(Sender: TObject);
    procedure miTecnicoClick(Sender: TObject);
    procedure miOSClick(Sender: TObject);
  private
    { Private declaration }
  public
    { Public declarations }
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
  ;

{$R *.dfm}

procedure TFrmPrincipal.miClienteClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroCliente, FrmCadastroCliente);
end;

procedure TFrmPrincipal.miEquipamentoClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroEquipamento, FrmCadastroEquipamento);
end;

procedure TFrmPrincipal.miMaterialClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroMaterial, FrmCadastroMaterial);
end;

procedure TFrmPrincipal.miOSClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroOS, FrmCadastroOS);
end;

procedure TFrmPrincipal.miSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.miTecnicoClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroTecnico, FrmCadastroTecnico);
end;

procedure TFrmPrincipal.miUsuarioClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroUsuario, FrmCadastroUsuario);
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  sbPrincipal.Panels[0].Text :=
    'Banco de Dados: ' + dmEntra21.SQLConnection.Params.Values[CNT_DATA_BASE];
end;

end.
