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
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 72
  end
end
