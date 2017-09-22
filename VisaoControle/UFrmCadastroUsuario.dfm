inherited FrmCadastroUsuario: TFrmCadastroUsuario
  Caption = 'CADASTRO DE USU'#193'RIO'
  ClientHeight = 237
  ClientWidth = 591
  ExplicitWidth = 607
  ExplicitHeight = 276
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 591
    Color = clMedGray
    ParentBackground = False
    ExplicitWidth = 591
    inherited lbCabecalho: TLabel
      Width = 201
      Caption = 'CADASTRO DE USU'#193'RIO'
      ExplicitWidth = 201
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 591
    Color = clTeal
    ParentBackground = False
    ParentColor = False
    ExplicitWidth = 591
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
    Top = 196
    Width = 591
    Color = clMedGray
    ParentBackground = False
    ExplicitTop = 196
    ExplicitWidth = 591
    inherited btnLimpar: TBitBtn
      Left = 356
      ExplicitLeft = 356
    end
    inherited btnExcluir: TBitBtn
      Left = 239
      ExplicitLeft = 239
    end
    inherited btnGravar: TBitBtn
      Left = 122
      ExplicitLeft = 122
    end
    inherited btnSair: TBitBtn
      Left = 473
      ExplicitLeft = 473
    end
  end
  object gbInformacoes: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 591
    Height = 110
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
      Top = 28
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
    object edSenha: TLabeledEdit
      Left = 104
      Top = 61
      Width = 129
      Height = 21
      Color = clBtnFace
      EditLabel.Width = 34
      EditLabel.Height = 14
      EditLabel.Caption = 'Senha'
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
      PasswordChar = '*'
      TabOrder = 1
    end
  end
  inherited pmOpcoes: TPopupMenu
    Left = 520
  end
end
