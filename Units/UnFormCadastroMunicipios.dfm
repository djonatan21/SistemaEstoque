inherited FormCadastroMunicipios: TFormCadastroMunicipios
  Caption = 'Cadastro de Municipios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcFormCadastro: TPageControl
    ActivePage = tsCadastro
    inherited tsConsultas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 616
      ExplicitHeight = 496
      inherited pgcConsultas: TPageControl
        inherited tsConsultasPrincipal: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 24
          ExplicitWidth = 608
          ExplicitHeight = 355
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
          ExplicitLeft = 6
          ExplicitTop = 40
          ExplicitWidth = 608
          ExplicitHeight = 419
          inline LookupFrame1: TLookupFrame
            Left = 8
            Top = 8
            Width = 529
            Height = 29
            TabOrder = 0
            ExplicitLeft = 8
            ExplicitTop = 8
            inherited pnlLkp: TPanel
              Left = 159
              ExplicitLeft = 153
              inherited btnAbrirConsulta: TSpeedButton
                ExplicitLeft = 2
                ExplicitHeight = 25
              end
            end
            inherited edtCodigo: TEdit
              AlignWithMargins = True
              Left = 114
              Top = 3
              Height = 23
              MaxLength = 4
              ExplicitTop = 3
              ExplicitHeight = 23
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
end
