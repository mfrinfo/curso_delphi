object frmUsuarioVsAcoes: TfrmUsuarioVsAcoes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Usu'#225'rio Vs A'#231#245'es'
  ClientHeight = 454
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCentro: TPanel
    Left = 0
    Top = 0
    Width = 877
    Height = 413
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 265
      Top = 1
      Height = 411
      ExplicitLeft = 304
      ExplicitTop = 112
      ExplicitHeight = 100
    end
    object pnlUsuarios: TPanel
      Left = 1
      Top = 1
      Width = 264
      Height = 411
      Align = alLeft
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 262
        Height = 409
        Align = alClient
        DataSource = dtsUsuario
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'usuarioID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Visible = True
          end>
      end
    end
    object pnlAcoes: TPanel
      Left = 268
      Top = 1
      Width = 608
      Height = 411
      Align = alClient
      TabOrder = 1
      object grdAcoes: TDBGrid
        Left = 1
        Top = 1
        Width = 606
        Height = 409
        Align = alClient
        DataSource = DtsAcoes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = grdAcoesDrawColumnCell
        OnDblClick = grdAcoesDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 553
            Visible = True
          end>
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 413
    Width = 877
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnFechar: TBitBtn
      Left = 766
      Top = 6
      Width = 99
      Height = 25
      Caption = 'FECHAR'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF244E6E
        0A6B9BA6B2F19FA4DAA29CBFAD9BAAB69E9EB69E9EB69F9FB69F9FB69F9FB69F
        9F3C9DBE244E6EFF00FFFF00FF244E6E0A6B9B95AAFC8199FC6F8BFC5D7DFC56
        72F06272D47A79B899879CAB9090AB90903FA0BF244E6EFF00FFFF00FF244E6E
        0A6B9B849CFC728DFC607FFC4E71FC3C62FC2A54FC1745FC0A3AFAA08181A081
        8142A3C1244E6EFF00FFFF00FF244E6E0D6E9D7490FC6282FC5074FC3E64FC2C
        56FC1A48FC0A3BFC0A34F095727295727245A6C2244E6EFF00FFFF00FF244E6E
        10719F6684FC5475FC4267FC3059FC1E4AFC0C3CFC0A36F20A2FE58963638963
        6348A9C4244E6EFF00FFFF00FF244E6E1374A15778FC4569FC335BFC214DFC0F
        3EFC0A37F40A2FE60A2ADA7E54547E54544BACC6244E6EFF00FFFF00FF244E6E
        1575A3486CFC365EFC244FFC1240FC0A37F50A31E80A2ADC0A24D07446467446
        464EAEC8244E6EFF00FFFF00FF244E6E1778A53960FC2751FC1543FC0A38F70A
        32EA0A2BDE0A7ED80AA0E16A3C3C6B3B3B50B1CA244E6EFF00FFFF00FF244E6E
        1A7BA72A54FC1744FC0A39F90A33ED0A2CE00A27D30B91EA4DC9F3693D3E6B3B
        3B53B4CC244E6EFF00FFFF00FF244E6E1D7EA91947FC0A3AFB0A34EF0A2DE30A
        28D50A21C90A1BBD0A15B06B3B3B6B3B3B56B7CE244E6EFF00FFFF00FF244E6E
        2081AB0A3BFC0A35F10A2EE40A29D80A22CB0A1CBF0A16B20A0EA56B3B3B6B3B
        3B59BAD0244E6EFF00FFFF00FF244E6E2384AC0A36F30A2FE60A2ADA0A23CE0A
        1DC00A15B10A0FA40A0A9B6B3B3B6B3B3B5CBDD1244E6EFF00FFFF00FF244E6E
        2687AE0A31E80A2ADC0A24D00A1BBE0A13AD0A0EA30A0A9C0A0A9B6B3B3B6B3B
        3B5EBFD3244E6EFF00FFFF00FF244E6E2989B00A2BDE0A21C90A17B40A11AA0A
        0EA20A0B9C0A0A9B0A0A9B6B3B3B6B3B3B61C1D5244E6EFF00FFFF00FF244E6E
        2B8CB23192B53697B93C9CBC3FA0BF45A6C24AABC64FB0C954B5CD59BAD15FBF
        D363C4D7244E6EFF00FFFF00FF244E6E244E6E244E6E244E6E244E6E244E6E24
        4E6E244E6E244E6E244E6E244E6E244E6E244E6E244E6EFF00FF}
      TabOrder = 0
      OnClick = btnFecharClick
    end
  end
  object QryUsuario: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    AfterScroll = QryUsuarioAfterScroll
    SQL.Strings = (
      'SELECT usuarioID,'
      '       Nome'
      '  FROM usuarios')
    Params = <>
    Left = 29
    Top = 401
    object QryUsuariousuarioID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'usuarioID'
      ReadOnly = True
    end
    object QryUsuarioNome: TWideStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
  end
  object dtsUsuario: TDataSource
    DataSet = QryUsuario
    Left = 77
    Top = 401
  end
  object DtsAcoes: TDataSource
    DataSet = QryAcoes
    Left = 485
    Top = 153
  end
  object QryAcoes: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT ua.usuarioId,'
      '        ua.acaoAcessoId, '
      #9'    a.descricao,'
      #9'   ua.ativo '
      '  FROM usuariosAcaoAcesso AS ua'
      
        #9'   INNER JOIN acaoAcesso AS a ON a.acaoAcessoId = ua.acaoAcesso' +
        'Id'
      ' WHERE ua.usuarioId=:usuarioId')
    Params = <
      item
        DataType = ftInteger
        Name = 'usuarioId'
        ParamType = ptUnknown
        Value = 1
      end>
    Left = 421
    Top = 153
    ParamData = <
      item
        DataType = ftInteger
        Name = 'usuarioId'
        ParamType = ptUnknown
        Value = 1
      end>
    object QryAcoesusuarioId: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'usuarioId'
    end
    object QryAcoesacaoAcessoId: TIntegerField
      DisplayLabel = 'C'#243'd. A'#231#227'o'
      FieldName = 'acaoAcessoId'
    end
    object QryAcoesdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 100
    end
    object QryAcoesativo: TBooleanField
      DisplayLabel = 'Ativo?'
      FieldName = 'ativo'
    end
  end
end
