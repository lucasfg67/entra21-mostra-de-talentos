object FrmPrincipal: TFrmPrincipal
  Left = 245
  Top = 191
  Caption = 'Bootstrap'
  ClientHeight = 345
  ClientWidth = 739
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sbPrincipal: TStatusBar
    Left = 0
    Top = 326
    Width = 739
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object mmPrincipal: TMainMenu
    Left = 640
    Top = 8
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
        OnClick = miOSClick
      end
    end
    object miSair: TMenuItem
      Caption = '&Sair'
      OnClick = miSairClick
    end
  end
end
