object DTMGrafico: TDTMGrafico
  OldCreateOrder = False
  Height = 588
  Width = 928
  object QryProdutoEstoque: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'SELECT CONVERT(VARCHAR, produtoId) +'#39' - '#39'+nome AS Label, Quantid' +
        'ade AS Value FROM produtos')
    Params = <>
    Left = 49
    Top = 26
    object QryProdutoEstoqueLabel: TWideStringField
      FieldName = 'Label'
      ReadOnly = True
      Size = 93
    end
    object QryProdutoEstoqueValue: TFloatField
      FieldName = 'Value'
    end
  end
  object QryValorVendaPorCliente: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      ''
      
        '   SELECT CONVERT(VARCHAR, vendas.clienteID) +'#39' - '#39'+ clientes.no' +
        'me AS Label, SUM(vendas.totalVenda) AS Value'
      '     FROM Vendas'
      
        #9'     INNER JOIN clientes ON clientes.clienteId = vendas.cliente' +
        'Id'
      
        #9'WHERE vendas.dataVenda BETWEEN CONVERT(DATE, GETDATE()-7) and C' +
        'ONVERT(DATE, GETDATE())'
      '    GROUP BY Vendas.clienteId, clientes.Nome')
    Params = <>
    Left = 279
    Top = 26
  end
  object Qry10ProdutosMaisVendidos: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'SELECT TOP 10 CONVERT(VARCHAR, vi.produtoId) + '#39'-'#39'+p.nome AS Lab' +
        'el, SUM(vi.totalProduto) AS Value'
      '  FROM vendasItens as vi'
      '       INNER JOIN produtos AS P ON p.produtoId = vi.produtoId'
      ' GROUP BY vi.produtoId, p.nome')
    Params = <>
    Left = 271
    Top = 114
  end
  object QryVendasUltimasSemana: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      ''
      
        '   SELECT vendas.dataVenda AS Label, SUM(vendas.totalVenda) AS V' +
        'alue'
      '     FROM Vendas'
      
        #9'WHERE vendas.dataVenda BETWEEN CONVERT(DATE, GETDATE()-7) and C' +
        'ONVERT(DATE, GETDATE())'
      '    GROUP BY Vendas.dataVenda')
    Params = <>
    Left = 29
    Top = 114
  end
end
