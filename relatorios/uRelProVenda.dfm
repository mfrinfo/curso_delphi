object frmRelProVenda: TfrmRelProVenda
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Venda'
  ClientHeight = 839
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dtsVendas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 55
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 3
        Top = 14
        Width = 77
        Height = 24
        Caption = 'VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 38
        Width = 712
        Height = 7
        DrawKind = dkLine
        Pen.Width = 2
      end
    end
    object Rodape: TRLBand
      Left = 38
      Top = 228
      Width = 718
      Height = 36
      BandType = btFooter
      object RLSystemInfo3: TRLSystemInfo
        Left = 3
        Top = 17
        Width = 183
        Height = 16
        Info = itFullDate
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 614
        Top = 17
        Width = 44
        Height = 16
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 671
        Top = 17
        Width = 11
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 685
        Top = 17
        Width = 8
        Height = 16
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 603
        Top = 17
        Width = 112
        Height = 16
        Alignment = taRightJustify
        Info = itLastPageNumber
        Text = ''
      end
      object RLDraw2: TRLDraw
        Left = 3
        Top = 5
        Width = 712
        Height = 8
        DrawKind = dkLine
        Pen.Width = 2
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 93
      Width = 718
      Height = 87
      DataFields = 'vendaId'
      Degrade.OppositeColor = clSilver
      FooterMeasuring = fmBeforeDetail
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 25
        BandType = btHeader
        Color = clSilver
        ParentColor = False
        Transparent = False
        object RLDBText5: TRLDBText
          Left = 61
          Top = 5
          Width = 55
          Height = 16
          Alignment = taRightJustify
          DataField = 'vendaId'
          DataSource = dtsVendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 3
          Top = 4
          Width = 53
          Height = 16
          Caption = 'Venda: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RegistrosDB: TRLBand
        Left = 0
        Top = 25
        Width = 718
        Height = 21
        object RLDBText2: TRLDBText
          Left = 66
          Top = 3
          Width = 38
          Height = 16
          DataField = 'Nome'
          DataSource = dtsVendas
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 649
          Top = 3
          Width = 66
          Height = 16
          Alignment = taRightJustify
          DataField = 'dataVenda'
          DataSource = dtsVendas
          Text = ''
        end
        object RLLabel5: TRLLabel
          Left = 3
          Top = 3
          Width = 57
          Height = 16
          Caption = 'Cliente: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 606
          Top = 3
          Width = 37
          Height = 16
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 46
        Width = 718
        Height = 43
        DataSource = dtsVendasItens
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 21
          BandType = btColumnHeader
          Color = clInfoBk
          ParentColor = False
          Transparent = False
          object RLLabel4: TRLLabel
            Left = 12
            Top = 3
            Width = 54
            Height = 16
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel10: TRLLabel
            Left = 449
            Top = 3
            Width = 78
            Height = 16
            Alignment = taRightJustify
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel11: TRLLabel
            Left = 533
            Top = 3
            Width = 92
            Height = 16
            Alignment = taRightJustify
            Caption = 'Valor Unit'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel12: TRLLabel
            Left = 625
            Top = 3
            Width = 90
            Height = 16
            Alignment = taRightJustify
            Caption = 'Total Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
        object RLBand1: TRLBand
          Left = 0
          Top = 21
          Width = 718
          Height = 32
          object RLDBText1: TRLDBText
            Left = 9
            Top = 0
            Width = 57
            Height = 16
            Alignment = taRightJustify
            DataField = 'produtoId'
            DataSource = dtsVendasItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDBText4: TRLDBText
            Left = 72
            Top = 0
            Width = 38
            Height = 16
            DataField = 'Nome'
            DataSource = dtsVendasItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel9: TRLLabel
            Left = 65
            Top = -1
            Width = 8
            Height = 16
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLDBText6: TRLDBText
            Left = 460
            Top = 0
            Width = 67
            Height = 16
            Alignment = taRightJustify
            DataField = 'quantidade'
            DataSource = dtsVendasItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDBText7: TRLDBText
            Left = 551
            Top = 0
            Width = 74
            Height = 16
            Alignment = taRightJustify
            DataField = 'valorUnitario'
            DataSource = dtsVendasItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDBText8: TRLDBText
            Left = 641
            Top = 0
            Width = 74
            Height = 16
            Alignment = taRightJustify
            DataField = 'totalProduto'
            DataSource = dtsVendasItens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDraw4: TRLDraw
            Left = 12
            Top = 16
            Width = 703
            Height = 4
            DrawKind = dkLine
            HoldStyle = hsHorizontally
          end
        end
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 180
      Width = 718
      Height = 48
      BandType = btSummary
      object RLDBResult1: TRLDBResult
        Left = 610
        Top = 24
        Width = 105
        Height = 16
        Alignment = taRightJustify
        DataField = 'totalVenda'
        DataSource = dtsVendas
        Info = riSum
        Text = ''
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 504
        Top = 24
        Width = 101
        Height = 16
        Caption = 'Total da Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDraw3: TRLDraw
        Left = 504
        Top = 11
        Width = 211
        Height = 7
        DrawKind = dkLine
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    FileName = 'C:\Users\VIRTUAL\Documents\Teste.pdf'
    DisplayName = 'Documento PDF'
    Left = 88
    Top = 320
  end
  object QryVendas: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    Active = True
    SQL.Strings = (
      #9'SELECT vendas.vendaId,'
      #9'       vendas.clienteId,'
      #9#9'     clientes.nome,'
      '   '#9#9'   vendas.dataVenda,'
      #9'  '#9'   vendas.totalVenda'
      #9'  FROM vendas'
      
        #9'       INNER JOIN clientes on clientes.clienteId = vendas.clien' +
        'teId'
      '   WHERE vendas.vendaId =:vendaId'
      #9' ORDER BY vendas.dataVenda, clienteId'
      ''
      '')
    Params = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = 2
      end>
    Left = 520
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = 2
      end>
    object QryVendasvendaId: TIntegerField
      FieldName = 'vendaId'
      ReadOnly = True
    end
    object QryVendasclienteId: TIntegerField
      FieldName = 'clienteId'
      Required = True
    end
    object QryVendasnome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object QryVendasdataVenda: TDateTimeField
      FieldName = 'dataVenda'
      Required = True
    end
    object QryVendastotalVenda: TFloatField
      FieldName = 'totalVenda'
      Required = True
      DisplayFormat = '#0.00'
    end
  end
  object dtsVendas: TDataSource
    DataSet = QryVendas
    Left = 600
    Top = 432
  end
  object RLXLSXFilter1: TRLXLSXFilter
    DisplayName = 'Planilha Excel'
    Left = 88
    Top = 368
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 88
    Top = 424
  end
  object dtsVendasItens: TDataSource
    DataSet = QryVendaItens
    Left = 616
    Top = 504
  end
  object QryVendaItens: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    Active = True
    SQL.Strings = (
      'SELECT vendasItens.vendaId,'
      '       vendasItens.produtoId,'
      #9'     produtos.Nome,'
      #9'     vendasItens.quantidade,'
      #9'     vendasItens.valorUnitario,'
      #9'     vendasItens.totalProduto'
      '  FROM vendasItens'
      
        '       INNER JOIN produtos on produtos.produtoId = vendasItens.p' +
        'rodutoId'
      ' WHERE vendasItens.vendaId =:vendaId'
      ' ORDER BY vendasItens.produtoId'
      ''
      '')
    Params = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = 2
      end>
    Left = 528
    Top = 504
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = 2
      end>
    object QryVendaItensvendaId: TIntegerField
      FieldName = 'vendaId'
      Required = True
    end
    object QryVendaItensprodutoId: TIntegerField
      FieldName = 'produtoId'
      Required = True
    end
    object QryVendaItensNome: TWideStringField
      FieldName = 'Nome'
      Size = 60
    end
    object QryVendaItensquantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
    end
    object QryVendaItensvalorUnitario: TFloatField
      FieldName = 'valorUnitario'
      Required = True
    end
    object QryVendaItenstotalProduto: TFloatField
      FieldName = 'totalProduto'
      Required = True
    end
  end
end
