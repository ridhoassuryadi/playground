unit ulihatchart2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, TeEngine, Series, ExtCtrls, TeeProcs,
  Chart, DbChart, Menus, StdCtrls;

type
  Tformstatunit = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DBChart1: TDBChart;
    DBGrid1: TDBGrid;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    Refresh1: TMenuItem;
    KembaliKeMenuAwal1: TMenuItem;
    PopupMenu2: TPopupMenu;
    RefreshData1: TMenuItem;
    utup1: TMenuItem;
    Series1: THorizBarSeries;
    procedure FormCreate(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
    procedure utup1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formstatunit: Tformstatunit;

implementation

uses uAbout, UASAL, uDoctorMain, uDoctorMenu, uFamilytypetrans,
  uInsertMasterPegawai, uLihatBerobatKeluarga, ulihatChart,
  ulihatchartobat, ulihatdataberobat, uLihatDataDokter, ulihatdataobat,
  ulihatkeluarga, uLihatPasien, uLihatpegawai, ulihatrecord,
  uLihatTranspeg, ulogin, ulogindokter, umainobat, umainobatpoli,
  uMainUtama, uMasterDokter, uMasterKegunaanObat, uMasterKeluarga,
  uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal, uMenuBerobat,
  uMenuDokter, uMenuPegawai, uMenuUser, uPasien, upilihdokter,
  uPilihKeluarga, uRiwayatpenyakit, uSplash, uStatusPegawai,
  uTransaksiuser, uTransunit;

{$R *.dfm}

procedure Tformstatunit.FormCreate(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Jumlah_Trans_unit');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * From Master_unit');
ADOQuery2.ExecSQL;
ADOQuery2.Open;
end;

procedure Tformstatunit.Refresh1Click(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Jumlah_Trans_unit');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * From Master_unit');
ADOQuery2.ExecSQL;
ShowMessage('Refresh Form');
end;

procedure Tformstatunit.RefreshData1Click(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Jumlah_Trans_unit');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * From Master_unit');
ADOQuery2.ExecSQL;
ADOQuery2.Open;
ShowMessage('Refresh');
end;

procedure Tformstatunit.utup1Click(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Jumlah_Trans_unit');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * From Master_unit');
ADOQuery2.ExecSQL;
ADOQuery2.Open;


formstatunit.Hide;
formAdminTreatment.Show;

end;

procedure Tformstatunit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ADOConnection1.Connected:=false;
ADOQuery1.Active:=false;
ADOQuery2.Active:=false;
end;

end.
