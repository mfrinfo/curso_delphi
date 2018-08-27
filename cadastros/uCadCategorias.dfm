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
      ExplicitWidth = 771
      ExplicitHeight = 288
      inherited tabListagem: TTabSheet
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
          inherited grdListagem: TDBGrid
            Width = 761
            Height = 198
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            Columns = <
              item
                Expanded = False
                FieldName = 'categoriaId'
                Width = 121
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Width = 530
                Visible = True
              end>
          end
        end
      end
      inherited tabManutencao: TTabSheet
        ExplicitWidth = 763
        ExplicitHeight = 260
      end
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'SELECT categoriaId,'
      '       descricao '
      '  FROM categorias'
      '')
    object QryListagemcategoriaId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'categoriaId'
      ReadOnly = True
    end
    object QryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 30
    end
  end
end
