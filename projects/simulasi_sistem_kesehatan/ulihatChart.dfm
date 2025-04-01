object formlihatchartobat: Tformlihatchartobat
  Left = 185
  Top = 143
  BorderStyle = bsDialog
  Caption = 'Aplikasi Poliklinik'
  ClientHeight = 480
  ClientWidth = 492
  Color = clMenuHighlight
  Constraints.MaxHeight = 519
  Constraints.MaxWidth = 508
  Constraints.MinHeight = 519
  Constraints.MinWidth = 508
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 296
    Top = 56
    Width = 65
    Height = 17
    Brush.Color = clRed
  end
  object Shape2: TShape
    Left = 296
    Top = 88
    Width = 65
    Height = 17
    Brush.Color = clGreen
  end
  object Label1: TLabel
    Left = 368
    Top = 56
    Width = 55
    Height = 13
    Caption = 'Degeneratif'
  end
  object Label2: TLabel
    Left = 368
    Top = 88
    Width = 78
    Height = 13
    Caption = 'Non Degeneratif'
  end
  object DBGrid1: TDBGrid
    Left = 11
    Top = 48
    Width = 262
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
        FieldName = 'Tipe_Pasien'
        Title.Alignment = taCenter
        Title.Caption = 'Tipe Pasien'
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Jumlah_Transaksi'
        Title.Alignment = taCenter
        Title.Caption = 'Jumlah Pasien'
        Visible = True
      end>
  end
  object DBChart1: TDBChart
    Left = 0
    Top = 128
    Width = 497
    Height = 353
    AllowPanning = pmNone
    AllowZoom = False
    AnimatedZoom = True
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    BottomWall.Color = 16744448
    Title.Text.Strings = (
      'Statistik Tipe Banyak Penyakit')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.HorizOffset = 19
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DOptions.Zoom = 130
    View3DWalls = False
    Color = 15790320
    TabOrder = 1
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Style = smsPercent
      Marks.Visible = True
      DataSource = qtipepasien
      SeriesColor = clRed
      XLabelsSource = 'Jumlah_Transaksi'
      CustomXRadius = 95
      OtherSlice.Style = poBelowPercent
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
      PieValues.ValueSource = 'Jumlah_Transaksi'
      RotationAngle = 160
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=data.mdb;Persist Se' +
      'curity Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = qtipepasien
    Left = 104
    Top = 40
  end
  object qtipepasien: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Query_Jumlah_Tipe_Pasien')
    Left = 136
    Top = 24
  end
end
