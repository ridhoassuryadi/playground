object formgunaobat: Tformgunaobat
  Left = 307
  Top = 121
  Width = 269
  Height = 505
  Caption = 'Aplikasi Poliklinik'
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 16
    Top = 97
    Width = 225
    Height = 4
    Brush.Color = clHotLight
    Pen.Color = clNone
    Pen.Style = psClear
    Visible = False
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 75
    Height = 13
    Caption = 'Kegunaan Obat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object txtgunaobat: TEdit
    Left = 16
    Top = 80
    Width = 225
    Height = 17
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 16
    Top = 320
    Width = 225
    Height = 33
    Caption = 'Tambahkan Kegunaan Obat'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 104
    Width = 225
    Height = 209
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 16
    Top = 360
    Width = 225
    Height = 33
    Caption = 'Edit Kegunaan Obat'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 16
    Top = 400
    Width = 225
    Height = 33
    Caption = 'Hapus Kegunaan Obat'
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
    Left = 224
    Top = 32
  end
  object ADOTable1: TADOTable
    Active = True
    CacheSize = 15
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'master_guna_obat'
    Left = 200
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from master_guna_obat')
    Left = 176
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 152
    Top = 32
  end
end
