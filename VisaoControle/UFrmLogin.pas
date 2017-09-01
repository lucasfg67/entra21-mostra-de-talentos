unit UFrmLogin;

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
  UDM;

procedure TfrmLogin.btnAcessarClick(Sender: TObject);
begin
  with dmEntra21 do
  begin
    //SQLSelect.SQL.Clear;
    //SQLSelect.SQL.Add('select * from usuario');
    //SQLSelect.SQL.Add( 'where nome    = :nome');
    //SQLSelect.SQL.Add(   'and senha = :senha');

    //SQLSelect.Prepared := True;
    //SQLSelect.ParamByName('nome').AsString := edUsuario.Text;
    //SQLSelect.ParamByName('senha').AsString := edSenha.Text;
    //SQLSelect.Open;

    if SQLSelect.Eof then
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
