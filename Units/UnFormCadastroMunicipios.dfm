inherited FormCadastroMunicipios: TFormCadastroMunicipios
  Caption = 'Cadastro de Municipios'
  ExplicitTop = -16
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcFormCadastro: TPageControl
    ActivePage = tsCadastro
    inherited tsConsultas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 616
      ExplicitHeight = 496
    end
    inherited tsCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 616
      ExplicitHeight = 496
      inherited pgcCadastro: TPageControl
        inherited tsCadastroPrincipal: TTabSheet
          ExplicitLeft = 6
          ExplicitTop = 26
          ExplicitWidth = 608
          ExplicitHeight = 419
          object Label1: TLabel
            Left = 74
            Top = 28
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
            Left = 58
            Top = 66
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
          object Label3: TLabel
            Left = 87
            Top = 179
            Width = 31
            Height = 16
            Caption = 'IBGE:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 67
            Top = 217
            Width = 51
            Height = 16
            Caption = 'DDD Tel:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 60
            Top = 103
            Width = 58
            Height = 16
            Caption = 'Cod. Pa'#237's:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 74
            Top = 247
            Width = 44
            Height = 16
            Caption = 'Regi'#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 98
            Top = 142
            Width = 20
            Height = 16
            Caption = 'UF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtCodigo: TEdit
            Left = 124
            Top = 25
            Width = 121
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 0
          end
          object edtNome: TEdit
            Left = 124
            Top = 63
            Width = 397
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object edtIbge: TEdit
            Left = 124
            Top = 176
            Width = 121
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 2
          end
          object edtDDD: TEdit
            Left = 124
            Top = 214
            Width = 73
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 3
          end
          object cbRegiao: TComboBox
            Left = 124
            Top = 244
            Width = 145
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Items.Strings = (
              'SUL'
              'NORTE'
              'NORDESTE'
              'SUDESTE'
              'CENTRO OESTE')
          end
          object Edit1: TEdit
            Left = 124
            Top = 100
            Width = 121
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 5
          end
          object Edit2: TEdit
            Left = 124
            Top = 139
            Width = 121
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 6
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
end
