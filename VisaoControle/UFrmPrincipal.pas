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
    procedure miSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure miMaterialClick(Sender: TObject);
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
  ;

{$R *.dfm}

procedure TFrmPrincipal.miMaterialClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCadastroMaterial, FrmCadastroMaterial);
end;

procedure TFrmPrincipal.miSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  sbPrincipal.Panels[0].Text :=
    'Banco de Dados: ' + dmEntra21.SQLConnection.Params.Values[CNT_DATA_BASE];
end;

end.
