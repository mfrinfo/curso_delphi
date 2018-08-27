object DtmPrincipal: TDtmPrincipal
  OldCreateOrder = False
  Height = 225
  Width = 432
  object ConexaoDB: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Connected = True
    SQLHourGlass = True
    HostName = 'VIRTUAL-PC\SERVERCURSO'
    Port = 0
    Database = 'vendas'
    User = 'sa'
    Password = 'mudar@123'
    Protocol = 'mssql'
    LibraryLocation = 'C:\cursoDelphi\ntwdblib.dll'
    Left = 24
    Top = 24
  end
end
