inherited frmCadUsuario: TfrmCadUsuario
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 375
  ClientWidth = 764
  ExplicitWidth = 770
  ExplicitHeight = 404
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodaPe: TPanel
    Top = 323
    Width = 764
    ExplicitTop = 323
    ExplicitWidth = 764
    inherited btnFechar: TBitBtn
      Left = 685
      ExplicitLeft = 685
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pnlCentro: TPanel
    Width = 764
    Height = 323
    ExplicitWidth = 764
    ExplicitHeight = 323
    inherited pgcPrincipal: TPageControl
      Width = 762
      Height = 321
      ActivePage = tabManutencao
      ExplicitWidth = 762
      ExplicitHeight = 321
      inherited tabListagem: TTabSheet
        ExplicitWidth = 754
        ExplicitHeight = 293
        inherited pnlListagemTopo: TPanel
          Width = 754
          ExplicitWidth = 754
        end
        inherited pnlListagemCentro: TPanel
          Width = 754
          Height = 233
          ExplicitWidth = 754
          ExplicitHeight = 233
          inherited grdListagem: TDBGrid
            Width = 752
            Height = 231
            Columns = <
              item
                Expanded = False
                FieldName = 'usuarioID'
                Width = 128
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nome'
                Width = 576
                Visible = True
              end>
          end
        end
      end
      inherited tabManutencao: TTabSheet
        ExplicitWidth = 754
        ExplicitHeight = 293
        object edtNome: TLabeledEdit
          Tag = 2
          Left = 12
          Top = 71
          Width = 581
          Height = 21
          EditLabel.Width = 36
          EditLabel.Height = 13
          EditLabel.Caption = 'Usu'#225'rio'
          MaxLength = 50
          TabOrder = 0
        end
        object edtUsuarioId: TLabeledEdit
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
          TabOrder = 1
        end
        object edtSenha: TLabeledEdit
          Tag = 2
          Left = 12
          Top = 121
          Width = 413
          Height = 21
          EditLabel.Width = 30
          EditLabel.Height = 13
          EditLabel.Caption = 'Senha'
          MaxLength = 40
          PasswordChar = '*'
          TabOrder = 2
        end
      end
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'SELECT usuarioID,'
      '       Nome,'
      #9'   Senha'
      '  FROM usuarios')
    object QryListagemusuarioID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'usuarioID'
      ReadOnly = True
    end
    object QryListagemNome: TWideStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object QryListagemSenha: TWideStringField
      FieldName = 'Senha'
      Required = True
      Size = 40
    end
  end
end
