object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'INFORME AQUI O T'#205'TULO'
  ClientHeight = 517
  ClientWidth = 990
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlRodaPe: TPanel
    Left = 0
    Top = 465
    Width = 990
    Height = 52
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      990
      52)
    object bntNovo: TBitBtn
      Left = 5
      Top = 16
      Width = 75
      Height = 25
      Caption = 'NOVO'
      TabOrder = 0
    end
    object btnAlterar: TBitBtn
      Left = 86
      Top = 16
      Width = 75
      Height = 25
      Caption = 'ALTERAR'
      TabOrder = 1
    end
    object btnGravar: TBitBtn
      Left = 167
      Top = 16
      Width = 75
      Height = 25
      Caption = 'GRAVAR'
      TabOrder = 2
    end
    object btnApagar: TBitBtn
      Left = 248
      Top = 16
      Width = 75
      Height = 25
      Caption = 'APAGAR'
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 911
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'FECHAR'
      TabOrder = 4
    end
    object DBNavigator1: TDBNavigator
      Left = 329
      Top = 16
      Width = 264
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
  end
  object pnlCentro: TPanel
    Left = 0
    Top = 0
    Width = 990
    Height = 465
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 988
      Height = 463
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Listagem'
        object pnlListagemTop: TPanel
          Left = 0
          Top = 0
          Width = 980
          Height = 60
          Align = alTop
          TabOrder = 0
          object mskPesquisa: TMaskEdit
            Left = 3
            Top = 24
            Width = 358
            Height = 21
            TabOrder = 0
            Text = ''
            TextHint = 'Digite sua Pesquisa'
          end
          object BitBtn2: TBitBtn
            Left = 369
            Top = 20
            Width = 75
            Height = 25
            Caption = 'PESQUISAR'
            TabOrder = 1
          end
        end
        object pnlListagemCentro: TPanel
          Left = 0
          Top = 60
          Width = 980
          Height = 375
          Align = alClient
          TabOrder = 1
          object DBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 978
            Height = 373
            Align = alClient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Manuten'#231#227'o'
        ImageIndex = 1
      end
    end
  end
end
