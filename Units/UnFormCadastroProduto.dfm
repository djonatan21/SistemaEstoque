inherited FormCadastroProduto: TFormCadastroProduto
  Caption = 'Cadastro de Produtos'
  ClientHeight = 575
  ExplicitHeight = 604
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlOpcoes: TPanel
    Height = 558
    ExplicitLeft = 779
    inherited btnSair: TSpeedButton
      Top = 498
      ExplicitTop = 498
    end
  end
  inherited pgcFormCadastro: TPageControl
    Height = 558
    ExplicitWidth = 779
    inherited tsConsultas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 771
      ExplicitHeight = 496
      inherited pnlConsultas: TPanel
        ExplicitWidth = 771
        inherited gprFiltro: TGroupBox
          Width = 165
          ExplicitWidth = 165
          inherited cbxTipoFiltro: TComboBox
            Width = 133
            ExplicitWidth = 147
          end
          inherited cbxModoFiltro: TComboBox
            Width = 133
            ExplicitWidth = 147
          end
        end
        inherited gpbConsultar: TGroupBox
          Width = 400
          ExplicitWidth = 400
          inherited btnFiltrar: TSpeedButton
            Width = 99
            ExplicitWidth = 99
          end
          inherited edtConsultas: TEdit
            Width = 240
            ExplicitWidth = 240
          end
        end
      end
      inherited pgcConsultas: TPageControl
        Height = 417
        ExplicitWidth = 771
        inherited tsConsultasPrincipal: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 24
          ExplicitWidth = 763
          ExplicitHeight = 355
          inherited dbConsultas: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 602
            Height = 383
          end
        end
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 771
      ExplicitHeight = 496
      inherited pgcCadastro: TPageControl
        Height = 481
        ExplicitWidth = 771
        inherited tsCadastroPrincipal: TTabSheet
          ExplicitLeft = 36
          ExplicitTop = 26
          ExplicitWidth = 763
          ExplicitHeight = 419
          object imgProduto: TImage
            Left = 384
            Top = 218
            Width = 105
            Height = 105
          end
          object Label1: TLabel
            Left = 78
            Top = 33
            Width = 44
            Height = 16
            Caption = 'C'#243'digo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 19
            Top = 63
            Width = 103
            Height = 16
            Caption = 'C'#243'digo de barras:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 62
            Top = 93
            Width = 60
            Height = 16
            Caption = 'Descri'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 56
            Top = 122
            Width = 66
            Height = 16
            Caption = 'Categorias:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 82
            Top = 151
            Width = 40
            Height = 16
            Caption = 'Marca:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 52
            Top = 180
            Width = 70
            Height = 16
            Caption = 'Localiza'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 29
            Top = 211
            Width = 93
            Height = 16
            Caption = 'Pre'#231'o de venda:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 33
            Top = 241
            Width = 89
            Height = 16
            Caption = 'Pre'#231'o de custo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 40
            Top = 272
            Width = 82
            Height = 16
            Caption = 'Estoque atual:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 7
            Top = 303
            Width = 115
            Height = 16
            Caption = 'Unidade de medida:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 336
            Top = 122
            Width = 66
            Height = 16
            Caption = 'Peso bruto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 16
            Top = 334
            Width = 106
            Height = 16
            Caption = 'Limite de estoque:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 44
            Top = 363
            Width = 78
            Height = 16
            Caption = 'Observa'#231#245'es:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 329
            Top = 151
            Width = 73
            Height = 16
            Caption = 'Peso l'#237'quido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtCodigo: TMaskEdit
            Left = 128
            Top = 32
            Width = 105
            Height = 21
            TabOrder = 0
            Text = ''
          end
          object edtCodigoBarras: TMaskEdit
            Left = 128
            Top = 62
            Width = 152
            Height = 21
            TabOrder = 1
            Text = ''
          end
          object edtDescricao: TMaskEdit
            Left = 128
            Top = 92
            Width = 401
            Height = 21
            TabOrder = 2
            Text = ''
          end
          object edtLocalizacao: TMaskEdit
            Left = 128
            Top = 179
            Width = 401
            Height = 21
            TabOrder = 3
            Text = ''
          end
          object edtPrecoVenda: TMaskEdit
            Left = 128
            Top = 210
            Width = 121
            Height = 21
            TabOrder = 4
            Text = ''
          end
          object edtPrecoCusto: TMaskEdit
            Left = 128
            Top = 240
            Width = 121
            Height = 21
            TabOrder = 5
            Text = ''
          end
          object edtPesoBruto: TMaskEdit
            Left = 408
            Top = 121
            Width = 121
            Height = 21
            TabOrder = 6
            Text = ''
          end
          object cbCategoria: TComboBox
            Left = 128
            Top = 121
            Width = 145
            Height = 21
            TabOrder = 7
          end
          object cbMarca: TComboBox
            Left = 128
            Top = 150
            Width = 145
            Height = 21
            TabOrder = 8
          end
          object cbUnidade: TComboBox
            Left = 128
            Top = 302
            Width = 145
            Height = 21
            TabOrder = 9
          end
          object cbLimiteEstoque: TComboBox
            Left = 128
            Top = 332
            Width = 145
            Height = 21
            TabOrder = 10
          end
          object edtPesoLiquido: TMaskEdit
            Left = 408
            Top = 150
            Width = 121
            Height = 21
            TabOrder = 11
            Text = ''
          end
          object edtQuantEstoque: TMaskEdit
            Left = 128
            Top = 271
            Width = 121
            Height = 21
            TabOrder = 12
            Text = ''
          end
          object memoObservacoes: TMemo
            Left = 128
            Top = 365
            Width = 401
            Height = 76
            Lines.Strings = (
              'memoObservacoes')
            TabOrder = 13
          end
        end
      end
      inherited pnlCadastro: TPanel
        ExplicitWidth = 771
      end
    end
  end
  inherited pnlFoter: TPanel
    Top = 558
    ExplicitWidth = 849
    inherited lblStatus: TLabel
      Height = 15
    end
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      ' SELECT CLIENTE.ID,  '
      '              CLIENTE. NOME,     '
      '              CLIENTE.DATANASCIMENTO,'
      '              CLIENTE.CPF,'
      '              CLIENTE.RG,'
      '              CLIENTE.MUNICIPIO,'
      '              CLIENTE.COMPLEMENTO,'
      '              CLIENTE.ENDERECO,'
      '              CLIENTE.TELEFONE,'
      '              CLIENTE.CELULAR,'
      '              CLIENTE.SEXO,'
      '              CLIENTE.CEP,'
      '              CLIENTE.REFERENCIA,'
      '              CLIENTE.CODIGO,'
      '              CLIENTE.EMAIL,'
      '              CLIENTE.IMAGEM,'
      '              CLIENTE.BAIRRO,'
      '              CLIENTE.UF'
      '   FROM CLIENTE ')
    Left = 720
    Top = 32
  end
  inherited dsCadastro: TDataSource
    Left = 680
    Top = 40
  end
  inherited actCadastro: TActionList
    Left = 464
    Top = 184
  end
  inherited opdCarregarArquivo: TOpenDialog
    Left = 216
    Top = 185
  end
  inherited SQLConsultas: TFDQuery
    Left = 312
    Top = 184
  end
  inherited dsConsultas: TDataSource
    Left = 392
    Top = 184
  end
end
