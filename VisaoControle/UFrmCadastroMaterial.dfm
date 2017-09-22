inherited FrmCadastroMaterial: TFrmCadastroMaterial
  Caption = 'CADASTRO DE MATERIAL'
  ClientHeight = 233
  ClientWidth = 590
  ExplicitWidth = 606
  ExplicitHeight = 272
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 590
    Color = clMedGray
    ParentBackground = False
    ExplicitWidth = 590
    inherited lbCabecalho: TLabel
      Width = 211
      Caption = 'CADASTRO DE MATERIAL'
      ExplicitWidth = 211
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 590
    Color = clTeal
    ParentBackground = False
    ParentColor = False
    ExplicitWidth = 590
    inherited lbCodigo: TLabel
      Width = 37
      Height = 14
      Font.Color = clWhite
      Font.Height = -12
      ExplicitWidth = 37
      ExplicitHeight = 14
    end
    inherited edCodigo: TEdit
      Color = clBtnFace
    end
  end
  inherited pnlBotoes: TPanel
    Top = 192
    Width = 590
    Color = clMedGray
    ParentBackground = False
    ExplicitTop = 192
    ExplicitWidth = 590
    inherited btnLimpar: TBitBtn
      Left = 355
      ExplicitLeft = 355
    end
    inherited btnExcluir: TBitBtn
      Left = 238
      ExplicitLeft = 238
    end
    inherited btnGravar: TBitBtn
      Left = 121
      ExplicitLeft = 121
    end
    inherited btnSair: TBitBtn
      Left = 472
      ExplicitLeft = 472
    end
  end
  object gbInformacoes: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 590
    Height = 106
    Align = alClient
    Caption = 'Informa'#231#245'es'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object edDescricao: TLabeledEdit
      Left = 104
      Top = 26
      Width = 325
      Height = 21
      Color = clBtnFace
      EditLabel.Width = 51
      EditLabel.Height = 14
      EditLabel.Caption = 'Descri'#231#227'o'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -12
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelPosition = lpLeft
      MaxLength = 100
      ParentFont = False
      TabOrder = 0
    end
    object edValorUnitario: TLabeledEdit
      Left = 104
      Top = 58
      Width = 135
      Height = 21
      Color = clBtnFace
      EditLabel.Width = 72
      EditLabel.Height = 14
      EditLabel.Caption = 'Valor Unitario'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -12
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelPosition = lpLeft
      MaxLength = 60
      ParentFont = False
      TabOrder = 1
    end
  end
  inherited pmOpcoes: TPopupMenu
    Left = 520
  end
end
