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
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 120
    Top = 24
    object CADASTRO1: TMenuItem
      Caption = '&CADASTRO'
      object Cliente1: TMenuItem
        Caption = '&CLIENTE'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object CATEGORIAS1: TMenuItem
        Caption = 'CATE&GORIA'
      end
      object PRODUTO1: TMenuItem
        Caption = '&PRODUTO'
      end
      object N2: TMenuItem
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
      end
    end
    object RELATRIOS1: TMenuItem
      Caption = '&RELAT'#211'RIO'
      object CLIENTE2: TMenuItem
        Caption = '&CLIENTE'
      end
      object PRODUTO2: TMenuItem
        Caption = '&PRODUTO'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object VENDAPORDIA1: TMenuItem
        Caption = '&VENDA POR DATA'
      end
    end
  end
end
