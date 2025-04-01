unit ulihatChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DbChart, DB, ADODB,
  StdCtrls, Grids, DBGrids;

type
  Tformlihatchartobat = class(TForm)
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    DBChart1: TDBChart;
    Series1: TPieSeries;
    qtipepasien: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formlihatchartobat: Tformlihatchartobat;

implementation

uses Math;

{$R *.dfm}

procedure Tformlihatchartobat.FormCreate(Sender: TObject);
begin
qtipepasien.Active:=true;
qtipepasien.Close;
qtipepasien.SQL.Clear;
qtipepasien.SQL.Add('Select * From Query_Jumlah_Tipe_Pasien');
qtipepasien.ExecSQL;
qtipepasien.Open;
end;

procedure Tformlihatchartobat.FormActivate(Sender: TObject);
begin
qtipepasien.Active:=true;
end;

procedure Tformlihatchartobat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ADOConnection1.Connected:=false;
qtipepasien.Active:=false;
formlihatchartobat.Hide;
end;

end.
