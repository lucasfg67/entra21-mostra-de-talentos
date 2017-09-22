inherited FrmCadastroEquipamento: TFrmCadastroEquipamento
  Caption = 'CADASTRO DE EQUIPAMENTO'
  ClientHeight = 292
  ClientWidth = 590
  ExplicitWidth = 606
  ExplicitHeight = 331
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 590
    Color = clMedGray
    ParentBackground = False
    ExplicitWidth = 590
    inherited lbCabecalho: TLabel
      Width = 247
      Caption = 'CADASTRO DE EQUIPAMENTO'
      ExplicitWidth = 247
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
    Top = 251
    Width = 590
    Color = clMedGray
    ParentBackground = False
    ExplicitTop = 251
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
    Height = 165
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
    object edMarca: TLabeledEdit
      Left = 104
      Top = 58
      Width = 153
      Height = 21
      Color = clBtnFace
      EditLabel.Width = 31
      EditLabel.Height = 14
      EditLabel.Caption = 'Marca'
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
      TabOrder = 0
    end
    object edN_Serie: TLabeledEdit
      Left = 104
      Top = 91
      Width = 153
      Height = 21
      Color = clBtnFace
      EditLabel.Width = 92
      EditLabel.Height = 14
      EditLabel.Caption = 'N'#250'mero de S'#233'rie'
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
    object edNome: TLabeledEdit
      Left = 104
      Top = 25
      Width = 325
      Height = 21
      Color = clBtnFace
      EditLabel.Width = 32
      EditLabel.Height = 14
      EditLabel.Caption = 'Nome'
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
      TabOrder = 2
    end
  end
  inherited pmOpcoes: TPopupMenu
    Left = 528
  end
end
