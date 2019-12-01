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
          ExplicitLeft = 4
          ExplicitTop = 24
          ExplicitWidth = 608
          ExplicitHeight = 419
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
