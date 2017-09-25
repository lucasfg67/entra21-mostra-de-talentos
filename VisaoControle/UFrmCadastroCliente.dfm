inherited FrmCadastroCliente: TFrmCadastroCliente
  Caption = 'CADASTRO DE CLIENTE'
  ClientHeight = 417
  ClientWidth = 585
  Ctl3D = False
  ExplicitWidth = 601
  ExplicitHeight = 456
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 585
    Color = clMedGray
    ParentBackground = False
    ExplicitWidth = 585
    inherited lbCabecalho: TLabel
      Width = 194
      Caption = 'CADASTRO DE CLIENTE'
      ExplicitWidth = 194
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 585
    Color = clTeal
    ParentBackground = False
    ParentColor = False
    ExplicitWidth = 585
    inherited lbCodigo: TLabel
      Width = 37
      Height = 14
      Font.Color = clWhite
      Font.Height = -12
      ExplicitWidth = 37
      ExplicitHeight = 14
    end
    inherited edCodigo: TEdit
      Height = 20
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Height = -12
      ExplicitHeight = 20
    end
  end
  inherited pnlBotoes: TPanel
    Top = 376
    Width = 585
    Color = clMedGray
    ParentBackground = False
    ExplicitTop = 376
    ExplicitWidth = 585
    inherited btnLimpar: TBitBtn
      Left = 350
      ExplicitLeft = 350
    end
    inherited btnExcluir: TBitBtn
      Left = 233
      ExplicitLeft = 233
    end
    inherited btnGravar: TBitBtn
      Left = 119
      ExplicitLeft = 119
    end
    inherited btnSair: TBitBtn
      Left = 467
      ExplicitLeft = 467
    end
  end
  object gbInformacoes: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 585
    Height = 290
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
    object lbTelefone: TLabel
      Left = 52
      Top = 90
      Width = 49
      Height = 14
      Caption = 'Telefone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbCpfCnpj: TLabel
      Left = 75
      Top = 244
      Width = 20
      Height = 14
      Caption = 'CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edSolicitante: TLabeledEdit
      Left = 104
      Top = 58
      Width = 325
      Height = 20
      Color = clBtnFace
      EditLabel.Width = 56
      EditLabel.Height = 14
      EditLabel.Caption = 'Solicitante'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -12
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelPosition = lpLeft
      MaxLength = 60
      ParentFont = False
      TabOrder = 1
    end
    object edNome: TLabeledEdit
      Left = 104
      Top = 27
      Width = 325
      Height = 20
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
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelPosition = lpLeft
      MaxLength = 100
      ParentFont = False
      TabOrder = 0
    end
    object edCidade: TLabeledEdit
      Left = 104
      Top = 120
      Width = 143
      Height = 20
      Color = clBtnFace
      EditLabel.Width = 36
      EditLabel.Height = 14
      EditLabel.Caption = 'Cidade'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -12
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelPosition = lpLeft
      MaxLength = 100
      ParentFont = False
      TabOrder = 3
      OnExit = edCidadeExit
      OnKeyDown = edCidadeKeyDown
    end
    object stNomeCidade: TStaticText
      Left = 282
      Top = 120
      Width = 147
      Height = 21
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'stNomeCidade'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      Transparent = False
      OnClick = btnLocalizarCidadeClick
    end
    object btnLocalizarCidade: TButton
      Left = 249
      Top = 120
      Width = 29
      Height = 21
      Cursor = crHandPoint
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = btnLocalizarCidadeClick
    end
    object rgTipoPessoa: TRadioGroup
      Left = 104
      Top = 177
      Width = 325
      Height = 54
      Caption = ' Tipo Pessoa '
      Columns = 2
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Pessoa F'#237'sica'
        'Pessoa Jur'#237'dica')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      OnClick = rgTipoPessoaClick
    end
    object edTelefone: TMaskEdit
      Left = 104
      Top = 89
      Width = 131
      Height = 20
      Color = clBtnFace
      EditMask = '!(99)99999-9999;0;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 14
      ParentFont = False
      TabOrder = 2
    end
    object edEndereco: TLabeledEdit
      Left = 104
      Top = 151
      Width = 325
      Height = 20
      Color = clBtnFace
      EditLabel.Width = 52
      EditLabel.Height = 14
      EditLabel.Caption = 'Endere'#231'o'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -12
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelPosition = lpLeft
      MaxLength = 60
      ParentFont = False
      TabOrder = 6
    end
    object edCpfCnpj: TMaskEdit
      Left = 104
      Top = 242
      Width = 139
      Height = 20
      Color = clBtnFace
      EditMask = '000\.000\.000\-00;0;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 14
      ParentFont = False
      TabOrder = 8
    end
  end
  inherited pmOpcoes: TPopupMenu
    Left = 528
    Top = 24
  end
end
