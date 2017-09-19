inherited FrmCadastroOS: TFrmCadastroOS
  Caption = 'CADASTRO DE OS'
  ClientHeight = 487
  ClientWidth = 590
  ExplicitWidth = 606
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 590
    Color = clMedGray
    ParentBackground = False
    ExplicitWidth = 609
    inherited lbCabecalho: TLabel
      Width = 146
      Caption = 'CADASTRO DE OS'
      Font.Color = clBlack
      ExplicitWidth = 146
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 590
    Color = clActiveCaption
    ParentBackground = False
    ParentColor = False
    ExplicitWidth = 609
    inherited edCodigo: TEdit
      Color = clBtnFace
    end
  end
  inherited pnlBotoes: TPanel
    Top = 446
    Width = 590
    Color = clMedGray
    ParentBackground = False
    ExplicitTop = 341
    ExplicitWidth = 609
    inherited btnLimpar: TBitBtn
      Left = 355
      ExplicitLeft = 374
    end
    inherited btnExcluir: TBitBtn
      Left = 238
      ExplicitLeft = 257
    end
    inherited btnGravar: TBitBtn
      Left = 121
      ExplicitLeft = 140
    end
    inherited btnSair: TBitBtn
      Left = 472
      ExplicitLeft = 491
    end
  end
  object pgOrdemServico: TPageControl [3]
    Left = 0
    Top = 86
    Width = 590
    Height = 360
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 609
    object tsGeral: TTabSheet
      Caption = 'Geral'
      ExplicitWidth = 601
      object gbInformacoes: TGroupBox
        Left = 0
        Top = 0
        Width = 582
        Height = 332
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
        TabOrder = 0
        ExplicitLeft = 8
        ExplicitTop = 254
        ExplicitWidth = 609
        ExplicitHeight = 255
        object lbDataEntrada: TLabel
          Left = 52
          Top = 34
          Width = 64
          Height = 13
          Caption = 'Data Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edDescricao_Servico: TLabeledEdit
          Left = 120
          Top = 58
          Width = 325
          Height = 21
          Color = clBtnFace
          EditLabel.Width = 101
          EditLabel.Height = 16
          EditLabel.Caption = 'Descri'#231#227'o Servi'#231'o'
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
        object edCliente: TLabeledEdit
          Left = 120
          Top = 90
          Width = 150
          Height = 21
          Color = clBtnFace
          EditLabel.Width = 39
          EditLabel.Height = 16
          EditLabel.Caption = 'Cliente'
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
          MaxLength = 100
          ParentFont = False
          TabOrder = 1
          OnExit = edClienteExit
        end
        object edEquipamento: TLabeledEdit
          Left = 120
          Top = 122
          Width = 150
          Height = 21
          Color = clBtnFace
          EditLabel.Width = 74
          EditLabel.Height = 16
          EditLabel.Caption = 'Equipamento'
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
          MaxLength = 100
          ParentFont = False
          TabOrder = 2
          OnExit = edEquipamentoExit
        end
        object edDataEntrada: TDateTimePicker
          Left = 120
          Top = 31
          Width = 150
          Height = 21
          Date = 42997.834965393520000000
          Time = 42997.834965393520000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object stNomeCliente: TStaticText
          Left = 308
          Top = 92
          Width = 137
          Height = 19
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'stNomeCliente'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 4
          Transparent = False
        end
        object btnLocalizarCliente: TButton
          Left = 275
          Top = 92
          Width = 30
          Height = 19
          Cursor = crHandPoint
          Caption = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          TabStop = False
          OnClick = btnLocalizarClienteClick
        end
        object stNomeEquipamento: TStaticText
          Left = 308
          Top = 123
          Width = 137
          Height = 19
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'stNomeEquipamento'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 6
          Transparent = False
        end
        object btnLocalizaEquipamento: TButton
          Left = 275
          Top = 123
          Width = 30
          Height = 19
          Cursor = crHandPoint
          Caption = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          TabStop = False
          OnClick = btnLocalizaEquipamentoClick
        end
      end
    end
    object tsTecnicos: TTabSheet
      Caption = 'T'#233'cnicos'
      ImageIndex = 1
      ExplicitWidth = 601
      object pnlTecnicos: TPanel
        Left = 0
        Top = 0
        Width = 582
        Height = 143
        Align = alTop
        Color = clActiveCaption
        ParentBackground = False
        TabOrder = 0
      end
      object lvTecnicos: TListView
        Left = 0
        Top = 143
        Width = 582
        Height = 189
        Align = alClient
        Checkboxes = True
        Columns = <
          item
            Caption = 'C'#243'd Tecnico'
          end
          item
            Caption = 'Nome Tecnico'
          end>
        Ctl3D = False
        GridLines = True
        TabOrder = 1
        ViewStyle = vsReport
        ExplicitTop = 144
        ExplicitHeight = 188
      end
    end
    object tsMateriais: TTabSheet
      Caption = 'Materiais'
      ImageIndex = 2
      ExplicitWidth = 601
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 582
        Height = 135
        Align = alTop
        Color = clActiveCaption
        ParentBackground = False
        TabOrder = 0
      end
      object lvMateriais: TListView
        Left = 0
        Top = 135
        Width = 582
        Height = 197
        Align = alClient
        Checkboxes = True
        Columns = <
          item
            Caption = 'C'#243'd Material'
          end
          item
            Caption = 'Descri'#231#227'o'
          end>
        Ctl3D = False
        GridLines = True
        TabOrder = 1
        ViewStyle = vsReport
        ExplicitTop = 120
        ExplicitHeight = 212
      end
    end
  end
  inherited pmOpcoes: TPopupMenu
    Left = 440
    Top = 32
  end
end
