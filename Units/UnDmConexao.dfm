object DmConexao: TDmConexao
  OldCreateOrder = False
  Height = 150
  Width = 215
  object fdConect: TFDConnection
    Params.Strings = (
      'Database=C:\Progeto Sistema de Estoque\BaseDados\BaseDadosSQL.db'
      'OpenMode=ReadWrite'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 56
    Top = 24
  end
end
