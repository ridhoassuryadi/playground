unit ulihatdataberobat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, DB, ADODB, Grids, DBGrids, ComCtrls, StdCtrls,
  Menus, RpCon, RpConDS, RpDefine, RpRave, ComObj;

type
  Tformlihatberobatpegawai = class(TForm)
    ADOConnection1: TADOConnection;
    Image1: TImage;
    DataSource1: TDataSource;
    querypegawai: TADOQuery;
    Image2: TImage;
    dbgridpeg: TDBGrid;
    GroupBox3: TGroupBox;
    Image3: TImage;
    Shape4: TShape;
    Label9: TLabel;
    Shape6: TShape;
    Shape7: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Shape1: TShape;
    ednoindukpeg: TEdit;
    edpersonelpeg: TEdit;
    ednopeg: TEdit;
    cbunitpeg: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Image6: TImage;
    Label1: TLabel;
    grupdatagridfield: TGroupBox;
    Image9: TImage;
    Shape23: TShape;
    Label16: TLabel;
    Shape24: TShape;
    Shape25: TShape;
    Label17: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Shape27: TShape;
    Shape29: TShape;
    Label26: TLabel;
    edgridno: TEdit;
    edgridnama: TEdit;
    memokel: TMemo;
    memoanameaterimpin: TMemo;
    Label2: TLabel;
    memopempen: TMemo;
    memodiag: TMemo;
    Shape2: TShape;
    Label3: TLabel;
    edtipe: TEdit;
    Label4: TLabel;
    Shape3: TShape;
    queryunit: TADOQuery;
    Label5: TLabel;
    Shape5: TShape;
    queryobat: TADOQuery;
    MainMenu1: TMainMenu;
    GroupBox1: TGroupBox;
    dbgridbeliobat: TDBGrid;
    SourceBeliobat: TDataSource;
    querybeliobat: TADOQuery;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    dbgridjumlahtrans: TDBGrid;
    sourcejumlahtrans: TDataSource;
    queryjumlahtrans: TADOQuery;
    DateTimePicker2: TDateTimePicker;
    Label6: TLabel;
    projectrecordberobat: TRvProject;
    dsrecordberobat: TRvDataSetConnection;
    PrintData1: TMenuItem;
    PrintDataRecordBerobat1: TMenuItem;
    PrintDataBerobatSemuanya1: TMenuItem;
    PrintDasarBerdasarkanNomorInduk1: TMenuItem;
    PrintDa1: TMenuItem;
    PrintDataBerdasarkanNamaPegawai1: TMenuItem;
    PrintDataBerdasarkanUniy1: TMenuItem;
    Label7: TLabel;
    ednama: TEdit;
    Shape8: TShape;
    projectdatatransaksi: TRvProject;
    dsbelipegawai: TRvDataSetConnection;
    PrintDataBeliPegawai1: TMenuItem;
    PrintDataSemuanys1: TMenuItem;
    PrintDataBerdasrarkanNomorInduk1: TMenuItem;
    PrintDataBerdasarkanNama1: TMenuItem;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    projecttransaksiobat: TRvProject;
    dstransaksiobat: TRvDataSetConnection;
    PrintDataTransaksi1: TMenuItem;
    PrintSemuaDataTransaksi1: TMenuItem;
    PrintDataBerdasarkanNomorInduk1: TMenuItem;
    PrintDataBerdasarkanPersonelNumber1: TMenuItem;
    PrintDataBerdasarkanNama2: TMenuItem;
    PrintDataBerdasarkanUnit1: TMenuItem;
    ComboBox1: TComboBox;
    Label8: TLabel;
    Shape9: TShape;
    Image7: TImage;
    Label13: TLabel;
    ComboBox2: TComboBox;
    Shape10: TShape;
    Image16: TImage;
    PopupMenu1: TPopupMenu;
    RefreshDataField1: TMenuItem;
    KembaliKeMenu1: TMenuItem;
    KeluarAplikasi2: TMenuItem;
    memopemfis: TMemo;
    lblkodejk: TLabel;
    lblkodest: TLabel;
    lblcarikodejk: TLabel;
    Shape11: TShape;
    Label18: TLabel;
    Label21: TLabel;
    lbllogin: TLabel;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    lbljam: TLabel;
    lblhari: TLabel;
    Shape16: TShape;
    Shape17: TShape;
    Aplikasi1: TMenuItem;
    KembaliKeMenu2: TMenuItem;
    KeluarAplikasi1: TMenuItem;
    qtipeobat: TADOQuery;
    PrintDataBerdasarkanPersonelNumber2: TMenuItem;
    PrintDataBerdasarkanTipePasien1: TMenuItem;
    PrintDataBerdasarkanPersonelNumber3: TMenuItem;
    PrintDataBerdasarkanNoRecord1: TMenuItem;
    PrintDataBerdasarkanTipePasien2: TMenuItem;
    ExportData1: TMenuItem;
    ExportSemuaData1: TMenuItem;
    ExportBerdasarkanNomorInduk1: TMenuItem;
    ExportBerdasarkanNamaPegawai1: TMenuItem;
    ExportSemuaData2: TMenuItem;
    ExportBerdasarkanNomorInduk2: TMenuItem;
    ExportBerdasarkanPersonelNumber1: TMenuItem;
    ExportBerdasarkanNama1: TMenuItem;
    ExportBerdasarkanTipePasien1: TMenuItem;
    ExportBerdasarkanUnit1: TMenuItem;
    ExportSemuaData3: TMenuItem;
    ExportBerdasarkanNomorInduk3: TMenuItem;
    ExportBerdasarkanPersonelNumber2: TMenuItem;
    ExportBerdasarkanNomorRecordBerobat1: TMenuItem;
    ExportBerdasarka1: TMenuItem;
    ExportBerdasarkanTipeObat1: TMenuItem;
    ExportSemuaData4: TMenuItem;
    ExportBerdasarkanNomorInduk4: TMenuItem;
    ExportBerdsarkanPersonelNumber1: TMenuItem;
    ExportBerdasarkanUnit2: TMenuItem;
    Image4: TImage;
    Image5: TImage;
    Timer1: TTimer;
    Image18: TImage;
    procedure Image3Click(Sender: TObject);
    procedure btncarinomorindukClick(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbunitpegChange(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure meClick(Column: TColumn);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure ednoindukpegKeyPress(Sender: TObject; var Key: Char);
    procedure edpersonelpegKeyPress(Sender: TObject; var Key: Char);
    procedure Image4Click(Sender: TObject);
    procedure entangAplikasi1Click(Sender: TObject);
    procedure dbgridjumlahtransCellClick(Column: TColumn);
    procedure dbgridbeliobatCellClick(Column: TColumn);
    procedure PrintDataBerobatSemuanya1Click(Sender: TObject);
    procedure PrintDasarBerdasarkanNomorInduk1Click(Sender: TObject);
    procedure PrintDataBerdasarkanUniy1Click(Sender: TObject);
    procedure PrintDa1Click(Sender: TObject);
    procedure PrintDataBerdasarkanNamaPegawai1Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure PrintDataSemuanys1Click(Sender: TObject);
    procedure PrintDataBerdasrarkanNomorInduk1Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure PrintSemuaDataTransaksi1Click(Sender: TObject);
    procedure PrintDataBerdasarkanNomorInduk1Click(Sender: TObject);
    procedure PrintDataBerdasarkanPersonelNumber1Click(Sender: TObject);
    procedure PrintDataBerdasarkanUnit1Click(Sender: TObject);
    procedure PrintDataBerdasarkanNama2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure LihatTransaksiBerobatKeluarg1Click(Sender: TObject);
    procedure ednoindukpegEnter(Sender: TObject);
    procedure edpersonelpegEnter(Sender: TObject);
    procedure ednopegEnter(Sender: TObject);
    procedure ednamaEnter(Sender: TObject);
    procedure KeluarAplikasi2Click(Sender: TObject);
    procedure RefreshDataField1Click(Sender: TObject);
    procedure ednoindukpegExit(Sender: TObject);
    procedure edpersonelpegExit(Sender: TObject);
    procedure ednopegExit(Sender: TObject);
    procedure ednamaExit(Sender: TObject);
    procedure KeMenuPengobatan1Click(Sender: TObject);
    procedure KembaliKeMenu2Click(Sender: TObject);
//    procedure KembaliKeMenu1Click(Sender: TObject);
    procedure PrintDataBerdasarkanNama1Click(Sender: TObject);
    procedure PrintDataBerdasarkanPersonelNumber2Click(Sender: TObject);
    procedure PrintDataBerdasarkanTipePasien1Click(Sender: TObject);
    procedure PrintDataBerdasarkanPersonelNumber3Click(Sender: TObject);
    procedure PrintDataBerdasarkanNoRecord1Click(Sender: TObject);
    procedure PrintDataBerdasarkanTipePasien2Click(Sender: TObject);
    procedure ednoindukpegChange(Sender: TObject);
    procedure edpersonelpegChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ednopegChange(Sender: TObject);
    procedure ednamaChange(Sender: TObject);
    procedure ExportSemuaData2Click(Sender: TObject);
    procedure ExportBerdasarkanNomorInduk2Click(Sender: TObject);
    procedure ExportBerdasarkanPersonelNumber1Click(Sender: TObject);
    procedure ExportBerdasarkanNama1Click(Sender: TObject);
    procedure ExportBerdasarkanTipePasien1Click(Sender: TObject);
    procedure ExportBerdasarkanUnit1Click(Sender: TObject);
    procedure ExportSemuaData3Click(Sender: TObject);
    procedure ExportBerdasarkanNomorInduk3Click(Sender: TObject);
    procedure ExportBerdasarkanPersonelNumber2Click(Sender: TObject);
    procedure ExportBerdasarkanNomorRecordBerobat1Click(Sender: TObject);
    procedure ExportBerdasarka1Click(Sender: TObject);
    procedure ExportBerdasarkanTipeObat1Click(Sender: TObject);
    procedure ExportSemuaData4Click(Sender: TObject);
    procedure ExportBerdasarkanNomorInduk4Click(Sender: TObject);
    procedure ExportBerdsarkanPersonelNumber1Click(Sender: TObject);
    procedure ExportBerdasarkanUnit2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure ednopegKeyPress(Sender: TObject; var Key: Char);
    procedure ednamaKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
  private
    procedure TutupKoneksi;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formlihatberobatpegawai: Tformlihatberobatpegawai;

implementation

uses uAbout, UASAL, uDoctorMenu, uFamilytypetrans, uInsertMasterPegawai,
  ulihatdataobat, ulihatkeluarga, uLihatPasien, ulihatrecord,
  uLihatTranspeg, ulogin, ulogindokter, umainobat, umainobatpoli,
  uMainUtama, uMasterDokter, uMasterKegunaanObat, uMasterKeluarga,
  uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal, uMenuPegawai,
  uPasien, upilihdokter, uPilihKeluarga, uSplash, uStatusPegawai,
  uTransunit, ulihatChart, ulihatchart2, Math, uLihatBerobatKeluarga,
  uMenuBerobat, uDoctorMain, uLihatDataDokter, uMenuDokter, uMenuUser,
  StdConvs;

{$R *.dfm}

procedure Tformlihatberobatpegawai.Image3Click(Sender: TObject);
begin
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;
//
queryunit.Active:=true;
queryunit.Close;
queryunit.SQL.Clear;
queryunit.SQL.Add('Select * From Master_Unit');
queryunit.ExecSQL;
queryunit.Open;
cbunitpeg.Clear;
while not queryunit.Eof do
begin
  cbunitpeg.Items.Add(queryunit['nama_unit']);
  queryunit.Next;
end;
end;

procedure Tformlihatberobatpegawai.btncarinomorindukClick(Sender: TObject);
begin

querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Nomor_Induk Like='+QuotedStr(ednoindukpeg.Text+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Nomor_Induk Like'+QuotedStr(ednoindukpeg.Text+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE Nomor_Induk Like'+QuotedStr(ednoindukpeg.Text+'%'));
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;
end;

procedure Tformlihatberobatpegawai.Image17Click(Sender: TObject);
begin
querypegawai.Active:=false;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT master_record_berobat.[No], master_record_berobat.Nomor_induk, [MASTER_PEGAWAI Query].Nama_Pegawai, MASTER_PEGAWAI.Personel_number, MASTER_PEGAWAI.Kode_unit, master_unit.nama_unit,');
querypegawai.SQL.Add('[MASTER_PEGAWAI Query].Keterangan_status, master_record_berobat.Keluhan, master_record_berobat.Anamesa_terimpin, master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.diagnosa');
querypegawai.SQL.Add('FROM ((master_status INNER JOIN (MASTER_PEGAWAI INNER JOIN master_record_berobat ON MASTER_PEGAWAI.Nomor_induk = master_record_berobat.Nomor_induk) ON (master_record_berobat.Kode_status =');
querypegawai.SQL.Add('master_status.kode_status) AND (master_status.kode_status = MASTER_PEGAWAI.kode_status_pegawai)) INNER JOIN master_unit ON MASTER_PEGAWAI.Kode_unit = master_unit.kode_unit) INNER JOIN');
querypegawai.SQL.Add('[MASTER_PEGAWAI Query] ON (master_unit.kode_unit = [MASTER_PEGAWAI Query].Kode_unit) AND (MASTER_PEGAWAI.Nomor_induk = [MASTER_PEGAWAI Query].Nomor_induk)  where master_record_berobat.[No]='+ednopeg.Text);
querypegawai.ExecSQL;
querypegawai.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT Query_Berobat_Pegawai.Nomor_induk, Query_Berobat_Pegawai.Nama_Pegawai, Query_Berobat_Pegawai.Personel_number, master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, master_beli_obat.[No],');
querybeliobat.SQL.Add('Query_Berobat_Pegawai.nama_unit, master_record_berobat.Tanggal_Berobat');
querybeliobat.SQL.Add('FROM master_record_berobat INNER JOIN (Query_Berobat_Pegawai INNER JOIN master_beli_obat ON Query_Berobat_Pegawai.[No] = master_beli_obat.[No]) ON (Query_Berobat_Pegawai.[No] =');
querybeliobat.SQL.Add('master_record_berobat.[No]) AND (master_record_berobat.[No] = master_beli_obat.[No])where master_record_berobat.[No]='+ednopeg.Text);
querybeliobat.ExecSQL;
querybeliobat.Open;

end;

procedure Tformlihatberobatpegawai.FormCreate(Sender: TObject);
begin
//
ComboBox2.Clear;
qtipeobat.Active:=true;
qtipeobat.Close;
qtipeobat.SQL.Clear;
qtipeobat.SQL.Add('SELECT * FROM Master_Tipe_Obat');
qtipeobat.ExecSQL;
qtipeobat.Open;
qtipeobat.First;
while not qtipeobat.Eof do
  begin
    ComboBox2.Items.Add(qtipeobat['Tipe_Obat']);
    qtipeobat.Next;
  end;
//
querypegawai.Active:=true;
queryunit.Active:=true;
queryobat.Active:=true;
querybeliobat.Active:=true;
queryjumlahtrans.Active:=true;
//
queryunit.Active:=true;
queryunit.Close;
queryunit.SQL.Clear;
queryunit.SQL.Add('Select * From Master_Unit');
queryunit.ExecSQL;
queryunit.Open;
while not queryunit.Eof do
begin
  cbunitpeg.Items.Add(queryunit['nama_unit']);
  queryunit.Next;
end;
end;

procedure Tformlihatberobatpegawai.cbunitpegChange(Sender: TObject);
begin
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE nama_unit='+QuotedStr(cbunitpeg.Text));
querypegawai.ExecSQL;
querypegawai.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE nama_unit='+QuotedStr(cbunitpeg.Text));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE nama_unit='+QuotedStr(cbunitpeg.Text));
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;
end;

procedure Tformlihatberobatpegawai.Image6Click(Sender: TObject);
begin
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Tanggal_Berobat BETWEEN (:tgl1) AND (:tgl2)');
querypegawai.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
querypegawai.Parameters.ParamByName('tgl2').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker2.Date);
querypegawai.ExecSQL;
querypegawai.Open;

querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Tanggal_Berobat BETWEEN (:tgl1) AND (:tgl2)');
querybeliobat.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
querybeliobat.Parameters.ParamByName('tgl2').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker2.Date);
querybeliobat.ExecSQL;
querybeliobat.Open;
end;

