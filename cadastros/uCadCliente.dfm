inherited frmCadCliente: TfrmCadCliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 387
  ClientWidth = 824
  ExplicitWidth = 830
  ExplicitHeight = 415
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodaPe: TPanel
    Top = 335
    Width = 824
    ExplicitTop = 335
    ExplicitWidth = 824
    inherited btnFechar: TBitBtn
      Left = 745
      ExplicitLeft = 745
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pnlCentro: TPanel
    Width = 824
    Height = 335
    ExplicitWidth = 824
    ExplicitHeight = 335
    inherited pgcPrincipal: TPageControl
      Width = 822
      Height = 333
      ActivePage = tabManutencao
      ExplicitWidth = 822
      ExplicitHeight = 333
      inherited tabListagem: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 814
        ExplicitHeight = 305
        inherited pnlListagemTopo: TPanel
          Width = 814
          ExplicitWidth = 814
        end
        inherited pnlListagemCentro: TPanel
          Width = 814
          Height = 245
          ExplicitWidth = 814
          ExplicitHeight = 245
          inherited grdListagem: TDBGrid
            Width = 812
            Height = 243
            Columns = <
              item
                Expanded = False
                FieldName = 'clienteId'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'endereco'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cidade'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'bairro'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'estado'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cep'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'telefone'
                Visible = True
              end>
          end
        end
      end
      inherited tabManutencao: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 814
        ExplicitHeight = 305
        object Label1: TLabel
          Left = 512
          Top = 63
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object Label2: TLabel
          Left = 512
          Top = 151
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object Label3: TLabel
          Left = 8
          Top = 245
          Width = 81
          Height = 13
          Caption = 'Data Nascimento'
        end
        object edtClienteId: TLabeledEdit
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
          EditLabel.Width = 46
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o'
          MaxLength = 60
          TabOrder = 1
        end
        object edtEndereco: TLabeledEdit
          Left = 8
          Top = 120
          Width = 481
          Height = 21
          EditLabel.Width = 45
          EditLabel.Height = 13
          EditLabel.Caption = 'Endere'#231'o'
          MaxLength = 60
          TabOrder = 3
        end
        object edtCidade: TLabeledEdit
          Left = 8
          Top = 168
          Width = 481
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'Cidade'
          MaxLength = 50
          TabOrder = 5
        end
        object edtBairro: TLabeledEdit
          Left = 512
          Top = 120
          Width = 273
          Height = 21
          EditLabel.Width = 28
          EditLabel.Height = 13
          EditLabel.Caption = 'Bairro'
          MaxLength = 40
          TabOrder = 4
        end
        object edtEmail: TLabeledEdit
          Left = 8
          Top = 218
          Width = 665
          Height = 21
          EditLabel.Width = 24
          EditLabel.Height = 13
          EditLabel.Caption = 'Email'
          MaxLength = 100
          TabOrder = 7
        end
        object edtCEP: TMaskEdit
          Left = 512
          Top = 80
          Width = 193
          Height = 21
          EditMask = '99.999-999;1;_'
          MaxLength = 10
          TabOrder = 2
          Text = '  .   -   '
        end
        object edtTelefone: TMaskEdit
          Left = 512
          Top = 168
          Width = 190
          Height = 21
          EditMask = '(99) 9999-9999;1;_'
          MaxLength = 14
          TabOrder = 6
          Text = '(  )     -    '
        end
        object edtDataNascimento: TDateEdit
          Left = 8
          Top = 264
          Width = 121
          Height = 21
          ClickKey = 114
          NumGlyphs = 2
          TabOrder = 8
        end
      end
    end
  end
  inherited QryListagem: TZQuery
    AutoCalcFields = False
    SQL.Strings = (
      'select clienteId,'
      '       nome,'
      '       endereco,'
      '       cidade,'
      '       bairro,'
      '       estado,'
      '       cep,'
      '       telefone,'
      '       email,'
      '       datanascimento'
      'from clientes')
    Left = 700
    Top = 24
    object QryListagemclienteId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'clienteId'
      ReadOnly = True
    end
    object QryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
    object QryListagemendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 60
    end
    object QryListagemcidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 50
    end
    object QryListagembairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 40
    end
    object QryListagemestado: TWideStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Size = 2
    end
    object QryListagemcep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Size = 10
    end
    object QryListagemtelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Size = 14
    end
    object QryListagememail: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'email'
      Size = 100
    end
    object QryListagemdatanascimento: TDateTimeField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'datanascimento'
    end
  end
  inherited DtsListagem: TDataSource
    Left = 772
    Top = 24
  end
end
