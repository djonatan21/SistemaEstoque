inherited FormCadastroCargo: TFormCadastroCargo
  Caption = 'Cadastro de Cargo'
  ClientHeight = 578
  ClientWidth = 773
  ExplicitWidth = 779
  ExplicitHeight = 607
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlOpcoes: TPanel
    Left = 703
    Height = 561
  end
  inherited pgcFormCadastro: TPageControl
    Width = 703
    Height = 561
    inherited tsConsultas: TTabSheet
      inherited pnlConsultas: TPanel
        Width = 695
      end
      inherited dbConsultas: TDBGrid
        Width = 695
        Height = 420
      end
    end
    inherited tsCadastro: TTabSheet
      inherited pgcCadastro: TPageControl
        Width = 695
        Height = 484
      end
      inherited pnlCadastro: TPanel
        Width = 695
      end
    end
  end
  inherited pnlFoter: TPanel
    Top = 561
    Width = 773
    inherited lblStatus: TLabel
      Height = 15
    end
  end
end
