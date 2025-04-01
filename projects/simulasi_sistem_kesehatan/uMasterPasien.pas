unit uMasterPasien;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ADODB, DB, Grids, DBGrids, jpeg, ExtCtrls, Menus, ComObj;

type
  Tformpasien = class(TForm)
    grupkategori: TGroupBox;
    rbpegawai: TRadioButton;
    rbkeluarga: TRadioButton;
    gruppeg: TGroupBox;
    ADOConnection1: TADOConnection;
    ADOSimpan: TADOQuery;
    Label2: TLabel;
    txtnamapeg: TEdit;
    Label3: TLabel;
    txtperson: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    txtketpeg: TEdit;
    Label6: TLabel;
    txtpegunit: TEdit;
    grupkeluarga: TGroupBox;
    txtindukkel: TEdit;
    cbdatakeluarga: TComboBox;
    Label7: TLabel;
    ADOPEG: TADOQuery;
    Label9: TLabel;
    Label1: TLabel;
    txttanggallahir: TEdit;
    Label10: TLabel;
    txtkodetunjangan: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    txtpeginduk: TEdit;
    queryadopasien: TADOQuery;
    qdatasource: TADOQuery;
    DataSource1: TDataSource;
    adokodetun: TADOQuery;
    Label13: TLabel;
    txtjekel: TEdit;
    Label14: TLabel;
    ADOJekel: TADOQuery;
    ADUSIMPAN: TADOTable;
    lblkodejk: TLabel;
    lblkodest: TLabel;
    lblcarikodejk: TLabel;
    Shape5: TShape;
    Label18: TLabel;
    lbltransaksi: TLabel;
    Label21: TLabel;
    lbllogin: TLabel;
    Shape8: TShape;
    Shape13: TShape;
    Shape14: TShape;
    lbljam: TLabel;
    lblhari: TLabel;
    Shape11: TShape;
    querycarikeluarganama: TADOQuery;
    Image1: TImage;
    btnsimpan: TImage;
    btncekkel: TImage;
    Image2: TImage;
    Image7: TImage;
    adosimpandata: TADOTable;
    Timer1: TTimer;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape12: TShape;
    Shape15: TShape;
    Shape16: TShape;
    MainMenu1: TMainMenu;
    anyakan1: TMenuItem;
    Bantuan1: TMenuItem;
    entangAplikasi1: TMenuItem;
    adopegawai: TADOTable;
    querycaripasien: TADOQuery;
    Image9: TImage;
    lbljeniskeluarga: TLabel;
    PopupMenu1: TPopupMenu;
    KembaliKeMenuPasien2: TMenuItem;
    KembalikeMenuAdmin2: TMenuItem;
    BatalkanTransaksi2: TMenuItem;
    KeluarAplikasi2: TMenuItem;
    Refresh1: TMenuItem;
    Image8: TImage;
    Image10: TImage;
    ADOQuery1: TADOQuery;
    lblnokeluarga: TLabel;
    lblkodestatus: TLabel;
    ADOTable1: TADOTable;
    querykeluarga: TADOQuery;
    Aplikasi1: TMenuItem;
    KembaliKeMenu1: TMenuItem;
    Keluar1: TMenuItem;
    LihatDataPegawai1: TMenuItem;
    DBGrid1: TDBGrid;
    querydatapegawai: TADOQuery;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    Image3: TImage;
    Image4: TImage;
    OpenDialog1: TOpenDialog;
    Image6: TImage;
    procedure Button2Click(Sender: TObject);
    procedure cbdatakeluargaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure rbkeluargaClick(Sender: TObject);
    procedure rbpegawaiClick(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure txtindukkelKeyPress(Sender: TObject; var Key: Char);
    procedure Image9Click(Sender: TObject);
    procedure BatalkanTransaksi2Click(Sender: TObject);
    procedure KeluarAplikasi2Click(Sender: TObject);
    procedure KembalikeMenuAdmin2Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure KembaliKeMenuPasien2Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure LihatdataTransasksi1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure KembaliKeMenuPasien1Click(Sender: TObject);
    procedure KembaliKeMenuAdmin1Click(Sender: TObject);
    procedure btncekkelClick(Sender: TObject);
    procedure txtpegindukKeyPress(Sender: TObject; var Key: Char);
    procedure entangAplikasi1Click(Sender: TObject);
    procedure KembaliKeMenu1Click(Sender: TObject);
    procedure Keluar1Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure LihatDataPegawai1Click(Sender: TObject);
    procedure txtpegindukChange(Sender: TObject);
    procedure txtindukkelChange(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnkembalikemenuClick(Sender: TObject);
  private
    procedure RefreshQueryCariKeluarga;
    procedure BatalkanTransaksiKeluarga;
    procedure BatalkanTransaksiPegawai;
    procedure Refreshdatagrid;
    procedure TutupKoneksi;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formpasien: Tformpasien;

implementation

uses Math, UASAL, uDoctorMenu, uInsertMasterPegawai, uLihatPasien,
  ulihatrecord, uLihatTranspeg, ulogindokter, umainobat, uMainUtama,
  uMasterDokter, uMasterKegunaanObat, uMasterKeluarga, uMasterLogin,
  uMasterObat, uMenuAwal, uMenuPegawai, uPasien, upilihdokter,
  uPilihKeluarga, uSplash, uAbout, uFamilytypetrans, ulihatdataobat,
  ulihatkeluarga, ulogin, umainobatpoli, uStatusPegawai, uTransunit,
  uDoctorMain, uLihatBerobatKeluarga, ulihatChart, ulihatchart2,
  ulihatdataberobat, uLihatDataDokter, uMenuBerobat, uMenuUser,
  uMenuDokter, ss, ulihatchartobat, uLihatpegawai, uRiwayatpenyakit,
  uTransaksiuser, AutoCompleteText, AutoEdit;

{$R *.dfm}

procedure Tformpasien.Button2Click(Sender: TObject);
var
    kodepeg,kodeunit:string;
begin
end;

procedure Tformpasien.cbdatakeluargaChange(Sender: TObject);
var
  kodetun,kodejekel:string;
begin
  querycarikeluarganama.Active:=true;
  querycarikeluarganama.Close;
  querycarikeluarganama.SQL.Clear;
  querycarikeluarganama.SQL.Add('SELECT * FROM Query_Pasien_Keluarga WHERE Nomor_Induk =:nomor ORDER BY Nomor_Induk ASC');
  querycarikeluarganama.Parameters.ParamByName('nomor').Value:=txtindukkel.Text;
  querycarikeluarganama.Open;

  if querycarikeluarganama.Locate('nama_keluarga',cbdatakeluarga.Text,[]) then
    begin
      MessageDlg('Pasien Sudah Terdaftar',mtWarning,mbOKCancel,0);
      btnsimpan.Enabled:=false;
      grupkategori.Enabled:=true;
    end
  else
    begin
        //
       querykeluarga.Active:=true;
       querykeluarga.SQL.Clear;
       querykeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE Nomor_Induk='+QuotedStr(txtindukkel.Text));
       querykeluarga.ExecSQL;
       querykeluarga.Open;
       If querykeluarga.Locate('Nama_Keluarga',cbdatakeluarga.Text,[]) then
        begin
         lbljeniskeluarga.Caption:=querykeluarga.FieldByName('kode_jenis_keluarga').AsString;
         txttanggallahir.Text:=querykeluarga.FieldByName('tanggal_kahir').AsString;
         txtkodetunjangan.Text:=querykeluarga.FieldByName('status_tunjangan').AsString;
         txtjekel.Text:=querykeluarga.FieldByName('jenis_keluarga').AsString;
          lblnokeluarga.Caption:=querykeluarga.FieldByName('No_Keluarga').AsString;
          btnsimpan.Enabled:=true;
          MessageDlg('Anda Dapat Menyimpan Data Ini',mtInformation,mbOKCancel,1);
          grupkategori.Enabled:=false;
        end
        else
          begin
             ShowMessage('ERROR 32,Dimana Keluarga terdaftar Sebagai Pasien tetapi tidak ditemukan di Data Keluarga');
          end;
    end;
end;

procedure Tformpasien.FormActivate(Sender: TObject);
begin
rbpegawai.SetFocus;

end;

procedure Tformpasien.FormCreate(Sender: TObject);
begin
ADOConnection1.Connected:=false;
queryadopasien.Active:=true;
querycarikeluarganama.Active:=true;
ADOSimpan.Active:=true;
ADOPEG.Active:=true;
adokodetun.Active:=true;
ADOJekel.Active:=true;
ADUSIMPAN.Active:=true;
Label13.Visible:=false;
gruppeg.Enabled:=false;
grupkeluarga.Enabled:=false;
Refreshdatagrid;
ADOQuery1.Active:=True;
querycarikeluarganama.Active:=true;
ADOSimpan.Active:=true;
adosimpandata.Active:=true;

end;

procedure Tformpasien.Image4Click(Sender: TObject);
begin
rbpegawai.Checked:=false;
rbkeluarga.Checked:=false;

end;

procedure Tformpasien.btneditClick(Sender: TObject);
var
   jk,kjk,data:string;
begin

end;

procedure Tformpasien.btnDeleteClick(Sender: TObject);
var
    data,data1,kk,nomor:string;
begin
data:=inputbox('Konfirmasi','Silahkan Masukkan No Induk Pegawai :','');
data1:=inputbox('Konfirmasi','Silahkan Masukkan Nama Keluarga :','');
//
querycarikeluarganama.Active:=true;
      querycarikeluarganama.Close;
      querycarikeluarganama.SQL.Clear;
      querycarikeluarganama.SQL.Add('SELECT * FROM Query_Pasien_Keluarga WHERE Nomor_Induk Like'+QuotedStr(data));
      querycarikeluarganama.ExecSQL;
      querycarikeluarganama.Open;
if querycarikeluarganama.Locate('nama_keluarga',data1,[]) then
    begin
      nomor:=querycarikeluarganama.FieldByName('nomor_pasien').AsString;
      if MessageDlg('Apakah Anda ingin Menghapus Data Pasien ',mtConfirmation,[mbYes],1)=mrYes then
        begin
          adosimpandata.Active:=True;
          adosimpandata.Locate('nomor_pasien',nomor,[]);
          adosimpandata.Delete;
          MessageDlg('Data Berhasil Dihapus',mtInformation,[mbYes],1);
        end
      else
        begin
          MessageDlg('Penghapusan Data Dibatalkan',mtInformation,[mbYes],1);
        end;
      end
else
  begin
    MessageDlg('Data Tidak Ditemukan',mtError,[mbOK],1);
  end;

end;


procedure Tformpasien.btnsimpanClick(Sender: TObject);
begin
if (txtindukkel.Text='') or (cbdatakeluarga.Text='') then
  begin
    showmessage('Masih ada Field yang Kosong');
    end
else
  begin
      querycarikeluarganama.Active:=true;
      querycarikeluarganama.Close;
      querycarikeluarganama.SQL.Clear;
      querycarikeluarganama.SQL.Add('SELECT * FROM Query_Pasien_Keluarga WHERE Nomor_Induk =:nomor ORDER BY Nomor_Induk ASC');
      querycarikeluarganama.Parameters.ParamByName('nomor').Value:=txtindukkel.Text;
      querycarikeluarganama.Open;
      if querycarikeluarganama.Locate('nama_keluarga',cbdatakeluarga.Text,[]) then
        begin
          MessageDlg('Pasien Sudah Terdaftar',mtError,[mbYes],1);
        end
      else
    begin
      adosimpandata.Active:=true;
      adosimpandata.Append;
      adosimpandata.FieldByName('Nomor_Induk').AsString:=txtindukkel.Text;
      //adosimpandata.FieldByName('Kode_Jenis_Keluarga').AsString:=lbljeniskeluarga.Caption;
      adosimpandata.FieldByName('No_Keluarga').AsString:=lblnokeluarga.Caption;
      adosimpandata.Post;
      qdatasource.Active:=true;
      qdatasource.Close;
      qdatasource.SQL.Clear;
      qdatasource.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
      qdatasource.ExecSQL;
      qdatasource.Open;
      qdatasource.Last;
      MessageDlg('Registrasi Pasien Keluarga Berhasil',mtInformation,[mbYes],1);
      BatalkanTransaksiKeluarga;
      Refreshdatagrid;
      btnsimpan.Enabled:=false;
      Image8Click(Sender);
    end;

  end;
end;

procedure Tformpasien.Timer1Timer(Sender: TObject);
begin
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
lblhari.Caption:=FormatDateTime('dddd,mmmm,yyyy',now);
    if txtindukkel.Text<>'' then
      begin
        Shape1.Visible:=true;
      end
    else
      begin
        Shape1.Visible:=false;
      end;
    if txttanggallahir.Text<>'' then
      begin
        Shape2.Visible:=true;
      end
    else
      begin
        Shape2.Visible:=false;
      end;
    if txtkodetunjangan.Text<>'' then
      begin
        Shape3.Visible:=true;
      end
    else
      begin
        Shape3.Visible:=false;
      end;
    if txtjekel.Text<>'' then
      begin
        Shape4.Visible:=true;
      end
    else
      begin
        Shape4.Visible:=false;
      end;
    if txtpeginduk.Text<>'' then
      begin
        Shape6.Visible:=true;
      end
    else
      begin
        Shape6.Visible:=false;
      end;
    if txtnamapeg.Text<>'' then
      begin
        Shape7.Visible:=true;
      end
    else
      begin
        Shape7.Visible:=false;
      end;
    if txtperson.Text<>'' then
      begin
        Shape12.Visible:=true;
      end
    else
      begin
        Shape12.Visible:=false;
      end;
    if txtketpeg.Text<>'' then
      begin
        Shape15.Visible:=true;
      end
    else
      begin
        Shape15.Visible:=false;
      end;
    if txtpegunit.Text<>'' then
      begin
        Shape16.Visible:=true;
      end
    else
      begin
        Shape16.Visible:=false;
      end;

end;

procedure Tformpasien.rbkeluargaClick(Sender: TObject);
begin
  gruppeg.Enabled:=false;
  grupkeluarga.Enabled:=true;
  lbltransaksi.Caption:='Transaksi Keluarga';
  BatalkanTransaksiPegawai;
Refreshdatagrid;
DBGrid1.Visible:=false;
end;

procedure Tformpasien.rbpegawaiClick(Sender: TObject);
begin
  gruppeg.Enabled:=true;
  grupkeluarga.Enabled:=false;
  lbltransaksi.Caption:='Transaksi Pegawai';
  DBGrid2.Visible:=false;
  BatalkanTransaksiKeluarga;
  Refreshdatagrid;
end;

procedure Tformpasien.KeluarAplikasi1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformpasien.Image7Click(Sender: TObject);
begin
    adopegawai.Active:=false;
    adopegawai.Active:=true;
    if adopegawai.Locate('Nomor_Induk',txtpeginduk.Text,[]) then
      begin
        RefreshQueryCariKeluarga;
        lblkodestatus.Caption:=adopegawai.FieldByName('kode_status_pegawai').AsString;
        querycaripasien.Close;
        querycaripasien.SQL.Clear;
        querycaripasien.SQL.Add('SELECT * FROM master_pasien WHERE Nomor_Induk =:nomor ORDER BY Nomor_Induk ASC');
        querycaripasien.Parameters.ParamByName('nomor').Value:=txtpeginduk.Text;
        querycaripasien.Open;
          if querycaripasien.Locate('No_Keluarga','0',[]) then
            begin
              MessageDlg('Pegawai Sudah Terdaftar di Data Pasien',mtWarning,mbOKCancel,0);
              txtpeginduk.SetFocus;
              grupkategori.Enabled:=true;
              DBGrid1.Visible:=false;
            end
          else
            begin
            MessageDlg('Anda Bisa Mendaftar Sebagai Pasien',mtInformation,mbOKCancel,0);
            txtnamapeg.Text:=adopegawai.FieldByName('Nama_Pegawai').AsString;
            txtperson.Text:=adopegawai.FieldByName('Personel_number').AsString;
            txtketpeg.Text:=adopegawai.FieldByName('Keterangan_status').AsString;
            txtpegunit.Text:=adopegawai.FieldByName('nama_unit').AsString;
            grupkategori.Enabled:=false;
            DBGrid1.Visible:=false;
            end;
      end
    else
      begin
        MessageDlg('Nomor Induk Tidak Ditemukan',mtError,[mbOK],1);
         if MessageDlg('Apakah Anda ingin Melihat Daftar Pegawai ?',mtConfirmation,[mbyes,mbno],0)=mrYes then
          begin
           formlihatpegawai.Show;
        end;
      end;
end;

procedure Tformpasien.RefreshQueryCariKeluarga;
begin
querycaripasien.Active:=true;
querycaripasien.Close;
querycaripasien.SQL.Clear;
querycaripasien.SQL.Add('SELECT * FROM master_pasien');
querycaripasien.Open;

end;
procedure Tformpasien.txtindukkelKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
if DBGrid2.Visible=true then
  begin
     txtindukkel.Text:=querydatapegawai.FieldByName('Nomor_Induk').AsString;
     DBGrid2.Visible:=false;
  end
else
  begin
  btncekkelClick(Sender);
  end;
end;

procedure Tformpasien.Image9Click(Sender: TObject);
begin
  querycarikeluarganama.Active:=true;
  querycarikeluarganama.Close;
  querycarikeluarganama.SQL.Clear;
  querycarikeluarganama.SQL.Add('SELECT * FROM Query_Pasien_Keluarga WHERE Nomor_Induk =:nomor ORDER BY Nomor_Induk ASC');
  querycarikeluarganama.Parameters.ParamByName('nomor').Value:=txtindukkel.Text;
  querycarikeluarganama.Open;

  if querycarikeluarganama.Locate('nama_keluarga',cbdatakeluarga.Text,[]) then
    begin
      MessageDlg('Pasien Sudah Terdaftar',mtWarning,mbOKCancel,0);
      btnsimpan.Enabled:=false;
    end
  else
    begin
        //
       querykeluarga.Active:=true;
       querykeluarga.SQL.Clear;
       querykeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE Nomor_Induk='+QuotedStr(txtindukkel.Text));
       querykeluarga.ExecSQL;
       querykeluarga.Open;
       If querykeluarga.Locate('Nama_Keluarga',cbdatakeluarga.Text,[]) then
        begin
         lbljeniskeluarga.Caption:=querykeluarga.FieldByName('kode_jenis_keluarga').AsString;
         txttanggallahir.Text:=querykeluarga.FieldByName('tanggal_kahir').AsString;
         txtkodetunjangan.Text:=querykeluarga.FieldByName('status_tunjangan').AsString;
         txtjekel.Text:=querykeluarga.FieldByName('jenis_keluarga').AsString;
         lblnokeluarga.Caption:=querykeluarga.FieldByName('No_Keluarga').AsString;
          btnsimpan.Enabled:=true;

        end
        else
          begin
             ShowMessage('ERROR 32,Dimana Keluarga terdaftar Sebagai Pasien tetapi tidak ditemukan di Data Keluarga');
          end;
    end;
end;

procedure Tformpasien.BatalkanTransaksiKeluarga;
begin
    txtindukkel.Clear;
    cbdatakeluarga.Clear;
    txttanggallahir.Clear;
    txtkodetunjangan.Clear;
    txtjekel.Clear;
    lbljeniskeluarga.Caption:='0';
    txttanggallahir.Clear;
    txtkodetunjangan.Clear;
    txtjekel.Clear;
    cbdatakeluarga.Clear;
   end;
procedure Tformpasien.BatalkanTransaksi2Click(Sender: TObject);
begin
    if rbkeluarga.Checked=true then
    begin
      BatalkanTransaksiKeluarga;
    end
    else
      begin
        BatalkanTransaksiPegawai;
      end;
end;

procedure Tformpasien.BatalkanTransaksiPegawai;
  begin
     txtpeginduk.Clear;
     txtnamapeg.Clear;
      txtperson.Clear;
      txtketpeg.Clear;
      txtpegunit.Clear;
       querycaripasien.Close;
        querycaripasien.SQL.Clear;
        querycaripasien.SQL.Add('SELECT * FROM master_pasien ');
        querycaripasien.Open;
  end;
procedure Tformpasien.KeluarAplikasi2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tformpasien.KembalikeMenuAdmin2Click(Sender: TObject);
begin
  Refreshdatagrid;
    BatalkanTransaksiKeluarga;
    BatalkanTransaksiPegawai;
    adopegawai.Active:=false;
    adopegawai.Active:=true;
      fMainmenu.Show;
      formpasien.Hide;
end;
procedure Tformpasien.Refreshdatagrid;
  begin
    qdatasource.Active:=true;
    qdatasource.Close;
    qdatasource.SQL.Clear;
    qdatasource.SQL.Add('SELECT * FROM master_pasien_Query ');
    qdatasource.Open;
    qdatasource.Last;
    btnsimpan.Enabled:=false;
    BatalkanTransaksiKeluarga;
    BatalkanTransaksiPegawai;
  end;
procedure Tformpasien.Refresh1Click(Sender: TObject);
begin
    Refreshdatagrid;
    BatalkanTransaksiKeluarga;
    BatalkanTransaksiPegawai;
    adopegawai.Active:=false;
    adopegawai.Active:=true;
    grupkategori.Enabled:=true;
end;

procedure Tformpasien.Image6Click(Sender: TObject);
var
    data,data1,kk:string;
begin
data:=inputbox('Konfirmasi','Silahkan Masukkan No Induk Pegawai :','');
  queryadopasien.Active:=true;
  queryadopasien.Close;
  queryadopasien.SQL.Clear;
  queryadopasien.SQL.Add('SELECT * FROM master_pasien WHERE Nomor_Induk =:nomor ORDER BY nomor_pasien ASC');
  queryadopasien.Parameters.ParamByName('nomor').Value:=data;
  queryadopasien.Open;
If (queryadopasien.locate('kode_jenis_keluarga','0',[])) then
  begin
    Showmessage('Data ditemukan');
      if MessageDlg('Apakah anda ingin menghapus Data Pasien ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
              queryadopasien.Close;
              queryadopasien.SQL.Text:='DELETE FROM master_pasien WHERE Kode_jenis_keluarga='+'0';
              queryadopasien.ExecSQL;
              MessageDlg('Data berhasil Dihapus',mtInformation,[mbYes],1);
              Refreshdatagrid;
              
          end
        //Data tidak Ditemukan / tidak jadi menghapus
      else
  begin
showmessage('Data tidak terhapus');
  end;
end
else
begin
showmessage('Data Tidak Ditemukan');
txtpeginduk.SetFocus;
end;
end;


procedure Tformpasien.KembaliKeMenuPasien2Click(Sender: TObject);
begin
  Refreshdatagrid;
    BatalkanTransaksiKeluarga;
    BatalkanTransaksiPegawai;
    adopegawai.Active:=false;
    adopegawai.Active:=true;
  formmainpasien.Show;
  formpasien.Hide;
end;

procedure Tformpasien.Image8Click(Sender: TObject);
begin
BatalkanTransaksiKeluarga;
Refreshdatagrid;
ShowMessage('Refresh Data');
grupkategori.Enabled:=true;
end;

procedure Tformpasien.Image10Click(Sender: TObject);
begin
BatalkanTransaksiPegawai;
Refreshdatagrid;
ShowMessage('Refresh Data');
grupkategori.Enabled:=true;
end;

procedure Tformpasien.LihatdataTransasksi1Click(Sender: TObject);
begin
    formlihatpasien.Show;
    formpasien.Hide;
end;

procedure Tformpasien.Image2Click(Sender: TObject);
begin
adopegawai.Active:=true;
    if adopegawai.Locate('Nomor_Induk',txtpeginduk.Text,[]) then
      begin
        RefreshQueryCariKeluarga;
        querycaripasien.Close;
        querycaripasien.SQL.Clear;
        querycaripasien.SQL.Add('SELECT * FROM master_pasien WHERE Nomor_Induk =:nomor ORDER BY Nomor_Induk ASC');
        querycaripasien.Parameters.ParamByName('nomor').Value:=txtpeginduk.Text;
        querycaripasien.Open;
          if querycaripasien.Locate('No_Keluarga','0',[]) then
            begin
              MessageDlg('Pasien Sudah Terdaftar',mtError,[mbYes],1);
            end
          else
            begin
            adosimpandata.Active:=true;
            adosimpandata.Append;
            adosimpandata.FieldByName('Nomor_Induk').AsString:=txtpeginduk.Text;
            adosimpandata.FieldByName('No_Keluarga').AsString:='0';
            adosimpandata.Post;
            MessageDlg('Registrasi Pasien Berhasil',mtInformation,[mbYes],1);
            BatalkanTransaksiPegawai;
            Refreshdatagrid;
            Image10Click(Sender);
            end;
      end
    else
      begin
        ShowMessage('Data tidak ditemukan');
      end;
end;

procedure Tformpasien.KembaliKeMenuPasien1Click(Sender: TObject);
begin
if lbllogin.Caption='User' then
  begin
    formmenuuser.Show;
    formpasien.Hide;
  end
else
  begin
  formpasien.Hide;
  formmainpasien.Show;
  end;
end;

procedure Tformpasien.KembaliKeMenuAdmin1Click(Sender: TObject);
begin
    fMainmenu.Show;
    formpasien.hide;
end;

procedure Tformpasien.btncekkelClick(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga Where Nomor_Induk='+QuotedStr(txtindukkel.Text));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
cbdatakeluarga.Clear;
while not ADOQuery1.Eof do
begin
  cbdatakeluarga.Items.Add(ADOQuery1['Nama_Keluarga']);
  ADOQuery1.Next;
end;
if ADOQuery1.Locate('Nomor_Induk',txtindukkel.Text,[]) then
  begin
    MessageDlg('Silahkan Pilih Nama Keluarga Untuk Dipilih',mtInformation,mbOKCancel,1);
    DBGrid2.Visible:=false;
  end
else
  begin
    MessageDlg('Anggota Keluarga dari Pegawai Tidak Ada,silahkan Cek Di Data Keluarga',mtError,mbOKCancel,1);
     DBGrid2.Visible:=false;
     if MessageDlg('Apakah Anda ingin Melihat Daftar Keluarga Pegawai ?',mtConfirmation,[mbyes,mbno],0)=mrYes then
      begin
          formlihatdatakeluarga.Show;

        end;
  end;

end;

procedure Tformpasien.txtpegindukKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
if DBGrid1.Visible=true then
  begin
    txtpeginduk.Text:=querydatapegawai.FieldByName('Nomor_Induk').AsString;
    DBGrid1.Visible:=false;
  end
else
  begin
  Image7Click(Sender);
  end;

end;

procedure Tformpasien.entangAplikasi1Click(Sender: TObject);
begin
formabout.Show;
end;

procedure Tformpasien.KembaliKeMenu1Click(Sender: TObject);
begin
if lbllogin.Caption='User' then
  begin
    Refreshdatagrid;
    BatalkanTransaksiKeluarga;
    BatalkanTransaksiPegawai;
    adopegawai.Active:=false;
    adopegawai.Active:=true;
    formmenuuser.Show;
    ADOConnection1.Connected:=false;
    formpasien.Hide;
  end
else
  begin
  Refreshdatagrid;
    BatalkanTransaksiKeluarga;
    BatalkanTransaksiPegawai;
    adopegawai.Active:=false;
    adopegawai.Active:=true;
    ADOConnection1.Connected:=false;
    formmainpasien.Show;
    formpasien.Hide;
  end;

end;

procedure Tformpasien.Keluar1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformpasien.Image5Click(Sender: TObject);
var
  Excel : Variant;
  i : Integer;
begin
if lbllogin.Caption='User' then
  begin
    MessageDlg('Import Data Hanya Bisa Dilakukan Administrasi',mtError,[mbYes],1);
  end
else
  begin
    if OpenDialog1.Execute  then
  begin
    Try
      Excel := CreateOleObject('Excel.Application');
      Excel.WorkBooks.Open(OpenDialog1.FileName);
      i:=2;
      while VarToStr(Excel.Cells.Range['a'+inttostr(i)])<>'' do
      begin
        querycaripasien.Active:=true;
        querycaripasien.Close;
        querycaripasien.SQL.Clear;
        querycaripasien.SQL.Text :='insert into Master_Pasien (Nomor_Induk,No_Keluarga)'+
                            'values (:nomor,:nomorkeluarga)';
        querycaripasien.Parameters.ParamByName('nomor').Value:=VarToStr(Excel.cells.range['a'+inttostr(i)]);
        querycaripasien.Parameters.ParamByName('nomorkeluarga').Value:=VarToStr(Excel.cells.range['b'+inttostr(i)]);
        querycaripasien.ExecSQL;
        inc(i);
        MessageDlg('Import Data Berhasil',mtInformation,[mbOK],1);
      end;
      Excel.Quit;
    Except
      on E:Exception do
      begin
      MessageDlg('Import Data Gagal',mtError,[mbOK],1);
        raise Exception.Create(E.Message);
      end;
    End;
  end;
  end;

end;

procedure Tformpasien.LihatDataPegawai1Click(Sender: TObject);
begin
formlihatpegawai.Show;

end;

procedure Tformpasien.txtpegindukChange(Sender: TObject);
begin
if txtpeginduk.Text='' then
  begin
    DBGrid1.Visible:=false;
        querydatapegawai.Active:=True;
    querydatapegawai.Close;
    querydatapegawai.Sql.Clear;
    querydatapegawai.Sql.Add('SELECT * FROM Master_Pegawai_Query_Query ');
    querydatapegawai.ExecSQL;
    querydatapegawai.Open;
    end
else
  begin
    DBGrid1.Visible:=true;
    querydatapegawai.Active:=True;
    querydatapegawai.Close;
    querydatapegawai.Sql.Clear;
    querydatapegawai.Sql.Add('SELECT * FROM Master_Pegawai_Query_Query where Nomor_Induk Like '+QuotedStr(txtpeginduk.Text+'%')+' or Nama_Pegawai Like'+QuotedStr('%'+txtpeginduk.Text+'%'));
    querydatapegawai.ExecSQL;
    querydatapegawai.Open;
end;
end;

procedure Tformpasien.txtindukkelChange(Sender: TObject);
begin
if txtindukkel.Text='' then
  begin
    DBGrid2.Visible:=false;
        querydatapegawai.Active:=True;
    querydatapegawai.Close;
    querydatapegawai.Sql.Clear;
    querydatapegawai.Sql.Add('SELECT * FROM Master_Pegawai_Query_Query');
    querydatapegawai.ExecSQL;
    querydatapegawai.Open;
    end
else
  begin
    DBGrid2.Visible:=true;
    querydatapegawai.Active:=True;
    querydatapegawai.Close;
    querydatapegawai.Sql.Clear;
    querydatapegawai.Sql.Add('SELECT * FROM Master_Pegawai_Query_Query where Nomor_Induk Like '+QuotedStr(txtindukkel.Text+'%')+' or Nama_Pegawai Like'+QuotedStr('%'+txtindukkel.Text+'%'));
    querydatapegawai.ExecSQL;
    querydatapegawai.Open;
end;
end;

procedure Tformpasien.DBGrid2DblClick(Sender: TObject);
begin
txtindukkel.Text:=querydatapegawai.FieldByName('Nomor_Induk').AsString;
DBGrid2.Visible:=false;
end;

procedure Tformpasien.DBGrid1DblClick(Sender: TObject);
begin
txtpeginduk.Text:=querydatapegawai.FieldByName('Nomor_Induk').AsString;
DBGrid1.Visible:=false;
end;

procedure Tformpasien.Image3Click(Sender: TObject);
begin
formlihatpegawai.Show;
end;

procedure Tformpasien.FormClose(Sender: TObject; var Action: TCloseAction);
begin
If MessageDlg('Apakah Anda Ingin Keluar Dari Aplikasi',mtConfirmation,mbYesNoCancel,1)=mrYes then
  begin
    Application.Terminate;
    MessageDlg('Terima Kasih Telah menggunakan Aplikasi',mtInformation,[mbOk],1);
    end
else
  begin
    Abort;
  end;
end;

procedure Tformpasien.btnkembalikemenuClick(Sender: TObject);
begin
TutupKoneksi;
KembaliKeMenu1Click(Sender);
end;

procedure Tformpasien.TutupKoneksi;
begin
ADOConnection1.Connected:=false;
queryadopasien.Active:=false;
qdatasource.Active:=false;
querycarikeluarganama.Active:=false;
querycaripasien.Active:=false;
querykeluarga.Active:=false;
querydatapegawai.Active:=false;
ADOSimpan.Active:=false;
ADOPEG.Active:=false;
adokodetun.Active:=false;
ADOJekel.Active:=false;
ADUSIMPAN.Active:=false;
adosimpandata.Active:=false;
adopegawai.Active:=false;
ADOQuery1.Active:=false;
end;
end.

