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
    inherited lbCabecalho: TLabel
      Width = 198
      Caption = 'CADASTRO DE TECNICO'
      Font.Color = clBlack
      ExplicitWidth = 198
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 589
    Color = clActiveCaption
    ParentBackground = False
    ParentColor = False
    inherited edCodigo: TEdit
      Color = clBtnFace
    end
  end
  inherited pnlBotoes: TPanel
    Top = 212
    Width = 589
    Color = clMedGray
    ParentBackground = False
    inherited btnLimpar: TBitBtn
      Left = 354
    end
    inherited btnExcluir: TBitBtn
      Left = 237
    end
    inherited btnGravar: TBitBtn
      Left = 120
    end
    inherited btnSair: TBitBtn
      Left = 471
    end
  end
  object gbInformacoes: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 589
    Height = 126
    Align = alClient
    Caption = 'Informa'#231#245'es'
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    ExplicitLeft = -1
    ExplicitWidth = 590
    ExplicitHeight = 123
    object edNome: TLabeledEdit
      Left = 80
      Top = 25
      Width = 325
      Height = 21
      Color = clBtnFace
      EditLabel.Width = 33
      EditLabel.Height = 16
      EditLabel.Caption = 'Nome'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -13
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
      Left = 80
      Top = 58
      Width = 145
      Height = 21
      Color = clBtnFace
      EditLabel.Width = 62
      EditLabel.Height = 16
      EditLabel.Caption = 'Valor/Hora'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -13
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
