inherited FrmCadastroUsuario: TFrmCadastroUsuario
  Caption = 'CADASTRO DE USU'#193'RIO'
  ClientHeight = 341
  ClientWidth = 636
  ExplicitWidth = 652
  ExplicitHeight = 380
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 636
    Color = clMedGray
    ParentBackground = False
    ExplicitWidth = 636
    inherited lbCabecalho: TLabel
      Width = 201
      Caption = 'CADASTRO DE USU'#193'RIO'
      Font.Color = clBlack
      ExplicitWidth = 201
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 636
    Color = clActiveCaption
    ParentBackground = False
    ParentColor = False
    ExplicitWidth = 636
    inherited edCodigo: TEdit
      Color = clBtnFace
    end
  end
  inherited pnlBotoes: TPanel
    Top = 300
    Width = 636
    Color = clMedGray
    ParentBackground = False
    ExplicitTop = 300
    ExplicitWidth = 636
    inherited btnLimpar: TBitBtn
      Left = 401
      ExplicitLeft = 401
    end
    inherited btnExcluir: TBitBtn
      Left = 284
      ExplicitLeft = 284
    end
    inherited btnGravar: TBitBtn
      Left = 167
      ExplicitLeft = 167
    end
    inherited btnSair: TBitBtn
      Left = 518
      ExplicitLeft = 518
    end
  end
  object gbInformacoes: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 636
    Height = 214
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
    object lbPapel: TLabel
      Left = 17
      Top = 136
      Width = 81
      Height = 13
      Caption = 'Papel no Sistema'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edNome: TLabeledEdit
      Left = 104
      Top = 28
      Width = 385
      Height = 21
      Color = clBtnFace
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
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
    object edSenhaAtual: TLabeledEdit
      Left = 104
      Top = 82
      Width = 129
      Height = 21
      Color = clBtnFace
      EditLabel.Width = 58
      EditLabel.Height = 13
      EditLabel.Caption = 'Senha Atual'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
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
      PasswordChar = '*'
      TabOrder = 2
    end
    object edLogin: TLabeledEdit
      Left = 104
      Top = 55
      Width = 129
      Height = 21
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'Login'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object edSenha: TLabeledEdit
      Left = 104
      Top = 109
      Width = 129
      Height = 21
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = 'Senha'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 3
    end
    object edConfirmacaoSenha: TLabeledEdit
      Left = 368
      Top = 109
      Width = 121
      Height = 21
      EditLabel.Width = 93
      EditLabel.Height = 13
      EditLabel.Caption = 'Confirma'#231#227'o Senha'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 4
    end
  end
  object cbPapel: TComboBox [4]
    Left = 104
    Top = 222
    Width = 385
    Height = 21
    TabOrder = 4
  end
  inherited pmOpcoes: TPopupMenu
    Left = 520
  end
end
