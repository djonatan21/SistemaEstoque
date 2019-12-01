inherited FormCadastroUsuario: TFormCadastroUsuario
  Caption = 'Cadastro de Us'#250'ario'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcFormCadastro: TPageControl
    ActivePage = tsCadastro
    inherited tsConsultas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 616
      ExplicitHeight = 496
      inherited pnlConsultas: TPanel
        inherited gpbConsultar: TGroupBox
          inherited btnFiltrar: TSpeedButton
            Width = 73
            ExplicitWidth = 73
          end
        end
      end
      inherited pgcConsultas: TPageControl
        inherited tsConsultasPrincipal: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 24
          ExplicitWidth = 608
          ExplicitHeight = 355
          inherited dbConsultas: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 602
            Height = 349
            Color = clInactiveCaption
            DataSource = dsConsultas
            Font.Style = [fsItalic]
          end
        end
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 616
      ExplicitHeight = 496
      inherited pgcCadastro: TPageControl
        inherited tsCadastroPrincipal: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 24
          ExplicitWidth = 608
          ExplicitHeight = 419
          object Label9: TLabel
            Left = 222
            Top = 9
            Width = 270
            Height = 35
            Caption = 'Cadastro de Usuarios'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -29
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object GroupBox1: TGroupBox
            Left = 19
            Top = 50
            Width = 574
            Height = 239
            Caption = 'Dados Pessoais'
            TabOrder = 0
            object Label1: TLabel
              Left = 86
              Top = 46
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
              Left = 92
              Top = 72
              Width = 38
              Height = 16
              Caption = 'Nome:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 91
              Top = 154
              Width = 39
              Height = 16
              Caption = 'Cargo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 94
              Top = 127
              Width = 36
              Height = 16
              Caption = 'Setor:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 94
              Top = 100
              Width = 36
              Height = 16
              Caption = 'Email:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 25
              Top = 181
              Width = 105
              Height = 16
              Caption = 'Tipo de permis'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object btnAlterarImagem: TSpeedButton
              Left = 432
              Top = 126
              Width = 105
              Height = 22
              Action = actAlterarFoto
            end
            object dbImgFotoPerfil: TDBImage
              Left = 432
              Top = 15
              Width = 105
              Height = 105
              DataField = 'IMAGEMPLANOFUNDO'
              DataSource = dsCadastro
              TabOrder = 0
            end
            object dbcbxSetor: TDBComboBox
              Left = 136
              Top = 126
              Width = 145
              Height = 21
              DataField = 'SETOR'
              DataSource = dsCadastro
              TabOrder = 1
            end
            object dbeCbxCargo: TDBComboBox
              Left = 137
              Top = 153
              Width = 145
              Height = 21
              DataField = 'CARGO'
              DataSource = dsCadastro
              TabOrder = 2
            end
            object dbeCbxTipoPermisao: TDBComboBox
              Left = 136
              Top = 180
              Width = 145
              Height = 21
              DataSource = dsCadastro
              TabOrder = 3
            end
            object dbEdtCodigo: TDBEdit
              Left = 136
              Top = 45
              Width = 90
              Height = 21
              DataField = 'ID'
              DataSource = dsCadastro
              Enabled = False
              TabOrder = 4
            end
            object dbEdtNome: TDBEdit
              Left = 136
              Top = 72
              Width = 282
              Height = 21
              DataField = 'NOME'
              DataSource = dsCadastro
              TabOrder = 5
            end
            object dbEdtEmail: TDBEdit
              Left = 137
              Top = 99
              Width = 281
              Height = 21
              DataField = 'EMAIL'
              DataSource = dsCadastro
              TabOrder = 6
            end
          end
          object gpbLogin: TGroupBox
            Left = 19
            Top = 295
            Width = 574
            Height = 106
            Caption = 'Login e Senha de Acesso ao Sistema'
            TabOrder = 1
            object lblUsuario: TLabel
              Left = 30
              Top = 30
              Width = 48
              Height = 16
              Caption = 'Usuario:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 335
              Top = 30
              Width = 41
              Height = 16
              Caption = 'Senha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 268
              Top = 70
              Width = 106
              Height = 16
              Caption = 'Comfirmar Senha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object dbedtUsuario: TDBEdit
              Left = 84
              Top = 29
              Width = 160
              Height = 21
              DataField = 'USUARIO'
              DataSource = dsCadastro
              TabOrder = 0
            end
            object edtConfirmarSenha: TEdit
              Left = 381
              Top = 69
              Width = 161
              Height = 21
              PasswordChar = '*'
              TabOrder = 1
            end
            object dbEdtSenha: TDBEdit
              Left = 382
              Top = 29
              Width = 160
              Height = 21
              DataField = 'SENHA'
              DataSource = dsCadastro
              PasswordChar = '*'
              TabOrder = 2
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
  end
  inherited SqlCadastro: TFDQuery
    Left = 472
    Top = 32
  end
  inherited dsCadastro: TDataSource
    Left = 352
    Top = 32
  end
  inherited actCadastro: TActionList
    Left = 616
    Top = 96
    object actAlterarFoto: TAction [7]
      Caption = 'Alterar Foto'
      OnExecute = actAlterarFotoExecute
    end
    inherited actPesquisar: TAction
      OnExecute = actFiltrarExecute
    end
  end
  inherited opdCarregarArquivo: TOpenDialog
    Left = 136
    Top = 105
  end
  inherited SQLConsultas: TFDQuery
    Left = 408
    Top = 32
  end
end
