inherited frmCadCategoria: TfrmCadCategoria
  Caption = 'Cadastro de Categorias'
  ClientHeight = 342
  ClientWidth = 775
  ExplicitWidth = 781
  ExplicitHeight = 370
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodaPe: TPanel
    Top = 290
    Width = 775
    ExplicitTop = 290
    ExplicitWidth = 775
    inherited btnFechar: TBitBtn
      Left = 695
      ExplicitLeft = 695
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pnlCentro: TPanel
    Width = 775
    Height = 290
    ExplicitWidth = 775
    ExplicitHeight = 290
    inherited pgcPrincipal: TPageControl
      Width = 773
      Height = 288
      ExplicitWidth = 773
      ExplicitHeight = 288
      inherited tabListagem: TTabSheet
        ExplicitWidth = 765
        ExplicitHeight = 260
        inherited pnlListagemTopo: TPanel
          Width = 765
          ExplicitWidth = 765
        end
        inherited pnlListagemCentro: TPanel
          Width = 765
          Height = 200
          ExplicitWidth = 765
          ExplicitHeight = 200
          inherited grdListagem: TDBGrid
            Width = 763
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
        ExplicitWidth = 765
        ExplicitHeight = 260
        object edtCategoriaId: TLabeledEdit
          Tag = 1
          Left = 12
          Top = 23
          Width = 121
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo'
          MaxLength = 10
          NumbersOnly = True
          TabOrder = 0
        end
        object edtDescricao: TLabeledEdit
          Tag = 2
          Left = 12
          Top = 71
          Width = 413
          Height = 21
          EditLabel.Width = 46
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o'
          MaxLength = 30
          TabOrder = 1
        end
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
