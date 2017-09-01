unit FormularioLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, Buttons;

type
  TfrmLogin = class(TForm)
    igFundo: TImage;
    edUsuario: TEdit;
    edSenha: TEdit;
    lbUsuario: TLabel;
    lbSenha: TLabel;
    lbNome: TLabel;
    btnAcessar: TButton;
    btnSair: TButton;
    procedure btnAcessarClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses
  DM;

procedure TfrmLogin.btnAcessarClick(Sender: TObject);
begin
  with DMPrincipal do
  begin
    SQLQuery.SQL.Clear;
    SQLQuery.SQL.Add('select * from usuario');
    SQLQuery.SQL.Add( 'where nome    = :nome');
    SQLQuery.SQL.Add(   'and senha = :senha');

    SQLQuery.Prepared := True;
    SQLQuery.ParamByName('nome').AsString := edUsuario.Text;
    SQLQuery.ParamByName('senha').AsString := edSenha.Text;
    SQLQuery.Open;

    if SQLQuery.Eof then
      begin
        ShowMessage('Usuário ou Senha informados são inválidos')
      end
    else
      begin
        ModalResult := mrYes;
        CloseModal;
      end;
  end;
end;

end.