procedure Tformlihatberobatpegawai.meClick(Column: TColumn);
var
  no:string;
begin
querypegawai.Active:=true;
edgridno.Text:=querypegawai.FieldByName('No').AsString;
edgridnama.Text:=querypegawai.FieldByName('Nama_Pegawai').AsString;
memokel.Text:=querypegawai.FieldByName('keluhan').AsString;
memoanameaterimpin.Text:=querypegawai.FieldByName('Anamesa_terimpin').AsString;
memopempen.Text:=querypegawai.FieldByName('Pemeriksaan_Penunjang').AsString;
memodiag.Text:=querypegawai.FieldByName('Diagnosa').AsString;
edtipe.Text:=querypegawai.FieldByName('Tipe_penyakit').AsString;
memopemfis.Text:=querypegawai.FieldByName('Pemeriksaan_fisik').AsString;


end;

procedure Tformlihatberobatpegawai.KeluarAplikasi1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformlihatberobatpegawai.RadioButton1Click(Sender: TObject);
begin
dbgridbeliobat.Visible:=false;
dbgridpeg.Visible:=true;
dbgridjumlahtrans.Visible:=false;
//
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;

end;

procedure Tformlihatberobatpegawai.RadioButton2Click(Sender: TObject);
begin
dbgridbeliobat.Visible:=true;
dbgridpeg.Visible:=false;
dbgridjumlahtrans.Visible:=false;
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai');
querybeliobat.ExecSQL;
querybeliobat.Open;
end;

procedure Tformlihatberobatpegawai.RadioButton3Click(Sender: TObject);
begin
dbgridbeliobat.Visible:=false;
dbgridpeg.Visible:=false;
dbgridjumlahtrans.Visible:=true;
//
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai');
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;
end;

procedure Tformlihatberobatpegawai.ednoindukpegKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image13Click(Sender);
end;

procedure Tformlihatberobatpegawai.edpersonelpegKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
        Image14Click(Sender);
