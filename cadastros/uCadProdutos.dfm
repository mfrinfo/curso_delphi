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
        ExplicitLeft = 5
        ExplicitTop = 23
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
        object btnIncluirCategoria: TSpeedButton
          Left = 786
          Top = 80
          Width = 23
          Height = 22
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FF0A6B0A0A6B0A0A6B0A0A6B0AFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFB25D130A6B0A42D37331B85A0A6B0AA8
            4E0FA54A0EA4480DA1440DA0420C9F3F0C9D3E0BFF00FFFF00FFFF00FFFF00FF
            B561140A6B0A78F3A440D1710A6B0AFBF0DEFBEFDAFBEDD5FBEBD1FBE9CDFBE7
            C89E400BFF00FFFF00FF0A6B0A0A6B0A0A6B0A0A6B0A78F3A444D5740A6B0A0A
            6B0A0A6B0A0A6B0AFCEDD6FBEBD1FBEACEA1430CFF00FFFF00FF0A6B0A78F3A4
            53E4844FE1804CDD7C48D97845D67541D27231B85A0A6B0AFBEFDBFCEDD6FBEB
            D1A3470DFF00FFFF00FF0A6B0A78F3A478F3A478F3A478F3A44DDE7D78F3A478
            F3A442D3730A6B0AFCF1E0FBEFDBFBEDD7A64B0EFF00FFFF00FF0A6B0A0A6B0A
            0A6B0A0A6B0A78F3A450E2810A6B0A0A6B0A0A6B0A0A6B0AFCF4E4FBF1E1FCEF
            DCA94F0FFF00FFFF00FFFF00FFFF00FFC375190A6B0A78F3A454E5850A6B0AFC
            F9F5FCF7F1FCF7EEFCF5E9FBF3E4FCF2E2AC5110FF00FFFF00FFFF00FFFF00FF
            C579190A6B0A78F3A478F3A40A6B0AFCFAF7FCF9F5FCF7F2FCF7EEFBF6E9FBF3
            E5AD5611FF00FFFF00FFFF00FFFF00FFC77C1A0A6B0A0A6B0A0A6B0A0A6B0AFC
            FBFBFCFAF8FCF9F5FBF8F2FCF7EEFBF6EAB05A12FF00FFFF00FFFF00FFFF00FF
            C97F1CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFAFCFBF8FCF9F6FCF8F2FCF7
            EFB35E13FF00FFFF00FFFF00FFFF00FFCC821CFCFCFCFCFCFCFCFCFCFCFCFCFC
            FCFCFCFCFCFCFCFAFCFBF9FCFAF6FCF8F3B66214FF00FFFF00FFFF00FFFF00FF
            CE851DFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFCFBF9FCFA
            F7B96615FF00FFFF00FFFF00FFFF00FFCF861DFCFCFCFCFCFCFCFCFCFCFCFCFC
            FCFCFCFCFCFCFCFCFCFCFCFCFCFBFCFBF8BC6A16FF00FFFF00FFFF00FFFF00FF
            CF871DCF871DCE861DCC831CCC821CCA801BC87D1BC67A1AC47719C37419C172
            17BF6F17FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = btnIncluirCategoriaClick
        end
        object btnPesquisarCategoria: TSpeedButton
          Left = 809
          Top = 80
          Width = 23
          Height = 22
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9B3B0A9B3B0A9B3B0A993B0DFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B3B0AFA
            EAC2E9B171953B11FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9B3B0AFAE9C0EAB474953B11FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B3B0AF9
            E7BFEBB677953B11FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFC3B6B09B3B0AA54D1E9B3B0A983B0EC3B8B4FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA86441C58355FA
            DEB1F7D6A5B3724AAC6C4CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFB89787A54E20F6D4A8FBE2B7F6D19DDBAB799A461FBDA79BFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC5BEBBA0491DDDA876F9E3C2F9
            DBADF4CB96E9B97FB17047A3542CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFAE7559B86F40F6D6ACFBE9CDF7D5A4F2C68FEBB879CA905A984D28B68E
            7AFF00FFFF00FFFF00FFFF00FFFF00FFBDA79B9F4516EBBC84FAE9D1FBE8CBF6
            D09CEFC187E9B272D49758A7653C9B4419C5BEBBFF00FFFF00FFFF00FFC7C4C3
            A4532BCD8E5BF5D5AAFBF5E9FAE2BEF3CB95EDBC80E7AD6ADF9C55B8743D924D
            2BAE7254FF00FFFF00FFFF00FFB3856FAC5E30EFC187FAEEDEFCF9F5F7D6A9F1
            C58DEBB778E4A862DF994EC179399B582E93411BC0ADA4FF00FFFF00FF9D3E0F
            9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9A3B0B983B
            0E973B0FA65B36FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = btnPesquisarCategoriaClick
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
          Width = 282
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
      Origin = 'p'
      ReadOnly = True
    end
    object QryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'p'
      Size = 60
    end
    object QryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'p'
      Size = 255
    end
    object QryListagemvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'p'
    end
    object QryListagemquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
      Origin = 'p'
    end
    object QryListagemcategoriaId: TIntegerField
      DisplayLabel = 'Cod. Categoria'
      FieldName = 'categoriaId'
      Origin = 'p'
    end
    object QryListagemDescricaoCategoria: TWideStringField
      DisplayLabel = 'Descri'#231#227'o da Categoria'
      FieldName = 'DescricaoCategoria'
      Origin = 'c.descricao '
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
