inherited frmConCategoria: TfrmConCategoria
  Caption = 'Consulta de Categorias'
  ClientHeight = 413
  OnCreate = FormCreate
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Height = 324
    inherited grdPesquisa: TDBGrid
      Height = 322
      Columns = <
        item
          Expanded = False
          FieldName = 'categoriaId'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Width = 769
          Visible = True
        end>
    end
  end
  inherited Panel3: TPanel
    Top = 372
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
    end
    object QryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 30
    end
  end
end
