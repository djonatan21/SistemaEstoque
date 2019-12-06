inherited FormPesquisaUF: TFormPesquisaUF
  Caption = 'Pesquisa de UF'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnPesquisar: TSpeedButton
    Left = 494
    OnClick = btnPesquisarClick
    ExplicitLeft = 494
  end
  inherited dbConsultas: TDBGrid
    Font.Height = -13
    ParentFont = False
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_IBGE'
        Title.Caption = 'C'#243'digo IBGE'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTADO'
        Title.Caption = 'Estado'
        Width = 226
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REGIAO'
        Title.Caption = 'Regi'#227'o'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAIS'
        Title.Caption = 'Pa'#237's'
        Width = 88
        Visible = True
      end>
  end
  inherited cbTipoFiltro: TComboBox
    ItemIndex = 0
    Text = 'C'#243'digo'
    Items.Strings = (
      'C'#243'digo'
      'UF'
      'Estado')
  end
  inherited edtPesquisar: TEdit
    Left = 218
    Top = 44
    ExplicitLeft = 218
    ExplicitTop = 44
  end
  object FDQuery1: TFDQuery [6]
    Left = 312
    Top = 184
  end
  inherited SQL: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT *'
      '  FROM ESTADO'
      'ORDER BY ESTADO')
  end
end