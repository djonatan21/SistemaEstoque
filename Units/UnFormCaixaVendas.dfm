inherited FormCaixaVendas: TFormCaixaVendas
  BorderIcons = [biSystemMenu]
  Caption = 'Caixa de vendas'
  ClientHeight = 884
  ClientWidth = 1300
  ParentBiDiMode = False
  Position = poDefault
  Visible = True
  OnShow = FormShow
  ExplicitWidth = 1300
  ExplicitHeight = 884
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipalCaixa: TPanel
    Left = 0
    Top = 0
    Width = 1300
    Height = 884
    Align = alClient
    BevelOuter = bvNone
    BiDiMode = bdRightToLeft
    Color = 16408837
    ParentBiDiMode = False
    ParentBackground = False
    TabOrder = 0
    VerticalAlignment = taAlignTop
    object pnlOpcoes: TPanel
      Left = 0
      Top = 745
      Width = 1300
      Height = 130
      Align = alBottom
      TabOrder = 0
      object lblTotalItemsCarinho: TLabel
        Left = 555
        Top = 3
        Width = 130
        Height = 19
        Caption = 'Total Items 000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnAdicionarItem: TSpeedButton
        Left = 8
        Top = 69
        Width = 115
        Height = 55
        Action = actAdicionarItem
        Glyph.Data = {
          56080000424D560800000000000036000000280000001A0000001A0000000100
          18000000000020080000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF61BF894EC68E55C69156C6
          9156C69154C6914DC68E61BF89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF8FCBA513EAA90BFBC10FFCC311FCC510FCC50FFBC20BFBC010E9A790CBA5
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88C89F21EEB100EFA800F1AD00F1
          AE00F1AE00F0AC00EFA81EEDAF88C89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF88C9A030EAAF00EAA103EBA503ECA603ECA603EBA500EAA12DE9AC88C9A0
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87CAA03CE7AA00E49604E69A04E6
          9B05E69B04E59A00E49538E6A787CAA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF86CAA142E2A500DE8B05DF9106E09105DF9105DE9000DD8B3DE1A387CAA1
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF86CAA243DFA100D88408D98907DA
          8A07DA8A07D98900D7853FDE9E86CBA2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF8CCDA73FD89702D07A0AD38009D38109D38009D38003D07B3BD8958DCDA7
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFAFDEC3
          AADBBFACDBC0ABDBBFABDABFABDABEB3DDC459B77F41D79605CB780BCD7C0BCE
          7C0BCE7D0BCC7B06CB773DD5935AB780B3DDC4ABDABFABDBBFACDBC0ACDBC0AB
          DBC0B0DEC3FFFFFF000047B67900A85003AF5803B05A03B35D06B7610BBA6713
          BE6F2FC98317C97A0CC7750DC8770DC8770DC8770EC8760CC77316C8792CC881
          11BD6B09B96403B55E01B15A00AE5700AC5400A54A47B679000026AD640EB25E
          0CB25E0CB5630EB8660EBA690EBD6A0EBF6E0DC1700FC27211C37412C57511C5
          7611C57610C37410C3730EC2710CBF6D0CBD6B0DBB690DB9670CB6630CB4600C
          B25E0DB05B1DA95D000036B26E11AF5F0EB16011B46312B66512B86814BB6C14
          BD6E15BF7016C07315C17415C17515C27615C27515C17515C17314BF7114BD6E
          13BC6C11B96910B7660FB5640EB1600DAF5B0EAE5B2BAF67000045B77916B163
          11B06014B36415B66817B86A18BA6D19BC701ABE731BBF751BC0761CC1771CC1
          781CC1771BC0761AC0741ABE7217BC7016BA6D15B86A14B56713B36311B1610F
          AE5E12AD5B37B26F000056BD841BB36614B16217B46719B66A1BB86E1DBB701E
          BD7420BF7621C07822C17A24C27C23C17C22C27B21C17A20C0781EBE761DBD73
          1CBB6F1AB86D17B66916B36614B16311AF5D15AE6146B779000065C28F21B46B
          17B1651CB56A1EB86D21BB7224BD7626BE7928C17C2AC27F2BC2802CC3822CC4
          822CC3812BC38029C17E27C17B24BE7821BC741EB9701DB76D1AB56817B26414
          AF611BB06456BD85000072C7981EB46A10B06115B4681AB76D1FBA7325BE792B
          C17E30C38334C48735C68837C78A37C78A36C78935C68832C5852FC28229C07D
          24BD761DBA7017B66A12B36510AF610BAC5B17B06365C28F00004AB77AA0E0C2
          86D8B190DDB991DEBB86DBB670D5AB57CF9C4ECE9A41C99142CA9344CA9544CB
          9543CA9441C9913EC88F3AC78B57CF9D66D2A480D9B18FDCB991DCB98AD9B47F
          D5AA95DBB847B6780000F1F9F46AC39176C89A76C89A76C79A75C79974C79878
          C89B3DB06F59D1A451CFA054D0A254D0A252D0A150CE9F4BCC9A5AD1A33FB170
          79C99C75C79976C79977C89A77C89A76C89A6BC392F2F9F50000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8ACFA561D3A963D4AB65D4AD65D5
          AD64D4AD61D3AA5BD2A75FD1A68ACFA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF80CB9F7AD8B777D9B87AD9B87AD9B879D9B875D8B56ED7B173D7B281CB9F
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7ECA9E93DFC48CDEC18FDFC390DF
          C38EDEC28ADDC082DBBD89DCBF7FCB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF7CCA9DAAE6D09EE3CBA3E4CCA3E4CDA1E3CB9DE2CA94E1C6A0E3CA7DCA9E
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AC99CBEEAD9AEE7D3B2E7D4B1E7
          D4B0E7D3ADE6D1A5E4CDB3E8D47BC99DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF7AC89BCCEFE1BAEAD9BFEBDABEEBDABDEADAB9E9D8B1E7D4C3ECDD7AC99B
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74C798DEF4ECD4F3EAD5F3EBD6F3
          EBD4F3EAD0F1E8CCF1E5D6F2E876C799FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF7FBF949B77B76C79974C79874C79874C79874C79876C89948B77AF7FBF9
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
        Layout = blGlyphTop
      end
      object btnDeletarItem: TSpeedButton
        Left = 127
        Top = 69
        Width = 115
        Height = 55
        Action = actRemoverItem
        Glyph.Data = {
          46090000424D460900000000000036000000280000001A0000001D0000000100
          18000000000010090000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFB9C3FF1536FF0021FF0023FF0024FF0024FF0024FF0024FF0024
          FF0024FF0024FF0024FF0024FF0024FF0023FF0021FF1738FFC0C8FFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFDADFFF0000FF0020FF0023FF00
          24FF0024FF0024FF0024FF0024FF0024FF0024FF0024FF0024FF0024FF0024FF
          0024FF0023FF0020FF0000FFE2E6FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFF7286FF0016FF0024FF0024FF0024FF0122F00024FF0024FF0024FF0023
          FA0023FA0024FF0024FF0024FF0122F00024FF0024FF0024FF0015FF7C8EFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF5B72FF0019FF0024FF0024FF04
          1FD60A1BA80122F10024FF0024FF081CB4081CB50024FF0024FF0122F10A1BA8
          041FD60024FF0024FF0018FF6479FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFF415BFF001BFF0024FF0024FF051FD0091CB00122F20024FF0024FF071B
          B6071DB60024FF0024FF0122F2091CB0051FD00024FF0024FF001AFF4962FFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF2645FF001DFF0024FF0024FF06
          1ECB091CB00023F80024FF0024FF071CB7071DB70024FF0024FF0023F8091CB0
          061ECB0024FF0024FF001DFF2D4BFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFF0B2DFF0020FF0024FF0024FF061EC6091CB00023FE0024FF0024FF071C
          B7071DB70024FF0024FF0023FE091CB0061EC60024FF0024FF001FFF1234FFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF0016FF0022FF0024FF0024FF07
          1DC0091CB00024FF0024FF0024FF071CB7071DB70024FF0024FF0024FF091CB0
          071DC00024FF0024FF0021FF001CFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFF0009FF0023FF0024FF0024FF071DBA091BB20024FF0024FF0024FF071C
          B7071DB70024FF0024FF0024FF091BB2071DBA0024FF0024FF0023FF000AFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFAFAFF000BFF0024FF0024FF0024FF08
          1CB4071DB80024FF0024FF0024FF071CB7071DB70024FF0024FF0024FF071DB8
          081CB40024FF0024FF0024FF000BFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          DFE3FF000EFF0024FF0024FF0024FF091BB0071DBE0024FF0024FF0024FF071C
          B7071DB70024FF0024FF0024FF071DBE091BB00024FF0024FF0024FF000DFFE4
          E8FFFFFFFFFFFFFF0000FFFFFFFFFFFFC4CCFF0010FF0024FF0024FF0024FF09
          1CB0061EC30024FF0024FF0024FF071CB7071DB70024FF0024FF0024FF061EC3
          091CB00024FF0024FF0024FF000FFFC9D1FFFFFFFFFFFFFF0000FFFFFFFFFFFF
          A9B6FF0012FF0024FF0024FF0023FB091CB0061EC90024FF0024FF0024FF071C
          B7071DB70024FF0024FF0024FF061EC9091CB00023FB0024FF0024FF0012FFAE
          B9FFFFFFFFFFFFFF0000FFFFFFFFFFFF8F9EFF0014FF0024FF0024FF0123F509
          1CB0051ECE0024FF0024FF0024FF071CB7071DB70024FF0024FF0024FF051ECE
          091CB00123F50024FF0024FF0014FF93A2FFFFFFFFFFFFFF0000FFFFFFFFFFFF
          7487FF0017FF0024FF0024FF0122F0091CB0051FD40024FF0024FF0024FF071C
          B7071DB70024FF0024FF0024FF051FD4091CB00122F00024FF0024FF0016FF77
          8AFFFFFFFFFFFFFF0000FFFFFFFFFFFF5971FF0019FF0024FF0024FF0222EA09
          1CB0031FD90024FF0024FF0024FF071CB7071DB70024FF0024FF0024FF031FD9
          091CB00222EA0024FF0024FF0019FF5C73FFFFFFFFFFFFFF0000FFFFFFFFFFFF
          3E5AFF001BFF0024FF0024FF0221E5091CB00321DF0024FF0024FF0024FF071C
          B7071DB70024FF0024FF0024FF0321DF091CB00221E50024FF0024FF001BFF41
          5CFFFFFFFFFFFFFF0000FFFFFFFFFFFF2443FF001EFF0024FF0024FF0421DE09
          1BAF0220E40024FF0024FF0024FF071BB5071DB50024FF0024FF0024FF0220E3
          091BAF0421DE0024FF0024FF001DFF2644FFFFFFFFFFFFFF0000FFFFFFFFFFFF
          092CFF0020FF0024FF0024FF0221E7091BA80122F30024FF0024FF0024FF071D
          BE071DBE0024FF0024FF0024FF0122F3091BA80221E70024FF0024FF0020FF0A
          2DFFFFFFFFFFFFFF0000FFFFFFFFFFFF0014FF0022FF0024FF0024FF0024FF00
          24FF0024FF0024FF0024FF0024FF0024FF0024FF0024FF0024FF0024FF0024FF
          0024FF0024FF0024FF0024FF0022FF0015FFFFFFFFFFFFFF0000FFFFFFFFFFFF
          0009FF0024FF0024FF0024FF0024FF0024FF0024FF0024FF0024FF0024FF0024
          FF0024FF0024FF0024FF0024FF0024FF0024FF0024FF0024FF0024FF0024FF00
          09FFFFFFFFFFFFFF0000D3D6F2C9CEF20010F20122F20122F20122F20122F201
          22F20122F20122F20122F20122F20122F20122F20122F20122F20122F20122F2
          0122F20122F20122F20122F20122F20010F2CACFF2D3D6F200000007B3000AB3
          081CB3081CB3081CB3081CB3081CB3081CB3081CB3081CB3081CB3081CB3081C
          B3081CB3081CB3081CB3081CB3081CB3081CB3081CB3081CB3081CB3081CB308
          1CB3000AB30007B300000117B8071CB9081DBA081DBA081DBA081DBA081DBA08
          1DBA081DBA081DBA081DBA081DBA081DBA081DBA081DBA081DBA081DBA081DBA
          081DBA081DBA081DBA081DBA081DBA081DBA071CB90117B800005261CE0000B1
          000BB4000BB4000BB4000BB4000BB4000BB40116B8081DBA000FB5000BB4000B
          B4000BB4000BB4000FB5081DBA0116B8000BB4000BB4000BB4000BB4000BB400
          0BB40000B15261CE0000FFFFFFB4BBEAA8AFE6AAB1E7AAB1E7AAB1E7AAB1E7B6
          BCEA3B4CC80008B3949EE1AEB5E8AAB1E7AAB1E7AEB5E8949EE10008B33B4CC8
          B6BCEAAAB1E7AAB1E7AAB1E7AAB1E7A8AFE6B4BBEAFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A68D10000B0DEE1F5FFFFFFFFFF
          FFFFFFFFFFFFFFDDE0F50000B05A68D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB9BFEB0000AE0010B62739C22335C12335C12739C20010B60000AFB9BFEB
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2AAE51428BD0015B70217
          B80217B80015B71428BDA2AAE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000}
        Layout = blGlyphTop
      end
      object btnSubTotal: TSpeedButton
        Left = 246
        Top = 69
        Width = 115
        Height = 55
        Action = actFinalizarVenda
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFECDCE4FFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8C2BC00AA365BAC80FFFAFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DB7A800AC39B0F2D1
          2CCB7335A164FFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EAC9000
          AA3994F0BE75F3ADCFFFED48CB80189A4DFFECF9FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
          FF63A27B00A83D6AEAA248E78670EEA88BF6C0C9FFED55CC8604923BF5E2EEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFF7FF45986100A63F38E37E16DB5C3FE37E5CE99673EFAA7DF2B49AFC
          C959CF8A008828E6D9E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFEFFD2A8C4800A53E1EDA6500CF3C0AD75229DE6B40E37F
          53E78F5CEA9659E9945EEF9A53D18800811CCFCBCDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF5E5F117823400A33A0CD05100C53800CC4200
          D2450AD7511FDC632EDF7036E17736E1772DDE6F21E16839D078007C15B7BEB9
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAE2E805761F00A03500C43F00BB
          3000C13500C53700CC410AD34E1CD95D23DB6424DC651BDA5F04D54E00D24200
          D33F24CD6900740AA0B0A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60A36D009726
          00B62E00AF2204BA352FCA5C4FD5775BDA835FDF8804CE4648DD7959E18755E0
          8357E08446DB7724D15B00C7340CC855007105819F86FFFFFFFFFFFFFFFFFFFF
          FFFF61B97A00A41600A8204AC66872D58B6BD6886CD98A6BDB8C00BE29A6E9BB
          11CB4C4AD97870E19467DF8D69DD8D6DDD8E70DC8F1DC54900BF3E006D01638E
          68FFFFFFFFFFFFFFFFFFDBEFDD0091007DD18E87D7997DD69283DA9978D99100
          B21DC9EFD4FFFFFFFFFFFF17C64C4AD4738AE3A47CDE997CDD987DDC978BDDA0
          38C45800B22B006900487E4BFFFDFFFFFFFFFFFFFFEFF7F0009A1087D496A3E0
          B17BD59000A815E7F6EBFFFFFFFFFFFFFFFFFFFFFFFF33C85D3ECB64A4E6B692
          E0A692DFA592DDA4A0E0AF5FC97400A71C0065002C6B2AFFF6FFFFFFFFFFFFFF
          FFFEFF009C1A53C16800A218FEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF57CC752CBF50BFECCAA8E3B5A7E2B4A8E1B3B5E4BE7DCE8A00990A005E006E
          9A6CFFFFFFFFFFFFFFFFFFFFFFFF4CBB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF7ED39117B038D8F2DEC0E8C7BEE7C5BEE6C4CAE9
          CFA1D8A8008E0360A367FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5DDB005A222E8F6EA
          D8EFDCD3EDD7D9EFDCEDF7EE068D0FA9D6ACFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC6E7CB00940EF4FAF5FBFDFBF1F9F2008000ACD6AEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFE3F1E4008802CCE8CE007900CEE6CFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FAF80F8D16E7F1
          E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
      end
      object btnCanselarCaixa: TSpeedButton
        Left = 365
        Top = 69
        Width = 126
        Height = 55
        Action = actFinalizarCaixa
        Glyph.Data = {
          56080000424D560800000000000036000000280000001A0000001A0000000100
          18000000000020080000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFF5B7B7BB7D7D9AD8D8CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCC278789BC5C5C2FF
          FFFAFFFFFFFFFFFF0000FFFFFFFBFBEC9898AB2121C21515F42A2AA8C7C7BAFF
          FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF7B5B5AF1515B01919F02323B6B1B1B3FEFEF3FFFFFF0000FFFFF59393AC
          0E0EB51111D64848DA0000DE2222B0BDBDB7FFFFF4FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECA8A8AE0A0AB70000D84545D70000CE1C
          1CADAEAEB4FFFFFB0000DCDCD80303AE0000C61A1AD86D6DF13838D80000D320
          20B7A9A9B3FFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCE48F8FAE
          0B0BBC0000CF4141D87777F01818D20000C01313A6F3F3E80000B6B6D20000B6
          0C0CD13333FC5151FF8383FB3535D40000CA1616BA9B9BAFFFFFECFFFFFFFFFF
          FFFFFFFFFFFFFFF8F8E07F7FAB0404C00000C54545D99595FC7070FF4D4DFB0D
          0DC90000ACE7E7DF0000AFAFCA0000C42828FF3232FF3939FF4949FF8484FD33
          33D10000C30606BB9595A6FFFFEEFFFFFFFFFFFFF7F7DF7575A00000C10000C0
          4848D99797FE6565FF5555FF4F4FFF4242FF0000B2E1E1DA0000B6B6E00000FF
          2323FF2A2AFF3333FF3D3DFF4646FF7E7EFD3A3AD40000C00000BA868698FFFF
          F3F3F3DE6363930000C40000BB4F4FDC8D8DFF5F5FFF5555FF4D4DFF4242FF3C
          3CFF0000FFE9E9E90000FFFFFC1111FD0808FF2121FF2B2BFF3434FF3E3EFF47
          47FF6E6EFD3737D50000BD0000BD7D7D8A5555910000C40000B94C4CDF7B7BFF
          5B5BFF5454FF4949FF4141FF3535FF1A1AFE4B4BFAFFFFFE0000FFFFFFF4F4F8
          3434FB0808FE2121FF2C2CFF3535FF3B3BFF4747FF5E5EFE3030D50000B70000
          B50000BB0303B64040E06A6AFF5353FF4D4DFF4747FF4040FF3131FF1E1EFE66
          66F9FAFAFAFFFFFE0000FFFFFFFFFFFEE8E8F94848FA0707FE2020FF2A2AFF31
          31FF3535FF3D3DFF4C4CFF2626D80000A90000AD3535E45858FF4949FF4545FF
          4040FF3B3BFF2E2EFF1919FE7A7AF8F6F6FBFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFEEBEBFA5959F90000FF1A1AFF2020FF2E2EFF3A3AFF4545FF4F4FFF1616
          D32626E54E4EFF3737FF3232FF3232FF3333FF2B2BFF0D0DFE9292F8FAFAFCFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF9F9FB6464F70606FF58
          58FF5252FF5858FF5C5CFF6363FF4848FE5A5AFF6262FF5C5CFF4F4FFF3737FF
          2121FF0000FFB3B3F7FFFFFDFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFE7B7BFD3333FF6666FF5B5BFF5D5DFF5F5FFF6262
          FF6161FF6262FF6262FF6161FF7272FF1717FFD2D2FBFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECAF03
          03B03E3EFF6666FF5F5FFF5F5FFF6161FF6161FF6060FF6161FF6A6AFF1D1DFF
          4D4D91FFFFD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFCACABD0F0F800000840000BE4343FF6868FF6262FF6363
          FF6363FF6363FF6969FF2C2CFF00009F000084585885EFEFE0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFABBBBBA20208300008300
          009B0F0FE55151FF6B6BFF6868FF6868FF6767FF6969FF6A6AFF4343FF0202D2
          00008900008461618CE7E7DBFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFBB4B4B82222800000760000980F0FED6767FF7979FF6E6EFF6F6FFF7272
          FF6F6FFF6F6FFF7070FF7A7AFF5353FF0000DA00007800007C5E5E8DE4E4D9FF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFCB9B9B920207C00006D00008F0707F077
          77FF8282FF7878FF7878FF8080FF6C6CFF8686FF7777FF7878FF7A7AFF8484FF
          6262FF0000DD00006A00007360608BE7E7DBFFFFFFFFFFFF0000FFFFFFC8C8C5
          18187400006800008A0606ED8A8AFF8989FF8080FF8080FF8A8AFF7373FF3939
          F42222FE9A9AFF8181FF8181FF8181FF8D8DFF6C6CFF0000DA00006400006F65
          658BF0F0E9FFFFFF0000FEFEFD4B4B9000006300008A1010F09494FF9191FF8A
          8AFF8A8AFF9393FF7878FF3131F9FDFDFBDEDEF61B1BFE9D9DFF8B8BFF8A8AFF
          8A8AFF9898FF7575FF0000DA00006C000064BABAC9FFFFFF0000FDFDFD39397F
          0000891D1DF29797FF9E9EFF9595FF9696FF9D9DFF7D7DFF5555F8EFEFFBFFFF
          FFFFFFFFCDCDF63F3FFC9A9AFF9999FF9595FF9595FFA4A4FF7777FF0000D500
          0064ACACBDFFFFFF0000FCFCFA2F2FA11F1FEC9595FFAAAAFF9E9EFF9F9FFFA7
          A7FF8585FE6464F9DDDDFAFFFFFEFFFFFFFFFFFFFFFFFEB9B9F85757FC9F9FFF
          A3A3FF9F9FFFA0A0FFADADFF7676FF0000C0A8A8C2FFFFFF0000FDFDFD5A5AEE
          6F6FFFC3C3FFA7A7FFA8A8FFB5B5FF8B8BFE5F5FF9D7D7FAFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFDB2B2F85B5BFCB0B0FFAAAAFFA8A8FFABABFFC1C1FF39
          39FFB7B7EFFFFFFE0000FFFFFFCCCCFC6767FA9E9EFFBCBCFFC2C2FF9797FF54
          54F8DBDBFAFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB8B8F8
          4C4CFDCBCBFFB2B2FFBFBFFF7A7AFD7E7EF9F6F6FDFFFFFF0000FFFFFFFFFFFE
          C9C9F95A5AFAC0C0FFAAAAFF4F4FF6EAEAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC6C6F73333FEEFEFFF8080FD6F6FF8F9
          F9FBFFFFFEFFFFFF0000FFFFFFFFFFFFFFFFFFE9E9FA4242FC5858F8FDFDFCFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE5E5F81414FC8A8AFAFFFFFCFFFFFFFFFFFFFFFFFF0000}
        Layout = blGlyphTop
      end
      object pnlSubTotal: TPanel
        AlignWithMargins = True
        Left = 1006
        Top = 4
        Width = 278
        Height = 122
        Margins.Right = 15
        Align = alRight
        Color = clInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object Label2: TLabel
          Left = 17
          Top = 8
          Width = 74
          Height = 19
          BiDiMode = bdLeftToRight
          Caption = 'Sub Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object Label1: TLabel
          Left = 15
          Top = 41
          Width = 78
          Height = 19
          BiDiMode = bdLeftToRight
          Caption = 'Descontos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object Label3: TLabel
          Left = 31
          Top = 80
          Width = 62
          Height = 25
          BiDiMode = bdLeftToRight
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
        end
        object edtSubTotal: TEdit
          Left = 99
          Top = 5
          Width = 150
          Height = 27
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edtDescontos: TEdit
          Left = 99
          Top = 38
          Width = 150
          Height = 27
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edtTotalVenda: TEdit
          Left = 99
          Top = 77
          Width = 150
          Height = 33
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
    end
    object dbeVenda: TDBGrid
      AlignWithMargins = True
      Left = 473
      Top = 101
      Width = 812
      Height = 644
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 15
      Margins.Bottom = 0
      Align = alRight
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Color = clScrollBar
      DrawingStyle = gdsGradient
      FixedColor = clGradientActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Color = clBtnHighlight
          Expanded = False
          FieldName = 'ITEM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Item'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_PRODUTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_BARRA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo de Barra'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Valor R$'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Unidade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Valor Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 115
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 1300
      Height = 96
      Align = alTop
      Color = clYellow
      ParentBackground = False
      TabOrder = 2
      object Label7: TLabel
        Left = 16
        Top = 12
        Width = 532
        Height = 58
        Caption = 'CAIXA LIVRE - VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -48
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 875
      Width = 1300
      Height = 9
      Align = alBottom
      TabOrder = 3
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = -566
      Top = 99
      Width = 1036
      Height = 643
      Align = alRight
      BiDiMode = bdRightToLeftReadingOnly
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      object lblOperador: TLabel
        Left = 520
        Top = 455
        Width = 372
        Height = 33
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        Caption = '001 - OPERADOR DE CAIXA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentBiDiMode = False
        ParentFont = False
      end
      object pnlLancamentos: TPanel
        AlignWithMargins = True
        Left = 700
        Top = 24
        Width = 309
        Height = 143
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 5
        BevelOuter = bvNone
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 0
        object lblUnidade: TLabel
          Left = 174
          Top = 8
          Width = 53
          Height = 42
          BiDiMode = bdLeftToRight
          Caption = 'UN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -35
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
        end
        object edtCodigo: TMaskEdit
          AlignWithMargins = True
          Left = 10
          Top = 78
          Width = 289
          Height = 43
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 5
          Align = alTop
          Alignment = taCenter
          BevelInner = bvLowered
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -35
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          MaxLength = 18
          ParentFont = False
          TabOrder = 0
          Text = ''
          OnKeyDown = edtCodigoKeyDown
        end
        object edtQuantidade: TMaskEdit
          AlignWithMargins = True
          Left = 10
          Top = 5
          Width = 149
          Height = 53
          Margins.Left = 10
          Margins.Top = 5
          Margins.Right = 150
          Margins.Bottom = 10
          Align = alTop
          Alignment = taCenter
          BevelInner = bvLowered
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -35
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          Text = '1'
          OnKeyDown = edtQuantidadeKeyDown
        end
      end
      object dbeImgProduto: TDBImage
        Left = 520
        Top = 11
        Width = 159
        Height = 164
        DataField = 'IMAGEM'
        Stretch = True
        TabOrder = 1
      end
      object dbeImgEmpresa: TDBImage
        Left = 520
        Top = 195
        Width = 481
        Height = 254
        DataField = 'LOGO'
        Stretch = True
        TabOrder = 2
      end
    end
  end
  object actCaixa: TActionManager
    Left = 752
    Top = 40
    StyleName = 'Platform Default'
    object actAdicionarItem: TAction
      Category = 'Controle de Vendas'
      Caption = 'Adicionar Item'
    end
    object actRemoverItem: TAction
      Category = 'Controle de Vendas'
      Caption = 'Remover Item'
    end
    object actFinalizarVenda: TAction
      Category = 'Controle de Vendas'
      Caption = 'Finalizar Venda'
    end
    object actCanselarVenda: TAction
      Category = 'Controle de Vendas'
      Caption = 'Canselar Venda'
    end
    object actFinalizarCaixa: TAction
      Category = 'Configura'#231#245'es'
      Caption = 'Finalizar Caixa'
      OnExecute = actFinalizarCaixaExecute
    end
    object Action2: TAction
      Caption = 'Action2'
    end
    object Action3: TAction
      Caption = 'Action3'
    end
  end
  object dsCaixa: TDataSource
    DataSet = DmMenuPrincipal.SQLCaixa
    Left = 808
    Top = 40
  end
  object dsVenda: TDataSource
    DataSet = DmMenuPrincipal.SQLVenda
    Left = 866
    Top = 40
  end
end
