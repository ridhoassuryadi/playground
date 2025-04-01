object formlihattipeobat: Tformlihattipeobat
  Left = 192
  Top = 124
  BorderStyle = bsDialog
  Caption = 'Lihat Data Tipe Obat'
  ClientHeight = 390
  ClientWidth = 427
  Color = clHighlight
  Constraints.MaxHeight = 429
  Constraints.MaxWidth = 443
  Constraints.MinHeight = 429
  Constraints.MinWidth = 443
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 296
    Top = 16
    Width = 49
    Height = 17
    Brush.Color = clRed
  end
  object Shape2: TShape
    Left = 296
    Top = 48
    Width = 49
    Height = 17
    Brush.Color = clGreen
  end
  object Label1: TLabel
    Left = 352
    Top = 16
    Width = 37
    Height = 13
    Caption = 'Generic'
  end
  object Label2: TLabel
    Left = 352
    Top = 48
    Width = 60
    Height = 13
    Caption = 'Non Generic'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 281
    Height = 65
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tipe_Obat'
        Title.Alignment = taCenter
        Title.Caption = 'Tipe Obat'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Jumlah_Transaksi'
        Title.Caption = 'Jumlah Pembelian'
        Visible = True
      end>
  end
  object DBChart1: TDBChart
    Left = 0
    Top = 88
    Width = 425
    Height = 305
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    PrintProportional = False
    Title.Text.Strings = (
      'Data Pembelian Obat'
      '')
    AxisVisible = False
    Chart3DPercent = 55
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.HorizOffset = 19
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DOptions.VertOffset = 19
    View3DOptions.Zoom = 106
    View3DWalls = False
    TabOrder = 1
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      DataSource = qtipeobat
      SeriesColor = clRed
      XLabelsSource = 'Jumlah_Transaksi'
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
      PieValues.ValueSource = 'Jumlah_Transaksi'
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=data.mdb;Persist Se' +
      'curity Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = qtipeobat
    Left = 128
    Top = 24
  end
  object qtipeobat: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM query_jumlah_tipe_obat')
    Left = 8
    Top = 32
  end
end
