inherited frmCadCategoria: TfrmCadCategoria
  Caption = 'Cadastro de Categorias'
  ClientHeight = 342
  ClientWidth = 773
  ExplicitWidth = 779
  ExplicitHeight = 371
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodaPe: TPanel
    Top = 290
    Width = 773
    ExplicitTop = 290
    ExplicitWidth = 773
    inherited BitBtn1: TBitBtn
      Left = 694
      ExplicitLeft = 694
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pnlCentro: TPanel
    Width = 773
    Height = 290
    ExplicitWidth = 773
    ExplicitHeight = 290
    inherited PageControl1: TPageControl
      Width = 771
      Height = 288
      ExplicitWidth = 771
      ExplicitHeight = 288
      inherited TabSheet1: TTabSheet
        ExplicitWidth = 763
        ExplicitHeight = 260
        inherited pnlListagemTop: TPanel
          Width = 763
          ExplicitWidth = 763
        end
        inherited pnlListagemCentro: TPanel
          Width = 763
          Height = 200
          ExplicitWidth = 763
          ExplicitHeight = 200
          inherited DBGrid1: TDBGrid
            Width = 761
            Height = 198
          end
        end
      end
    end
  end
end