end;

procedure Tformlihatberobatpegawai.Image4Click(Sender: TObject);
begin
ComboBox2.Clear;
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Personel_number');
querypegawai.ExecSQL;
querypegawai.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai ');
querybeliobat.ExecSQL;
querybeliobat.Open;
//
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai');
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;


qtipeobat.Active:=true;
qtipeobat.Close;
qtipeobat.SQL.Clear;
qtipeobat.SQL.Add('SELECT * FROM Master_Tipe_Obat');
qtipeobat.ExecSQL;
qtipeobat.Open;
qtipeobat.First;
while not qtipeobat.Eof do
  begin
    ComboBox2.Items.Add(qtipeobat['Tipe_Obat']);
    qtipeobat.Next;
  end;
ednoindukpeg.Clear;
edpersonelpeg.Clear;
ednopeg.Clear;
ednama.Clear;
ComboBox1.Text:='';
ComboBox2.Text:='';
//
ednoindukpeg.Clear;
edpersonelpeg.Clear;
ednopeg.Clear;
ednama.Clear;
//
edgridno.Clear;
edgridnama.Clear;
memokel.Clear;
memoanameaterimpin.Clear;
memopempen.Clear;
memodiag.Clear;
memopemfis.Clear;
edtipe.Clear;
//
querypegawai.Active:=true;
queryunit.Active:=true;
queryobat.Active:=true;
querybeliobat.Active:=true;
queryjumlahtrans.Active:=true;
//
cbunitpeg.Clear;
queryunit.Active:=true;
queryunit.Close;
queryunit.SQL.Clear;
queryunit.SQL.Add('Select * From Master_Unit');
queryunit.ExecSQL;
queryunit.Open;
while not queryunit.Eof do
begin
  cbunitpeg.Items.Add(queryunit['nama_unit']);
  queryunit.Next;
end;
formlihatberobatkeluarga.ADOConnection1.Connected:=true;
  formlihatberobatkeluarga.queryrecord.Active:=true;
  formlihatberobatkeluarga.querybeliobat.Active:=true;
  formlihatberobatkeluarga.querytransaksikeluarga.Active:=true;
  formlihatberobatkeluarga.queryjk.Active:=true;
  formlihatberobatkeluarga.querystatustunjangan.Active:=true;
  formlihatberobatkeluarga.qtipeobat.Active:=true;

end;

procedure Tformlihatberobatpegawai.entangAplikasi1Click(Sender: TObject);
begin
   formabout.Show;

end;

procedure Tformlihatberobatpegawai.dbgridjumlahtransCellClick(
  Column: TColumn);
begin
queryjumlahtrans.Active:=true;
edgridnama.Text:=queryjumlahtrans.FieldByName('Nama_Pegawai').AsString;
end;

procedure Tformlihatberobatpegawai.dbgridbeliobatCellClick(
  Column: TColumn);
begin
querybeliobat.Active:=true;
edgridno.Text:=querybeliobat.FieldByName('No').AsString;
edgridnama.Text:=querybeliobat.FieldByName('Nama_Pegawai').AsString;
end;

procedure Tformlihatberobatpegawai.PrintDataBerobatSemuanya1Click(
  Sender: TObject);
begin
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;
projectrecordberobat.Open;
projectrecordberobat.SelectReport('Report',False);
projectrecordberobat.SetParam('datatrans','Semua Data Transaksi');
projectrecordberobat.Execute;
projectrecordberobat.Close;
end;

procedure Tformlihatberobatpegawai.PrintDasarBerdasarkanNomorInduk1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Print Data Berdasarkan Nomor Induk :','');
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Nomor_Induk='+QuotedStr(data));
querypegawai.ExecSQL;
querypegawai.Open;
projectrecordberobat.Open;
      projectrecordberobat.SelectReport('Report',False);
      projectrecordberobat.SetParam('datatrans','Berdasarkan Nomor Induk :'+ednoindukpeg.Text);
      projectrecordberobat.Execute;
      projectrecordberobat.Close;
end;

procedure Tformlihatberobatpegawai.PrintDataBerdasarkanUniy1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Unit Pegawai :','');
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE nama_unit Like'+QuotedStr('%'+data+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
projectrecordberobat.Open;
projectrecordberobat.SelectReport('Report',False);
projectrecordberobat.SetParam('datatrans','Berdasarkan Unit Kerja :'+cbunitpeg.Text);
projectrecordberobat.Execute;
projectrecordberobat.Close;
end;

procedure Tformlihatberobatpegawai.PrintDa1Click(Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan No Berobat','');
  querypegawai.Active:=false;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT MASTER_PEGAWAI_Query_Query.Nomor_induk, MASTER_PEGAWAI_Query_Query.Personel_number, MASTER_PEGAWAI_Query_Query.Nama_Pegawai, master_record_berobat.Keluhan,');
querypegawai.SQL.Add('master_record_berobat.Anamesa_terimpin, MASTER_PEGAWAI_Query_Query.Keterangan_status, MASTER_PEGAWAI_Query_Query.nama_unit, master_record_berobat.Pemeriksaan_fisik,');
querypegawai.SQL.Add('master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.diagnosa, master_record_berobat.Tanggal_Berobat, master_record_berobat.[No], master_record_berobat.Tipe_Penyakit');
querypegawai.SQL.Add('FROM master_record_berobat INNER JOIN ((master_unit INNER JOIN MASTER_PEGAWAI_Query_Query ON master_unit.kode_unit = MASTER_PEGAWAI_Query_Query.Kode_unit) INNER JOIN master_status ON');
querypegawai.SQL.Add('MASTER_PEGAWAI_Query_Query.kode_status_pegawai = master_status.kode_status) ON master_record_berobat.Nomor_induk = MASTER_PEGAWAI_Query_Query.Nomor_induk where master_record_berobat.[No] Like'+QuotedStr(data+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
 projectrecordberobat.Open;
      projectrecordberobat.SelectReport('Report',False);
      projectrecordberobat.SetParam('datatrans','Berdasarkan No Record :'+ednopeg.Text);
      projectrecordberobat.Execute;
      projectrecordberobat.Close;
end;

procedure Tformlihatberobatpegawai.PrintDataBerdasarkanNamaPegawai1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Print Data Berdasarkan Nama Pegawai :','');
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Nama_Pegawai='+QuotedStr(data));
querypegawai.ExecSQL;
querypegawai.Open;
projectrecordberobat.Open;
projectrecordberobat.SelectReport('Report',False);
projectrecordberobat.SetParam('datatrans','Berdasarkan Nama Pegawai :'+ednama.Text);
projectrecordberobat.Execute;
projectrecordberobat.Close;
end;

procedure Tformlihatberobatpegawai.Image8Click(Sender: TObject);
begin
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Nama_Pegawai='+QuotedStr(ednama.Text));
querypegawai.ExecSQL;
querypegawai.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Nama_Pegawai='+QuotedStr(ednama.Text));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE Nama_Pegawai='+QuotedStr(ednama.Text));
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;
end;

procedure Tformlihatberobatpegawai.Image7Click(Sender: TObject);
begin
querypegawai.Active:=true;
    querypegawai.Close;
    querypegawai.SQL.Clear;
    querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Tipe_Penyakit='+QuotedStr(ComboBox1.Text));
    querypegawai.ExecSQL;
    querypegawai.Open;
    projectrecordberobat.Open;
    projectrecordberobat.SelectReport('Report',False);
    projectrecordberobat.SetParam('datatrans','Berdasarkan Tipe Pasien :'+ComboBox1.Text);
    projectrecordberobat.Execute;
    projectrecordberobat.Close;
end;

procedure Tformlihatberobatpegawai.PrintDataSemuanys1Click(
  Sender: TObject);
begin
querybeliobat.Active:=True;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai');
querybeliobat.ExecSQL;
querybeliobat.Open;
     projectdatatransaksi.Open;
      projectdatatransaksi.SelectReport('Report',False);
      projectdatatransaksi.SetParam('datastr','Print Semua Data');
      projectdatatransaksi.Execute;
      projectdatatransaksi.Close
end;

procedure Tformlihatberobatpegawai.PrintDataBerdasrarkanNomorInduk1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nomor Induk :','');
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Nomor_Induk='+QuotedStr(data));
querybeliobat.ExecSQL;
querybeliobat.Open;
     projectdatatransaksi.Open;
     projectdatatransaksi.SelectReport('Report',False);
     projectdatatransaksi.SetParam('datastr','Berdasarkan Nomor Induk :'+data);
     projectdatatransaksi.Execute;
     projectdatatransaksi.Close
end;

procedure Tformlihatberobatpegawai.Image10Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
    querypegawai.Active:=true;
    querypegawai.Close;
    querypegawai.SQL.Clear;
    querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Tanggal_Berobat BETWEEN (:tgl1) AND (:tgl2)');
    querypegawai.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
    querypegawai.Parameters.ParamByName('tgl2').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker2.Date);
    querypegawai.ExecSQL;
    querypegawai.Open;
    projectrecordberobat.Open;
    projectrecordberobat.SelectReport('Report',False);
    projectrecordberobat.SetParam('datatrans','Dari Tanggal :'+DateToStr(DateTimePicker1.Date)+' / '+DateToStr(DateTimePicker2.Date));
    projectrecordberobat.Execute;
    projectrecordberobat.Close;
  end
else if RadioButton2.Checked=true then
  begin
    querybeliobat.Active:=true;
    querybeliobat.Close;
    querybeliobat.SQL.Clear;
    querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Tanggal_Berobat BETWEEN (:tgl1) AND (:tgl2)');
    querybeliobat.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
    querybeliobat.Parameters.ParamByName('tgl2').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker2.Date);
    querybeliobat.ExecSQL;
    querybeliobat.Open;
       projectdatatransaksi.Open;
      projectdatatransaksi.SelectReport('Report',False);
      projectdatatransaksi.SetParam('datastr','Berdasarkan Tanggal Berobat :'+DateToStr(DateTimePicker1.Date)+' / '+DateToStr(DateTimePicker2.Date));
      projectdatatransaksi.Execute;
      projectdatatransaksi.Close;
    end
