inherited FormCadastroProduto: TFormCadastroProduto
  Caption = 'Cadastro de Produtos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlOpcoes: TPanel
    ExplicitHeight = 523
    inherited btnSair: TSpeedButton
      Top = 464
      ExplicitTop = 464
    end
  end
  inherited pgcFormCadastro: TPageControl
    ActivePage = tsCadastro
    ExplicitHeight = 523
    inherited tsConsultas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 616
      ExplicitHeight = 495
      inherited pnlConsultas: TPanel
        inherited gprFiltro: TGroupBox
          Width = 165
          ExplicitWidth = 165
          inherited cbxTipoFiltro: TComboBox
            Width = 133
            ExplicitWidth = 133
          end
          inherited cbxModoFiltro: TComboBox
            Width = 133
            ExplicitWidth = 133
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
      inherited dbConsultas: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 149
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO_BARRA'
            Title.Caption = 'C'#243'digo de Barras'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Quantidade'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIDADE'
            Title.Caption = 'Unidade'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_COMPRA'
            Title.Caption = 'Pre'#231'o de Custo'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_VENDA'
            Title.Caption = 'Pre'#231'o de Venda'
            Width = 82
            Visible = True
          end>
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 616
      ExplicitHeight = 495
      inherited pgcCadastro: TPageControl
        ExplicitHeight = 446
        inherited tsCadastroPrincipal: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 24
          ExplicitWidth = 608
          ExplicitHeight = 418
          object Label1: TLabel
            Left = 78
            Top = 3
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
            Top = 33
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
            Top = 63
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
            Top = 92
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
            Top = 121
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
            Top = 150
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
            Top = 181
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
            Top = 211
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
            Top = 242
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
            Top = 273
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
            Top = 92
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
            Top = 304
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
            Top = 333
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
            Top = 121
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
            Top = 2
            Width = 105
            Height = 21
            MaxLength = 18
            TabOrder = 0
            Text = ''
          end
          object edtCodigoBarras: TMaskEdit
            Left = 128
            Top = 32
            Width = 152
            Height = 21
            MaxLength = 18
            TabOrder = 1
            Text = ''
          end
          object edtDescricao: TMaskEdit
            Left = 128
            Top = 62
            Width = 401
            Height = 21
            MaxLength = 255
            TabOrder = 2
            Text = ''
          end
          object edtLocalizacao: TMaskEdit
            Left = 128
            Top = 149
            Width = 401
            Height = 21
            MaxLength = 100
            TabOrder = 3
            Text = ''
          end
          object edtPrecoVenda: TMaskEdit
            Left = 128
            Top = 180
            Width = 121
            Height = 21
            MaxLength = 18
            TabOrder = 4
            Text = ''
          end
          object edtPrecoCusto: TMaskEdit
            Left = 128
            Top = 210
            Width = 121
            Height = 21
            MaxLength = 18
            TabOrder = 5
            Text = ''
          end
          object edtPesoBruto: TMaskEdit
            Left = 408
            Top = 91
            Width = 121
            Height = 21
            MaxLength = 18
            TabOrder = 6
            Text = ''
          end
          object cbCategoria: TComboBox
            Left = 128
            Top = 91
            Width = 145
            Height = 21
            ItemIndex = 0
            TabOrder = 7
            Text = 'Perecivel'
            Items.Strings = (
              'Perecivel'
              'N'#227'o Perecivel')
          end
          object cbMarca: TComboBox
            Left = 128
            Top = 120
            Width = 145
            Height = 21
            TabOrder = 8
          end
          object cbUnidade: TComboBox
            Left = 128
            Top = 272
            Width = 49
            Height = 21
            ItemIndex = 0
            TabOrder = 9
            Text = 'Un'
            Items.Strings = (
              'Un'
              'Kg')
          end
          object cbLimiteEstoque: TComboBox
            Left = 128
            Top = 302
            Width = 121
            Height = 21
            ItemIndex = 0
            TabOrder = 10
            Text = 'At'#233' 100 Un/Kg'
            Items.Strings = (
              'At'#233' 100 Un/Kg'
              'At'#233' 200 Un/Kg')
          end
          object edtPesoLiquido: TMaskEdit
            Left = 408
            Top = 120
            Width = 121
            Height = 21
            MaxLength = 18
            TabOrder = 11
            Text = ''
          end
          object edtQuantEstoque: TMaskEdit
            Left = 128
            Top = 241
            Width = 121
            Height = 21
            MaxLength = 18
            TabOrder = 12
            Text = ''
          end
          object memoObservacoes: TMemo
            Left = 128
            Top = 335
            Width = 401
            Height = 76
            MaxLength = 255
            TabOrder = 13
          end
          object pnlImgProduto: TPanel
            Left = 344
            Top = 176
            Width = 185
            Height = 126
            Align = alCustom
            TabOrder = 14
            object imgProduto: TImage
              Left = 1
              Top = 1
              Width = 183
              Height = 124
              Align = alClient
              Center = True
              Picture.Data = {
                07544269746D6170660F0000424D660F00000000000036000000280000002400
                0000240000000100180000000000300F0000C40E0000C40E0000000000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAEDDB7F
                D38345C74D2BC33425C12E35C43D60CD66AADDADFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF2F6F34EC75520CB2A2FD43834D53E36D64037D64036D63F32D53B29D233
                24C32EA5DCA9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFCAE8CB20C72934D63D3AD6433AD54331D43A2CCD36
                2FCD382BD2343AD5433AD54339D64226D12F5CCB63FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4ECD51ECA293AD7433BD544
                3BD54433D53C7BD981FFFAFFFFFBFFCBE5CC2BD3353BD5443BD5443BD6442ED5
                385ACC60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
                28CA323AD8443CD7463CD7463CD7462ED438BCF1BEFFFFFFFFFFFFFFFFFF25D2
                303CD7463CD7463CD7463CD7462AD4349DDEA1FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF81DA8733D63C3ED7473ED7473ED7473ED7472FD439B7F0
                BAFFFFFFFFFFFFFFFFFF27D2313ED7473ED7473ED7473ED7473DD74626CD30FF
                FDFFFFFFFFFFFFFFD3ECF2CAE8EFCBE8F0CBE8F0CBE8F0CBE8F0CBE8F0CBE8F0
                CBE8F0CBE8F0CBE8F0CBE8F0CBE8F0CCE9F1D5E9FB2FD1343ED8473FD8483FD8
                483FD8483FD84830D53AB7F1BAFFFFFFFFFFFFFFFFFF28D3323FD8483FD8483F
                D8483FD8483FD74832D63CA9E6ADFFFDFC17A9CD02B0DB07B3DD07B3DD07B3DD
                07B3DD07B3DD07B3DD07B3DD07B3DD07B3DD07B3DD07B3DD07B3DD05B2E312B5
                AD43DC3D40D84A38D8422DD2372CD2372CD2371ECF29AFEEB4FFFFFFFFFFFFFF
                FFFF16CD212CD2372CD2372DD23731D63C40D84A3BD84568DB6F59C5E00EC8F6
                1AC9F51AC9F51AC9F51AC9F51AC9F51AC9F51AC9F51AC9F51AC9F51AC9F51AC9
                F51AC9F51AC9F517C8FF2FCE9744DA4139D84384DA8AFFF4FFFBF3FBFBF3FAF9
                F2F9FDFAFDFFFFFFFFFFFFFFFFFFF8F1F8FBF3FAFBF3FAFFF4FFCAE4CC33D73D
                41D94A42D64B29C8EE19C8F31BC8F31BC8F31BC8F31BC8F31BC8F31BC8F31BC8
                F31BC8F31BC8F31BC8F31BC8F31BC8F31BC8F318C7FF35D18645DB4433D63DD6
                F6D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF37D74142D94B42DA4C2ECDF51AC8F41CC8F41CC8F41CC8
                F41CC8F41CC8F41CC8F41CC8F41CC8F41CC8F41CC8F41CC8F41CC8F41CC8F419
                C7FF36D48A46DB4534D73ED7F7D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38D84143DA4D43DA4D2FCE
                F51BC9F31DCAF31DCAF31DCAF31DCAF31DCAF31DCAF31DCAF31DCAF31DCAF31D
                CAF31DCAF31DCAF31DCAF31AC8FE31D2A148DC4441DA4B5EDF66C1F3C5BAF1BE
                BAF1BEB5F0B9E5FAE6FFFFFFFFFFFFFFFFFFB2EFB6BAF1BEBAF1BEBFF2C38DE8
                933BD84644DA4E4CDC5530CEF61CC9F41ECAF51ECAF51ECAF51ECAF51ECAF51E
                CAF51ECAF51ECAF51ECAF51ECAF51ECAF51ECAF51ECAF51CC9FA27CDD14BDD3F
                47DC5042DB4C39D94339D94339D9432BD636B5F0B9FFFFFFFFFFFFFFFFFF23D5
                2E39D94339D94339D9433EDA4847DC5041DA4B7BE68230CFF61CCAF41ECBF41E
                CBF41ECBF41ECBF41ECBF41ECBF41ECBF41ECBF41ECBF41ECBF41ECBF41ECBF4
                1ECBF41ECBF51AC9FF4ADD4948DC5048DC5248DC5248DC5248DC523AD945BAF1
                BEFFFFFFFFFFFFFFFFFF32D83D48DC5248DC5248DC5248DC5248DC5238D943C3
                F3C631CFF71DCAF51FCBF61FCBF61FCBF61FCBF61FCBF61FCBF61FCBF61FCBF6
                1FCBF61FCBF61FCBF61FCBF61FCBF61FCBF61DCAFF33D3A94DDE4549DD5349DD
                5349DD5349DD533CDA46BBF1BEFFFFFFFFFFFFFFFFFF34D93F49DD5349DD5349
                DD5349DD5347DC5141DB4BFFFFFF32D0F71ECBF520CCF520CCF520CCF520CCF5
                20CCF520CCF520CCF520CCF520CCF520CCF520CCF520CCF520CCF520CCF520CB
                F61BC9FF4ADD584CDE4F4BDD544BDD544BDD543DDB48C2F3C5FFFFFFFFFFFFFF
                FFFF36D9404BDD544BDD544BDD544BDD5432D93DD1F6D3FFFFFF32D0F81FCBF7
                21CCF721CCF721CCF721CCF721CCF721CCF721CCF721CCF721CCF721CCF721CC
                F721CCF721CCF721CCF721CCF720CCFA21CCF64FDF484DDE514CDD564CDD5647
                DD5263E26CDAF8DCD9F8DC96EB9C43DC4D4CDD564CDD564CDD5644DD42A1EDA4
                FFFFFFFFFFFF33D1F820CCF622CCF622CCF622CCF622CCF622CCF622CCF622CC
                F622CCF622CCF622CCF622CCF622CCF622CCF622CCF622CCF622CCF620CCFD23
                CDF44DDE5850E04A4DDF564DDF5749DE533EDC483DDC4844DD4E4DDF574DDF57
                4FDF5253E1411ECFAAFFFEFFFFFFFFFFFFFF34D1F821CDF723CDF723CDF723CD
                F723CDF723CDF723CDF723CDF723CDF723CDF723CDF723CDF723CDF723CDF723
                CDF723CDF723CDF723CDF722CDFC1ECBFF3BD7A252E14A52E14A51E05050E052
                50E05350E05151E04E54E14448DD6E28CFE607C6FFF9FDFEFFFFFFFFFFFF35D1
                F722CDF724CDF724CDF724CDF724CDF724CDF724CDF724CDF724CDF724CDF724
                CDF724CDF724CDF724CDF724CDF724CDF724CDF724CDF724CDF723CDF821CCFF
                20CCFF32D3C63FD89845DB7F47DC7A42DA8A38D6AD28CFEA1FCBFF23CDFC0CC8
                F7F9FDFEFFFFFFFFFFFF33D1F823CEF825CFF825CFF825CFF825CFF825CFF825
                CFF825CFF825CFF825CFF825CFF825CFF825CFF825CFF825CFF825CFF825CFF8
                25CFF825CFF825CFF825CFF824CEF923CEFF21CDFF21CDFF21CDFF21CDFF22CD
                FF24CEFC25CFF825CFF80DC9F8F9FDFEFFFFFFFFFFFF4FDAFB21CEF825CFF825
                CFF825CFF825CFF825CFF825CFF825CFF825CFF825CFF825CFF825CFF825CFF8
                25CFF825CFF825CFF825CFF825CFF825CFF825CFF825CFF825CFF825CFF825CF
                F825CFF825CFF825CFF825CFF825CFF825CFF825CFF80DC9F8FAFDFEFFFFFFFF
                FFFF5BBCEE22D6FC27D3FA27D3FA27D3FA27D3FA27D3FA27D3FA27D3FA27D3FA
                27D3FA27D3FA27D2FA27D0F926D0F926D0F926D0F926D0F926D0F926D0F926D0
                F926D0F926D0F926D0F926D0F926D0F926D0F926D0F926D0F926D0F926D0F926
                D0F90FCAF8FAFDFEFFFFFFFFFFFF58AFEA1397E521B5F021B7F121B7F121B7F1
                21B7F121B7F121B7F121B7F121B7F121B6F024C2F529D6FB28D2FA27D0F927D0
                F927D0F927D0F927D0F927D0F927D0F927D0F927D0F927D0F927D0F927D0F927
                D0F927D0F927D0F927D0F927D0F90FCBF9FAFDFEFFFFFFFFFFFF5BB5EE1594E7
                1B95E61B95E61B95E61B95E61B95E61B95E61B95E61B95E61B95E61B95E61B93
                E61C97E725C1F529D6FC28D1FA28D1FA28D1FA28D1FA28D1FA28D1FA28D1FA28
                D1FA28D1FA28D1FA28D1FA28D1FA28D1FA28D1FA28D1FA28D1FA10CBFAFAFEFF
                FFFFFFFFFFFF5EB7F11999EB209CEB209CEB209CEB209CEB209CEB209CEB209C
                EB209CEB209CEB209CEB209CEB209BEB1E94E925BAF42AD5FC29D1FA29D1FA29
                D1FA29D1FA29D1FA29D1FA29D1FA29D1FA29D1FA29D1FA29D1FA29D1FA29D1FA
                29D1FA29D1FA11CCFAFAFEFFFFFFFFFFFFFF5EB9F31D9DEE23A0EF23A0EF23A0
                EF23A0EF23A0EF23A0EF23A0EF23A0EF23A0EF23A0EF23A0EF23A0EF23A0EF22
                99ED29CDFA2AD3FB2AD1FB2AD1FB2AD1FB2AD1FB2AD1FB2AD1FB2AD1FB2AD1FB
                2AD1FB2AD1FB2AD1FB2AD1FB2AD1FB2AD1FB12CCFAFAFEFFFFFFFFFFFFFF6AC0
                F61D9FF226A3F226A3F226A3F226A3F226A3F226A3F226A3F226A3F226A3F226
                A3F226A3F226A3F226A3F226A2F226A4F32BD8FC2BD2FC2BD2FC2BD2FC2BD2FC
                2BD2FC2BD2FC2BD2FC2BD2FC2BD2FC2BD2FC2BD2FC2BD2FC2BD2FC2BD2FC13CD
                FBFAFEFFFFFFFFFFFFFFE7F5FE0B9AF51EA2F620A3F620A3F620A3F620A3F620
                A3F620A3F620A3F620A3F620A3F620A3F620A3F620A3F620A3F620A0F520B5F8
                27D5FC2BD2FC2BD2FC2BD2FC2BD2FC2BD2FC2BD2FC2BD2FC2BD2FC2BD2FC2BD2
                FC2BD2FC2BD2FC2BD2FC14CDFBF8FDFFFFFFFFFFFFFFFFFFFFEBF7FE7ECBFB79
                C8FB7AC9FB7AC9FB7AC9FB7AC9FB7AC9FB7AC9FB7AC9FB7AC9FB7AC9FB7AC9FB
                7AC9FB7AC9FB7AC9FB7FC5FA45D7FD20D1FD2CD4FD2CD4FD2CD4FD2CD4FD2CD4
                FD2CD4FD2CD4FD2CD4FD2CD4FD2CD4FD2CD4FD2CD3FD0FCDFCFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF55DCFD14CE
                FD25D2FD29D3FD2AD3FD2AD3FD2AD3FD2AD3FD2AD3FD2AD3FD2AD3FD29D3FD19
                CFFD64DFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFCDF5FE66E0FE3BD7FE39D7FE3AD7FE3AD7FE3AD7FE3A
                D7FE3AD7FE39D7FE3BD7FE86E6FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = imgProdutoClick
              ExplicitLeft = 48
              ExplicitWidth = 136
            end
          end
        end
      end
    end
  end
  inherited pnlFoter: TPanel
    inherited lblStatus: TLabel
      Height = 15
    end
    inherited pgbAguarde: TProgressBar
      ExplicitHeight = 16
    end
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      ' SELECT PRODUTOS.ID,'
      '               PRODUTOS. CODIGO,      '
      '               PRODUTOS.DESCRICAO,'
      '               PRODUTOS.VALOR_VENDA,'
      '               PRODUTOS.VALOR_COMPRA,'
      '               PRODUTOS.QUANTIDADE,'
      '               PRODUTOS. IMAGEM,'
      '               PRODUTOS.CODIGO_BARRA,'
      '               PRODUTOS.DATACOMPRA,'
      '               PRODUTOS.UNIDADE,'
      '               PRODUTOS.CATEGORIA,'
      '               PRODUTOS.MARCA,'
      '               PRODUTOS.LOCALIZACAO,  '
      '               PRODUTOS.LIMITEESTOQUE,'
      '               PRODUTOS.OBSERVACOES,  '
      '               PRODUTOS.PESOBRUTO,    '
      '               PRODUTOS.PESOLIQUIDO'
      'FROM PRODUTOS ')
    Left = 304
    Top = 24
  end
  inherited dsCadastro: TDataSource
    Left = 504
    Top = 24
  end
  inherited actCadastro: TActionList
    Left = 544
    Top = 32
    inherited actPesquisar: TAction
      OnExecute = actPesquisarExecute
    end
  end
  inherited opdCarregarArquivo: TOpenDialog
    Left = 360
    Top = 25
  end
  inherited SQLConsultas: TFDQuery
    Active = True
    SQL.Strings = (
      'select * from PRODUTOS')
    Left = 408
    Top = 32
  end
  inherited dsConsultas: TDataSource
    Left = 464
    Top = 24
  end
end
