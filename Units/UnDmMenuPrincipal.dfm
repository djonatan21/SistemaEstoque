object DmMenuPrincipal: TDmMenuPrincipal
  OldCreateOrder = False
  Height = 448
  Width = 712
  object SQLVenda: TFDQuery
    IndexFieldNames = 
      'CODIGO_BARRA;CODIGO_PRODUTO;DESCRICAO;ITEM;QUANTIDADE;UNIDADE;VA' +
      'LOR;VALOR_TOTAL'
    Connection = DmConexao.fdConect
    SQL.Strings = (
      'SELECT REGISTRARVENDA.ITEM,'
      '             REGISTRARVENDA.DESCRICAO,'
      '             REGISTRARVENDA.CODIGO_PRODUTO,'
      '             REGISTRARVENDA.CODIGO_BARRA,'
      '             REGISTRARVENDA.QUANTIDADE,'
      '             REGISTRARVENDA.UNIDADE,'
      '             REGISTRARVENDA.VALOR,'
      '             REGISTRARVENDA.VALOR_TOTAL'
      '  FROM REGISTRARVENDA')
    Left = 40
    Top = 80
  end
  object SQLCaixa: TFDQuery
    Active = True
    Connection = DmConexao.fdConect
    SQL.Strings = (
      'select *'
      'from PRODUTOS')
    Left = 40
    Top = 16
  end
  object SQLConfigSistema: TFDQuery
    Active = True
    Connection = DmConexao.fdConect
    SQL.Strings = (
      'SELECT * '
      '  FROM USUARIOS'
      'WHERE USUARIOS.ID =1')
    Left = 40
    Top = 144
  end
  object SQLConfigEmpresa: TFDQuery
    Active = True
    Connection = DmConexao.fdConect
    SQL.Strings = (
      'SELECT * '
      '  FROM EMPRESA'
      'WHERE EMPRESA.ID =1')
    Left = 40
    Top = 216
  end
  object SQLLogin: TFDQuery
    Connection = DmConexao.fdConect
    Left = 40
    Top = 280
  end
end
