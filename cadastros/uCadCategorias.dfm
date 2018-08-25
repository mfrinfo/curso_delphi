inherited frmCadCategoria: TfrmCadCategoria
  Caption = 'Cadastro de Categorias'
  ClientHeight = 342
  ClientWidth = 773
  ExplicitWidth = 779
  ExplicitHeight = 370
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodaPe: TPanel
    Top = 290
    Width = 773
    ExplicitTop = 290
    ExplicitWidth = 773
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pnlCentro: TPanel
    Width = 773
    Height = 290
    ExplicitWidth = 773
    ExplicitHeight = 290
    inherited pgcPrincipal: TPageControl
      Width = 771
      Height = 288
      inherited tabListagem: TTabSheet
        ExplicitWidth = 763
        ExplicitHeight = 260
        inherited pnlListagemTop: TPanel
          Width = 763
        end
        inherited pnlListagemCentro: TPanel
          Width = 763
          Height = 200
          inherited grdListagem: TDBGrid
            Width = 761
            Height = 198
          end
        end
      end
    end
  end
end
