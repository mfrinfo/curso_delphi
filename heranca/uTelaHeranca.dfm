object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'INFORME AQUI O T'#205'TULO'
  ClientHeight = 478
  ClientWidth = 864
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlRodaPe: TPanel
    Left = 0
    Top = 426
    Width = 864
    Height = 52
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      864
      52)
    object btnNovo: TBitBtn
      Left = 5
      Top = 16
      Width = 75
      Height = 25
      Caption = 'NOVO'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnAlterar: TBitBtn
      Left = 86
      Top = 16
      Width = 75
      Height = 25
      Caption = 'ALTERAR'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnGravar: TBitBtn
      Left = 249
      Top = 16
      Width = 75
      Height = 25
      Caption = 'GRAVAR'
      TabOrder = 3
      OnClick = btnGravarClick
    end
    object btnApagar: TBitBtn
      Left = 330
      Top = 16
      Width = 75
      Height = 25
      Caption = 'APAGAR'
      TabOrder = 4
      OnClick = btnApagarClick
    end
    object btnFechar: TBitBtn
      Left = 785
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'FECHAR'
      TabOrder = 6
      OnClick = btnFecharClick
    end
    object btnNavigator: TDBNavigator
      Left = 411
      Top = 16
      Width = 264
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
    object btnCancelar: TBitBtn
      Left = 167
      Top = 16
      Width = 75
      Height = 25
      Caption = 'CANCELAR'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
  end
  object pnlCentro: TPanel
    Left = 0
    Top = 0
    Width = 864
    Height = 426
    Align = alClient
    TabOrder = 1
    object pgcPrincipal: TPageControl
      Left = 1
      Top = 1
      Width = 862
      Height = 424
      ActivePage = tabListagem
      Align = alClient
      TabOrder = 0
      object tabListagem: TTabSheet
        Caption = 'Listagem'
        object pnlListagemTop: TPanel
          Left = 0
          Top = 0
          Width = 854
          Height = 60
          Align = alTop
          TabOrder = 0
          object lblIndice: TLabel
            Left = 4
            Top = 9
            Width = 39
            Height = 13
            Caption = 'lblIndice'
          end
          object mskPesquisa: TMaskEdit
            Left = 3
            Top = 24
            Width = 358
            Height = 21
            TabOrder = 0
            Text = ''
            TextHint = 'Digite sua Pesquisa'
            OnChange = mskPesquisaChange
          end
          object btnPesquisa: TBitBtn
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
          Width = 854
          Height = 336
          Align = alClient
          TabOrder = 1
          object grdListagem: TDBGrid
            Left = 1
            Top = 1
            Width = 852
            Height = 334
            Align = alClient
            DataSource = DtsListagem
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnTitleClick = grdListagemTitleClick
          end
        end
      end
      object tabManutencao: TTabSheet
        Caption = 'Manuten'#231#227'o'
        ImageIndex = 1
      end
    end
  end
  object QryListagem: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    Params = <>
    Left = 573
    Top = 25
  end
  object DtsListagem: TDataSource
    DataSet = QryListagem
    Left = 637
    Top = 25
  end
end