else
  begin
    ShowMessage('Print Filter data ini hanya berlaku pada record berobat dan pembelian obat');
end;
end;
procedure Tformlihatberobatpegawai.Image13Click(Sender: TObject);
begin

if RadioButton1.Checked=true then
  begin
      querypegawai.Active:=true;
      querypegawai.Close;
      querypegawai.SQL.Clear;
      querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Nomor_Induk Like'+QuotedStr(ednoindukpeg.Text+'%'));
      querypegawai.ExecSQL;
      querypegawai.Open;
      projectrecordberobat.Open;
      projectrecordberobat.SelectReport('Report',False);
      projectrecordberobat.SetParam('datatrans','Berdasarkan Nomor Induk :'+ednoindukpeg.Text);
      projectrecordberobat.Execute;
      projectrecordberobat.Close;
  end
else if RadioButton2.Checked=true then
  begin
      querybeliobat.Active:=true;
      querybeliobat.Close;
      querybeliobat.SQL.Clear;
      querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Nomor_Induk Like'+QuotedStr(ednoindukpeg.Text+'%'));
      querybeliobat.ExecSQL;
      querybeliobat.Open;
       projectdatatransaksi.Open;
      projectdatatransaksi.SelectReport('Report',False);
      projectdatatransaksi.SetParam('datastr','Berdasarkan Nomor Induk :'+ednoindukpeg.Text);
      projectdatatransaksi.Execute;
      projectdatatransaksi.Close;
  end
else if RadioButton3.Checked=true then
  begin
    queryjumlahtrans.Active:=true;
    queryjumlahtrans.Close;
    queryjumlahtrans.SQL.Clear;
    queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE Nomor_Induk Like'+QuotedStr(ednoindukpeg.Text+'%'));
    queryjumlahtrans.ExecSQL;
    queryjumlahtrans.Open;
    projecttransaksiobat.Open;
    projecttransaksiobat.SelectReport('Report',False);
    projecttransaksiobat.SetParam('datatrans','Berdasarkan Nomor Induk :'+ednoindukpeg.Text);
    projecttransaksiobat.Execute;
    projecttransaksiobat.Close;
    end
else
  begin
    ShowMessage('Tidak Ditemukan Datagrid');
  end;
end;

procedure Tformlihatberobatpegawai.Image14Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
      querypegawai.Active:=true;
      querypegawai.Close;
      querypegawai.SQL.Clear;
      querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Personel_number Like'+QuotedStr(edpersonelpeg.Text+'%'));
      querypegawai.ExecSQL;
      querypegawai.Open;
      projectrecordberobat.Open;
      projectrecordberobat.SelectReport('Report',False);
      projectrecordberobat.SetParam('datatrans','Berdasarkan Personel Number :'+edpersonelpeg.Text);
      projectrecordberobat.Execute;
      projectrecordberobat.Close;
  end
else if RadioButton2.Checked=true then
  begin
    querybeliobat.Active:=true;
  querybeliobat.Close;
  querybeliobat.SQL.Clear;
  querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Personel_Number Like'+QuotedStr(edpersonelpeg.Text+'%'));
  querybeliobat.ExecSQL;
  querybeliobat.Open;
     projectdatatransaksi.Open;
      projectdatatransaksi.SelectReport('Report',False);
      projectdatatransaksi.SetParam('datastr','Berdasarkan Personel Number :'+edpersonelpeg.Text);
      projectdatatransaksi.Execute;
      projectdatatransaksi.Close;
  end
else if RadioButton3.Checked=true then
  begin
    queryjumlahtrans.Active:=true;
    queryjumlahtrans.Close;
    queryjumlahtrans.SQL.Clear;
    queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE Personel_Number Like'+QuotedStr(edpersonelpeg.Text+'%'));
    queryjumlahtrans.ExecSQL;
    queryjumlahtrans.Open;
    projecttransaksiobat.Open;
      projecttransaksiobat.SelectReport('Report',False);
      projecttransaksiobat.SetParam('datatrans','Berdasarkan Personel Number :'+edpersonelpeg.Text);
      projecttransaksiobat.Execute;
      projecttransaksiobat.Close;
  end
else
  begin
    ShowMessage('Tidak Ditemukan Datagrid');
  end;
end;

procedure Tformlihatberobatpegawai.Image12Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
  querypegawai.Active:=false;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT MASTER_PEGAWAI_Query_Query.Nomor_induk, MASTER_PEGAWAI_Query_Query.Personel_number, MASTER_PEGAWAI_Query_Query.Nama_Pegawai, master_record_berobat.Keluhan,');
