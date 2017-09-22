inherited FrmCadastroTecnico: TFrmCadastroTecnico
  Caption = 'CADASTRO DE TECNICO'
  ClientHeight = 253
  ClientWidth = 589
  ExplicitWidth = 605
  ExplicitHeight = 292
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 589
    Color = clMedGray
    ParentBackground = False
    ExplicitWidth = 589
    inherited lbCabecalho: TLabel
      Width = 198
      Caption = 'CADASTRO DE TECNICO'
      ExplicitWidth = 198
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 589
    Color = clTeal
    ParentBackground = False
    ParentColor = False
    ExplicitWidth = 589
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
    Top = 212
    Width = 589
    Color = clMedGray
    ParentBackground = False
    ExplicitTop = 212
    ExplicitWidth = 589
    inherited btnLimpar: TBitBtn
      Left = 354
      ExplicitLeft = 354
    end
    inherited btnExcluir: TBitBtn
      Left = 237
      ExplicitLeft = 237
    end
    inherited btnGravar: TBitBtn
      Left = 120
      ExplicitLeft = 120
    end
    inherited btnSair: TBitBtn
      Left = 471
      ExplicitLeft = 471
    end
  end
  object gbInformacoes: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 589
    Height = 126
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
      TabOrder = 0
    end
    object edValorHora: TLabeledEdit
      Left = 104
      Top = 58
      Width = 145
      Height = 21
      Color = clBtnFace
      EditLabel.Width = 57
      EditLabel.Height = 14
      EditLabel.Caption = 'Valor/Hora'
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
    Left = 512
    Top = 32
  end
end
