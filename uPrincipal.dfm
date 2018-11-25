object frmMenuPrincipal: TfrmMenuPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 584
  ClientWidth = 1107
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1107
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 17
      Width = 307
      Height = 19
      Cursor = crHandPoint
      Caption = 'Curso de Delphi com SQL-Server na Pr'#225'tica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = Label1Click
    end
  end
  object StbPrincipal: TStatusBar
    Left = 0
    Top = 565
    Width = 1107
    Height = 19
    Panels = <
      item
        Width = 100
      end>
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 57
    Width = 1107
    Height = 508
    Align = alClient
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = DBChart1
        Row = 0
      end
      item
        Column = 1
        Control = DBChart2
        Row = 0
      end
      item
        Column = 0
        Control = DBChart3
        Row = 1
      end
      item
        Column = 1
        Control = DBChart4
        Row = 1
      end>
    RowCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    TabOrder = 2
    object DBChart1: TDBChart
      Left = 1
      Top = 1
      Width = 552
      Height = 253
      Title.Text.Strings = (
        'Produto em Estoque')
      Align = alClient
      TabOrder = 0
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series1: TBarSeries
        Marks.Font.Color = clWhite
        Marks.Font.Height = -13
        Marks.Frame.Color = clWhite
        Marks.Frame.Width = 2
        Marks.Visible = False
        Marks.BackColor = clNavy
        Marks.Color = clNavy
        DataSource = DTMGrafico.QryProdutoEstoque
        Title = 'Produto em Estoque'
        XLabelsSource = 'Label'
        MultiBar = mbNone
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Bar'
        YValues.Order = loNone
        YValues.ValueSource = 'Value'
      end
    end
    object DBChart2: TDBChart
      Left = 553
      Top = 1
      Width = 553
      Height = 253
      Title.Text.Strings = (
        'Valor de Venda por Cliente na '#218'ltima Semana')
      Legend.TextStyle = ltsXAndText
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      Align = alClient
      TabOrder = 1
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series2: TPieSeries
        Marks.Brush.Gradient.Colors = <
          item
            Color = clRed
          end
          item
            Color = 819443
            Offset = 0.067915690866510540
          end
          item
            Color = clYellow
            Offset = 1.000000000000000000
          end>
        Marks.Brush.Gradient.Direction = gdTopBottom
        Marks.Brush.Gradient.EndColor = clYellow
        Marks.Brush.Gradient.MidColor = 819443
        Marks.Brush.Gradient.StartColor = clRed
        Marks.Brush.Gradient.Visible = True
        Marks.Font.Color = 159
        Marks.Font.Name = 'Tahoma'
        Marks.Font.Style = [fsBold, fsItalic]
        Marks.Frame.Color = 33023
        Marks.RoundSize = 14
        Marks.Style = smsPercent
        Marks.Callout.Length = 20
        DataSource = DTMGrafico.QryValorVendaPorCliente
        Title = 'ValorDeVendaPorCliente'
        ValueFormat = '#,##0.00'
        XLabelsSource = 'Label'
        XValues.Order = loAscending
        YValues.Name = 'Pie'
        YValues.Order = loNone
        YValues.ValueSource = 'Value'
        Frame.InnerBrush.BackColor = clRed
        Frame.InnerBrush.Gradient.EndColor = clGray
        Frame.InnerBrush.Gradient.MidColor = clWhite
        Frame.InnerBrush.Gradient.StartColor = 4210752
        Frame.InnerBrush.Gradient.Visible = True
        Frame.MiddleBrush.BackColor = clYellow
        Frame.MiddleBrush.Gradient.EndColor = 8553090
        Frame.MiddleBrush.Gradient.MidColor = clWhite
        Frame.MiddleBrush.Gradient.StartColor = clGray
        Frame.MiddleBrush.Gradient.Visible = True
        Frame.OuterBrush.BackColor = clGreen
        Frame.OuterBrush.Gradient.EndColor = 4210752
        Frame.OuterBrush.Gradient.MidColor = clWhite
        Frame.OuterBrush.Gradient.StartColor = clSilver
        Frame.OuterBrush.Gradient.Visible = True
        Frame.Width = 4
        OtherSlice.Legend.Visible = False
      end
    end
    object DBChart3: TDBChart
      Left = 1
      Top = 254
      Width = 552
      Height = 253
      Title.Text.Strings = (
        'Vendas da '#218'ltima Semana')
      Align = alClient
      TabOrder = 2
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series3: TFastLineSeries
        DataSource = DTMGrafico.QryVendasUltimasSemana
        Title = 'VendasUltimaSemana'
        XLabelsSource = 'Label'
        LinePen.Color = 10708548
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
        YValues.ValueSource = 'Value'
      end
    end
    object DBChart4: TDBChart
      Left = 553
      Top = 254
      Width = 553
      Height = 253
      Title.Text.Strings = (
        'Os 10 Produtos Mais Vendidos')
      Legend.TextStyle = ltsXAndText
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      Align = alClient
      TabOrder = 3
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object PieSeries1: TPieSeries
        Marks.Brush.Gradient.Colors = <
          item
            Color = clRed
          end
          item
            Color = 819443
            Offset = 0.067915690866510540
          end
          item
            Color = clYellow
            Offset = 1.000000000000000000
          end>
        Marks.Brush.Gradient.Direction = gdTopBottom
        Marks.Brush.Gradient.EndColor = clYellow
        Marks.Brush.Gradient.MidColor = 819443
        Marks.Brush.Gradient.StartColor = clRed
        Marks.Brush.Gradient.Visible = True
        Marks.Font.Color = 159
        Marks.Font.Name = 'Tahoma'
        Marks.Font.Style = [fsBold, fsItalic]
        Marks.Frame.Color = 33023
        Marks.RoundSize = 14
        Marks.Style = smsPercent
        Marks.Callout.Length = 20
        DataSource = DTMGrafico.Qry10ProdutosMaisVendidos
        Title = '10ProdutosMaisVendidos'
        ValueFormat = '#,##0.00'
        XLabelsSource = 'Label'
        XValues.Order = loAscending
        YValues.Name = 'Pie'
        YValues.Order = loNone
        YValues.ValueSource = 'Value'
        Frame.InnerBrush.BackColor = clRed
        Frame.InnerBrush.Gradient.EndColor = clGray
        Frame.InnerBrush.Gradient.MidColor = clWhite
        Frame.InnerBrush.Gradient.StartColor = 4210752
        Frame.InnerBrush.Gradient.Visible = True
        Frame.MiddleBrush.BackColor = clYellow
        Frame.MiddleBrush.Gradient.EndColor = 8553090
        Frame.MiddleBrush.Gradient.MidColor = clWhite
        Frame.MiddleBrush.Gradient.StartColor = clGray
        Frame.MiddleBrush.Gradient.Visible = True
        Frame.OuterBrush.BackColor = clGreen
        Frame.OuterBrush.Gradient.EndColor = 4210752
        Frame.OuterBrush.Gradient.MidColor = clWhite
        Frame.OuterBrush.Gradient.StartColor = clSilver
        Frame.OuterBrush.Gradient.Visible = True
        Frame.Width = 4
        OtherSlice.Legend.Visible = False
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 120
    Top = 24
    object CADASTRO1: TMenuItem
      Caption = '&CADASTRO'
      object Cliente1: TMenuItem
        Caption = '&CLIENTE'
        OnClick = Cliente1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object CATEGORIAS1: TMenuItem
        Caption = 'CATE&GORIA'
        OnClick = CATEGORIAS1Click
      end
      object PRODUTO1: TMenuItem
        Caption = '&PRODUTO'
        OnClick = PRODUTO1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object USURIOS1: TMenuItem
        Caption = 'USU'#193'RIOS'
        OnClick = USURIOS1Click
      end
      object AESDEACESSO1: TMenuItem
        Caption = 'A'#199#213'ES DE ACESSO'
        OnClick = AESDEACESSO1Click
      end
      object PERMISSODEAESPARAUSURIOS1: TMenuItem
        Caption = 'PERMISS'#195'O DE A'#199#213'ES PARA USU'#193'RIO'
        OnClick = PERMISSODEAESPARAUSURIOS1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object ALTERARSENHA1: TMenuItem
        Caption = 'ALTERAR SENHA'
        OnClick = ALTERARSENHA1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object FECHAR1: TMenuItem
        Caption = '&FECHAR'
        OnClick = FECHAR1Click
      end
    end
    object MOVIMENTAO1: TMenuItem
      Caption = '&MOVIMENTA'#199#195'O'
      object VENDA1: TMenuItem
        Caption = '&VENDA'
        OnClick = VENDA1Click
      end
    end
    object RELATRIOS1: TMenuItem
      Caption = '&RELAT'#211'RIO'
      object CATEGORIAS2: TMenuItem
        Caption = 'CATEGORIA'
        OnClick = CATEGORIAS2Click
      end
      object CLIENTE2: TMenuItem
        Caption = '&CLIENTE'
        OnClick = CLIENTE2Click
      end
      object FICHADECLIENTE1: TMenuItem
        Caption = 'FICHA DE CLIENTE'
        OnClick = FICHADECLIENTE1Click
      end
      object PRODUTO2: TMenuItem
        Caption = '&PRODUTO'
        OnClick = PRODUTO2Click
      end
      object PRODUTOSPORCATEGORIAS1: TMenuItem
        Caption = 'PRODUTOS POR CATEGORIAS'
        OnClick = PRODUTOSPORCATEGORIAS1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object VENDAPORDIA1: TMenuItem
        Caption = '&VENDA POR DATA'
        OnClick = VENDAPORDIA1Click
      end
    end
  end
end