querypegawai.SQL.Add('master_record_berobat.Anamesa_terimpin, MASTER_PEGAWAI_Query_Query.Keterangan_status, MASTER_PEGAWAI_Query_Query.nama_unit, master_record_berobat.Pemeriksaan_fisik,');
querypegawai.SQL.Add('master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.diagnosa, master_record_berobat.Tanggal_Berobat, master_record_berobat.[No], master_record_berobat.Tipe_Penyakit');
querypegawai.SQL.Add('FROM master_record_berobat INNER JOIN ((master_unit INNER JOIN MASTER_PEGAWAI_Query_Query ON master_unit.kode_unit = MASTER_PEGAWAI_Query_Query.Kode_unit) INNER JOIN master_status ON');
querypegawai.SQL.Add('MASTER_PEGAWAI_Query_Query.kode_status_pegawai = master_status.kode_status) ON master_record_berobat.Nomor_induk = MASTER_PEGAWAI_Query_Query.Nomor_induk where master_record_berobat.[No] Like'+QuotedStr(ednopeg.Text+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
      projectrecordberobat.Open;
      projectrecordberobat.SelectReport('Report',False);
      projectrecordberobat.SetParam('datatrans','Berdasarkan No Record :'+ednopeg.Text);
      projectrecordberobat.Execute;
      projectrecordberobat.Close;
  end
else if RadioButton2.Checked=true then
  begin
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT Query_Berobat_Pegawai.Nomor_induk, Query_Berobat_Pegawai.Nama_Pegawai, Query_Berobat_Pegawai.Personel_number, master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, master_beli_obat.[No],');
querybeliobat.SQL.Add('Query_Berobat_Pegawai.nama_unit, master_record_berobat.Tanggal_Berobat');
querybeliobat.SQL.Add('FROM master_record_berobat INNER JOIN (Query_Berobat_Pegawai INNER JOIN master_beli_obat ON Query_Berobat_Pegawai.[No] = master_beli_obat.[No]) ON (Query_Berobat_Pegawai.[No] =');
querybeliobat.SQL.Add('master_record_berobat.[No]) AND (master_record_berobat.[No] = master_beli_obat.[No]) where master_record_berobat.[No] Like'+QuotedStr(ednopeg.Text+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;
   projectdatatransaksi.Open;
      projectdatatransaksi.SelectReport('Report',False);
      projectdatatransaksi.SetParam('datastr','Berdasarkan Nomor Record :'+ednopeg.Text);
      projectdatatransaksi.Execute;
      projectdatatransaksi.Close;
  end

else
  begin
    ShowMessage('Tidak Ditemukan Datagrid');
  end;
end;

procedure Tformlihatberobatpegawai.Image11Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
      querypegawai.Active:=true;
      querypegawai.Close;
      querypegawai.SQL.Clear;
      querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE nama_unit='+QuotedStr(cbunitpeg.Text));
      querypegawai.ExecSQL;
      querypegawai.Open;
      projectrecordberobat.Open;
      projectrecordberobat.SelectReport('Report',False);
      projectrecordberobat.SetParam('datatrans','Berdasarkan Unit :'+cbunitpeg.Text);
      projectrecordberobat.Execute;
      projectrecordberobat.Close;
  end
else if RadioButton2.Checked=true then
  begin
     querybeliobat.Active:=true;
  querybeliobat.Close;
  querybeliobat.SQL.Clear;
  querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE nama_unit='+QuotedStr(cbunitpeg.Text));
  querybeliobat.ExecSQL;
  querybeliobat.Open;
         projectdatatransaksi.Open;
      projectdatatransaksi.SelectReport('Report',False);
      projectdatatransaksi.SetParam('datastr','Berdasarkan Unit Kerja :'+cbunitpeg.Text);
      projectdatatransaksi.Execute;
      projectdatatransaksi.Close;
  end
else if RadioButton3.Checked=true then
  begin
      queryjumlahtrans.Active:=true;
      queryjumlahtrans.Close;
      queryjumlahtrans.SQL.Clear;
      queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE nama_unit='+QuotedStr(cbunitpeg.Text));
      queryjumlahtrans.ExecSQL;
      queryjumlahtrans.Open;
      projectdatatransaksi.Open;
      projectdatatransaksi.SelectReport('Report',False);
      projectdatatransaksi.SetParam('datastr','Berdasarkan Unit Kerja :'+cbunitpeg.Text);
      projectdatatransaksi.Execute;
      projectdatatransaksi.Close;
      end
else
  begin
    ShowMessage('Tidak Ditemukan Datagrid');
  end;

end;

procedure Tformlihatberobatpegawai.Image15Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
    querypegawai.Active:=true;
    querypegawai.Close;
    querypegawai.SQL.Clear;
    querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Nama_Pegawai Like'+QuotedStr('%'+ednama.Text+'%'));
    querypegawai.ExecSQL;
    querypegawai.Open;
    projectrecordberobat.Open;
    projectrecordberobat.SelectReport('Report',False);
    projectrecordberobat.SetParam('datatrans','Berdasarkan Nama Pegawai :'+ednama.Text);
    projectrecordberobat.Execute;
    projectrecordberobat.Close;
  end
else if RadioButton2.Checked=true then
  begin
      querybeliobat.Active:=true;
      querybeliobat.Close;
      querybeliobat.SQL.Clear;
      querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Nama_Pegawai Like'+QuotedStr('%'+ednama.Text+'%'));
      querybeliobat.ExecSQL;
      querybeliobat.Open;
      projectdatatransaksi.Open;
      projectdatatransaksi.SelectReport('Report',False);
      projectdatatransaksi.SetParam('datastr','Berdasarkan Nama Pegawai :'+ednama.Text);
      projectdatatransaksi.Execute;
      projectdatatransaksi.Close;
  end
else if RadioButton3.Checked=true then
  begin
    queryjumlahtrans.Active:=true;
    queryjumlahtrans.Close;
    queryjumlahtrans.SQL.Clear;
    queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE Nama_Pegawai Like'+QuotedStr('%'+ednama.Text+'%'));
    queryjumlahtrans.ExecSQL;
    queryjumlahtrans.Open;
    projectdatatransaksi.Open;
      projectdatatransaksi.SelectReport('Report',False);
      projectdatatransaksi.SetParam('datastr','Berdasarkan Nama Pegawai :'+ednama.Text);
      projectdatatransaksi.Execute;
      projectdatatransaksi.Close;
    end
else
  begin
    ShowMessage('Tidak Ditemukan Datagrid');
  end;

end;

procedure Tformlihatberobatpegawai.PrintSemuaDataTransaksi1Click(
  Sender: TObject);
begin
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai');
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;
  projecttransaksiobat.Open;
    projecttransaksiobat.SelectReport('Report',False);
    projecttransaksiobat.SetParam('datatrans','Print Semua Data');
    projecttransaksiobat.Execute;
    projecttransaksiobat.Close;

end;

procedure Tformlihatberobatpegawai.PrintDataBerdasarkanNomorInduk1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nomor Induk :','');
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE Nomor_Induk='+QuotedStr(data));
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;
  projecttransaksiobat.Open;
    projecttransaksiobat.SelectReport('Report',False);
    projecttransaksiobat.SetParam('datatrans','Berdasarkan Nomor Induk :'+data);
    projecttransaksiobat.Execute;
    projecttransaksiobat.Close;
end;

procedure Tformlihatberobatpegawai.PrintDataBerdasarkanPersonelNumber1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Personel Number :','');
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE Personel_Number='+edpersonelpeg.Text);
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;
    projecttransaksiobat.Open;
      projecttransaksiobat.SelectReport('Report',False);
      projecttransaksiobat.SetParam('datatrans','Berdasarkan Personel Number :'+data);
      projecttransaksiobat.Execute;
      projecttransaksiobat.Close;
end;

procedure Tformlihatberobatpegawai.PrintDataBerdasarkanUnit1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Masukkan Unit Pegawai :','');
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE nama_unit Like'+QuotedStr('%'+data+'%'));
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;
end;

procedure Tformlihatberobatpegawai.PrintDataBerdasarkanNama2Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nama Pegawai','');
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE Nama_Pegawai='+QuotedStr(data));
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;
    projectdatatransaksi.Open;
      projectdatatransaksi.SelectReport('Report',False);
      projectdatatransaksi.SetParam('datastr','Berdasarkan Nama Pegawai :'+data);
      projectdatatransaksi.Execute;
      projectdatatransaksi.Close;
end;

procedure Tformlihatberobatpegawai.ComboBox1Change(Sender: TObject);
begin
querypegawai.Active:=true;
    querypegawai.Close;
    querypegawai.SQL.Clear;
    querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Tipe_Penyakit='+QuotedStr(ComboBox1.Text));
    querypegawai.ExecSQL;
    querypegawai.Open;
end;

procedure Tformlihatberobatpegawai.ComboBox2Change(Sender: TObject);
begin
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Tipe_Obat='+QuotedStr(ComboBox2.Text));
querybeliobat.ExecSQL;
querybeliobat.Open;
end;

procedure Tformlihatberobatpegawai.Image16Click(Sender: TObject);
begin
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Tipe_Obat='+QuotedStr(ComboBox2.Text));
querybeliobat.ExecSQL;
querybeliobat.Open;
projectdatatransaksi.Open;
projectdatatransaksi.SelectReport('Report',False);
projectdatatransaksi.SetParam('datastr','Berdasarkan Tipe Obat :'+ComboBox2.Text);
projectdatatransaksi.Execute;
projectdatatransaksi.Close;
end;

procedure Tformlihatberobatpegawai.LihatTransaksiBerobatKeluarg1Click(
  Sender: TObject);
begin
  formlihatberobatkeluarga.Hide;
  formlihatberobatpegawai.Show;
end;

procedure Tformlihatberobatpegawai.ednoindukpegEnter(Sender: TObject);
begin
ednoindukpeg.Text:='';
ednoindukpeg.Font.Color:=clHotLight;
end;

procedure Tformlihatberobatpegawai.edpersonelpegEnter(Sender: TObject);
begin
edpersonelpeg.Text:='';
edpersonelpeg.Font.Color:=clHotLight;
end;

procedure Tformlihatberobatpegawai.ednopegEnter(Sender: TObject);
begin
ednopeg.Text:='';
ednopeg.Font.Color:=clHotLight;
end;

procedure Tformlihatberobatpegawai.ednamaEnter(Sender: TObject);
begin
ednama.Text:='';
ednama.Font.Color:=clHotLight;
end;

procedure Tformlihatberobatpegawai.KeluarAplikasi2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformlihatberobatpegawai.RefreshDataField1Click(Sender: TObject);
begin
  querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Personel_number');
querypegawai.ExecSQL;
querypegawai.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai ');
querybeliobat.ExecSQL;
querybeliobat.Open;
//
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai');
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;

ComboBox2.Clear;
qtipeobat.Active:=true;
qtipeobat.Close;
qtipeobat.SQL.Clear;
qtipeobat.SQL.Add('SELECT * FROM Master_Tipe_Obat');
qtipeobat.ExecSQL;
qtipeobat.Open;
qtipeobat.First;
while not qtipeobat.Eof do
  begin
    ComboBox2.Items.Add(qtipeobat['Tipe_Obat']);
    qtipeobat.Next;
  end;
ednoindukpeg.Clear;
edpersonelpeg.Clear;
ednopeg.Clear;
ednama.Clear;
ComboBox1.Text:='';
ComboBox2.Text:='';
//
ednoindukpeg.Clear;
edpersonelpeg.Clear;
ednopeg.Clear;
ednama.Clear;
//
edgridno.Clear;
edgridnama.Clear;
memokel.Clear;
memoanameaterimpin.Clear;
memopempen.Clear;
memodiag.Clear;
memopemfis.Clear;
edtipe.Clear;
//
querypegawai.Active:=true;
queryunit.Active:=true;
queryobat.Active:=true;
querybeliobat.Active:=true;
queryjumlahtrans.Active:=true;
//
cbunitpeg.Clear;
queryunit.Active:=true;
queryunit.Close;
queryunit.SQL.Clear;
queryunit.SQL.Add('Select * From Master_Unit');
queryunit.ExecSQL;
queryunit.Open;
while not queryunit.Eof do
begin
  cbunitpeg.Items.Add(queryunit['nama_unit']);
  queryunit.Next;
end;

end;

procedure Tformlihatberobatpegawai.ednoindukpegExit(Sender: TObject);
begin
if ednoindukpeg.Text='' then
  begin
    ednoindukpeg.Text:='Nomor Induk';
    ednoindukpeg.Font.Color:=clMedGray;
  end;
end;

procedure Tformlihatberobatpegawai.edpersonelpegExit(Sender: TObject);
begin
if edpersonelpeg.Text='' then
  begin
    edpersonelpeg.Text:='Personel Number';
    edpersonelpeg.Font.Color:=clMedGray;
  end;
end;

procedure Tformlihatberobatpegawai.ednopegExit(Sender: TObject);
begin
if ednopeg.Text='' then
  begin
    ednopeg.Text:='Nomor Record Berobat';
    ednopeg.Font.Color:=clmedgray;
  end;
end;

procedure Tformlihatberobatpegawai.ednamaExit(Sender: TObject);
begin
if ednama.Text='' then
  begin
    ednama.Text:='Nama Pegawai';
    ednama.Font.Color:=clmedgray;
  end;
end;

procedure Tformlihatberobatpegawai.KeMenuPengobatan1Click(Sender: TObject);
begin
if lbllogin.Caption='Dokter' then
  begin
    ednoindukpeg.Clear;
edpersonelpeg.Clear;
ednopeg.Clear;
ednama.Clear;
ComboBox1.Text:='';
ComboBox2.Text:='';
//
ednoindukpeg.Text:='Nomor Induk';
ednoindukpeg.Font.Color:=clMedGray;
//
edpersonelpeg.Text:='Personel Number';
edpersonelpeg.Font.Color:=clMedGray;
//
ednopeg.Text:='Nomor Record Berobat';
ednopeg.Font.Color:=clMedGray;
//
ednama.Text:='Nama Pegawai';
ednama.Font.Color:=clMedGray;
//
edgridno.Clear;
edgridnama.Clear;
memokel.Clear;
memoanameaterimpin.Clear;
memopempen.Clear;
memodiag.Clear;
memopemfis.Clear;
edtipe.Clear;
//
querypegawai.Active:=true;
queryunit.Active:=true;
queryobat.Active:=true;
querybeliobat.Active:=true;
queryjumlahtrans.Active:=true;
//
cbunitpeg.Clear;
queryunit.Active:=true;
queryunit.Close;
queryunit.SQL.Clear;
queryunit.SQL.Add('Select * From Master_Unit');
queryunit.ExecSQL;
queryunit.Open;
while not queryunit.Eof do
begin
  cbunitpeg.Items.Add(queryunit['nama_unit']);
  queryunit.Next;
end;

    formawaldokter.Show;
    formlihatberobatpegawai.Hide;
  end
else
  begin
    ednoindukpeg.Clear;
edpersonelpeg.Clear;
ednopeg.Clear;
ednama.Clear;
ComboBox1.Text:='';
ComboBox2.Text:='';
//
ednoindukpeg.Text:='Nomor Induk';
ednoindukpeg.Font.Color:=clMedGray;
//
edpersonelpeg.Text:='Personel Number';
edpersonelpeg.Font.Color:=clMedGray;
//
ednopeg.Text:='Nomor Record Berobat';
ednopeg.Font.Color:=clMedGray;
//
ednama.Text:='Nama Pegawai';
ednama.Font.Color:=clMedGray;
//
edgridno.Clear;
edgridnama.Clear;
memokel.Clear;
memoanameaterimpin.Clear;
memopempen.Clear;
memodiag.Clear;
memopemfis.Clear;
edtipe.Clear;
//
querypegawai.Active:=true;
queryunit.Active:=true;
queryobat.Active:=true;
querybeliobat.Active:=true;
queryjumlahtrans.Active:=true;
//
cbunitpeg.Clear;
queryunit.Active:=true;
queryunit.Close;
queryunit.SQL.Clear;
queryunit.SQL.Add('Select * From Master_Unit');
queryunit.ExecSQL;
queryunit.Open;
while not queryunit.Eof do
begin
  cbunitpeg.Items.Add(queryunit['nama_unit']);
  queryunit.Next;
end;

    formmenuberobat.Show;
    formlihatberobatpegawai.Hide;
  end;
end;

procedure Tformlihatberobatpegawai.KembaliKeMenu2Click(Sender: TObject);
begin
ComboBox2.Clear;
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Personel_number');
querypegawai.ExecSQL;
querypegawai.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai ');
querybeliobat.ExecSQL;
querybeliobat.Open;
//
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai');
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;


qtipeobat.Active:=true;
qtipeobat.Close;
qtipeobat.SQL.Clear;
qtipeobat.SQL.Add('SELECT * FROM Master_Tipe_Obat');
qtipeobat.ExecSQL;
qtipeobat.Open;
qtipeobat.First;
while not qtipeobat.Eof do
  begin
    ComboBox2.Items.Add(qtipeobat['Tipe_Obat']);
    qtipeobat.Next;
  end;
ednoindukpeg.Clear;
edpersonelpeg.Clear;
ednopeg.Clear;
ednama.Clear;
ComboBox1.Text:='';
ComboBox2.Text:='';
//
ednoindukpeg.Clear;
edpersonelpeg.Clear;
ednopeg.Clear;
ednama.Clear;
//
edgridno.Clear;
edgridnama.Clear;
memokel.Clear;
memoanameaterimpin.Clear;
memopempen.Clear;
memodiag.Clear;
memopemfis.Clear;
edtipe.Clear;
//
querypegawai.Active:=true;
queryunit.Active:=true;
queryobat.Active:=true;
querybeliobat.Active:=true;
queryjumlahtrans.Active:=true;
//
cbunitpeg.Clear;
queryunit.Active:=true;
queryunit.Close;
queryunit.SQL.Clear;
queryunit.SQL.Add('Select * From Master_Unit');
queryunit.ExecSQL;
queryunit.Open;
while not queryunit.Eof do
begin
  cbunitpeg.Items.Add(queryunit['nama_unit']);
  queryunit.Next;
end;
TutupKoneksi;
formmenuberobat.Show;
formlihatberobatpegawai.Hide;
end;

procedure Tformlihatberobatpegawai.PrintDataBerdasarkanNama1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Masukkan Nama Pegawai:','');
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Nama_Pegawai='+QuotedStr(data));
querybeliobat.ExecSQL;
querybeliobat.Open;
      projectdatatransaksi.Open;
      projectdatatransaksi.SelectReport('Report',False);
      projectdatatransaksi.SetParam('datastr','Berdasarkan Nama Pegawai :'+data);
      projectdatatransaksi.Execute;
      projectdatatransaksi.Close;
end;

procedure Tformlihatberobatpegawai.PrintDataBerdasarkanPersonelNumber2Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Personel Number :','');
      querypegawai.Active:=true;
      querypegawai.Close;
      querypegawai.SQL.Clear;
      querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Personel_number='+data);
      querypegawai.ExecSQL;
      querypegawai.Open;
      projectrecordberobat.Open;
      projectrecordberobat.SelectReport('Report',False);
      projectrecordberobat.SetParam('datatrans','Berdasarkan Personel Number :'+data);
      projectrecordberobat.Execute;
      projectrecordberobat.Close;
end;

procedure Tformlihatberobatpegawai.PrintDataBerdasarkanTipePasien1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Tipe Penyakit :','');
querypegawai.Active:=true;
    querypegawai.Close;
    querypegawai.SQL.Clear;
    querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Tipe_Penyakit='+QuotedStr(data));
    querypegawai.ExecSQL;
    querypegawai.Open;
    projectrecordberobat.Open;
    projectrecordberobat.SelectReport('Report',False);
    projectrecordberobat.SetParam('datatrans','Berdasarkan Tipe Penyakit :'+data);
    projectrecordberobat.Execute;
    projectrecordberobat.Close;

end;

procedure Tformlihatberobatpegawai.PrintDataBerdasarkanPersonelNumber3Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan masukkan Personel Number:','');
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Personel_Number='+data);
querybeliobat.ExecSQL;
querybeliobat.Open;
projectdatatransaksi.Open;
projectdatatransaksi.SelectReport('Report',False);
projectdatatransaksi.SetParam('datastr','Berdasarkan Personel Number :'+data);
projectdatatransaksi.Execute;
projectdatatransaksi.Close;
end;

procedure Tformlihatberobatpegawai.PrintDataBerdasarkanNoRecord1Click(
  Sender: TObject);
var
  data:string;
  begin
data:=InputBox('Print Data','Silahkan Masukkan No Record :','');
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT MASTER_PEGAWAI_Query_Query.Nomor_induk, MASTER_PEGAWAI_Query_Query.Personel_number, MASTER_PEGAWAI_Query_Query.Nama_Pegawai, master_record_berobat.Keluhan,');
querypegawai.SQL.Add('master_record_berobat.Anamesa_terimpin, MASTER_PEGAWAI_Query_Query.Keterangan_status, MASTER_PEGAWAI_Query_Query.nama_unit, master_record_berobat.Pemeriksaan_fisik,');
querypegawai.SQL.Add('master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.diagnosa, master_record_berobat.Tanggal_Berobat, master_record_berobat.[No], master_record_berobat.Tipe_Penyakit');
querypegawai.SQL.Add('FROM master_record_berobat INNER JOIN ((master_unit INNER JOIN MASTER_PEGAWAI_Query_Query ON master_unit.kode_unit = MASTER_PEGAWAI_Query_Query.Kode_unit) INNER JOIN master_status ON');
querypegawai.SQL.Add('MASTER_PEGAWAI_Query_Query.kode_status_pegawai = master_status.kode_status) ON master_record_berobat.Nomor_induk = MASTER_PEGAWAI_Query_Query.Nomor_induk where master_record_berobat.[No] Like'+QuotedStr(data+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
   projectdatatransaksi.Open;
      projectdatatransaksi.SelectReport('Report',False);
      projectdatatransaksi.SetParam('datastr','Berdasarkan Nomor Record :'+data);
      projectdatatransaksi.Execute;
      projectdatatransaksi.Close;

end;

procedure Tformlihatberobatpegawai.PrintDataBerdasarkanTipePasien2Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Tipe Obat','');
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Tipe_Obat='+QuotedStr(data));
querybeliobat.ExecSQL;
querybeliobat.Open;
projectdatatransaksi.Open;
projectdatatransaksi.SelectReport('Report',False);
projectdatatransaksi.SetParam('datastr','Berdasarkan Tipe Obat :'+data);
projectdatatransaksi.Execute;
projectdatatransaksi.Close;
end;

procedure Tformlihatberobatpegawai.ednoindukpegChange(Sender: TObject);
begin
if ednoindukpeg.Text='' then
  begin

  end
else
  begin
  querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Nomor_Induk Like'+QuotedStr(ednoindukpeg.Text+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Nomor_Induk Like'+QuotedStr(ednoindukpeg.Text+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE Nomor_Induk Like'+QuotedStr(ednoindukpeg.Text+'%'));
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;
end;
end;

procedure Tformlihatberobatpegawai.edpersonelpegChange(Sender: TObject);
begin
if edpersonelpeg.Text=''then
  begin

  end
else
  begin
    querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Personel_number Like'+QuotedStr(edpersonelpeg.Text+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Personel_Number Like'+QuotedStr(edpersonelpeg.Text+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE Personel_Number Like'+QuotedStr(edpersonelpeg.Text+'%'));
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;

    end;
end;

procedure Tformlihatberobatpegawai.FormClose(Sender: TObject;
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

procedure Tformlihatberobatpegawai.ednopegChange(Sender: TObject);
begin
if ednopeg.Text='' then
  begin

  end
else
  begin
  querypegawai.Active:=false;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT MASTER_PEGAWAI_Query_Query.Nomor_induk, MASTER_PEGAWAI_Query_Query.Personel_number, MASTER_PEGAWAI_Query_Query.Nama_Pegawai, master_record_berobat.Keluhan,');
querypegawai.SQL.Add('master_record_berobat.Anamesa_terimpin, MASTER_PEGAWAI_Query_Query.Keterangan_status, MASTER_PEGAWAI_Query_Query.nama_unit, master_record_berobat.Pemeriksaan_fisik,');
querypegawai.SQL.Add('master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.diagnosa, master_record_berobat.Tanggal_Berobat, master_record_berobat.[No], master_record_berobat.Tipe_Penyakit');
querypegawai.SQL.Add('FROM master_record_berobat INNER JOIN ((master_unit INNER JOIN MASTER_PEGAWAI_Query_Query ON master_unit.kode_unit = MASTER_PEGAWAI_Query_Query.Kode_unit) INNER JOIN master_status ON');
querypegawai.SQL.Add('MASTER_PEGAWAI_Query_Query.kode_status_pegawai = master_status.kode_status) ON master_record_berobat.Nomor_induk = MASTER_PEGAWAI_Query_Query.Nomor_induk where master_record_berobat.[No] Like'+QuotedStr(ednopeg.Text+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT Query_Berobat_Pegawai.Nomor_induk, Query_Berobat_Pegawai.Nama_Pegawai, Query_Berobat_Pegawai.Personel_number, master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, master_beli_obat.[No],');
querybeliobat.SQL.Add('Query_Berobat_Pegawai.nama_unit, master_record_berobat.Tanggal_Berobat');
querybeliobat.SQL.Add('FROM master_record_berobat INNER JOIN (Query_Berobat_Pegawai INNER JOIN master_beli_obat ON Query_Berobat_Pegawai.[No] = master_beli_obat.[No]) ON (Query_Berobat_Pegawai.[No] =');
querybeliobat.SQL.Add('master_record_berobat.[No]) AND (master_record_berobat.[No] = master_beli_obat.[No]) where master_record_berobat.[No] Like'+QuotedStr(ednopeg.Text+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;
end;
end;

procedure Tformlihatberobatpegawai.ednamaChange(Sender: TObject);
begin
if (ednama.Text='') or (ednama.Font.Color=clMedGray) then
  begin

  end
else
  begin
    querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Nama_Pegawai Like'+QuotedStr('%'+ednama.Text+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Nama_Pegawai Like'+QuotedStr('%'+ednama.Text+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE Nama_Pegawai Like'+QuotedStr('%'+ednama.Text+'%'));
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;
end;
end;

procedure Tformlihatberobatpegawai.ExportSemuaData2Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
//data:=InputBox('Silahkan Masukkan Nama Keluarga :','Export Data','');
//
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;

XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querypegawai.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querypegawai.Fields[filName].FieldName;
   end;
//
if querypegawai.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querypegawai.RecordCount=1 then
begin
for r:=0 to querypegawai.RecordCount-1 do
begin
  for c:=0 to querypegawai.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querypegawai.Fields[c].AsString;
  end;
 querypegawai.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querypegawai.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querypegawai.RecordCount-1 do
begin
  for c:=0 to querypegawai.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querypegawai.Fields[c].AsString;
  end;
 querypegawai.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querypegawai.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatberobatpegawai.ExportBerdasarkanNomorInduk2Click(
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
//
  querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Nomor_Induk Like'+QuotedStr(data));
querypegawai.ExecSQL;
querypegawai.Open;

XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querypegawai.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querypegawai.Fields[filName].FieldName;
   end;
//
if querypegawai.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querypegawai.RecordCount=1 then
begin
for r:=0 to querypegawai.RecordCount-1 do
begin
  for c:=0 to querypegawai.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querypegawai.Fields[c].AsString;
  end;
 querypegawai.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querypegawai.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querypegawai.RecordCount-1 do
begin
  for c:=0 to querypegawai.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querypegawai.Fields[c].AsString;
  end;
 querypegawai.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querypegawai.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatberobatpegawai.ExportBerdasarkanPersonelNumber1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Personel Number :','Export Data','');
//
    querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Personel_number Like'+QuotedStr(data));
querypegawai.ExecSQL;
querypegawai.Open;

XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querypegawai.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querypegawai.Fields[filName].FieldName;
   end;
//
if querypegawai.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querypegawai.RecordCount=1 then
begin
for r:=0 to querypegawai.RecordCount-1 do
begin
  for c:=0 to querypegawai.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querypegawai.Fields[c].AsString;
  end;
 querypegawai.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querypegawai.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querypegawai.RecordCount-1 do
begin
  for c:=0 to querypegawai.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querypegawai.Fields[c].AsString;
  end;
 querypegawai.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querypegawai.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatberobatpegawai.ExportBerdasarkanNama1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Personel Nama :','Export Data','');
//
    querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Nama_Pegawai Like'+QuotedStr('%'+data+'%'));
querypegawai.ExecSQL;
querypegawai.Open;

XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querypegawai.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querypegawai.Fields[filName].FieldName;
   end;
//
if querypegawai.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querypegawai.RecordCount=1 then
begin
for r:=0 to querypegawai.RecordCount-1 do
begin
  for c:=0 to querypegawai.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querypegawai.Fields[c].AsString;
  end;
 querypegawai.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querypegawai.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querypegawai.RecordCount-1 do
begin
  for c:=0 to querypegawai.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querypegawai.Fields[c].AsString;
  end;
 querypegawai.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querypegawai.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatberobatpegawai.ExportBerdasarkanTipePasien1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Tipe Pasien :','Export Data','');
//
querypegawai.Active:=true;
    querypegawai.Close;
    querypegawai.SQL.Clear;
    querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE Tipe_Penyakit Like'+QuotedStr('%'+data+'%'));
    querypegawai.ExecSQL;
    querypegawai.Open;XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querypegawai.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querypegawai.Fields[filName].FieldName;
   end;
//
if querypegawai.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querypegawai.RecordCount=1 then
begin
for r:=0 to querypegawai.RecordCount-1 do
begin
  for c:=0 to querypegawai.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querypegawai.Fields[c].AsString;
  end;
 querypegawai.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querypegawai.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querypegawai.RecordCount-1 do
begin
  for c:=0 to querypegawai.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querypegawai.Fields[c].AsString;
  end;
 querypegawai.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querypegawai.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatberobatpegawai.ExportBerdasarkanUnit1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Unit Kerja :','Export Data','');
//
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Berobat_Pegawai WHERE nama_unit Like'+QuotedStr('%'+data+'%'));
querypegawai.ExecSQL;
querypegawai.Open;

XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querypegawai.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querypegawai.Fields[filName].FieldName;
   end;
//
if querypegawai.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querypegawai.RecordCount=1 then
begin
for r:=0 to querypegawai.RecordCount-1 do
begin
  for c:=0 to querypegawai.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querypegawai.Fields[c].AsString;
  end;
 querypegawai.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querypegawai.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querypegawai.RecordCount-1 do
begin
  for c:=0 to querypegawai.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querypegawai.Fields[c].AsString;
  end;
 querypegawai.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querypegawai.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatberobatpegawai.ExportSemuaData3Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
//data:=InputBox('Silahkan Masukkan Nama Keluarga :','Export Data','');
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai ');
querybeliobat.ExecSQL;
querybeliobat.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querybeliobat.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querybeliobat.Fields[filName].FieldName;
   end;
//
if querybeliobat.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querybeliobat.RecordCount=1 then
begin
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
 querybeliobat.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
 querybeliobat.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatberobatpegawai.ExportBerdasarkanNomorInduk3Click(
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
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Nomor_Induk Like'+QuotedStr(data+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querybeliobat.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querybeliobat.Fields[filName].FieldName;
   end;
//
if querybeliobat.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querybeliobat.RecordCount=1 then
begin
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
 querybeliobat.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
 querybeliobat.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatberobatpegawai.ExportBerdasarkanPersonelNumber2Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Personel Number :','Export Data','');
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Personel_Number Like'+QuotedStr(data+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querybeliobat.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querybeliobat.Fields[filName].FieldName;
   end;
//
if querybeliobat.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querybeliobat.RecordCount=1 then
begin
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
 querybeliobat.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
 querybeliobat.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatberobatpegawai.ExportBerdasarkanNomorRecordBerobat1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Record :','Export Data','');
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT Query_Berobat_Pegawai.Nomor_induk, Query_Berobat_Pegawai.Nama_Pegawai, Query_Berobat_Pegawai.Personel_number, master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, master_beli_obat.[No],');
querybeliobat.SQL.Add('Query_Berobat_Pegawai.nama_unit, master_record_berobat.Tanggal_Berobat');
querybeliobat.SQL.Add('FROM master_record_berobat INNER JOIN (Query_Berobat_Pegawai INNER JOIN master_beli_obat ON Query_Berobat_Pegawai.[No] = master_beli_obat.[No]) ON (Query_Berobat_Pegawai.[No] =');
querybeliobat.SQL.Add('master_record_berobat.[No]) AND (master_record_berobat.[No] = master_beli_obat.[No]) where master_record_berobat.[No] Like'+QuotedStr(data+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querybeliobat.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querybeliobat.Fields[filName].FieldName;
   end;
//
if querybeliobat.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querybeliobat.RecordCount=1 then
begin
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
 querybeliobat.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount)].Borders.LineStyle :=1;
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
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
 querybeliobat.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatberobatpegawai.ExportBerdasarka1Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Unit Pegawai :','Export Data','');
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE nama_unit Like'+QuotedStr('%'+data+'%'));
querybeliobat.ExecSQL;
querybeliobat.Open;

XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querybeliobat.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querybeliobat.Fields[filName].FieldName;
   end;
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
  querybeliobat.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatberobatpegawai.ExportBerdasarkanTipeObat1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Tipe Obat :','Export Data','');
//
querybeliobat.Active:=true;
querybeliobat.Close;
querybeliobat.SQL.Clear;
querybeliobat.SQL.Add('SELECT * FROM Query_Beli_Pegawai WHERE Tipe_Obat Like'+QuotedStr(data));
querybeliobat.ExecSQL;
querybeliobat.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querybeliobat.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querybeliobat.Fields[filName].FieldName;
   end;
//
if querybeliobat.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querybeliobat.RecordCount=1 then
begin
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
 querybeliobat.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querybeliobat.RecordCount-1 do
begin
  for c:=0 to querybeliobat.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querybeliobat.Fields[c].AsString;
  end;
 querybeliobat.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querybeliobat.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatberobatpegawai.ExportSemuaData4Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
//data:=InputBox('Silahkan Masukkan Nama Keluarga :','Export Data','');
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai ');
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;

//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryjumlahtrans.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryjumlahtrans.Fields[filName].FieldName;
   end;
//
if queryjumlahtrans.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryjumlahtrans.RecordCount=1 then
begin
for r:=0 to queryjumlahtrans.RecordCount-1 do
begin
  for c:=0 to queryjumlahtrans.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryjumlahtrans.Fields[c].AsString;
  end;
 queryjumlahtrans.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryjumlahtrans.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to queryjumlahtrans.RecordCount-1 do
begin
  for c:=0 to queryjumlahtrans.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryjumlahtrans.Fields[c].AsString;
  end;
 queryjumlahtrans.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryjumlahtrans.RecordCount-1)].Borders.LineStyle :=1;
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


procedure Tformlihatberobatpegawai.ExportBerdasarkanNomorInduk4Click(
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
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE Nomor_Induk Like'+QuotedStr(data+'%'));
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;

//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryjumlahtrans.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryjumlahtrans.Fields[filName].FieldName;
   end;
//
if queryjumlahtrans.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryjumlahtrans.RecordCount=1 then
begin
for r:=0 to queryjumlahtrans.RecordCount-1 do
begin
  for c:=0 to queryjumlahtrans.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryjumlahtrans.Fields[c].AsString;
  end;
 queryjumlahtrans.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryjumlahtrans.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to queryjumlahtrans.RecordCount-1 do
begin
  for c:=0 to queryjumlahtrans.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryjumlahtrans.Fields[c].AsString;
  end;
 queryjumlahtrans.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryjumlahtrans.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatberobatpegawai.ExportBerdsarkanPersonelNumber1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Personel Number :','Export Data','');
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE Personel_Number Like'+QuotedStr(data+'%'));
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;

//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryjumlahtrans.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryjumlahtrans.Fields[filName].FieldName;
   end;
//
if queryjumlahtrans.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryjumlahtrans.RecordCount=1 then
begin
for r:=0 to queryjumlahtrans.RecordCount-1 do
begin
  for c:=0 to queryjumlahtrans.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryjumlahtrans.Fields[c].AsString;
  end;
 queryjumlahtrans.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryjumlahtrans.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to queryjumlahtrans.RecordCount-1 do
begin
  for c:=0 to queryjumlahtrans.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryjumlahtrans.Fields[c].AsString;
  end;
 queryjumlahtrans.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryjumlahtrans.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatberobatpegawai.ExportBerdasarkanUnit2Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Unit Pegawai :','Export Data','');
queryjumlahtrans.Active:=true;
queryjumlahtrans.Close;
queryjumlahtrans.SQL.Clear;
queryjumlahtrans.SQL.Add('SELECT * FROM Query_Data_Transaksi_Pegawai WHERE nama_unit Like'+QuotedStr('%'+data+'%'));
queryjumlahtrans.ExecSQL;
queryjumlahtrans.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryjumlahtrans.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryjumlahtrans.Fields[filName].FieldName;
   end;
//
if queryjumlahtrans.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryjumlahtrans.RecordCount=1 then
begin
for r:=0 to queryjumlahtrans.RecordCount-1 do
begin
  for c:=0 to queryjumlahtrans.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryjumlahtrans.Fields[c].AsString;
  end;
 queryjumlahtrans.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryjumlahtrans.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to queryjumlahtrans.RecordCount-1 do
begin
  for c:=0 to queryjumlahtrans.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryjumlahtrans.Fields[c].AsString;
  end;
 queryjumlahtrans.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryjumlahtrans.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatberobatpegawai.FormActivate(Sender: TObject);
begin
///
if ADOConnection1.Connected=true then
begin
ComboBox2.Clear;
cbunitpeg.Clear;
//
qtipeobat.Active:=true;
qtipeobat.Close;
qtipeobat.SQL.Clear;
qtipeobat.SQL.Add('SELECT * FROM Master_Tipe_Obat');
qtipeobat.ExecSQL;
qtipeobat.Open;
qtipeobat.First;
while not qtipeobat.Eof do
  begin
    ComboBox2.Items.Add(qtipeobat['Tipe_Obat']);
    qtipeobat.Next;
  end;
//
querypegawai.Active:=true;
queryunit.Active:=true;
queryobat.Active:=true;
querybeliobat.Active:=true;
queryjumlahtrans.Active:=true;
//
queryunit.Active:=true;
queryunit.Close;
queryunit.SQL.Clear;
queryunit.SQL.Add('Select * From Master_Unit');
queryunit.ExecSQL;
queryunit.Open;
while not queryunit.Eof do
begin
  cbunitpeg.Items.Add(queryunit['nama_unit']);
  queryunit.Next;
end;
end
else if ADOConnection1.Connected=false then
  begin

  end
else
  begin
  MessageDlg('Terjadi Kesalahan Koneksi Data',mtError,[mbOK],1);
  end;

end;

procedure Tformlihatberobatpegawai.TutupKoneksi;
begin

ADOConnection1.Connected:=false;
querypegawai.Active:=false;
queryunit.Active:=false;
queryobat.Active:=false;
querybeliobat.Active:=false;
queryjumlahtrans.Active:=false;
qtipeobat.Active:=false;
end;
procedure Tformlihatberobatpegawai.Image5Click(Sender: TObject);
begin
TutupKoneksi;
KembaliKeMenu2Click(Sender);
end;

procedure Tformlihatberobatpegawai.ednopegKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
    Image12Click(Sender);
end;

procedure Tformlihatberobatpegawai.ednamaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image15Click(Sender);
end;

procedure Tformlihatberobatpegawai.Timer1Timer(Sender: TObject);
begin
lblhari.Caption:=FormatDateTime('dddd,mmmm,yyyy',now);
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
end;

end.
