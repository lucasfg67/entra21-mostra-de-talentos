inherited FrmCadastroOS: TFrmCadastroOS
  Caption = 'CADASTRO DE OS'
  ClientHeight = 487
  ClientWidth = 614
  ExplicitWidth = 630
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 614
    Color = clMedGray
    ParentBackground = False
    ExplicitWidth = 590
    inherited lbCabecalho: TLabel
      Width = 146
      Caption = 'CADASTRO DE OS'
      ExplicitWidth = 146
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 614
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
    Top = 446
    Width = 614
    Color = clMedGray
    ParentBackground = False
    ExplicitTop = 446
    ExplicitWidth = 590
    inherited btnLimpar: TBitBtn
      Left = 379
      ExplicitLeft = 355
    end
    inherited btnExcluir: TBitBtn
      Left = 262
      ExplicitLeft = 238
    end
    inherited btnGravar: TBitBtn
      Left = 145
      ExplicitLeft = 121
    end
    inherited btnSair: TBitBtn
      Left = 496
      ExplicitLeft = 472
    end
  end
  object pgOrdemServico: TPageControl [3]
    Left = 0
    Top = 86
    Width = 614
    Height = 360
    ActivePage = tsTecnicos
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 590
    object tsGeral: TTabSheet
      Caption = 'Geral'
      ExplicitWidth = 582
      object gbInformacoes: TGroupBox
        Left = 0
        Top = 0
        Width = 606
        Height = 332
        Align = alClient
        Caption = 'Informa'#231#245'es'
        Color = clTeal
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        ExplicitTop = 2
        ExplicitWidth = 582
        object lbDataEntrada: TLabel
          Left = 25
          Top = 34
          Width = 71
          Height = 14
          Caption = 'Data Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edCliente: TLabeledEdit
          Left = 100
          Top = 90
          Width = 150
          Height = 19
          Color = clBtnFace
          EditLabel.Width = 37
          EditLabel.Height = 14
          EditLabel.Caption = 'Cliente'
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
          OnExit = edClienteExit
        end
        object edEquipamento: TLabeledEdit
          Left = 100
          Top = 122
          Width = 150
          Height = 19
          Color = clBtnFace
          EditLabel.Width = 72
          EditLabel.Height = 14
          EditLabel.Caption = 'Equipamento'
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
          TabOrder = 1
          OnExit = edEquipamentoExit
        end
        object edDataEntrada: TDateTimePicker
          Left = 100
          Top = 31
          Width = 150
          Height = 21
          Date = 42997.834965393520000000
          Time = 42997.834965393520000000
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object stNomeCliente: TStaticText
          Left = 288
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
          TabOrder = 3
          Transparent = False
        end
        object btnLocalizarCliente: TButton
          Left = 255
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
          TabOrder = 4
          TabStop = False
          OnClick = btnLocalizarClienteClick
        end
        object stNomeEquipamento: TStaticText
          Left = 288
          Top = 124
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
          TabOrder = 5
          Transparent = False
        end
        object btnLocalizaEquipamento: TButton
          Left = 255
          Top = 124
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
          TabOrder = 6
          TabStop = False
          OnClick = btnLocalizaEquipamentoClick
        end
      end
    end
    object tsTecnicos: TTabSheet
      Caption = 'T'#233'cnicos'
      ImageIndex = 1
      ExplicitWidth = 582
      object pnlTecnicos: TPanel
        Left = 0
        Top = 0
        Width = 606
        Height = 177
        Align = alTop
        Color = clTeal
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 582
        DesignSize = (
          606
          177)
        object lbData: TLabel
          Left = 67
          Top = 43
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object edDescricao_Servico: TLabeledEdit
          Left = 4
          Top = 124
          Width = 597
          Height = 47
          Anchors = [akLeft, akRight, akBottom]
          AutoSize = False
          Color = clBtnFace
          EditLabel.Width = 94
          EditLabel.Height = 14
          EditLabel.Caption = 'Descri'#231#227'o Servi'#231'o'
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
          MaxLength = 60
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 573
        end
        object edTecnico: TLabeledEdit
          Left = 96
          Top = 16
          Width = 157
          Height = 21
          EditLabel.Width = 36
          EditLabel.Height = 13
          EditLabel.Caption = 'Tecnico'
          LabelPosition = lpLeft
          TabOrder = 1
        end
        object LabeledEdit1: TLabeledEdit
          Left = 444
          Top = 43
          Width = 157
          Height = 21
          Anchors = [akTop, akRight]
          EditLabel.Width = 61
          EditLabel.Height = 13
          EditLabel.Caption = 'LabeledEdit1'
          LabelPosition = lpLeft
          TabOrder = 2
        end
        object LabeledEdit2: TLabeledEdit
          Left = 444
          Top = 16
          Width = 157
          Height = 21
          Anchors = [akTop, akRight]
          EditLabel.Width = 61
          EditLabel.Height = 13
          EditLabel.Caption = 'LabeledEdit2'
          LabelPosition = lpLeft
          TabOrder = 3
        end
        object edData: TDateTimePicker
          Left = 96
          Top = 43
          Width = 157
          Height = 21
          Date = 43003.880544618060000000
          Time = 43003.880544618060000000
          TabOrder = 4
        end
        object LabeledEdit3: TLabeledEdit
          Left = 444
          Top = 70
          Width = 157
          Height = 21
          Anchors = [akTop, akRight]
          EditLabel.Width = 61
          EditLabel.Height = 13
          EditLabel.Caption = 'LabeledEdit1'
          LabelPosition = lpLeft
          TabOrder = 5
        end
        object LabeledEdit4: TLabeledEdit
          Left = 444
          Top = 97
          Width = 157
          Height = 21
          Anchors = [akTop, akRight]
          EditLabel.Width = 61
          EditLabel.Height = 13
          EditLabel.Caption = 'LabeledEdit1'
          LabelPosition = lpLeft
          TabOrder = 6
        end
      end
      object lvTecnicos: TListView
        Left = 0
        Top = 177
        Width = 606
        Height = 155
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
        ExplicitTop = 168
        ExplicitWidth = 582
        ExplicitHeight = 164
      end
    end
    object tsMateriais: TTabSheet
      Caption = 'Materiais'
      ImageIndex = 2
      ExplicitWidth = 582
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 606
        Height = 135
        Align = alTop
        Color = clTeal
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 582
      end
      object lvMateriais: TListView
        Left = 0
        Top = 135
        Width = 606
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
        ExplicitWidth = 582
      end
    end
  end
  inherited pmOpcoes: TPopupMenu
    Left = 440
    Top = 32
  end
end
