object formNamaObat: TformNamaObat
  Left = 310
  Top = 93
  Width = 307
  Height = 448
  Caption = 'Aplikasi Poliklinik'
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Shape4: TShape
    Left = 80
    Top = 81
    Width = 169
    Height = 4
    Brush.Color = clHotLight
    Pen.Color = clNone
    Pen.Style = psClear
    Visible = False
  end
  object Label1: TLabel
    Left = 8
    Top = 64
    Width = 54
    Height = 13
    Caption = 'Nama Obat'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object btncek: TImage
    Left = 256
    Top = 63
    Width = 25
    Height = 23
    Picture.Data = {
      0A544A504547496D6167659E030000FFD8FFE000104A46494600010101009600
      960000FFDB0043000302020302020303030304030304050805050404050A0707
      06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
      1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
      1414141414141414141414141414141414141414141414141414141414141414
      14141414141414141414141414FFC0001108001E001D03012200021101031101
      FFC4001F0000010501010101010100000000000000000102030405060708090A
      0BFFC400B5100002010303020403050504040000017D01020300041105122131
      410613516107227114328191A1082342B1C11552D1F02433627282090A161718
      191A25262728292A3435363738393A434445464748494A535455565758595A63
      6465666768696A737475767778797A838485868788898A92939495969798999A
      A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
      D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
      01010101010101010000000000000102030405060708090A0BFFC400B5110002
      0102040403040705040400010277000102031104052131061241510761711322
      328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
      292A35363738393A434445464748494A535455565758595A636465666768696A
      737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
      A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
      E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00EFA1
      587C98F31213B467E51E94FDB07FCF28FF00EF9154EDD8CAD144A543310A3730
      039E3927A5761E23F85FE22F0DF892C3459AD05CDCDFEDFB2496C77C73E71F75
      BDB3CFA75E9CD7E330E79C5CA31BA565F7EC7C325292BA4737B60FF9E51FFDF2
      2A9EA210797B1157AE768C7A57A97C508740F01F876CFC1B6715BEA1AFC520B9
      D4F53C731C847FAA43E801E47B7A938F26B893CCDB55888FB19FB26EEFAF93ED
      F22AA47D9CB91BD4A2D395623DEBD47C1BFB436B7E13F08DCE8A628EF658D0AE
      9B79360BD913C3632391B49C0EDEE38AF2892CE66919832E0924727FC29BF619
      FF00BC9F99FF000AE7A35AAE1E4E74A566670A93A6EF0762D4D7D25CCD24D2C8
      D2CB2317777392C49C924F734E864F33354FEC33FF00793F33FE1562D20921DF
      BC839C6306B08AD6E42DCFFFD9}
    OnClick = btncekClick
  end
  object txtnama: TEdit
    Left = 80
    Top = 64
    Width = 169
    Height = 17
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = txtnamaKeyPress
  end
  object Button1: TButton
    Left = 8
    Top = 88
    Width = 273
    Height = 25
    Caption = 'Simpan Obat Baru'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 152
    Width = 273
    Height = 249
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 8
    Top = 120
    Width = 129
    Height = 25
    Caption = 'Edit Data'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 152
    Top = 120
    Width = 129
    Height = 25
    Caption = 'Hapus Data'
    TabOrder = 4
    OnClick = Button3Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=data.mdb;Persist Se' +
      'curity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
    Top = 16
  end
  object ADOSimpan: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'master_nama_obat'
    Left = 40
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from master_guna_obat')
    Left = 64
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOSimpan
    Left = 88
    Top = 16
  end
end
