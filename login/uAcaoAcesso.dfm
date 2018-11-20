inherited frmCadAcaoAcesso: TfrmCadAcaoAcesso
  Caption = 'Cadastrado de A'#231#245'es de Acesso'
  ClientHeight = 396
  ClientWidth = 765
  ExplicitWidth = 771
  ExplicitHeight = 425
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodaPe: TPanel
    Top = 344
    Width = 765
    ExplicitTop = 344
    ExplicitWidth = 765
    inherited btnFechar: TBitBtn
      Left = 686
      ExplicitLeft = 686
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pnlCentro: TPanel
    Width = 765
    Height = 344
    ExplicitWidth = 765
    ExplicitHeight = 344
    inherited pgcPrincipal: TPageControl
      Width = 763
      Height = 342
      ExplicitWidth = 763
      ExplicitHeight = 342
      inherited tabListagem: TTabSheet
        inherited pnlListagemTopo: TPanel
          Width = 755
          ExplicitWidth = 755
        end
        inherited pnlListagemCentro: TPanel
          Width = 755
          Height = 254
          ExplicitWidth = 755
          ExplicitHeight = 254
          inherited grdListagem: TDBGrid
            Width = 753
            Height = 252
            Columns = <
              item
                Expanded = False
                FieldName = 'acaoAcessoId'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Width = 342
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'chave'
                Width = 296
                Visible = True
              end>
          end
        end
      end
      inherited tabManutencao: TTabSheet
        object edtacaoAcessoId: TLabeledEdit
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
          Width = 581
          Height = 21
          EditLabel.Width = 46
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o'
          MaxLength = 50
          TabOrder = 1
        end
        object edtChave: TLabeledEdit
          Tag = 2
          Left = 12
          Top = 121
          Width = 413
          Height = 21
          EditLabel.Width = 31
          EditLabel.Height = 13
          EditLabel.Caption = 'Chave'
          MaxLength = 40
          TabOrder = 2
        end
      end
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'SELECT acaoAcessoId, descricao, chave  FROM acaoAcesso')
    object QryListagemacaoAcessoId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'acaoAcessoId'
    end
    object QryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 100
    end
    object QryListagemchave: TWideStringField
      DisplayLabel = 'Chave'
      FieldName = 'chave'
      Size = 60
    end
  end
end
