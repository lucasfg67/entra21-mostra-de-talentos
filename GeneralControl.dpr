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
  URegraCRUDEstado in 'Modelo\Regra\URegraCRUDEstado.pas',
  URepositorioCidade in 'Modelo\Persistencia\URepositorioCidade.pas',
  URepositorioCliente in 'Modelo\Persistencia\URepositorioCliente.pas',
  URepositorioEquipamento in 'Modelo\Persistencia\URepositorioEquipamento.pas',
  URepositorioEstado in 'Modelo\Persistencia\URepositorioEstado.pas',
  URepositorioMaterial in 'Modelo\Persistencia\URepositorioMaterial.pas',
  URepositorioOS in 'Modelo\Persistencia\URepositorioOS.pas',
  URepositorioPais in 'Modelo\Persistencia\URepositorioPais.pas',
  URepositorioTecnico in 'Modelo\Persistencia\URepositorioTecnico.pas',
  URepositorioUsuario in 'Modelo\Persistencia\URepositorioUsuario.pas';

{$R *.res}

var
  frmLogin: TfrmLogin;
  RepositorioCliente: TRepositorioCliente;
  CLIENTE: TCLIENTE;
begin
  {$DEFINE PROD}
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmEntra21, dmEntra21);

  RepositorioCliente := TRepositorioCliente.Create;

  CLIENTE              := TCLIENTE.Create;
  CLIENTE.NOME         := 'Baumgarten';
  CLIENTE.SOLICITANTE  := 'Ricardo';
  CLIENTE.CNPJ_CPF     := '10124812988';
  CLIENTE.TELEFONE     := '991620743';
  CLIENTE.CIDADE.ID    := 1;
  CLIENTE.ENDEREÇO     := 'Rua Max Humpl 2309';
  CLIENTE.TIPO_PESSOA  := '1';

  RepositorioCliente.Insere(CLIENTE);

  CLIENTE.NOME :=  'Blufitex';
  RepositorioCLIENTE.Atualiza(CLIENTE);

  RepositorioCLIENTE.Retorna(CLIENTE.ID);
  dmEntra21.IniciaTransacao;
  try
    RepositorioCLIENTE.Exclui(CLIENTE.ID);
  finally
    dmEntra21.FinalizaTransacao;
  end;

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
