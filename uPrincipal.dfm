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
    ControlCollection = <>
    RowCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    TabOrder = 2
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
