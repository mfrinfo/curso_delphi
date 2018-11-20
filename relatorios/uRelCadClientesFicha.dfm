object frmRelCadClientesFicha: TfrmRelCadClientesFicha
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Ficha de Cliente'
  ClientHeight = 839
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dtsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 55
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 3
        Top = 14
        Width = 217
        Height = 24
        Caption = 'Listagem de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 38
        Width = 712
        Height = 7
        DrawKind = dkLine
        Pen.Width = 2
      end
    end
    object RegistrosDB: TRLBand
      Left = 38
      Top = 93
      Width = 718
      Height = 150
      object RLDBText1: TRLDBText
        Left = 62
        Top = 17
        Width = 52
        Height = 16
        DataField = 'clienteId'
        DataSource = dtsClientes
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 206
        Top = 17
        Width = 38
        Height = 16
        DataField = 'Nome'
        DataSource = dtsClientes
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 240
        Top = 83
        Width = 35
        Height = 16
        DataField = 'email'
        DataSource = dtsClientes
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 72
        Top = 83
        Width = 49
        Height = 16
        DataField = 'telefone'
        DataSource = dtsClientes
        Text = ''
      end
      object RLLabel4: TRLLabel
        Left = 3
        Top = 17
        Width = 53
        Height = 16
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 155
        Top = 17
        Width = 45
        Height = 16
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 3
        Top = 39
        Width = 34
        Height = 16
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 43
        Top = 39
        Width = 25
        Height = 16
        DataField = 'cep'
        DataSource = dtsClientes
        Text = ''
      end
      object RLLabel9: TRLLabel
        Left = 155
        Top = 39
        Width = 82
        Height = 16
        Caption = 'Logradouro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 243
        Top = 39
        Width = 57
        Height = 16
        DataField = 'endereco'
        DataSource = dtsClientes
        Text = ''
      end
      object RLLabel10: TRLLabel
        Left = 3
        Top = 61
        Width = 47
        Height = 16
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText7: TRLDBText
        Left = 56
        Top = 61
        Width = 36
        Height = 16
        DataField = 'bairro'
        DataSource = dtsClientes
        Text = ''
      end
      object RLLabel11: TRLLabel
        Left = 190
        Top = 61
        Width = 53
        Height = 16
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText8: TRLDBText
        Left = 243
        Top = 61
        Width = 42
        Height = 16
        DataField = 'cidade'
        DataSource = dtsClientes
        Text = ''
      end
      object RLLabel12: TRLLabel
        Left = 606
        Top = 61
        Width = 25
        Height = 16
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText9: TRLDBText
        Left = 637
        Top = 61
        Width = 43
        Height = 16
        DataField = 'estado'
        DataSource = dtsClientes
        Text = ''
      end
      object RLLabel7: TRLLabel
        Left = 3
        Top = 83
        Width = 64
        Height = 16
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel13: TRLLabel
        Left = 190
        Top = 83
        Width = 44
        Height = 16
        Caption = 'Email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 3
        Top = 103
        Width = 115
        Height = 16
        Caption = 'Data Nascimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText10: TRLDBText
        Left = 123
        Top = 103
        Width = 98
        Height = 16
        DataField = 'dataNascimento'
        DataSource = dtsClientes
        Text = ''
      end
      object RLDraw3: TRLDraw
        Left = 0
        Top = 130
        Width = 712
        Height = 16
        DrawData.Strings = (
          '0 0'
          '1 0')
        DrawKind = dkCustom
        Pen.Style = psDot
      end
      object RLAngleLabel1: TRLAngleLabel
        Left = 699
        Top = 6
        Width = 16
        Height = 122
        Angle = 90.000000000000000000
        Caption = 'FICHA DO CLIENTE'
      end
      object RLImage1: TRLImage
        Left = 0
        Top = 125
        Width = 40
        Height = 24
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
          002D08020000009161FA0D000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400000B
          134944415478DACD9977704D5B14C6EF55A3F7CEE83DFE5022617462B460F43E
          4A941962106194218831C218BD0763F007460D5133BA8812BDF3A2F7DEFBFBDD
          F3797B8E48F022EF5D7B2667CE3D679FBD57F9D65ADFDA71BE79F3E6CB972FA9
          53A74E962CD9A74F9FDEBF7F9F3265CA2FD670381C3C4C9E3CB9D3E974FCA9C3
          29413F7CF870F4E8D12D5BB6444747DFBA750B4D103D6BD6ACA54B97F6F1F1F1
          F6F62E52A448AA54A9DC2D6D7C0A60F2D8D8D85EBD7AEDDAB52B73E6CC4F9F3E
          C5DED22A63C68C2F5FBEFCFCF973A64C992A54A8D0BB77EFD6AD5BA31B2E7AF1
          E2459A346952A448C14CF7FAC7B971E3C6B66DDBBE7EFD1AB1BCBCBCDAB76F9F
          254B96B469D322FAA953A70E1F3E7CF9F2E5478F1E81B4F4E9D3E390F9F3E797
          2A55CAC3C3838F1F3C789023470E377B0059913E303070CC9831800435F4E2DD
          BB77A01F1B83AEA54B972237E862C2C78F1FF7EEDD5BB26449DCC25BF4443177
          2AC0F6C3870F1F387020504199870F1F72C5C0C400A203306E901B6556AE5CD9
          B973E74FD6080F0F6FDCB831DFA33CF3DDA9809F9FDFB265CB803B3F105791FA
          D11AC28906587FF5EA55545454D3A64D811321111919C9576E4F50CE060D1A10
          06888E21C17AB66CD9105D718CA59981EDB9E21F65DB69D3A6050505E19C356B
          D6F8FAFABA173F2E05B06240404048488822D22EB47DA00058223050234F9E3C
          CF9F3F1F366CD8A851A350D5848D7B14E8D8B1E3F2E5CB492F13274EC41BAA5C
          088AC44008F9EC2AE1289E80222A06713F79F26466E216772A804567CE9C3961
          C284C78F1F7B7A7A028FE6CD9BF38260508679FBF6AD82414EE05AB468D19B37
          6FD6AC5973C78E1DE02D99358CA34097D2579C9DEC339926BB300D8BE8279EE4
          8669A662F25031A6C2CAB2DC200FF754218715994EBD033FA1A1A16161614F9E
          3C2951A20435CBDFDF1F74993A056654D7F89E3A40B480B759B36651DA78CBF3
          14D6407A2D4DA0EB86F579C816421AF2E9E6FB0AC82BA336BBF015BE95324C56
          5AB7C395955D34E7DEBD7B7C066B90948B172F06DC6C4F3923B7366CD890949F
          214306AD429D2688A918CCC763E83077EEDC264D9AC4CB324C4EB30F29E3B486
          0B0056B68833986034412BAC0345E09EF27FEEDC39CAEBF9F3E7EFDCB973F0E0
          41ACEC6445CD264B7273ECD8B1AA55AB0AF46C8F26D4E93E7DFA54AF5E9D2797
          2E5D42A5BB77EF3299B76CC6E7B56BD71E3C78709D3A75301802F1849DD05090
          93D028C3E2265A94E24C74D9F1F6D91ABCA2229D3973E6E2C58BD7AF5FE706C1
          D857D866B0F2B871E3EAD5ABE7C4595A9792C40BD6E21B6C0CA8BA77EF7EE2C4
          89D9B367E399E2C58B57AA5409ED4F9F3E3D69D224DCB279F366F22FCC4F8B96
          2B570E1A82B6F9F3E737D2D871227CF353B8B7BB4542B3F2B56BD7E094F0972B
          57AEE06D0189ABB6D06A65CA94E9D6AD5B870E1D80B46B290183D7D40156D16C
          E06BF660D7D5AB57CF98318375596ECE9C39303FD569B6E13949ECD9B367CC04
          75043DD5BA67CF9EE9D2A5C3EF7CCB9A00D78E25453357E20D30ECDBB76FCF9E
          3D600303B3A67CA2F5359F6599C90D69039BD6AD5B3777EEDC0A68570C8878C6
          3B042AB918397025B8A706134FC864320F7E205A508622882D58B770E1C22D5B
          B6ECD2A54BB162C514CA88CB3A5C5973FBF6ED67CF9EDDBF7F7F4C4C0C387158
          5D071AB20548E3A7166717EE4980D89430C36A356AD48080C593461352402AB2
          2557432B948E846FC10F5F01ADA14387464444B03712334793478E1CC973DC72
          E1C2052466C2EEDDBB8910F959B22A77A19B9EA8B522F6B8078DE5CB97A75C92
          184576E2AF038EDF1BF8172F030068D591234724047B4F9932858A41BA983E7D
          3AA20B15F20373D08AF4221D904161206F30C86F2468AC5EB66C59BE624242ED
          D4CF15D0BA5AFAC73A501C0A162CC8FCE0E0E01E3D7A6CD8B081EA8EED119A90
          C02D26759A9A280FC8DEC27ABE7CF900BAE0C743A20BD8080BFF950734F00012
          1C38702057AE5CC0B753A74E7442601A4D00FAA64D9B30BC3A3E844620D9055F
          2100D3D0108A3560C000320CE9443E91D0E2358AA5FF4401155D952D504136AC
          52A50A66667BCA1C0A007A5AA27EFDFAA979D25748CC27CA48D5AA552354A830
          0EAB06A31E6F79C5CA7C6250F73D3D494A0F3028EA981F4608474208C2E0C68D
          1BC2808C2D6E2348E00A1E42252982CCF4B00622F20A9124AB12BF0E4A126A3C
          9246016336EE31270907297948E9A0C061C843870EB56AD58A20319F0095F1E3
          C7E3B4112346AC5FBF1EA7B56BD78E729E3D7B760083A3548B545E7F70209204
          0A083C48C915FC50B031987E162A54887E1521162E5C08176032314A6E21C3F0
          16D2B56AD52A311F5500D2256AF0167A6F8F5A6CC184783369D2784061400010
          BB500C121F3A88998A45728FE82803C06EDFBE0D19D9B66D1BAF800D92E13DB2
          AA0CCF6AF028F815048CAB68B6189E9808ABC964923C69146045D69D3A75EA90
          2143900353A99629570271A40142302BA807DCC15477C317E4077E8AA8223731
          53B972654824A90940AA54CB34F684FEBB0AB013A51A890109D86035E54AF643
          2B8817491DB863D4A8A8A8050B1610DFC43A5F99D26B4E2F459CC482953A7905
          3DE1BE458B16F02BD1643518A637F889026A32949549E7702FB890DA031943D3
          60AFB4753A92D1612BB14B5754BF7E7D68ACDA288538F710587138221B7E7EFF
          FE7D4CE0B0389C69D380165B8B71C88DDCD4AA55AB6BD7AE80905C27D95C69CD
          28A01C17A7DC9A14C60D2684292019A1C943AEE840FD8297635A6117B647BF06
          058239E6CD9BD73490805BA655191694153C74A71078AE1441D2AE68A9C3A218
          6A3285783E51C1A6DEA1469B366D60192ED9A4809DB8CBB4C0407D103147C011
          7650489961C58A15401C0960A034D3F0337C42B52A50A0003F69F98948AD46DE
          C44E32185B987EF27B7B99EE0755F109FAB0383BC6C6C6A20F7D0262305F9C9F
          392CD5AC5933A0E554E130394B6D073C6CE7CE9D64349C1B1212427AC19C0428
          3F070D1A44B223CD41E23109BB728F55909BF94297446733D37A3B2C0AE4B0DA
          42A39EE39F5646E6D301874A9830631A4E9C800C28F69735C02A93B76EDD8A35
          BF9E9A98DE8F792472DA317672587D10841648C0C8E5199237BD3C4B8B9CA118
          614AF89A460C14B11ADE9364C6342666CCA9EB8FD3833292F9EF844E74EC0ED4
          F1CF37414CD9C772C0170F9258202730195F5F5F8775EEA054CD1CFA49346439
          523B2C8DF605DBB0165181588A19B50DEA7D8D107695D4130B457AABFFB0286D
          E85ED4DA9CEBF0C47E36C1BDAB5A2319AF790A710F0A0AA23FE41D6D61FFFEFD
          49387C2F27F2B1323796C021600C84C096A168BC658F84D8A27DC4D147C94DA2
          27FA8CF56B4F1C1A1A4A19C26B34CBD4CB9C3973C28DCD21878C278D8116449F
          3CC01362004B931F7F45FA1F6865FE9D951805400BD244464692B3030303BDBC
          BCB0B4CED3EDF94E83140E6CC2C2C2FCFDFDC9395456709250ABF1AF74908713
          A380B7B73705C59C35C479AD6E55C82605616C9E040404CC9B378FAC7FF2E449
          F471C477CCF62BC3DE6725FA5F552EE2010B209388A09307955875806357498C
          4D07723C6FD4A81105412A7D7FD4F3BF0D2768397EFC380D2881A82C6E6A8A39
          3CD35119B25EBD7A957C4FAF483C44474757AC58D12C943804278102FC81FE45
          8B1601060214C008D63A4F0539C6CBF0B0BE7DFB5214794E2F424130C9C78DFF
          ABFCFAFF014ADAD8B1638907F53E32B98041DD8E8888080F0F5FB264094E2012
          E85F478F1E6D328F7BFFD3EA040F74A5EBD6ADE3879F9F1F75D7D3D3533A50AD
          626262E058D01211771A3F123FA9D65DE2C6A300F6835D9085482C2475F178BD
          33FC967E82CA101C1C4C7B41F674B7CCDF2A4056A16671474E5CBB762D6D384F
          E00B40850A0D3BF0F1F12148A80F26CAFFA8F1374D9EA43969169FCB00000000
          49454E44AE426082}
        Stretch = True
      end
    end
    object Rodape: TRLBand
      Left = 38
      Top = 243
      Width = 718
      Height = 36
      BandType = btFooter
      object RLSystemInfo3: TRLSystemInfo
        Left = 3
        Top = 17
        Width = 60
        Height = 16
        Info = itFullDate
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 614
        Top = 17
        Width = 44
        Height = 16
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 664
        Top = 17
        Width = 18
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 685
        Top = 17
        Width = 8
        Height = 16
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 696
        Top = 17
        Width = 19
        Height = 16
        Alignment = taRightJustify
        Info = itLastPageNumber
        Text = ''
      end
      object RLDraw2: TRLDraw
        Left = 3
        Top = 5
        Width = 712
        Height = 8
        DrawKind = dkLine
        Pen.Width = 2
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    FileName = 'C:\Users\VIRTUAL\Documents\Teste.pdf'
    DisplayName = 'Documento PDF'
    Left = 88
    Top = 320
  end
  object QryClientes: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      '   SELECT clienteId,'
      '          Nome,'
      #9#9'  cep,'
      #9#9'  endereco,'
      #9#9'  bairro,'
      #9#9'  cidade,'
      #9#9'  estado,'
      #9#9'  email,'
      #9#9'  telefone,'
      #9#9'  dataNascimento'
      #9' FROM clientes')
    Params = <>
    Left = 520
    Top = 432
    object QryClientesclienteId: TIntegerField
      FieldName = 'clienteId'
      ReadOnly = True
    end
    object QryClientesNome: TWideStringField
      FieldName = 'Nome'
      Size = 60
    end
    object QryClientesemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object QryClientestelefone: TWideStringField
      FieldName = 'telefone'
      Size = 14
    end
    object QryClientescep: TWideStringField
      FieldName = 'cep'
      Size = 10
    end
    object QryClientesendereco: TWideStringField
      FieldName = 'endereco'
      Size = 60
    end
    object QryClientesbairro: TWideStringField
      FieldName = 'bairro'
      Size = 40
    end
    object QryClientescidade: TWideStringField
      FieldName = 'cidade'
      Size = 50
    end
    object QryClientesestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object QryClientesdataNascimento: TDateTimeField
      FieldName = 'dataNascimento'
    end
  end
  object dtsClientes: TDataSource
    DataSet = QryClientes
    Left = 600
    Top = 432
  end
  object RLXLSXFilter1: TRLXLSXFilter
    DisplayName = 'Planilha Excel'
    Left = 88
    Top = 368
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 88
    Top = 424
  end
end
