object FrmAbreCaixa: TFrmAbreCaixa
  Left = 505
  Top = 222
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Abertura de Caixa'
  ClientHeight = 193
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 3
    Top = 3
    Width = 385
    Height = 57
    Shape = stRoundRect
  end
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 26
    Height = 13
    Caption = 'Caixa'
    Transparent = True
  end
  object lbnome: TLabel
    Left = 52
    Top = 17
    Width = 27
    Height = 35
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 318
    Top = 37
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
    Transparent = True
  end
  object lbcodigo: TLabel
    Left = 359
    Top = 33
    Width = 20
    Height = 19
    Caption = '02'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 5
    Top = 69
    Width = 379
    Height = 54
  end
  object Label4: TLabel
    Left = 17
    Top = 79
    Width = 81
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data de Abertura'
    Transparent = True
  end
  object lbdata: TLabel
    Left = 43
    Top = 94
    Width = 98
    Height = 19
    Caption = '02/10/2015'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 249
    Top = 79
    Width = 81
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hora de Abertura'
    Transparent = True
  end
  object lbhora: TLabel
    Left = 275
    Top = 94
    Width = 72
    Height = 19
    Caption = '00:00:00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 11
    Top = 128
    Width = 146
    Height = 19
    Caption = 'Valor de Abertura'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object EdtTotal: TCurrencyEdit
    Left = 8
    Top = 150
    Width = 151
    Height = 35
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyDown = EdtTotalKeyDown
    OnKeyPress = EdtTotalKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 174
    Top = 130
    Width = 211
    Height = 61
    Caption = '&Abrir Caixa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      361B0000424D361B000000000000360000002800000030000000300000000100
      180000000000001B0000202E0000202E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF1F1F1E6E6E6E3E3E3ECECECF7F7F7FE
      FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF4F4F4E8E8E8E2E2E2
      E9E9E9F4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE6E6E6C9C9C9
      C9C9C9D2D2D1D4D4D3CCCCCBC8C8C8D7D7D7F7F7F7FFFFFFFFFFFFFFFFFFFFFF
      FFEFEFEFCFCFCFC8C8C7CFCECED6D5D4D0CFCFC8C8C7CFCFCFEFEFEFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFCFCFCD7D7D7D3D3D2E7E8E7E7E8E6E7E8E6E7E7E6E7E8E6E7E8E7E4
      E4E3C8C8C8F0F0F0FFFFFFFFFFFFE4E4E4CACACAE8E8E7E7E8E7E7E8E6E7E7E6
      E7E8E6E7E8E7E8E8E7CACAC9E3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEDBDBDBE4E3E2E9E8E7EAE8E7
      F9F0F1FFF5FAFFF5FBFFF2F7EDEAEBE9E8E7E9E8E7CDCDCCF8F8F8EDEDEDD5D4
      D4E9E8E7E9E8E7F3ECEEFFF4F8FFF5FBFFF4F9F2ECEDE9E8E7E9E8E7D6D6D5EC
      ECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFEFEFEFD4D4D3E9E8E7ECE8E9FFF5FAC6D7CE7EB39976AE93A1C5B2FBF0F5F5
      EDF0E9E8E7E9E8E7D3D3D3CFCFCEE9E8E7E9E8E7FEF1F7E6E7E48BB9A375AF91
      8BB9A1E9E8E7FEF1F7E9E8E7E9E8E7D0D0CFFAFAFAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCE9E9E8E9E9E8FFF5FA95C0AC
      087B44097B440C7D4702783F4A9C75F2EEEFF1EDEDE8E9E8CBCBCADBDBDAE9E9
      E8FAF1F5CCDAD3208856037A410C7D47057A41218957CCDAD4FCF2F6E9E9E8E5
      E5E4EBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FED7D7D6E9E9E7F9EFF2C5D9CE047F44208C59288F5E288F5E278E5D017E436A
      AE8EFFF5FAEAE9E7E5E5E4E8E7E6EEEBECF7EFF22A916011844F278F5E288F5E
      278F5E11854E29905FF4EEEFF0EBECE9E9E8DDDDDDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBE0E0E0E9E8E8FFF4FC82BBA009854C
      2893612793612793612793611A8E582D9665F8EFF3EDEAEBE9E9E9E9E8E8FBF0
      F5BCD5CA07854B26936027936127936127936126926008864AC2D7CCF9F0F4E9
      E8E8DBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
      FDE3E2E1EAE9E8FFF5FC7DBC9E09894F2897642797642797642797641C925D2B
      9866F7EFF1EEECEBEAEAE9EAE9E8FEF2F6B4D3C403884C279664279764279764
      27976426966407894EBED7CBFCF1F4EAE9E8E0E0E0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E0E0EAEAE9FDF0F6BAD7CA008C4D
      229A64289C67289C67279C67068F4F5CB28CFFF5FBEAEAEAE5E4E4E8E8E8F1EC
      EEF1EDEF1F9A6116955C279C67289C67279C6716955C1E9861EEECECF1ECEEEA
      EAEAEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFE5E5E4ECEBEAEEEBEAFFF5FA7CC1A20192510D975911975B01935135A673EB
      EAE9F7EFF1EBEBE9E2E2E1E7E6E5ECEBEAFFF3F8BBD8CB11985D08955411975B
      07955411985BBCD8CBFFF3F8ECEBEAE7E7E6E9E9E9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1C7C7C7ECEBEBEBEBEBF1EDEEFFF6FC
      B0D6C563BA9358B78C88C8AAF5F0F0FBF1F4EAEAEAEBEAEAEBEAEAEBEAEAEBEA
      EAECEBEBFFF4FAD8E5DE70BF9B57B78B71BF9CDAE5E0FFF4FBECEBEBEBEBEBEC
      EBEBC8C7C7EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5CFCF
      CFEDECEBEDECEBF1ECEDFDF0F4FFF2F9FFFBFFFFFEFFFFFDFFFFFDFFFFF6FEFF
      F4F9FFF4F9FFF4F9FFF4F9FFF4F9FFF4F9FFF4F9FFF4F9FFF8FFFFFEFFFFFDFF
      FFFEFFFFF8FFFFF4F9FFF2F7F5EEEFEDECEBEDECEBD0D0D0F1F1F1FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFD8D8D8EDECECEDECECF9F0F3FCF1F5CAE1D7B1DAC8
      A8D5C2A7D5C1A7D5C1A7D5C1A7D5C1A7D5C1A7D5C1A7D5C1A7D5C1A7D5C1A7D5
      C1A7D5C1A7D5C1A7D5C1A7D5C1A7D5C1A7D5C1A7D5C1A5D5BFB7DACAEEEDEDFC
      F1F4EDECECEDECECD8D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7DBDADAEEED
      ECF7EFF1F4EFF03EB78306A6610BA7630AA6630AA6630AA6630AA6630AA6630A
      A6630AA6630AA6630AA6630AA6630AA6630AA6630AA6630AA6630AA6630AA663
      0AA6630AA66308A66305A66025B074E7EAE8FAF0F3EDEDEBDDDCDCF9F9F9FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFE7E7E7EEEEEDEEEEEDFFF6FF73CBA501A86225B37627B477
      27B47727B47727B47727B47727B47727B47727B47727B47727B47727B47727B4
      7727B47727B47727B47727B47727B47727B47727B47727B47727B47705AA6468
      C89EFFF5FCEDEEECE8E8E7F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADAEEEEEDF7F0
      F1F1EFF01EB6741EB57527B87A27B87A27B87A27B87A27B87A27B87A27B87A27
      B87A27B87A27B87A27B87A27B87A27B87A27B87A27B87A27B87A27B87A27B87A
      27B87A27B87A27B87A28B87A11B16E49C18EFFF4FCEFEEECEEEDECF4F4F4FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFAFAFAD9D9D8EEEFEDFFF5FBB4E1CD08B56B27BD7D27BD7D27BD7D
      27BD7D24BD7B23BD7B23BD7B23BD7B23BD7B23BD7B23BD7B23BD7B23BD7B23BD
      7B23BD7B23BD7B23BD7B23BD7B23BD7B23BD7B23BD7B23BD7C20BB7800B3648C
      D7B7FFF5FBEEEFEDE6E6E5FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E5E5E5EFEFEFFFF6
      FF6ACFA50FB97228BF8027BF8026BF7F20BD7B17BC7714BB7613BB7613BB7614
      BB7614BB7614BB7614BB7614BB7614BB7614BB7614BB7614BB7614BB7614BB76
      14BB7614BB7611BB7615BC766ED2A9FFF3F9F5EFF1F0EFEFD9D8D8F3F3F3FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFE1E1E1F1F0EFF5F0F1FFF5F932C38A19BD7D25C08325C0831CBE7F
      2BC287E2EDE8E9EDEBF6F2F2F8F2F4F9F1F3F9F1F3F9F1F3F9F1F3F9F1F3F9F1
      F3F9F1F3F9F1F3F9F1F3F9F1F3F9F1F3F9F1F3F9F1F3F6F1F2FFF7FCFFFDFFFF
      F6FEF6F0F1F1F0EFF1F0EFD1D1D0FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8F0F1EFFFF5F8D4EB
      E109BA7721C08323C18523C1850DBC7A58CEA0FFFEFFFEF4F7A3DFC886D8B983
      D7B783D7B783D7B783D7B783D7B783D7B783D7B783D7B783D7B783D7B783D7B7
      83D7B783D7B783D7B77DD5B37BD6B2AFE2CEFFF5F8FBF3F5F1F1F0EDEDECE8E8
      E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF9F9F9DFDFDFF1F1F0FFF7FEA2E0C801BC7721C38721C38721C38702BB77
      B3E3D1FFF4F81DC28500B97305BC7906BC7906BC7906BC7906BC7906BC7906BC
      7906BC7906BC7906BC7906BC7906BC7906BC7906BC7906BC7906BC7903BC7800
      B9714FCD9FFFF6FAF5F1F3F2F1F1DBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEBEAEAF3F2F2FFFAFF67D3
      AD07BE7D1FC48A1FC48A1CC48904BE7DF5F3F273D7B400BB781FC48A20C48A20
      C48A20C48A20C48A20C48A20C48A20C48A20C48A20C48A20C48A20C48A20C48A
      20C48A20C48A20C48A20C48A20C48A1DC38900BB75BBE6D7FFF6FBF2F2F1DFDE
      DEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDFDFDFF3F3F2F7F5F4FFF5F920C58D12C3871DC58C1DC58C12C3871EC58D
      FFFCFF50D0A403BF7F1EC58C1DC58C1DC58C1DC58C1DC58C1DC58C1DC58C1DC5
      8C1DC58C1DC58C1DC58C1DC58C1DC58C1DC58C1DC58C1DC58C1DC58C1DC58C1E
      C58C00BD79A3E2CCFFF8FDF2F3F1E3E3E3FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEDADADAF3F3F2FFF7FBD6EDE502C1
      8419C68D1BC68F1BC68F01C1845ED4AEFFFFFFA7E3CF00BC7A0AC28814C48B15
      C48C15C48C15C48C15C48C15C48C15C48C15C48C15C48C15C48C15C48C15C48C
      15C48C15C48C15C48C14C48C13C48B00C08304C284E5F0EDFFF5F9F3F3F2E1E0
      E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEC
      ECECDEDEDEF3F4F4FFFAFF8CDFC500C08219C79219C79219C79200C183A5E4CF
      FFFAFFFFF9FF94E1C91CC8930EC58D0FC58E0FC58E0FC58E0FC58E0FC58E0FC5
      8E0FC58E0FC58E0FC58E0FC58E0FC58E0FC58E0FC58E0FC58E0EC48E0FC58D2F
      CC9CC1E9DDFFF9FEF4F4F4F3F4F4CECECEEDEDEDFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEDEDEDD1D1D1C7C7C6CCCCCBF5F5F4F7F5F4FFFAFF44D1A702C4
      8B18C89417C89412C79201C48BEBF3EFFFF9FFFFFAFFFFFFFFFFFEFFFFF9FFFF
      F9FEFFF9FEFFF9FEFFF9FEFFF9FEFFF9FEFFF9FEFFF9FEFFF9FEFFF9FEFFF9FE
      FFF9FEFFF9FEFFF9FEFFF8FDFFFBFFFFFFFFFFFFFFFFFAFFFFF7FAF5F5F4F5F5
      F4D1D1D1F8F8F8FFFFFFFFFFFFFFFFFFFDFDFDDFDFDFD4D4D4F6F5F5F5F5F5F5
      F4F4F5F4F4FEF6F9F6F4F509C7910EC89315CA9615CA9604C68F33D0A2FFFEFF
      E7F2EF74DCBF56D5B155D6B15BD7B35BD7B556D6B142D2A93DD1A73CD1A73ED2
      A848D4AD5AD6B55BD7B55BD7B55BD7B55BD7B55BD7B55BD7B55BD7B55BD7B353
      D5B153D5AF79DEC0EBF3F0FFF8FCF6F5F5F6F5F5E5E5E5FFFFFFFFFFFFFFFFFF
      E5E5E5E2E2E2F5F6F6F6F6F6FFF8FAFFFAFEFFFAFEFFFEFFD8F1E900C68D11CB
      9913CB9913CB9900C48C7EDFC5FFFCFF09C99400C28700C58E00C58E00C58E00
      C38900C28955D8B67BE5CD79E5CE78E3CA2ED0A400C08400C58D00C58E00C58E
      00C58E00C58E00C58E00C58E00C58E00C58E00C58E00C28719CC9BFFF8FAFDF8
      F8F5F6F6DEDEDEFBFBFBFFFFFFF9F9F9D9D9D8F7F6F6F8F6F6FFFCFFF5F6F6BD
      EBDFB0E9DBC5EDE169DCBE00C79211CC9C11CC9C11CC9C00C68EC8EEE3A3E7D5
      00C48B12CC9C12CC9C12CC9C0BCC9A06C997D8F4EFFFFFFFFFF3F5FFF1F3FFFA
      FFFFFFFF78E0C500C79111CC9C12CC9C12CC9C12CC9C12CC9C12CC9C12CC9C12
      CC9C12CC9C11CC9C00C48AA4E7D5FFFAFFF6F6F5E0E0E0F8F8F8FFFFFFEDEDED
      F4F4F4F7F7F7FFFBFFBAECE001CA9800C69000C79000C79000CA960ECC9D0FCD
      9E0FCD9E08CB9B00C998FFFBFF8DE4CE00C68F10CD9E10CD9E10CD9E00C99645
      D7B3FFFFFFC69660923E00954500924000EDCCB8FFFFFF08CB9B09CB9C10CD9E
      10CD9E10CD9E10CD9E10CD9E10CD9E10CD9E10CD9E0FCD9E00C58E9BE6D4FFFB
      FFF6F7F6E3E3E3F9F9F9FFFFFFE7E7E7F7F8F7FDF8F9FFFAFC0ACE9F00C9970D
      CEA10DCEA10DCEA10DCEA10DCEA10DCEA10DCEA100CA9A2AD3ACFFFFFFE6F5F0
      00C99800C79400CA9900CB9B00C7904ADBBCFFFFFFA75D079E4F00A25800913C
      00D0A47DFFFFFF03CD9E00C99600CB9A00CB9A00CB9B00CB9B00CB9B00CB9B00
      CB9B00CA9900C79400CB9BF7F7F7FFFAFAF7F8F7E7E7E7FEFEFEFFFFFFECECEC
      F8F8F8FFFAFBF2F6F500CB9B04CEA10BCFA30BCFA30BCFA30BCFA30BCFA30BCF
      A30BCFA300C8958CE6D1FFFDFFFFFCFFD3F2EC4ADAB931D6B02FD5AF1BD1AA6E
      E2CAFFFFFFAF6B0CA65900A960009A4600D5AD80FFFFFF36D5B327D3AE2FD5B0
      2FD5B02FD5B12FD5B12FD5B12FD5B12FD5AF31D6B155DBBDE0F5F0FFFBFFF9F8
      F8F9F8F8F5F4F4FFFFFFFFFFFFF1F1F1F9F9F9FDF9FBFFFCFF12D1A700CB9B06
      CFA407D0A407D0A407D0A406D0A404CFA400CC9E00CD9EF6F8F8FFFBFDFAF9F9
      FFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4700FAA5D00AD64009E4B
      00D4B184FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
      FEFFFFFEFFFFFEFFFFFBFFFAF9F9F9F9F9EEEEEEFFFFFFFFFFFFFFFFFFF9F9F9
      F6F6F6FAF9F9FFFDFFC7F2E902D1A600CC9E00CD9F00CD9F00CD9F00CDA000CE
      A000D0A5ACEDE0FFFEFFFBF9F9FAF9F9FAF9F8FCFCFEFFFFFFFBF7F7FBF9F9FB
      FBFDFDFFFFBB7612AF6300B16900A55200D4B07FFFFFFFFAF9F9FBF7F7FDFCFD
      FFFFFFFCFBFCFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFAF9F9FAF9F9FAF9F9F0F0
      F0FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDFAFAFAFBFAFAFFFDFFFFFBFDD8
      F5EED5F5EED7F5EFD7F5EFDAF4F0E6F6F3FFFDFEFFFEFFFCFAFAFAFAFAFAFAFA
      FAFAFBFFFFFFCD9C52B36100B86D00B86D00B97000B66C00B76C00B56C00B166
      00AE6400AB6100A75B00A35600984800DBC4A8FFFFFFF9F9FAF9FAFAFAFAFAFA
      FAFAFAFAFAF5F5F5F2F2F2F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FDFDFDF0EFEFFBFAFAFBFAFAFFFBFCFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFD
      FFFFFBFCFBFAFAFBFAFAEEEDEDF8F7F7FBFBFCFFFFFFBF7A15B76500BD7100BD
      7000BC7000BC7200BB7200B96F00B66D00B16700AD6000A85D00A65A00933D00
      C79D72FFFFFFFBFAFAE9E8E8F8F8F8FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FBFBFBFAFBFBFA
      FBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFBFBFAFAFAF2F2F2EBEBEBFBFBFB
      FBFDFDFFFFFFC68217BF6F00C47B00C47A00C37900C27800BF7600BC7300B970
      00B66C00B26900AE6500AA62009A4700CAA173FFFFFFFBFBFBEBEBEBFAFAFAFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFAF9F9F7F6F6F6F5F5F6F5F5F6F5F5F7F6F6F7F7
      F7FBFBFBFFFFFFFFFFFFF3F3F3FCFCFBFCFCFDFFFFFFCD8D25BB6100C26E00C2
      6E00C16F00C37800C37800C07600BB7200B46400AB5700A65200A14D00913500
      D3B082FFFFFFFCFCFBEAEAE9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF4F4F4
      FCFCFCFEFFFFF9F2E6ECD4A8EED8B1EEDAB5F0DDBDCC860AC57900C37900B969
      00D2A359EDDFC8E6D1B1E4CEAEE4D0B4FEFFFFFEFFFFFCFCFCEAEAEAFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEFDFDFCFDFDFDFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFD18C11C77900C57D00B86500E1C089FFFFFFFFFFFFFFFFFFFFFFFF
      FEFFFFFDFDFCFDFDFCF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
      F2F2F2FDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFD38D0EC97A00C77E00B965
      00DFBC81FFFFFFFDFDFEFDFDFDFDFDFDFDFDFDFBFBFBF4F4F4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF6F6F6EFEFEFFEFDFDFE
      FFFFFFFFFFD28A07CA7D00C97F00BA6400DEB880FFFFFFFEFDFDF8F7F7F3F3F3
      F8F8F8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFF4F4F4FCFCFCFEFFFFFFFFFFD69422C06700C06C00B154
      00E1C08AFFFFFFFEFEFEEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF5F5F5FE
      FEFEFFFFFFF9F3E4EBD0A0ECD3A9E9D1A6FEFFFEFFFFFFFEFEFEEAEAEAFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF1F1F1FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFFFFFEF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3
      F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F7F7F5F5F5F4F4F4F5F5
      F5F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object AbreCaixa: TFDQuery
    Connection = DmDados.Conexao
    SQL.Strings = (
      
        'INSERT INTO CAIXA(COD_USU,DATA_ABERTURA,HORA_ABERTURA,VL_ABERTUR' +
        'A,SALDO,STATUS,EMPRESA)'
      'VALUES(:cod,:dt,:hr,:vl,:sd,:st,:empresa)')
    Left = 184
    Top = 24
    ParamData = <
      item
        Name = 'cod'
        ParamType = ptInput
      end
      item
        Name = 'dt'
        ParamType = ptInput
      end
      item
        Name = 'hr'
        ParamType = ptInput
      end
      item
        Name = 'vl'
        ParamType = ptInput
      end
      item
        Name = 'sd'
        ParamType = ptInput
      end
      item
        Name = 'st'
        ParamType = ptInput
      end
      item
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
  end
end
