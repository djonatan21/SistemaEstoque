object DmMenuPrncipal: TDmMenuPrncipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object qryConfigSistema: TFDQuery
    Active = True
    Connection = DmConexao.fdConect
    SQL.Strings = (
      'Select * from usuarios where usuarios.id = 1')
    Left = 80
    Top = 40
  end
end
