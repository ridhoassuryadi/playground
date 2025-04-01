unit uLihatPasien;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, jpeg, ExtCtrls, DB, ADODB, StdCtrls, ComCtrls,
  Menus, RpRave, RpDefine, RpCon, RpConDS,ComObj;

type
  Tformlihatpasien = class(TForm)
    Image1: TImage;
    DBGrid1: TDBGrid;
    Image2: TImage;
    GroupBox3: TGroupBox;
    Image3: TImage;
    Shape4: TShape;
    Label9: TLabel;
    Shape6: TShape;
    Shape7: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    txtnomor: TEdit;
    txtnama: TEdit;
    txtno: TEdit;
    cbkspeg: TComboBox;
    grupdatagridfield: TGroupBox;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Shape5: TShape;
    Shape8: TShape;
    edgridinduk: TEdit;
    edgridnama: TEdit;
    edgridjenis: TEdit;
    edgridtanggal: TEdit;
    edgridstatus: TEdit;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DateTimePicker1: TDateTimePicker;
    adojk: TADOQuery;
    PopupMenu1: TPopupMenu;
    KembaliKeMenuPasien1: TMenuItem;
    Bantuan1: TMenuItem;
    KeluarAplikasi1: TMenuItem;
    RefreshDatagrid1: TMenuItem;
    MainMenu1: TMainMenu;
    Aplikasi1: TMenuItem;
    PrintData1: TMenuItem;
    KembaliKeMenuPasien2: TMenuItem;
    Bantuan2: TMenuItem;
    KeluarAplikasi2: TMenuItem;
    BerdasarkanNomorInduk1: TMenuItem;
    BerdasarkanNama1: TMenuItem;
    lblkodejk: TLabel;
    lblkodest: TLabel;
    lblcarikodejk: TLabel;
    Shape9: TShape;
    Label18: TLabel;
    Label19: TLabel;
    lbltransaksi: TLabel;
    Label21: TLabel;
    Shape10: TShape;
    Shape11: TShape;
    Shape13: TShape;
    Shape14: TShape;
    lbljam: TLabel;
    lblhari: TLabel;
    Shape12: TShape;
    Shape15: TShape;
    lbllogin: TLabel;
    entangAplikasi1: TMenuItem;
    Bantuan3: TMenuItem;
    PopupMenu2: TPopupMenu;
    KembaliKeTransaksiPegawai1: TMenuItem;
    KeluarAplikasi3: TMenuItem;
    RefreshData1: TMenuItem;
    anyakan1: TMenuItem;
    entangAplikasi2: TMenuItem;
    Bantuan4: TMenuItem;
    ADOQuery2: TADOQuery;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DBGrid2: TDBGrid;
    qunit: TADOQuery;
    DataSource2: TDataSource;
    reportpasienkeluarga: TRvDataSetConnection;
    projectreportkeluarga: TRvProject;
    PrintDataSemuanya1: TMenuItem;
    PrintDataBerdasarkanNomorinduk1: TMenuItem;
    PrintDataBerdasarkanNamaKeluarga1: TMenuItem;
    PrintDataBerdasarkanNomorPasien1: TMenuItem;
    PrintDataBerdasarkanJenisKeluarga1: TMenuItem;
    reportprojectpegawai: TRvProject;
    dspegawai: TRvDataSetConnection;
    PrintDataPasienPegawaiSeluruhnya1: TMenuItem;
    PrintDataBerdasarkanNomorInduk2: TMenuItem;
    PrintDataBerdasarkanNamaPegawai1: TMenuItem;
    PrintDataBerdasarkanNomorPasien2: TMenuItem;
    Image13: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    E1: TMenuItem;
    ExportPasienPegawai1: TMenuItem;
    ExportPasien1: TMenuItem;
    ExportBerdasarkanNamaPegawai1: TMenuItem;
    ExportBerdasarkanPersonelNumber1: TMenuItem;
    ExportBerdasarkanUnit1: TMenuItem;
    ExportPasienKeluarga1: TMenuItem;
    ExportSemuaData1: TMenuItem;
    ExportBerdasarkanNomorInduk1: TMenuItem;
    ExportBerdasarkanJenisKeluarga1: TMenuItem;
    ExportBerdasarkanStatusTunjangan1: TMenuItem;
    ExportBerdasarkanUnit2: TMenuItem;
    ExportBerdasarkanNama1: TMenuItem;
    cbunit: TComboBox;
    Label7: TLabel;
    Image10: TImage;
    qstatuspeg: TADOQuery;
    cbtunjangan: TComboBox;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    Shape16: TShape;
    Label14: TLabel;
    Shape17: TShape;
    Shape18: TShape;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Shape19: TShape;
    Shape20: TShape;
    edpeginduk: TEdit;
    edpegnama: TEdit;
    edpegunit: TEdit;
    edpegperson: TEdit;
    edpegstat: TEdit;
    Image4: TImage;
    GroupBox4: TGroupBox;
    qtun: TADOQuery;
    ExportSemuaData2: TMenuItem;
    Image11: TImage;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btncarinomorindukClick(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure cbkspegChange(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FilterFieldIni1Click(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure KembaliKeMenuPasien1Click(Sender: TObject);
    procedure RefreshDatagrid1Click(Sender: TObject);
    procedure KeluarAplikasi2Click(Sender: TObject);
    procedure KembaliKe1Click(Sender: TObject);
    procedure KembaliKeMenuPasien2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure entangAplikasi1Click(Sender: TObject);
    procedure entangAplikasi2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure PrintDataSemuanya1Click(Sender: TObject);
    procedure PrintDataBerdasarkanNomorinduk1Click(Sender: TObject);
    procedure PrintDataBerdasarkanNamaKeluarga1Click(Sender: TObject);
    procedure PrintDataBerdasarkanNomorPasien1Click(Sender: TObject);
    procedure PrintDataBerdasarkanJenisKeluarga1Click(Sender: TObject);
    procedure PrintDataPasienPegawaiSeluruhnya1Click(Sender: TObject);
    procedure PrintDataBerdasarkanNomorInduk2Click(Sender: TObject);
    procedure PrintDataBerdasarkanNamaPegawai1Click(Sender: TObject);
    procedure PrintDataBerdasarkanNomorPasien2Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure txtnoEnter(Sender: TObject);
    procedure txtnamaEnter(Sender: TObject);
    procedure txtnomorEnter(Sender: TObject);
    procedure txtnomorExit(Sender: TObject);
    procedure txtnamaExit(Sender: TObject);
    procedure txtnoExit(Sender: TObject);
    procedure txtnomorChange(Sender: TObject);
    procedure txtnamaChange(Sender: TObject);
    procedure txtnoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnkembalikemenuClick(Sender: TObject);
    procedure ExportSemuaData1Click(Sender: TObject);
    procedure ExportBerdasarkanNomorInduk1Click(Sender: TObject);
    procedure ExportBerdasarkanJenisKeluarga1Click(Sender: TObject);
    procedure ExportBerdasarkanNama1Click(Sender: TObject);
    procedure cbunitChange(Sender: TObject);
    procedure cbtunjanganChange(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure ExportBerdasarkanUnit2Click(Sender: TObject);
    procedure ExportBerdasarkanStatusTunjangan1Click(Sender: TObject);
    procedure ExportSemuaData2Click(Sender: TObject);
    procedure ExportPasien1Click(Sender: TObject);
    procedure ExportBerdasarkanNamaPegawai1Click(Sender: TObject);
    procedure ExportBerdasarkanKeteranganStatus1Click(Sender: TObject);
    procedure ExportBerdasarkanPersonelNumber1Click(Sender: TObject);
    procedure ExportBerdasarkanUnit1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure TutupKoneksi;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formlihatpasien: Tformlihatpasien;

implementation

uses UASAL, uDoctorMenu, uInsertMasterPegawai, ulihatrecord,
  uLihatTranspeg, ulogindokter, umainobat, uMainUtama, uMasterDokter,
  uMasterKegunaanObat, uMasterKeluarga, uMasterLogin, uMasterObat,
  uMasterPasien, uMenuAwal, uMenuPegawai, uPasien, upilihdokter,
  uPilihKeluarga, uSplash, uAbout, uFamilytypetrans, ulihatdataobat,
  ulihatkeluarga, ulogin, umainobatpoli, uStatusPegawai, uTransunit;

{$R *.dfm}

procedure Tformlihatpasien.DBGrid1CellClick(Column: TColumn);
begin
  edgridinduk.Text:=ADOQuery1.FieldByName('Nomor_Induk').AsString;
  edgridnama.Text:=ADOQuery1.FieldByName('nama_keluarga').AsString;
  edgridjenis.Text:=ADOQuery1.FieldByName('jenis_keluarga').AsString;
  edgridtanggal.Text:=ADOQuery1.FieldByName('tanggal_kahir').AsString;
  edgridstatus.Text:=ADOQuery1.FieldByName('status_tunjangan').AsString;
end;

procedure Tformlihatpasien.btncarinomorindukClick(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_Keluarga WHERE Nomor_Induk =:nomor ORDER BY Nomor_Induk ASC');
ADOQuery1.Parameters.ParamByName('nomor').Value:=txtnomor.Text;
ADOQuery1.Open;
//
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai WHERE Nomor_Induk =:nomor ORDER BY Nomor_Induk ASC');
ADOQuery2.Parameters.ParamByName('nomor').Value:=txtnomor.Text;
ADOQuery2.Open;
end;

procedure Tformlihatpasien.Image17Click(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT master_keluarga.No_Keluarga, master_keluarga.nama_keluarga, master_pasien.nomor_pasien, master_keluarga.kode_jenis_keluarga, master_keluarga.tanggal_kahir, master_keluarga.nomor_induk,');
ADOQuery1.SQL.Add('master_jenis_keluarga.jenis_keluarga, master_status_tunjangan.status_tunjangan');
ADOQuery1.SQL.Add('FROM master_status_tunjangan INNER JOIN (master_jenis_keluarga INNER JOIN (master_pasien INNER JOIN master_keluarga ON (master_pasien.Nomor_Induk = master_keluarga.nomor_induk) AND');
ADOQuery1.SQL.Add('(master_pasien.No_Keluarga = master_keluarga.No_Keluarga)) ON (master_jenis_keluarga.kode_jenis_keluarga = master_keluarga.kode_jenis_keluarga) AND (master_pasien.Kode_jenis_keluarga = ');
ADOQuery1.SQL.Add('master_jenis_keluarga.kode_jenis_keluarga)) ON master_status_tunjangan.kode_status_tunjangan = master_keluarga.kode_status_tunjangan where master_pasien.nomor_pasien='+txtno.Text);
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT master_pasien.nomor_pasien, master_pasien.Nomor_Induk, [MASTER_PEGAWAI Query].Nama_Pegawai, [MASTER_PEGAWAI Query].Keterangan_status,');
ADOQuery2.SQL.Add('[MASTER_PEGAWAI Query].nama_unit, [MASTER_PEGAWAI Query].Personel_number');
ADOQuery2.SQL.Add('FROM [MASTER_PEGAWAI Query] INNER JOIN master_pasien ON (master_pasien.kode_status = [MASTER_PEGAWAI Query].kode_status_pegawai) AND ([MASTER_PEGAWAI Query].Nomor_induk = ');
ADOQuery2.SQL.Add('master_pasien.Nomor_Induk) where master_pasien.nomor_pasien='+txtno.Text);
ADOQuery2.Open;
end;

procedure Tformlihatpasien.cbkspegChange(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_keluarga WHERE jenis_keluarga =:jenis ORDER BY Nomor_Induk ASC');
ADOQuery1.Parameters.ParamByName('jenis').Value:=cbkspeg.Text;
ADOQuery1.Open;
end;

procedure Tformlihatpasien.DateTimePicker1Change(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_pasien_keluarga WHERE tanggal_kahir =:tgl1 ORDER BY Nomor_Induk ASC');
ADOQuery1.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
ADOQuery1.Open;
end;

procedure Tformlihatpasien.FilterFieldIni1Click(Sender: TObject);
var
  nom:string;
Begin
  nom:=ADOQuery1.FieldByName('Nomor_Pasien').AsString;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM master_pasien_Query WHERE nomor_pasien =:nomor ORDER BY Nomor_Induk ASC');
  ADOQuery1.Parameters.ParamByName('nomor').Value:=nom;
  ADOQuery1.Open;

end;

procedure Tformlihatpasien.KeluarAplikasi1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tformlihatpasien.KembaliKeMenuPasien1Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM master_pasien_Query ');
ADOQuery1.Open;
ADOQuery1.Next;
txtnomor.Clear;
txtnama.Clear;
txtno.Clear;
ADOQuery1.Active:=true;
adojk.Close;
adojk.SQL.Clear;
adojk.SQL.Add('Select * From master_jenis_keluarga');
adojk.ExecSQL;
adojk.Open;
cbkspeg.Clear;
while not adojk.Eof do
  begin
    cbkspeg.Items.Add(adojk['jenis_keluarga']);
    adojk.Next;
  end;

       formmainpasien.Show;
       formlihatpasien.Hide;
end;

procedure Tformlihatpasien.RefreshDatagrid1Click(Sender: TObject);
begin
edpeginduk.Clear;
edpegnama.Clear;
edpegstat.Clear;
edpegunit.Clear;
edpegperson.Clear;
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('Select * From Query_Pasien_Keluarga');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
qtun.Active:=true;
qtun.Close;
qtun.SQL.Clear;
qtun.SQL.Add('SELECT * FROM Master_Status_Tunjangan');
qtun.ExecSQL;
qtun.Open;
cbtunjangan.Clear;
qtun.First;
while not qtun.Eof do
begin
  cbtunjangan.Items.Add(qtun['status_tunjangan']);
  qtun.Next;
end;
//
//
qunit.Active:=true;
qunit.Close;
qunit.SQL.Clear;
qunit.SQL.Add('Select * from master_unit');
qunit.ExecSQL;
qunit.Open;
cbunit.Clear;
qunit.First;
while not qunit.Eof do
begin
   cbunit.Items.Add(qunit['Nama_Unit']);
   qunit.Next;
end;

//
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_pasien_pegawai ');
ADOQuery2.Open;
ADOQuery2.Next;
txtnomor.Clear;
txtnama.Clear;
txtno.Clear;
ADOQuery2.Active:=true;
adojk.Close;
adojk.SQL.Clear;
adojk.SQL.Add('Select * From master_jenis_keluarga');
adojk.ExecSQL;
adojk.Open;
cbkspeg.Clear;
while not adojk.Eof do
  begin
    cbkspeg.Items.Add(adojk['jenis_keluarga']);
    adojk.Next;
  end;
edgridinduk.Clear;
edgridnama.Clear;
edgridjenis.Clear;
edgridtanggal.Clear;
edgridstatus.Clear;

end;

procedure Tformlihatpasien.KeluarAplikasi2Click(Sender: TObject);
begin
    Application.Terminate;
end;

procedure Tformlihatpasien.KembaliKe1Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM master_pasien_Query ');
ADOQuery1.Open;
ADOQuery1.Next;
txtnomor.Clear;
txtnama.Clear;
txtno.Clear;
ADOQuery1.Active:=true;
adojk.Close;
adojk.SQL.Clear;
adojk.SQL.Add('Select * From master_jenis_keluarga');
adojk.ExecSQL;
adojk.Open;
cbkspeg.Clear;
while not adojk.Eof do
  begin
    cbkspeg.Items.Add(adojk['jenis_keluarga']);
    adojk.Next;
  end;

    fMainmenu.Show;
    formlihatpasien.Hide;
end;

procedure Tformlihatpasien.KembaliKeMenuPasien2Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM master_pasien_Query ');
ADOQuery1.Open;
ADOQuery1.Next;
txtnomor.Clear;
txtnama.Clear;
txtno.Clear;
ADOQuery1.Active:=true;
adojk.Close;
adojk.SQL.Clear;
adojk.SQL.Add('Select * From master_jenis_keluarga');
adojk.ExecSQL;
adojk.Open;
cbkspeg.Clear;
while not adojk.Eof do
  begin
    cbkspeg.Items.Add(adojk['jenis_keluarga']);
    adojk.Next;
  end;

    formmainpasien.Show;
    formlihatpasien.hide;
    edgridinduk.Clear;
edgridnama.Clear;
edgridjenis.Clear;
edgridtanggal.Clear;
edgridstatus.Clear;
end;

procedure Tformlihatpasien.FormCreate(Sender: TObject);
begin
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_pasien_pegawai ');
ADOQuery2.Open;
ADOQuery2.Next;
//
{ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('Select * From Query_Pasien_Keluarga');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
}
//
qtun.Active:=true;
qtun.Close;
qtun.SQL.Clear;
qtun.SQL.Add('SELECT * FROM Master_Status_Tunjangan');
qtun.ExecSQL;
qtun.Open;
cbtunjangan.Clear;
qtun.First;
while not qtun.Eof do
begin
  cbtunjangan.Items.Add(qtun['status_tunjangan']);
  qtun.Next;
end;




qunit.Active:=true;
qunit.Close;
qunit.SQL.Clear;
qunit.SQL.Add('Select * from master_unit');
qunit.ExecSQL;
qunit.Open;
cbunit.Clear;
qunit.First;
while not qunit.Eof do
begin
   cbunit.Items.Add(qunit['Nama_Unit']);
   qunit.Next;
end;
//
ADOQuery1.Active:=true;
adojk.Close;
adojk.SQL.Clear;
adojk.SQL.Add('Select * From master_jenis_keluarga');
adojk.ExecSQL;
adojk.Open;
while not adojk.Eof do
  begin
    cbkspeg.Items.Add(adojk['jenis_keluarga']);
    adojk.Next;
  end;
end;

procedure Tformlihatpasien.entangAplikasi1Click(Sender: TObject);
begin
   formabout.Show;
end;

procedure Tformlihatpasien.entangAplikasi2Click(Sender: TObject);
begin
formabout.Show;

end;

procedure Tformlihatpasien.RadioButton1Click(Sender: TObject);
begin
DBGrid2.Visible:=false;
DBGrid1.Visible:=true;

ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
ADOQuery1.ExecSQL;
ADOQuery1.Open;

end;

procedure Tformlihatpasien.RadioButton2Click(Sender: TObject);
begin
DBGrid1.Visible:=false;
DBGrid2.Visible:=true;
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
ADOQuery2.ExecSQL;
ADOQuery2.Open;
end;

procedure Tformlihatpasien.DBGrid2CellClick(Column: TColumn);
begin
edpeginduk.Text:=ADOQuery2.FieldByName('Nomor_Induk').AsString;
edpegnama.Text:=ADOQuery2.FieldByName('Nama_Pegawai').AsString;
edpegunit.Text:=ADOQuery2.FieldByName('Nama_Unit').AsString;
edpegperson.Text:=ADOQuery2.FieldByName('Personel_number').AsString;
edpegstat.Text:=ADOQuery2.FieldByName('Keterangan_Status').AsString;

end;

procedure Tformlihatpasien.PrintDataSemuanya1Click(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
projectreportkeluarga.Execute;
end;

procedure Tformlihatpasien.PrintDataBerdasarkanNomorinduk1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data ','Silahkan Masukan Nomor Induk :','');
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_Keluarga WHERE Nomor_Induk =:nomor ORDER BY Nomor_Induk ASC');
ADOQuery1.Parameters.ParamByName('nomor').Value:=data;
ADOQuery1.Open;
projectreportkeluarga.Open;
projectreportkeluarga.SelectReport('Report',False);
projectreportkeluarga.SetParam('datastr','Berdasarkan Nomor Induk :'+data);
projectreportkeluarga.Execute;
projectreportkeluarga.Close;

end;

procedure Tformlihatpasien.PrintDataBerdasarkanNamaKeluarga1Click(
  Sender: TObject);
var
  data:string;
begin

data:=InputBox('Print Data','Masukkan Nama Keluarga :','');
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_Keluarga WHERE nama_keluarga ='+QuotedStr(data));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
projectreportkeluarga.Open;
projectreportkeluarga.SelectReport('Report',False);
projectreportkeluarga.SetParam('datastr','Berdasarkan Nama Keluarga :'+data);
projectreportkeluarga.Execute;
projectreportkeluarga.Close;
end;

procedure Tformlihatpasien.PrintDataBerdasarkanNomorPasien1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nomor Pasien :','');
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT master_keluarga.No_Keluarga, master_keluarga.nama_keluarga, master_pasien.nomor_pasien, master_keluarga.kode_jenis_keluarga, master_keluarga.tanggal_kahir, master_keluarga.nomor_induk,');
ADOQuery1.SQL.Add('master_jenis_keluarga.jenis_keluarga, master_status_tunjangan.status_tunjangan');
ADOQuery1.SQL.Add('FROM master_status_tunjangan INNER JOIN (master_jenis_keluarga INNER JOIN (master_pasien INNER JOIN master_keluarga ON (master_pasien.Nomor_Induk = master_keluarga.nomor_induk) AND');
ADOQuery1.SQL.Add('(master_pasien.No_Keluarga = master_keluarga.No_Keluarga)) ON (master_jenis_keluarga.kode_jenis_keluarga = master_keluarga.kode_jenis_keluarga) AND (master_pasien.Kode_jenis_keluarga = ');
ADOQuery1.SQL.Add('master_jenis_keluarga.kode_jenis_keluarga)) ON master_status_tunjangan.kode_status_tunjangan = master_keluarga.kode_status_tunjangan where master_pasien.nomor_pasien='+data);
ADOQuery1.ExecSQL;
ADOQuery1.Open;
projectreportkeluarga.Open;
projectreportkeluarga.SelectReport('Report',False);
projectreportkeluarga.SetParam('datastr','Berdasarkan Nomor Pasien :'+data);
projectreportkeluarga.Execute;
projectreportkeluarga.Close;
end;

procedure Tformlihatpasien.PrintDataBerdasarkanJenisKeluarga1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Jenis Keluarga :','');
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_keluarga WHERE jenis_keluarga =:jenis ORDER BY Nomor_Induk ASC');
ADOQuery1.Parameters.ParamByName('jenis').Value:=data;
ADOQuery1.Open;
projectreportkeluarga.Open;
projectreportkeluarga.SelectReport('Report',False);
projectreportkeluarga.SetParam('datastr','Berdasarkan Jenis Keluarga :'+data);
projectreportkeluarga.Execute;
projectreportkeluarga.Close;

end;

procedure Tformlihatpasien.PrintDataPasienPegawaiSeluruhnya1Click(
  Sender: TObject);
begin
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
ADOQuery2.ExecSQL;
ADOQuery2.Open;
reportprojectpegawai.Execute;
end;

procedure Tformlihatpasien.PrintDataBerdasarkanNomorInduk2Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nomor Induk :','');
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai WHERE Nomor_Induk =:nomor ORDER BY Nomor_Induk ASC');
ADOQuery2.Parameters.ParamByName('nomor').Value:=data;
ADOQuery2.Open;
      reportprojectpegawai.Open;
reportprojectpegawai.SelectReport('Report',False);
reportprojectpegawai.SetParam('datastr','Berdasarkan Nomor Induk :'+txtnomor.Text);
reportprojectpegawai.Execute;
reportprojectpegawai.Close;

end;

procedure Tformlihatpasien.PrintDataBerdasarkanNamaPegawai1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nama Pegawai :','');
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai WHERE Nama_Pegawai ='+QuotedStr(data));
ADOQuery2.Open;
reportprojectpegawai.Open;
  reportprojectpegawai.SelectReport('Report',False);
  reportprojectpegawai.SetParam('datastr','Berdasarkan Nama Pasien:'+data);
  reportprojectpegawai.Execute;
  reportprojectpegawai.Close;
end;

procedure Tformlihatpasien.PrintDataBerdasarkanNomorPasien2Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nomor Pasien :','');
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT master_pasien.nomor_pasien, master_pasien.Nomor_Induk, [MASTER_PEGAWAI Query].Nama_Pegawai, [MASTER_PEGAWAI Query].Keterangan_status,');
ADOQuery2.SQL.Add('[MASTER_PEGAWAI Query].nama_unit, [MASTER_PEGAWAI Query].Personel_number');
ADOQuery2.SQL.Add('FROM [MASTER_PEGAWAI Query] INNER JOIN master_pasien ON (master_pasien.kode_status = [MASTER_PEGAWAI Query].kode_status_pegawai) AND ([MASTER_PEGAWAI Query].Nomor_induk = ');
ADOQuery2.SQL.Add('master_pasien.Nomor_Induk) where master_pasien.nomor_pasien='+data);
ADOQuery2.Open;
reportprojectpegawai.Open;
  reportprojectpegawai.SelectReport('Report',False);
  reportprojectpegawai.SetParam('datastr','Berdasarkan Nomor Pasien:'+data);
  reportprojectpegawai.Execute;
  reportprojectpegawai.Close;
end;

procedure Tformlihatpasien.Image13Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
  ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_Keluarga WHERE Nomor_Induk Like'+QuotedStr(txtnomor.Text+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
projectreportkeluarga.Open;
projectreportkeluarga.SelectReport('Report',False);
projectreportkeluarga.SetParam('datastr','Berdasarkan Nomor Induk :'+txtnomor.Text);
projectreportkeluarga.Execute;
projectreportkeluarga.Close;
  end
else if RadioButton2.Checked=true then
  begin
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai WHERE Nomor_Induk Like'+QuotedStr(txtnomor.Text+'%'));
ADOQuery2.ExecSQL;
ADOQuery2.Open;
      reportprojectpegawai.Open;
reportprojectpegawai.SelectReport('Report',False);
reportprojectpegawai.SetParam('datastr','Berdasarkan Nomor Induk :'+txtnomor.Text);
reportprojectpegawai.Execute;
reportprojectpegawai.Close;
  end
else
  begin
    ShowMessage('Format Print Data tidak ditemukan');
  end;
end;

procedure Tformlihatpasien.Image6Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin

  ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_Keluarga WHERE nama_keluarga Like'+QuotedStr('%'+txtnama.Text+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
projectreportkeluarga.Open;
projectreportkeluarga.SelectReport('Report',False);
projectreportkeluarga.SetParam('datastr','Berdasarkan Nama Keluarga :'+txtnama.Text);
projectreportkeluarga.Execute;
projectreportkeluarga.Close;
  end
else if RadioButton2.Checked=true then
  begin
  ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai WHERE Nama_Pegawai Like'+QuotedStr('%'+txtnama.Text+'%'));
ADOQuery2.Open;
  reportprojectpegawai.Open;
  reportprojectpegawai.SelectReport('Report',False);
  reportprojectpegawai.SetParam('datastr','Berdasarkan Nama Pasien:'+txtnama.Text);
  reportprojectpegawai.Execute;
  reportprojectpegawai.Close;
  end
else
  begin
    ShowMessage('Format Print Data tidak ditemukan');
  end;
end;

procedure Tformlihatpasien.Image7Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT master_keluarga.No_Keluarga, master_pasien.nomor_pasien, master_pasien.Nomor_Induk, master_keluarga.nama_keluarga, master_keluarga.tanggal_kahir, master_keluarga.kode_status_tunjangan,');
ADOQuery1.SQL.Add('master_status_tunjangan.status_tunjangan, master_jenis_keluarga.kode_jenis_keluarga, master_jenis_keluarga.jenis_keluarga, [MASTER_PEGAWAI Query].nama_unit');
ADOQuery1.SQL.Add('FROM [MASTER_PEGAWAI Query] INNER JOIN (master_jenis_keluarga INNER JOIN (master_status_tunjangan INNER JOIN (master_pasien INNER JOIN master_keluarga ON (master_pasien.No_Keluarga = ');
ADOQuery1.SQL.Add('master_keluarga.No_Keluarga) AND (master_pasien.Nomor_Induk = master_keluarga.nomor_induk)) ON master_status_tunjangan.kode_status_tunjangan = master_keluarga.kode_status_tunjangan) ON ');
ADOQuery1.SQL.Add('master_jenis_keluarga.kode_jenis_keluarga = master_keluarga.kode_jenis_keluarga) ON [MASTER_PEGAWAI Query].Nomor_induk = master_keluarga.nomor_induk where master_pasien.nomor_pasien Like'+QuotedStr(txtno.Text+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
projectreportkeluarga.Open;
projectreportkeluarga.SelectReport('Report',False);
projectreportkeluarga.SetParam('datastr','Berdasarkan Nomor Pasien :'+txtno.Text);
projectreportkeluarga.Execute;
projectreportkeluarga.Close;
  end
else if RadioButton2.Checked=true then
  begin
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT master_pasien.nomor_pasien, [MASTER_PEGAWAI Query].Nomor_induk, [MASTER_PEGAWAI Query].Nama_Pegawai, [MASTER_PEGAWAI Query].Keterangan_status, [MASTER_PEGAWAI Query].nama_unit,');
ADOQuery2.SQL.Add('[MASTER_PEGAWAI Query].Personel_number, [MASTER_PEGAWAI Query].Kode_unit');
ADOQuery2.SQL.Add('FROM [MASTER_PEGAWAI Query] INNER JOIN master_pasien ON [MASTER_PEGAWAI Query].Nomor_induk = master_pasien.Nomor_Induk');
ADOQuery2.SQL.Add('WHERE (((master_pasien.No_Keluarga)=0)) and master_pasien.nomor_Pasien Like'+QuotedStr(txtno.Text+'%'));
ADOQuery2.Open;
reportprojectpegawai.Open;
  reportprojectpegawai.SelectReport('Report',False);
  reportprojectpegawai.SetParam('datastr','Berdasarkan Nomor Pasien:'+txtno.Text);
  reportprojectpegawai.Execute;
  reportprojectpegawai.Close;
  end
else
  begin
    ShowMessage('Format Print Data tidak ditemukan');
  end;

end;

procedure Tformlihatpasien.Image9Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_keluarga WHERE jenis_keluarga =:jenis ORDER BY Nomor_Induk ASC');
ADOQuery1.Parameters.ParamByName('jenis').Value:=cbkspeg.Text;
ADOQuery1.Open;
projectreportkeluarga.Open;
projectreportkeluarga.SelectReport('Report',False);
projectreportkeluarga.SetParam('datastr','Berdasarkan Jenis Keluarga :'+cbkspeg.Text);
projectreportkeluarga.Execute;
projectreportkeluarga.Close;
 end
else if RadioButton2.Checked=true then
  begin
  end
else
  begin
    ShowMessage('Format Print Data tidak ditemukan');
  end;

end;

procedure Tformlihatpasien.Image8Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
  ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_pasien_keluarga WHERE tanggal_kahir =:tgl1 ORDER BY Nomor_Induk ASC');
ADOQuery1.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
ADOQuery1.Open;
projectreportkeluarga.Open;
projectreportkeluarga.SelectReport('Report',False);
projectreportkeluarga.SetParam('datastr','Berdasarkan Tanggal Lahir :'+DateToStr(DateTimePicker1.Date));
projectreportkeluarga.Execute;
projectreportkeluarga.Close;
  end
else if RadioButton2.Checked=true then
  begin
  end
else
  begin
    ShowMessage('Format Print Data tidak ditemukan');
  end;

end;

procedure Tformlihatpasien.txtnoEnter(Sender: TObject);
begin
txtno.Text:='';
txtno.Font.Color:=clHotLight;
end;

procedure Tformlihatpasien.txtnamaEnter(Sender: TObject);
begin
txtnama.Text:='';
txtnama.Font.Color:=clHotLight;
end;

procedure Tformlihatpasien.txtnomorEnter(Sender: TObject);
begin
txtnomor.Text:='';
txtnomor.Font.Color:=clHotLight;
end;

procedure Tformlihatpasien.txtnomorExit(Sender: TObject);
begin
if txtnomor.Text='' then
  begin
    txtnomor.Font.Color:=clMedGray;
    txtnomor.Text:='Nomor Induk Pegawai';
  end;
end;

procedure Tformlihatpasien.txtnamaExit(Sender: TObject);
begin
if txtnama.Text='' then
  begin
    txtnama.Font.Color:=clMedGray;
    txtnama.Text:='Nama Pasien';
  end;
end;

procedure Tformlihatpasien.txtnoExit(Sender: TObject);
begin
if txtno.Text='' then
  begin
    txtno.Font.Color:=clMedGray;
    txtnomor.Text:='';
  end;
end;

procedure Tformlihatpasien.txtnomorChange(Sender: TObject);
begin
if txtnomor.Text='' then
  begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
ADOQuery2.ExecSQL;
ADOQuery2.Open;
  end
else
  begin
  ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_Keluarga WHERE Nomor_Induk Like'+QuotedStr(txtnomor.Text+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai WHERE Nomor_Induk Like'+QuotedStr(txtnomor.Text+'%'));
ADOQuery2.ExecSQL;
ADOQuery2.Open;

  end;
end;

procedure Tformlihatpasien.txtnamaChange(Sender: TObject);
begin
if txtnama.Text='' then
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
ADOQuery2.ExecSQL;
ADOQuery2.Open;
end
else
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_Keluarga WHERE nama_keluarga Like'+QuotedStr('%'+txtnama.Text+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai WHERE Nama_Pegawai Like'+QuotedStr('%'+txtnama.Text+'%'));
ADOQuery2.Open;
end;
end;

procedure Tformlihatpasien.txtnoChange(Sender: TObject);
begin
if txtno.Text='' then
begin
  ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
ADOQuery2.ExecSQL;
ADOQuery2.Open;
end
else
begin

ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT master_keluarga.No_Keluarga, master_pasien.nomor_pasien, master_pasien.Nomor_Induk, master_keluarga.nama_keluarga, master_keluarga.tanggal_kahir, master_keluarga.kode_status_tunjangan,');
ADOQuery1.SQL.Add('master_status_tunjangan.status_tunjangan, master_jenis_keluarga.kode_jenis_keluarga, master_jenis_keluarga.jenis_keluarga, [MASTER_PEGAWAI Query].nama_unit');
ADOQuery1.SQL.Add('FROM [MASTER_PEGAWAI Query] INNER JOIN (master_jenis_keluarga INNER JOIN (master_status_tunjangan INNER JOIN (master_pasien INNER JOIN master_keluarga ON (master_pasien.No_Keluarga = ');
ADOQuery1.SQL.Add('master_keluarga.No_Keluarga) AND (master_pasien.Nomor_Induk = master_keluarga.nomor_induk)) ON master_status_tunjangan.kode_status_tunjangan = master_keluarga.kode_status_tunjangan) ON ');
ADOQuery1.SQL.Add('master_jenis_keluarga.kode_jenis_keluarga = master_keluarga.kode_jenis_keluarga) ON [MASTER_PEGAWAI Query].Nomor_induk = master_keluarga.nomor_induk where master_pasien.nomor_pasien Like'+QuotedStr(txtno.Text+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;

//
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT master_pasien.nomor_pasien, [MASTER_PEGAWAI Query].Nomor_induk, [MASTER_PEGAWAI Query].Nama_Pegawai, [MASTER_PEGAWAI Query].Keterangan_status, [MASTER_PEGAWAI Query].nama_unit,');
ADOQuery2.SQL.Add('[MASTER_PEGAWAI Query].Personel_number, [MASTER_PEGAWAI Query].Kode_unit');
ADOQuery2.SQL.Add('FROM [MASTER_PEGAWAI Query] INNER JOIN master_pasien ON [MASTER_PEGAWAI Query].Nomor_induk = master_pasien.Nomor_Induk');
ADOQuery2.SQL.Add('WHERE (((master_pasien.No_Keluarga)=0)) and master_pasien.nomor_Pasien Like'+QuotedStr(txtno.Text+'%'));
ADOQuery2.Open;

end;
end;
procedure Tformlihatpasien.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
If MessageDlg('Apakah Anda Ingin Keluar Dari Aplikasi',mtConfirmation,mbYesNoCancel,1)=mrYes then
  begin
    TutupKoneksi;
    Application.Terminate;
    MessageDlg('Terima Kasih Telah menggunakan Aplikasi',mtInformation,[mbOk],1);
    end
else
  begin
    Abort;
  end;
end;

procedure Tformlihatpasien.btnkembalikemenuClick(Sender: TObject);
begin
TutupKoneksi;
KembaliKeMenuPasien2Click(Sender);
end;

procedure Tformlihatpasien.ExportSemuaData1Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
//data:=InputBox('Silahkan Masukkan Keterangan Status :','Export Data','');
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery1.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery1.Fields[filName].FieldName;
   end;
//
if ADOQuery1.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery1.RecordCount=1 then
begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatpasien.ExportBerdasarkanNomorInduk1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Induk :','Export Data','');
  ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_Keluarga WHERE Nomor_Induk Like'+QuotedStr(data+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery1.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery1.Fields[filName].FieldName;
   end;
//
if ADOQuery1.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery1.RecordCount=1 then
begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatpasien.ExportBerdasarkanJenisKeluarga1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Induk :','Export Data','');
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_keluarga WHERE jenis_keluarga Like'+QuotedStr('%'+data+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery1.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery1.Fields[filName].FieldName;
   end;
//
if ADOQuery1.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery1.RecordCount=1 then
begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;


procedure Tformlihatpasien.ExportBerdasarkanNama1Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Keluarga :','Export Data','');
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_Keluarga WHERE nama_keluarga Like'+QuotedStr('%'+data+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery1.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery1.Fields[filName].FieldName;
   end;
//
if ADOQuery1.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery1.RecordCount=1 then
begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatpasien.cbunitChange(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_keluarga WHERE nama_unit Like'+QuotedStr(cbunit.Text+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//

ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai WHERE nama_unit Like'+QuotedStr(cbunit.Text+'%'));
ADOQuery2.ExecSQL;
ADOQuery2.Open;

end;

procedure Tformlihatpasien.cbtunjanganChange(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_keluarga WHERE status_tunjangan Like'+QuotedStr(cbtunjangan.Text+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
end;

procedure Tformlihatpasien.Image10Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_keluarga WHERE nama_unit Like'+QuotedStr(cbunit.Text+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
projectreportkeluarga.Open;
projectreportkeluarga.SelectReport('Report',False);
projectreportkeluarga.SetParam('datastr','Berdasarkan Nama Unit :'+cbunit.Text);
projectreportkeluarga.Execute;
projectreportkeluarga.Close;
end
else if RadioButton2.Checked=true then
begin
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai WHERE nama_unit Like'+QuotedStr(cbunit.Text+'%'));
ADOQuery2.ExecSQL;
ADOQuery2.Open;
  reportprojectpegawai.Open;
  reportprojectpegawai.SelectReport('Report',False);
  reportprojectpegawai.SetParam('datastr','Berdasarkan Nama Unit:'+cbunit.Text);
  reportprojectpegawai.Execute;
  reportprojectpegawai.Close;
end
else
begin
  MessageDlg('Print Format Data Tidak Ditemukan',mtError,[mbYes],1);
end;
end;

procedure Tformlihatpasien.Image4Click(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_keluarga WHERE status_tunjangan Like'+QuotedStr(cbtunjangan.Text+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
projectreportkeluarga.Open;
projectreportkeluarga.SelectReport('Report',False);
projectreportkeluarga.SetParam('datastr','Berdasarkan Status Tunjangan :'+cbunit.Text);
projectreportkeluarga.Execute;
projectreportkeluarga.Close;
end;

procedure Tformlihatpasien.ExportBerdasarkanUnit2Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Unit Kerja :','Export Data','');
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_keluarga WHERE nama_unit Like'+QuotedStr(data+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery1.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery1.Fields[filName].FieldName;
   end;
//
if ADOQuery1.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery1.RecordCount=1 then
begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatpasien.ExportBerdasarkanStatusTunjangan1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Induk :','Export Data','');
  ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pasien_Keluarga WHERE status_tunjangan Like'+QuotedStr(data+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery1.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery1.Fields[filName].FieldName;
   end;
//
if ADOQuery1.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery1.RecordCount=1 then
begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatpasien.ExportSemuaData2Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
//data:=InputBox('Silahkan Masukkan Keterangan Status :','Export Data','');
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
ADOQuery2.ExecSQL;
ADOQuery2.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery2.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery2.Fields[filName].FieldName;
   end;
//
if ADOQuery2.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery2.RecordCount=1 then
begin
for r:=0 to ADOQuery2.RecordCount-1 do
begin
  for c:=0 to ADOQuery2.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery2.Fields[c].AsString;
  end;
 ADOQuery2.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery2.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to ADOQuery2.RecordCount-1 do
begin
  for c:=0 to ADOQuery2.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery2.Fields[c].AsString;
  end;
 ADOQuery2.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery2.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatpasien.ExportPasien1Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Induk :','Export Data','');
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai WHERE Nomor_Induk Like'+QuotedStr(data+'%'));
ADOQuery2.ExecSQL;
ADOQuery2.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery2.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery2.Fields[filName].FieldName;
   end;
//
if ADOQuery2.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery2.RecordCount=1 then
begin
for r:=0 to ADOQuery2.RecordCount-1 do
begin
  for c:=0 to ADOQuery2.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery2.Fields[c].AsString;
  end;
 ADOQuery2.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery2.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to ADOQuery2.RecordCount-1 do
begin
  for c:=0 to ADOQuery2.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery2.Fields[c].AsString;
  end;
 ADOQuery2.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery2.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatpasien.ExportBerdasarkanNamaPegawai1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Pegawai :','Export Data','');
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai WHERE Nama_Pegawai Like'+QuotedStr('%'+data+'%'));
ADOQuery2.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery2.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery2.Fields[filName].FieldName;
   end;
//
if ADOQuery2.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery2.RecordCount=1 then
begin
for r:=0 to ADOQuery2.RecordCount-1 do
begin
  for c:=0 to ADOQuery2.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery2.Fields[c].AsString;
  end;
 ADOQuery2.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery2.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to ADOQuery2.RecordCount-1 do
begin
  for c:=0 to ADOQuery2.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery2.Fields[c].AsString;
  end;
 ADOQuery2.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery2.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatpasien.ExportBerdasarkanKeteranganStatus1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Keterangan Status :','Export Data','');
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai WHERE Keterangan_Status Like'+QuotedStr(data+'%'));
ADOQuery2.ExecSQL;
ADOQuery2.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery2.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery2.Fields[filName].FieldName;
   end;
//
if ADOQuery2.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery2.RecordCount=1 then
begin
for r:=0 to ADOQuery2.RecordCount-1 do
begin
  for c:=0 to ADOQuery2.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery2.Fields[c].AsString;
  end;
 ADOQuery2.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery2.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to ADOQuery2.RecordCount-1 do
begin
  for c:=0 to ADOQuery2.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery2.Fields[c].AsString;
  end;
 ADOQuery2.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery2.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatpasien.ExportBerdasarkanPersonelNumber1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Keterangan Status :','Export Data','');
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai WHERE Personel_Number Like'+QuotedStr(data+'%'));
ADOQuery2.ExecSQL;
ADOQuery2.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery2.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery2.Fields[filName].FieldName;
   end;
//
if ADOQuery2.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery2.RecordCount=1 then
begin
for r:=0 to ADOQuery2.RecordCount-1 do
begin
  for c:=0 to ADOQuery2.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery2.Fields[c].AsString;
  end;
 ADOQuery2.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery2.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to ADOQuery2.RecordCount-1 do
begin
  for c:=0 to ADOQuery2.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery2.Fields[c].AsString;
  end;
 ADOQuery2.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery2.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatpasien.ExportBerdasarkanUnit1Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Unit Kerja :','Export Data','');
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_Pasien_Pegawai WHERE nama_unit Like'+QuotedStr(data+'%'));
ADOQuery2.ExecSQL;
ADOQuery2.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery2.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery2.Fields[filName].FieldName;
   end;
//
if ADOQuery2.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery2.RecordCount=1 then
begin
for r:=0 to ADOQuery2.RecordCount-1 do
begin
  for c:=0 to ADOQuery2.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery2.Fields[c].AsString;
  end;
 ADOQuery2.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery2.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to ADOQuery2.RecordCount-1 do
begin
  for c:=0 to ADOQuery2.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery2.Fields[c].AsString;
  end;
 ADOQuery2.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery2.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatpasien.FormActivate(Sender: TObject);
begin
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Query_pasien_pegawai ');
ADOQuery2.Open;
ADOQuery2.Next;
//
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('Select * From Query_Pasien_Keluarga');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
qtun.Active:=true;
qtun.Close;
qtun.SQL.Clear;
qtun.SQL.Add('SELECT * FROM Master_Status_Tunjangan');
qtun.ExecSQL;
qtun.Open;
cbtunjangan.Clear;
qtun.First;
while not qtun.Eof do
begin
  cbtunjangan.Items.Add(qtun['status_tunjangan']);
  qtun.Next;
end;


qunit.Active:=true;
qunit.Close;
qunit.SQL.Clear;
qunit.SQL.Add('Select * from master_unit');
qunit.ExecSQL;
qunit.Open;
cbunit.Clear;
qunit.First;
while not qunit.Eof do
begin
   cbunit.Items.Add(qunit['Nama_Unit']);
   qunit.Next;
end;
//
ADOQuery1.Active:=true;
adojk.Active:=True;
adojk.Close;
adojk.SQL.Clear;
adojk.SQL.Add('Select * From master_jenis_keluarga');
adojk.ExecSQL;
adojk.Open;
cbkspeg.Clear;
while not adojk.Eof do
  begin
    cbkspeg.Items.Add(adojk['jenis_keluarga']);
    adojk.Next;
  end;

end;

procedure Tformlihatpasien.TutupKoneksi;
begin
ADOQuery1.Active:=false;
adojk.Active:=false;
ADOQuery2.Active:=false;
qunit.Active:=false;
qstatuspeg.Active:=false;
qtun.Active:=false;
ADOConnection1.Connected:=false;
end;

end.
