object formDesapropiateHouse: TformDesapropiateHouse
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Desapropiar Casa'
  ClientHeight = 558
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object lblTypeUser: TLabel
    Left = 8
    Top = 234
    Width = 110
    Height = 15
    Caption = 'Selecione o Inquilino'
  end
  object Label2: TLabel
    Left = 440
    Top = 200
    Width = 116
    Height = 21
    Caption = 'N'#250'mero da Casa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 440
    Top = 259
    Width = 130
    Height = 21
    Caption = 'Nome do Inquilino'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 97
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 753
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 379
      Height = 45
      Caption = 'Desapropia'#231#227'o de im'#243'vel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Image1: TImage
      Left = 651
      Top = 1
      Width = 105
      Height = 95
      Align = alRight
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D494844520000003A0000
        004008060000004B02648F000000097048597300000B1300000B1301009A9C18
        000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000002
        ED4944415478DAED9BDB71E23014866D2E7E4D4A201D840EA083A582E017AE0F
        4B2A5853C1B20F0C032FCE569074005B01944007CB33D73DD2880C93C5D2B12D
        2121FB9F219E21B2ADCF3E3EFA75645C07349D4E07B0F90E9F8AA347EB76BBFD
        74F9C5643269160A8590FC0F3E1F9EE70D7DDFDF243D810B90016C7F6802C480
        7EB6391E8FF56EB7BB4E0AFA17B68F77004ADBEDF7FB46BFDF5F25013D69868C
        034A75381C5E7BBDDEC87A50A621EC136401948824291F93A4EE1D94EE8B4952
        3680D2FD4549CA16502A5E92B20A94E96A92B21194E8BF24652B283DE66592B2
        19F40CEB03ECC276D0B39A5901DD6405D4DC6754B672500D6A02ECEF2C80120D
        6138784B5A45B8275065CA416D530E6A9B7250DB94832215E966C094578AC5E2
        FBE9747A4675C47557E572B91E55BA64EB433F7580AE00B2CA6B40606106B274
        C44B1E1B70445591239ACD664BEC859309EAB052C582D7067327A0F3834EA7F3
        8BD7663C1E3F974AA565D2BEA60D5D54F118EEC41C606A51C710CD5C5864CC9D
        14CB9AA993113C5B8B56AB554774F46A08C3857A5219B2D240994670575E790D
        22423880FD8682FD0247C2FAADCCE145389FFC12C2989095564E91092ACC9C97
        212C0AD91819FBE6A0446BCFF3AABC653C381F0D435EC88661F8B8DD6E096445
        56C75438A30F8068F020C896773120C44308F1A6CC4E29B1804996DECF52F5F2
        8832AF8B31135F95D61468017562BE2E23C314E802A5461DCC4415D3568629D0
        06EAC4284C0B6CA2D1A0D9085D08DB1A84ED9F38FB006C8DC1DE0DA8D0C34629
        ED04FB96A05CC340444C83C03DBDC1E6C56450E173C90CC1036FB663BA058C6B
        EAB986C258538F2987C0B9DE61F38D9E1831C69A384D13269F6B9DC67862E81F
        494C03EDA0C83B13354662AB7FA9CDC4AD8A6391D3AE1835277DC5318C29C03C
        6798104E6B266E51C0C6DC09B30BD8BC3B41C6C2DD6E378FB32401C76B44C1A6
        CDC0F922936DCA416D53A6404DF8C9966AD1D758954C740D53E092BF6C8C223F
        AB545685D3A4358CE32332ABFA0748BDBF6BC930DB280000000049454E44AE42
        6082}
      ExplicitLeft = 616
      ExplicitTop = -8
      ExplicitHeight = 105
    end
  end
  object rgType: TRadioGroup
    Left = 0
    Top = 103
    Width = 209
    Height = 122
    Caption = 'Procurar Por:'
    ItemIndex = 0
    Items.Strings = (
      'Nome do Inquilino'
      'Celular do Inquilino'
      'N'#250'mero da Casa'
      'CPF do Inquilino')
    TabOrder = 1
    OnClick = rgTypeClick
  end
  object txtFindUser: TEdit
    Left = 8
    Top = 253
    Width = 385
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 2
    OnChange = txtFindUserChange
  end
  object gridFindHouse: TDBGrid
    Left = 8
    Top = 282
    Width = 385
    Height = 265
    DataSource = DM.dsFindHouse
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'num'
        Title.Caption = 'N'#250'mero da Casa'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 131
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'NomeInquilino'
        Title.Caption = 'Nome do Inquilino'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 212
        Visible = True
      end>
  end
  object txtNumCasa: TDBComboBox
    Left = 440
    Top = 222
    Width = 305
    Height = 23
    DataField = 'num'
    DataSource = DM.dsFindHouse
    TabOrder = 4
  end
  object btnDesapropiateHouse: TBitBtn
    Left = 440
    Top = 344
    Width = 145
    Height = 41
    Caption = 'Desapropiar Casa'
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0C5C5
      C5ABABABA1A1A1989898989898A1A1A1AEAEAEC3C3C3E2E2E2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFABFBFBF8D8D8D9090909494
      949696969898989999999999999898989696969494949090908A8A8ABABABAFE
      FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C28D8D8D9393939898989898989494
      949191918F8F8F8E8E8E8E8E8E8F8F8F9191919494949898989898989494948A
      8A8AC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF999999919191989898979797909090919191BABA
      BAD7D7D7E9E9E9F2F2F2F2F2F2E9E9E9D7D7D7BABABA91919190909097979798
      9898919191999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF3F3F3909090969696999999919191989898DCDCDCFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDD9A9A9A91
      9191999999969696909090F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9090909797979898988B8B8BC3C3C3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3
      C3C38B8B8B989898979797909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF9999999696969898988B8B8BE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDEDEDE8B8B8B989898969696999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      C5C5C59191919999998B8B8BDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFE0E0E08B8B8B999999919191C2C2C2FFFFFFFFFFFFFFFFFFFEFEFE
      8A8A8A989898919191C3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFC3C3C39191919898988D8D8DFBFBFBFFFFFFFFFFFFBABABA
      9494949797979A9A9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FE8B8B8BC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF989898979797939393BFBFBFFFFFFFFFFFFF8A8A8A
      989898909090DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE9191
      919696968D8D8DC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFDCDCDC9090909898988D8D8DFFFFFFE3E3E3909090
      989898919191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE9191919696
      969999999999998D8D8DC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF919191989898909090E0E0E0C3C3C3949494
      949494BBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE9191919696969999
      999292929696969999998D8D8DC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB949494949494C5C5C5ADADAD969696
      919191D6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE9191919696969999998B8B
      8BDADADAA9A9A99393939999998D8D8DC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D6919191969696ABABABA2A2A2979797
      8F8F8FE8E8E8FFFFFFFFFFFFFFFFFFFCFCFC9191919696969999998A8A8AD5D5
      D5FFFFFFFFFFFFA4A4A49393939999998D8D8DC3C3C3FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E88F8F8F979797A2A2A2979797999999
      8E8E8EF3F3F3FFFFFFFFFFFFFFFFFF9898989393939999998A8A8AD5D5D5FFFF
      FFFFFFFFFFFFFFFFFFFFA4A4A49393939999998D8D8DC3C3C3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F38E8E8E999999979797979797999999
      8E8E8EF3F3F3FFFFFFFFFFFFFFFFFFFFFFFF969696888888D5D5D5FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFA4A4A49393939999998D8D8DC3C3C3FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F38E8E8E999999979797A2A2A2979797
      8F8F8FE8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCD1D1D1FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A4A49393939999998D8D8DC3C3C3FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E88F8F8F979797A2A2A2ABABAB969696
      919191D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A4A49393939999998D8D8DC3
      C3C3FFFFFFFFFFFFFFFFFFFFFFFFD6D6D6919191969696ADADADC5C5C5949494
      949494BABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A4A49393939999998D
      8D8DBDBDBDFFFFFFFFFFFFFFFFFFBBBBBB949494949494C3C3C3E0E0E0909090
      989898919191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A4A49393938C
      8C8CC7C7C7FFFFFFFFFFFFFFFFFF919191989898909090E3E3E3FFFFFF8D8D8D
      989898909090DCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DC9
      C9C9FFFFFFFFFFFFFFFFFFDDDDDD9090909898988A8A8AFFFFFFFFFFFFBFBFBF
      939393979797989898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF9A9A9A979797949494BABABAFFFFFFFFFFFFFBFBFB
      8D8D8D989898919191C3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFC3C3C39191919898988A8A8AFEFEFEFFFFFFFFFFFFFFFFFF
      C2C2C29191919999998B8B8BE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFDEDEDE8B8B8B999999919191C4C4C4FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF9999999696969898988B8B8BDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE0E0E08B8B8B989898969696989898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9090909797979898988B8B8BC3C3C3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3
      C3C38B8B8B989898979797909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF3F3F39090909696969999999191919A9A9ADDDDDDFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC98989891
      9191999999969696909090F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF999999919191989898979797909090919191BBBB
      BBD6D6D6E8E8E8F3F3F3F3F3F3E8E8E8D7D7D7BABABA91919190909097979798
      9898919191989898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C58A8A8A9494949898989898989494
      949191918F8F8F8E8E8E8E8E8E8F8F8F9191919494949898989898989393938D
      8D8DC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEBABABA8A8A8A9090909494
      949696969898989999999999999797979696969494949090908D8D8DBDBDBDFB
      FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2C2C2
      C2AEAEAE9F9F9F989898979797A2A2A2ABABABC5C5C5E0E0E0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 5
    OnClick = btnDesapropiateHouseClick
  end
  object btnCancel: TBitBtn
    Left = 591
    Top = 344
    Width = 145
    Height = 41
    Caption = 'Cancelar'
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2C5C5
      C5AFAFAFA1A1A1989898989898A1A1A1AEAEAEC3C3C3E2E2E2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFABFBFBF8D8D8D9090909393
      939292929292929292929292929292929292929393939090908D8D8DBABABAFE
      FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C28D8D8D9292929494948E8E8E9494
      94B5B5B5C6C6C6D1D1D1D1D1D1C7C7C7B5B5B59494948E8E8E9393939393938A
      8A8AC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF9999999191919494948F8F8FB6B6B6F0F0F0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBCBCBC8B8B8B95
      9595919191999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F99191919595958F8F8FA7A7A7FCFCFCFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA
      AAAA8E8E8E959595929292F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF919191969696898989CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCFCFCF8A8A8A969696929292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF999999959595898989E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFE1E1E18A8A8A959595999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      C5C5C59191918E8E8ECFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFCFCFCF8F8F8F919191C2C2C2FFFFFFFFFFFFFFFFFFFEFEFE
      8A8A8A959595ACACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFA8A8A89494948D8D8DFBFBFBFFFFFFFFFFFFBABABA
      9393938B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFDFDFD8F8F8F929292BFBFBFFFFFFFFFFFFF8D8D8D
      939393BCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF919191878787ECEC
      ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC878787919191FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7B79494948D8D8DFFFFFFE3E3E3909090
      8E8E8EEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8787879797978B8B
      8BECECECFFFFFFFFFFFFFFFFFFFFFFFFECECEC8B8B8B979797878787FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F08E8E8E909090E2E2E2C3C3C3939393
      949494FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC8B8B8B9797
      978B8B8BECECECFFFFFFFFFFFFECECEC8B8B8B9797978B8B8BECECECFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF949494939393C5C5C5ADADAD929292
      B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC8B8B
      8B9797978B8B8BF0F0F0F0F0F08B8B8B9797978B8B8BECECECFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3929292AFAFAFA2A2A2929292
      C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEC
      EC8B8B8B9797979494949494949797978B8B8BECECECFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C7929292A2A2A2979797929292
      D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF0F0F0949494989898989898949494F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1929292979797979797929292
      D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF0F0F0949494989898989898949494F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1929292979797A2A2A2929292
      C6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEC
      EC8B8B8B9797979494949494949797978B8B8BECECECFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C7929292A2A2A2AFAFAF929292
      B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC8B8B
      8B9797978B8B8BF0F0F0F0F0F08B8B8B9797978B8B8BECECECFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5B5929292AFAFAFC5C5C5939393
      949494FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC8B8B8B9797
      978B8B8BECECECFFFFFFFFFFFFECECEC8B8B8B9797978B8B8BECECECFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF949494939393C5C5C5E2E2E2909090
      8E8E8EF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8787879797978B8B
      8BECECECFFFFFFFFFFFFFFFFFFFFFFFFECECEC8B8B8B979797878787FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF8E8E8E909090E2E2E2FFFFFF8D8D8D
      949494B7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF919191878787ECEC
      ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC878787919191FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBC9393938F8F8FFFFFFFFFFFFFBFBFBF
      9292928F8F8FFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8B8B8B939393BABABAFFFFFFFFFFFFFBFBFB
      8D8D8D949494A8A8A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFACACAC9595958A8A8AFEFEFEFFFFFFFFFFFFFFFFFF
      C2C2C29191918F8F8FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFCFCFCF8E8E8E919191C4C4C4FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF999999959595898989E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFE5E5E58989899595959B9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF919191969696898989CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCFCFCF898989969696929292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF7F7F79292929595958E8E8EAEAEAEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCA7
      A7A78F8F8F959595929292FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF9999999191919494948B8B8BBBBBBBF2F2F2FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0B6B6B68F8F8F94
      94949191919B9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C58A8A8A9393939393938E8E8E9494
      94B5B5B5C7C7C7D1D1D1D1D1D1C6C6C6B5B5B59494948E8E8E9494949292928D
      8D8DC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEBABABA8D8D8D9090909393
      939292929292929292929292929292929292929393939090908D8D8DC0C0C0FA
      FAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2C2C2
      C2AEAEAEA2A2A2979797979797A4A4A4AFAFAFC4C4C4E4E4E4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 6
    OnClick = btnCancelClick
  end
  object txtNameInq: TDBLookupComboBox
    Left = 440
    Top = 282
    Width = 305
    Height = 23
    DataField = 'num'
    DataSource = DM.dsFindHouse
    KeyField = 'num_casa'
    ListField = 'nome'
    ListSource = DM.dsFindUser
    ReadOnly = True
    TabOrder = 7
  end
end
