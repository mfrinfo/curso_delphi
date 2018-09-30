inherited frmCadProduto: TfrmCadProduto
  Caption = 'Cadastro de Produtos'
  ClientHeight = 399
  ClientWidth = 862
  ExplicitWidth = 868
  ExplicitHeight = 427
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel [0]
    Left = 408
    Top = 200
    Width = 50
    Height = 50
  end
  inherited pnlRodaPe: TPanel
    Top = 347
    Width = 862
    ExplicitTop = 347
    ExplicitWidth = 862
    inherited btnFechar: TBitBtn
      Left = 783
      ExplicitLeft = 783
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pnlCentro: TPanel
    Width = 862
    Height = 347
    ExplicitWidth = 862
    ExplicitHeight = 347
    inherited pgcPrincipal: TPageControl
      Width = 860
      Height = 345
      ActivePage = tabManutencao
      ExplicitWidth = 860
      ExplicitHeight = 345
      inherited tabListagem: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 852
        ExplicitHeight = 317
        inherited pnlListagemTopo: TPanel
          Width = 852
          ExplicitWidth = 852
        end
        inherited pnlListagemCentro: TPanel
          Width = 852
          Height = 257
          ExplicitWidth = 852
          ExplicitHeight = 257
          inherited grdListagem: TDBGrid
            Width = 850
            Height = 255
            Columns = <
              item
                Expanded = False
                FieldName = 'produtoId'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome'
                Width = 340
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'valor'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'quantidade'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'categoriaId'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DescricaoCategoria'
                Width = 190
                Visible = True
              end>
          end
        end
      end
      inherited tabManutencao: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 852
        ExplicitHeight = 317
        object Label1: TLabel
          Left = 8
          Top = 107
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label2: TLabel
          Left = 8
          Top = 229
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object Label3: TLabel
          Left = 146
          Top = 229
          Width = 56
          Height = 13
          Caption = 'Quantidade'
        end
        object Label4: TLabel
          Left = 504
          Top = 62
          Width = 47
          Height = 13
          Caption = 'Categoria'
        end
        object edtProdutoId: TLabeledEdit
          Tag = 1
          Left = 8
          Top = 40
          Width = 121
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo'
          MaxLength = 10
          NumbersOnly = True
          TabOrder = 0
        end
        object edtNome: TLabeledEdit
          Tag = 2
          Left = 8
          Top = 80
          Width = 481
          Height = 21
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome'
          MaxLength = 60
          TabOrder = 1
        end
        object edtDescricao: TMemo
          Left = 8
          Top = 124
          Width = 825
          Height = 89
          TabOrder = 3
        end
        object edtValor: TCurrencyEdit
          Left = 8
          Top = 245
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object edtQuantidade: TCurrencyEdit
          Left = 146
          Top = 245
          Width = 121
          Height = 21
          DisplayFormat = ',0.00;-,0.00'
          TabOrder = 5
        end
        object lkpCategoria: TDBLookupComboBox
          Left = 504
          Top = 80
          Width = 329
          Height = 21
          KeyField = 'categoriaId'
          ListField = 'descricao'
          ListSource = dtsCategoria
          TabOrder = 2
        end
      end
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'SELECT p.produtoId,'
      #9'   p.nome,'
      #9'   p.descricao,'
      #9'   p.valor,'
      #9'   p.quantidade,'
      #9'   p.categoriaId,'
      #9'   c.descricao As DescricaoCategoria'
      '  FROM produtos as p'
      
        '       LEFT JOIN categorias as c on c.categoriaId = p.categoriaI' +
        'd'
      ''
      '')
    object QryListagemprodutoId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'produtoId'
      ReadOnly = True
    end
    object QryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
    object QryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 255
    end
    object QryListagemvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
    end
    object QryListagemquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
    end
    object QryListagemcategoriaId: TIntegerField
      DisplayLabel = 'Cod. Categoria'
      FieldName = 'categoriaId'
    end
    object QryListagemDescricaoCategoria: TWideStringField
      DisplayLabel = 'Descri'#231#227'o da Categoria'
      FieldName = 'DescricaoCategoria'
      Size = 30
    end
  end
  object QryCategoria: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'Select categoriaId, descricao from categorias')
    Params = <>
    Left = 629
    Top = 89
    object QryCategoriacategoriaId: TIntegerField
      FieldName = 'categoriaId'
      ReadOnly = True
    end
    object QryCategoriadescricao: TWideStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object dtsCategoria: TDataSource
    DataSet = QryCategoria
    Left = 717
    Top = 89
  end
end
