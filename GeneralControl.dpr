program GeneralControl;

uses
  Forms,
  UFrmPrincipal in 'VisaoControle\UFrmPrincipal.pas' {FrmPrincipal},
  UFrmCRUD in 'VisaoControle\UFrmCRUD.pas' {FrmCRUD},
  UUtilitarios in 'Modelo\UUtilitarios.pas',
  UMensagens in 'Modelo\UMensagens.pas',
  UConstantes in 'Modelo\UConstantes.pas',
  UDialogo in 'Modelo\UDialogo.pas',
  UOpcaoPesquisa in 'Modelo\UOpcaoPesquisa.pas',
  UDM in 'Modelo\Persistencia\UDM.pas' {dmProway: TDataModule},
  UEntidade in 'Modelo\Persistencia\UEntidade.pas',
  URepositorio in 'Modelo\Persistencia\URepositorio.pas',
  URepositorioDB in 'Modelo\Persistencia\URepositorioDB.pas',
  URegraCRUD in 'Modelo\Regra\URegraCRUD.pas',
  UFrmLogin in 'VisaoControle\UFrmLogin.pas' {frmLogin},
  Controls,
  SysUtils,
  UCidade in 'Modelo\Persistencia\UCidade.pas',
  UCliente in 'Modelo\Persistencia\UCliente.pas',
  UUsuario in 'Modelo\Persistencia\UUsuario.pas',
  UMaterial in 'Modelo\Persistencia\UMaterial.pas',
  UEquipamento in 'Modelo\Persistencia\UEquipamento.pas',
  UTecnico in 'Modelo\Persistencia\UTecnico.pas',
  UOs in 'Modelo\Persistencia\UOs.pas',
  URegraCRUDCidade in 'Modelo\Regra\URegraCRUDCidade.pas',
  UEstado in 'Modelo\Persistencia\UEstado.pas',
  UPais in 'Modelo\Persistencia\UPais.pas',
  URegraCRUDPais in 'Modelo\Regra\URegraCRUDPais.pas',
  URegraCRUDEstado in 'Modelo\Regra\URegraCRUDEstado.pas';

{$R *.res}

var
  frmLogin: TfrmLogin;
begin
  {$DEFINE PROD}
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmEntra21, dmEntra21);
  {$IFDEF PROD}
  frmLogin := TfrmLogin.Create(nil);
  if frmLogin.ShowModal = mrYes then
    begin
      FreeAndNil(frmLogin);
      Application.CreateForm(TfrmPrincipal, frmPrincipal);
      Application.Run;
    end
  else
    begin
      Application.Run;
      Application.Terminate;
    end;
  {$ELSE}
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
  {$ENDIF}
end.
