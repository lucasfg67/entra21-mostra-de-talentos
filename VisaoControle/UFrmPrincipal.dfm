object FrmPrincipal: TFrmPrincipal
  Left = 245
  Top = 191
  Caption = 'Bootstrap'
  ClientHeight = 345
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mmPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sbPrincipal: TStatusBar
    Left = 0
    Top = 326
    Width = 769
    Height = 19
    Panels = <
      item
        Width = 400
      end
      item
        Width = 300
      end
      item
        Width = 200
      end>
    ExplicitWidth = 545
  end
  object mmPrincipal: TMainMenu
    Left = 152
    Top = 72
    object miCadastro: TMenuItem
      Caption = 'Cadastro'
      object miMaterial: TMenuItem
        Caption = 'Material'
        OnClick = miMaterialClick
      end
      object miCliente: TMenuItem
        Caption = 'Cliente'
        OnClick = miClienteClick
      end
      object miEquipamento: TMenuItem
        Caption = 'Equipamento'
        OnClick = miEquipamentoClick
      end
      object miUsuario: TMenuItem
        Caption = 'Usu'#225'rio'
        OnClick = miUsuarioClick
      end
      object miTecnico: TMenuItem
        Caption = 'Tecnico'
        OnClick = miTecnicoClick
      end
      object miOS: TMenuItem
        Caption = 'OS'
        object miOSCadastro: TMenuItem
          Caption = 'Cadastro'
          OnClick = miOSCadastroClick
        end
        object miConsulta: TMenuItem
          Caption = 'Consulta'
          OnClick = miConsultaClick
        end
      end
    end
    object miSair: TMenuItem
      Caption = '&Sair'
      object miLogoff: TMenuItem
        Caption = 'Logoff'
        OnClick = miLogoffClick
      end
      object miEncerrarApplicao: TMenuItem
        Caption = 'Encerrar Aplica'#231#227'o'
        OnClick = miEncerrarApplicaoClick
      end
    end
  end
end
