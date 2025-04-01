unit uMasterKeluarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, StdCtrls, ComCtrls, Grids, DBGrids, jpeg, ExtCtrls,
  Menus, RpRave, RpDefine, RpCon, RpConDS, ActnList, ComObj;

type
  Tformtablekeluarga = class(TForm)
    ADOConnection1: TADOConnection;
    adokeluarga: TADOTable;
    qpeg: TADOQuery;
    DataSource1: TDataSource;
    Timer1: TTimer;
    lblkodejk: TLabel;
    lblkodest: TLabel;
    DataSource2: TDataSource;
    lblcarikodejk: TLabel;
    GroupBox4: TGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Image6: TImage;
    Shape7: TShape;
    Image8: TImage;
    txtinduk: TEdit;
    txtnama: TEdit;
    cbkodejk: TComboBox;
    DateTimePicker1: TDateTimePicker;
    cbkodest: TComboBox;
    PopupMenu1: TPopupMenu;
    HapusDataBerdasarkan1: TMenuItem;
    CariDataBerdasarkan1: TMenuItem;
    HapusData1: TMenuItem;
    Menuutama1: TMenuItem;
    BuatLaporan1: TMenuItem;
    Shape5: TShape;
    Label18: TLabel;
    Label19: TLabel;
    lbltransaksi: TLabel;
    Label21: TLabel;
    lbllogin: TLabel;
    Shape6: TShape;
    Shape9: TShape;
    Shape13: TShape;
    Shape14: TShape;
    lblnama: TLabel;
    btnsimpan: TImage;
    btnedit: TImage;
    btnDelete: TImage;
    Image5: TImage;
    GroupBox5: TGroupBox;
    txtpegawai: TEdit;
    txtperson: TEdit;
    txtkodestat: TEdit;
    txtunit: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    griddata: TImage;
    adopegawai: TADOTable;
    lbldatapeg: TLabel;
    Label22: TLabel;
    adocarikel: TADOQuery;
    DBGrid2: TDBGrid;
    Image3: TImage;
    querycarikeluarga: TADOQuery;
    KeluarAplikasi1: TMenuItem;
    MainMenu1: TMainMenu;
    Aplikasi1: TMenuItem;
    KembaliKeMenuAdmin1: TMenuItem;
    KembaliKeMenuKeluarga1: TMenuItem;
    KeluarAplikasi2: TMenuItem;
    anyakan1: TMenuItem;
    lbljk: TLabel;
    lblst: TLabel;
    querytunjangan: TADOQuery;
    Label10: TLabel;
    querypegawai: TADOQuery;
    PopupMenu2: TPopupMenu;
    RefreshData1: TMenuItem;
    KembaliKe1: TMenuItem;
    KembaliKeMenuAdmin2: TMenuItem;
    anyakan2: TMenuItem;
    entangAplikasi1: TMenuItem;
    Bantuan1: TMenuItem;
    LihatDataPegawai1: TMenuItem;
    KeJenisKeluarga1: TMenuItem;
    DBGrid1: TDBGrid;
    querydatapegawai: TADOQuery;
    DataSource3: TDataSource;
    Image1: TImage;
    ADOTable3: TADOTable;
    Image2: TImage;
    btnformpegawai: TImage;
    Image4: TImage;
    Image7: TImage;
    Image9: TImage;
    OpenDialog1: TOpenDialog;
    queryhapus: TADOQuery;
    tabelpasien: TADOTable;
    tabelrecord: TADOTable;
    tabelbeliobat: TADOTable;
    lblnokeluarga: TLabel;
    PopupMenu3: TPopupMenu;
    EditData1: TMenuItem;
    HapusData3: TMenuItem;
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure txtindukKeyPress(Sender: TObject; var Key: Char);
    procedure cbkodejkChange(Sender: TObject);
    procedure cbkodestChange(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure edcarinamaKeyPress(Sender: TObject; var Key: Char);
    procedure cbcarijkChange(Sender: TObject);
    procedure cbcaristChange(Sender: TObject);
    procedure txtnamaKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btncarikodejeniskeluargaClick(Sender: TObject);
    procedure btnberdasarkannnamaClick(Sender: TObject);
    procedure HapusDataBerdasarkan1Click(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure KembaliKeMenuAdmin1Click(Sender: TObject);
    procedure KembaliKeMenuKeluarga1Click(Sender: TObject);
    procedure KeluarAplikasi2Click(Sender: TObject);
    procedure txtnamaClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
    procedure KembaliKeMenuAdmin2Click(Sender: TObject);
    procedure KembaliKe1Click(Sender: TObject);
    procedure entangAplikasi1Click(Sender: TObject);
    procedure LihatDataPegawai1Click(Sender: TObject);
    procedure txtindukEnter(Sender: TObject);
    procedure txtnamaEnter(Sender: TObject);
    procedure txtindukExit(Sender: TObject);
    procedure txtnamaExit(Sender: TObject);
    procedure KeJenisKeluarga1Click(Sender: TObject);
    procedure txtindukChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnkembalikemenuClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure HapusData2Click(Sender: TObject);
    procedure EditDataGrid1Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure HapusData3Click(Sender: TObject);
    procedure EditData1Click(Sender: TObject);
  private
    procedure RefreshDataGrid;
    procedure Refresh;
    procedure Refreshdata;
    procedure TutupKoneksi;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formtablekeluarga: Tformtablekeluarga;

implementation

uses Math, UASAL, uDoctorMenu, uInsertMasterPegawai, uLihatPasien,
  ulihatrecord, uLihatTranspeg, ulogindokter, umainobat, uMainUtama,
  uMasterDokter, uMasterKegunaanObat, uMasterLogin, uMasterObat,
  uMasterPasien, uMenuAwal, uMenuPegawai, uPasien, upilihdokter,
  uPilihKeluarga, uSplash, uTransunit, uAbout, uFamilytypetrans,
  ulihatdataobat, ulihatkeluarga, ulogin, umainobatpoli, uStatusPegawai,
  AutoCompleteText, AutoEdit, ss, uDoctorMain, uLihatBerobatKeluarga,
  ulihatChart, ulihatchart2, ulihatchartobat, ulihatdataberobat,
  uLihatDataDokter, uLihatpegawai, uMenuBerobat, uMenuDokter, uMenuUser,
  uRiwayatpenyakit, uTransaksiuser;

{$R *.dfm}

procedure Tformtablekeluarga.Image1Click(Sender: TObject);
begin
Refreshdata;
TutupKoneksi;
formlihatkeluarga.ADOConnection1.Connected:=true;
formlihatkeluarga.querycarikeluarga.Active:=true;
formlihatkeluarga.qkodejenis.Active:=true;
formlihatkeluarga.qstatustunjangan.Active:=true;
formlihatkeluarga.Show;
formtablekeluarga.Hide;
end;




procedure Tformtablekeluarga.Image3Click(Sender: TObject);
var
    data,data1:string;
begin
Refreshdata;
TutupKoneksi;
formmainpegawai.Show;
formtablekeluarga.Hide;
end;




procedure Tformtablekeluarga.Timer1Timer(Sender: TObject);
begin
If (txtinduk.Text<>'')then
begin
Shape1.Visible:=true;
end
else
begin
Shape1.Visible:=false;
end;
If (txtnama.Text<>'')then
begin
Shape2.Visible:=true;
end
else
begin
Shape2.Visible:=false;
end;
If cbkodejk.Text<>'' then
begin
Shape3.Visible:=true;
end
else
begin
Shape3.Visible:=true;
end;
If cbkodest.Text <> '' then
begin
Shape4.Visible:=true;
end
else
begin
Shape4.Visible:=false;

end;
end;
procedure Tformtablekeluarga.Image6Click(Sender: TObject);
var
    kodestat,kodeunit:string;
begin
querypegawai.Active:=false;
querypegawai.Active:=true;
if txtinduk.Text='' then//Validasi Data Kosong
  begin
    MessageDlg('Silahkan Masukkan Terlebih Dahulu Nomor Induk Anda',mtWarning,[mbYes],1);
    txtinduk.SetFocus;
  end
else //Akhir Jika Data tidak  Kosong
  begin
If querypegawai.Locate('Nomor_Induk',txtinduk.text,[]) then//Pencarian Nomor Induk
  begin//Jika Nomor Pegawai Ditemukan

  //Mengisi Grup Box Data Pegawai
  txtperson.Text:=querypegawai.FieldByName('Personel_number').AsString;
  txtpegawai.Text:=querypegawai.FieldByName('Nama_Pegawai').AsString;
  txtkodestat.Text:=querypegawai.FieldByName('keterangan_status').AsString;
  txtunit.Text:=querypegawai.FieldByName('nama_unit').AsString;
    //Fokus ke nama keluarga
  MessageDlg('Data Pegawai Ditemukan,Silahkan Anda isi Field Keluarga',mtInformation,[mbOK],1);
  txtinduk.ReadOnly:=true;
  txtnama.Enabled:=true;
  Image8.Enabled:=true;
  lbldatapeg.Caption:='Data Pegawai Ditemukan';
  DBGrid1.Visible:=false;
  txtnama.SetFocus;
  end //Data Ditemukan
else
  begin
    MessageDlg('Data Pegawai Tidak Ditemukan',mtError,[mbOK],1);
    if MessageDlg('Apakah Anda ingin Melihat Daftar Pegawai ?',mtConfirmation,[mbyes,mbno],0)=mrYes then
      begin
        formlihatpegawai.Show;
        DBGrid1.Visible:=false;
        end;
  end; //Data tidak ditemukan
end;
end;

procedure Tformtablekeluarga.Image4Click(Sender: TObject);
begin
Refreshdata;
TutupKoneksi;
fMainmenu.Show;
formtablekeluarga.Hide;
end;

procedure Tformtablekeluarga.txtindukKeyPress(Sender: TObject; var Key: Char);
begin
if not(key=chr(13)) then exit;
if DBGrid1.Visible=true then
begin
    txtinduk.Text:=querydatapegawai.FieldByName('Nomor_Induk').AsString;
    DBGrid1.Visible:=false;
end
else
  begin
  Image6Click(Sender);
  end;

end;

procedure Tformtablekeluarga.cbkodejkChange(Sender: TObject);
begin
qpeg.Close;
qpeg.SQL.Clear;
qpeg.SQL.Add('Select * From master_jenis_keluarga');
qpeg.Open;
qpeg.First;
qpeg.Locate('jenis_keluarga',cbkodejk.Text,[]);
lbljk.Caption:=qpeg.FieldByName('kode_jenis_keluarga').AsString;
cbkodest.SetFocus;
end;

procedure Tformtablekeluarga.cbkodestChange(Sender: TObject);
begin
qpeg.Active:=true;
qpeg.Close;
qpeg.SQL.Clear;
qpeg.SQL.Add('Select * From master_status_tunjangan');
qpeg.ExecSQL;
qpeg.Open;
qpeg.First;
if qpeg.Locate('status_tunjangan',cbkodest.Text,[]) then
  begin
  lblst.Caption:=qpeg.FieldByName('kode_status_tunjangan').AsString;
  btnsimpan.Enabled:=true;
  ShowMessage('Silahkan Klik Tombol Add untuk menyimpan');
  end
else
  begin
  end;
end;

procedure Tformtablekeluarga.Image8Click(Sender: TObject);
begin
querycarikeluarga.Active:=true;
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE Nomor_Induk=:Nomor ORDER BY Nomor_Induk ASC');
querycarikeluarga.Parameters.ParamByName('Nomor').Value:=txtinduk.Text;
querycarikeluarga.Open;
if querycarikeluarga.Locate('Nama_Keluarga',txtnama.Text,[])then
  begin
     ShowMessage('Anggota Keluarga Sudah terdaftar');
  end
else
  begin
    ShowMessage('Anggota Keluarga Belum Terdaftar');
    lbltransaksi.Caption:='Transaksi Data Baru';
    txtnama.ReadOnly:=true;
    cbkodejk.Enabled:=true;
    DateTimePicker1.Enabled:=true;
    cbkodest.Enabled:=true;
  end;
end;

procedure Tformtablekeluarga.edcarinamaKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;

end;

procedure Tformtablekeluarga.cbcarijkChange(Sender: TObject);
var
    a:string;
begin
DataSource1.DataSet:=adocarikel;
adocarikel.Close;
adocarikel.SQL.Clear;
end;

procedure Tformtablekeluarga.cbcaristChange(Sender: TObject);
var
    a:string;
begin
adocarikel.Close;
adocarikel.SQL.Clear;
adocarikel.SQL.Add('SELECT * FROM master_keluarga WHERE status_tunjangan =:status ORDER BY Nomor_Induk ASC');
adocarikel.Parameters.ParamByName('status').Value:=a;
adocarikel.Open;
end;

procedure Tformtablekeluarga.txtnamaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
if txtnama.Text='' then
begin
  ShowMessage('Nama Tidak Boleh Kosong');
end
else
  begin
    Label10.Caption:=txtnama.Text;
    Image8Click(Sender);
  end;
end;

procedure Tformtablekeluarga.Button2Click(Sender: TObject);
var
  kodejk,kodest,tanggal:string;
  datakosong:integer;
begin
tanggal:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);//Mengambil Inputan Dari Date Time Picker
if (txtinduk.Text='') or (txtnama.Text='') or (cbkodejk.Text='') or (cbkodest.Text='') then
  begin //Validasi Data Kosong
    datakosong:=0;
    showmessage('Harap Anda mengisi Field Dengan Benar');
      if txtnama.Text='' then
        begin
          txtnama.SetFocus;
          datakosong:=datakosong + 1;
        end;
      if txtinduk.Text='' then
        begin
          datakosong:=datakosong + 1;
          txtinduk.SetFocus;
        end;
      if cbkodejk.Text='' then
        begin
          datakosong:=datakosong + 1;
          cbkodejk.SetFocus;
        end;
      if cbkodest.Text='' then
        begin
          datakosong:=datakosong + 1;
          cbkodest.SetFocus;
        end;
        ShowMessage('Ada '+IntToStr(datakosong)+' Field yang Kosong Harap Periksa Kembali');
      datakosong:=0;
    end//Akhir Dari Validasi Data Kosong Jika Kosong
else
  begin
if lbltransaksi.Caption='Edit Data Anggota Keluarga' then
begin//Jika Data Yang Dicari Ada
  if MessageDlg('Data Sudah Ada Apakah anda ingin mengedit Data Anggota Keluarga ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
    then  //Jika Edit Data
      begin
        showmessage('Data Edit Tersimpan');
        lbltransaksi.Caption:='Tidak Ada Transaksi';
        Image4Click(Sender);//Refresh
        txtinduk.SetFocus;
    end//Akhir Edit Data
else
  begin//Jika tidak maka field nya di refresh
    Image4Click(Sender);
    txtinduk.SetFocus;
  end;//Akhir Field DiRefresh
end //Akhir Jika Data ditemukan
else
  begin
    showmessage('Data Baru Tersimpan');

Image4Click(Sender);//Refresh
txtinduk.SetFocus;
  end;//Akhir Dari Jika Data Baru
end;//Akhir Bila Data Tidak Kosong
end;//Akhir Dari Procedure

procedure Tformtablekeluarga.btnsimpanClick(Sender: TObject);
var
  x,y:integer;
begin
  adokeluarga.Active:=false;
  adokeluarga.Active:=true;
if (txtinduk.Text='') or (txtnama.Text='') or (cbkodejk.Text='') or (cbkodest.Text='') then
  begin//Jika Data Kosong
    MessageDlg('Masih ada Field yang Kosong!',mtWarning,[mbOK],1);
  end
else
  begin //Jika Data Tidak Kosong
    if lbltransaksi.Caption='Transaksi Data Baru' then
      begin
      adokeluarga.Active:=true;
      adokeluarga.Append;
      adokeluarga.FieldByName('Nomor_Induk').AsString:=txtinduk.Text;
      adokeluarga.FieldByName('Nama_Keluarga').AsString:=txtnama.Text;
      adokeluarga.FieldByName('Kode_Jenis_Keluarga').AsString:=lbljk.Caption;
      adokeluarga.FieldByName('tanggal_kahir').AsString:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
      adokeluarga.FieldByName('kode_status_tunjangan').AsString:=lblst.Caption;
      adokeluarga.Post;
               queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_record_berobat.No_Keluarga, Count(master_record_berobat.No_Keluarga) AS Jumlah');
              queryhapus.SQL.Add('From master_record_berobat');
              queryhapus.SQL.Add('GROUP BY master_record_berobat.No_Keluarga;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Berobat Yang Terhubung');
              if queryhapus.Locate('No_Keluarga',lblnokeluarga.Caption,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelrecord.Active:=false;
                tabelrecord.Active:=true;
                if tabelrecord.Locate('No_Keluarga',lblnokeluarga.Caption,[]) then
                begin
                tabelrecord.Edit;
                tabelrecord.FieldByName('Nama_Pasien').AsString:=txtnama.Text;
                tabelrecord.Post;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
      MessageDlg('Data Keluarga Baru Telah Tersimpan',mtInformation,[mbOK],1);
      Refreshdata;

      end
    else if lbltransaksi.Caption='Edit Data Transaksi' then
      begin
      adokeluarga.Active:=false;
      adokeluarga.Active:=true;
      adokeluarga.Locate('No_Keluarga',lblnokeluarga.Caption,[]);
          adokeluarga.Edit;
      adokeluarga.FieldByName('Nomor_Induk').AsString:=txtinduk.Text;
      adokeluarga.FieldByName('Nama_Keluarga').AsString:=txtnama.Text;
      adokeluarga.FieldByName('Kode_Jenis_Keluarga').AsString:=lbljk.Caption;
      adokeluarga.FieldByName('tanggal_kahir').AsString:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
      adokeluarga.FieldByName('kode_status_tunjangan').AsString:=lblst.Caption;
      adokeluarga.Post;
      Image8.Enabled:=true;
      Image6.Enabled:=true;
      txtinduk.ReadOnly:=false;
      MessageDlg('Data Keluarga Telah Diperbarui',mtInformation,[mbYes],1);
      lbltransaksi.Caption:='Tidak Ada Transaksi';
      Refreshdata;
      end
    else
      begin
        MessageDlg('Anda Saat ini Tidak Dalam mode apapun,Harap Anda Lakukan Pengisian Field ini',mtWarning,[mbOK],1);
      end;
    end;



end;
procedure Tformtablekeluarga.btnDeleteClick(Sender: TObject);
var
  data:string;
  x,y:integer;
begin
  data:=InputBox('Hapus Data','Silahkan Masukan Nomor Keluarga :','');
  adokeluarga.Refresh;
  adokeluarga.Active:=false;
  adokeluarga.Active:=true;
  if adokeluarga.Locate('No_Keluarga',data,[])then
    begin
      adokeluarga.Delete;
      //
      queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_pasien.No_Keluarga, Count(master_pasien.No_Keluarga) AS Jumlah');
              queryhapus.SQL.Add('From master_pasien');
              queryhapus.SQL.Add('GROUP BY master_pasien.No_Keluarga;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Pasien Yang Terhubung');
              if queryhapus.Locate('No_Keluarga',data,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelpasien.Active:=false;
                tabelpasien.Active:=true;
                if tabelpasien.Locate('No_Keluarga',data,[]) then
                begin
                tabelpasien.Delete;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
               queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_record_berobat.No_Keluarga, Count(master_record_berobat.No_Keluarga) AS Jumlah');
              queryhapus.SQL.Add('From master_record_berobat');
              queryhapus.SQL.Add('GROUP BY master_record_berobat.No_Keluarga;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Berobat Yang Terhubung');
              if queryhapus.Locate('No_Keluarga',data,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelrecord.Active:=false;
                tabelrecord.Active:=true;
                if tabelrecord.Locate('No_Keluarga',data,[]) then
                begin
                tabelrecord.Delete;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
                  ///
                    queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_beli_obat.No_Keluarga, Count(master_beli_obat.No_Keluarga) AS Jumlah');
              queryhapus.SQL.Add('From master_beli_obat');
              queryhapus.SQL.Add('GROUP BY master_beli_obat.No_Keluarga;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Pembelian Obat Yang Terhubung');
              if queryhapus.Locate('No_Keluarga',data,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelbeliobat.Active:=false;
                tabelbeliobat.Active:=true;
                if tabelbeliobat.Locate('No_Keluarga',data,[]) then
                begin
                tabelbeliobat.Delete;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
      MessageDlg('Data Berhasil Dihapus',mtInformation,[mbOK],1);
      Refreshdata;
    end
  else
    begin
      MessageDlg('Data Tidak Ditemukan',mtError,[mbYes],1);
    end;
end;
procedure Tformtablekeluarga.Refreshdata;
begin
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM master_keluarga');
querycarikeluarga.Open;
txtinduk.Clear;
txtnama.Clear;
cbkodejk.Text:='';
cbkodest.Text:='';
txtpegawai.Clear;
txtperson.Clear;
txtkodestat.Clear;
txtunit.Clear;
txtinduk.SetFocus;
querytunjangan.Active:=true;
querytunjangan.Close;
querytunjangan.SQL.Clear;
querytunjangan.SQL.Add('Select * From master_status_tunjangan');
querytunjangan.ExecSQL;
querytunjangan.Open;
querytunjangan.First;
cbkodejk.Clear;
cbkodest.Clear;
While not querytunjangan.Eof do
begin
cbkodest.Items.Add(querytunjangan['status_tunjangan']);
querytunjangan.Next;
end;

qpeg.Active:=true;
qpeg.Close;
qpeg.SQL.Clear;
qpeg.SQL.Add('Select * From master_jenis_keluarga');
qpeg.Open;
qpeg.First;
cbkodejk.Clear;
While not qpeg.Eof do
begin
cbkodejk.Items.Add(qpeg['jenis_keluarga']);
qpeg.Next;
adokeluarga.Active:=true;
//
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('Select * From Master_Pegawai_Query_Query');
querypegawai.ExecSQL;
querypegawai.Open;
//
querycarikeluarga.Active:=true;
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga');
querycarikeluarga.ExecSQL;
querycarikeluarga.Open;
querycarikeluarga.Last;
//
txtinduk.Clear;
txtnama.Clear;
txtinduk.ReadOnly:=false;
txtnama.ReadOnly:=false;
txtnama.Enabled:=false;
Image8.Enabled:=false;
cbkodejk.Enabled:=false;
cbkodest.Enabled:=false;
DateTimePicker1.Enabled:=false;
//
DBGrid2.Enabled:=true;
DBGrid2.Visible:=false;
DBGrid2.Visible:=true;
lbltransaksi.Caption:='Tidak Ada Transaksi';
end;

end;

procedure Tformtablekeluarga.btneditClick(Sender: TObject);
var
    data,data1:string;
    x,y:integer;
begin

adokeluarga.Active:=false;
adokeluarga.Active:=true;
if lbltransaksi.Caption='Tidak Ada Transaksi' then
  begin
  querycarikeluarga.Active:=true;
  querycarikeluarga.Close;
  querycarikeluarga.SQL.Clear;
  querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga ');
  querycarikeluarga.Open;
  data:=InputBox('Edit Data','Silahkan Masukkan Nomor Keluarga :','');
  if querycarikeluarga.Locate('No_Keluarga',data,[])then
  begin
    MessageDlg('Nomor Keluarga Ditemukan',mtInformation,[mbOK],1);
    MessageDlg('Saat ini anda dalam mode Edit Data,Silahkan Klik Tombol Edit/Add untuk menyimpan',mtConfirmation,[mbYes],1);
    lbltransaksi.Caption:='Edit Data Transaksi';
     //
     Image8.Enabled:=false;
     Image6.Enabled:=false;
     txtinduk.ReadOnly:=true;
     //
    //Mengisi ke Field
    txtinduk.Text:=querycarikeluarga.FieldByName('Nomor_Induk').AsString;
    txtnama.Text:=querycarikeluarga.FieldByName('nama_keluarga').AsString;
    cbkodejk.Text:=querycarikeluarga.FieldByName('jenis_keluarga').AsString;
    DateTimePicker1.Date:=StrToDate(querycarikeluarga.FieldByName('tanggal_kahir').AsString);
    lblnokeluarga.Caption:=querycarikeluarga.FieldByName('No_Keluarga').AsString;
    cbkodejk.Enabled:=true;
    cbkodest.Enabled:=true;
    cbkodejkChange(Sender);
    cbkodest.Text:=querycarikeluarga.FieldByName('status_tunjangan').AsString;
    cbkodestChange(Sender);
    //Mengaktifkan Dan Menonaktifkan
    Image6.Enabled:=false;
    Image8.Enabled:=false;
    txtnama.ReadOnly:=false;
    txtnama.Enabled:=true;
    cbkodejk.Enabled:=true;
    DateTimePicker1.Enabled:=true;
    cbkodest.Enabled:=true;
    //
    DBGrid1.Visible:=false;
    end
  else
    begin
      MessageDlg('Nomor Keluarga Tidak Ditemukan',mtError,[mbOK],1);
    end;
  end
else if lbltransaksi.Caption='Edit Data Transaksi' then
  begin
      adokeluarga.Locate('No_Keluarga',lblnokeluarga.Caption,[]);
      adokeluarga.Edit;
      adokeluarga.FieldByName('Nomor_Induk').AsString:=txtinduk.Text;
      adokeluarga.FieldByName('Nama_Keluarga').AsString:=txtnama.Text;
      adokeluarga.FieldByName('Kode_Jenis_Keluarga').AsString:=lbljk.Caption;
      adokeluarga.FieldByName('tanggal_kahir').AsString:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
      adokeluarga.FieldByName('kode_status_tunjangan').AsString:=lblst.Caption;
      adokeluarga.Post;
      Image8.Enabled:=true;
      Image6.Enabled:=true;
      txtinduk.ReadOnly:=false;
        //Edit Data Record Berobat
                     queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_record_berobat.No_Keluarga, Count(master_record_berobat.No_Keluarga) AS Jumlah');
              queryhapus.SQL.Add('From master_record_berobat');
              queryhapus.SQL.Add('GROUP BY master_record_berobat.No_Keluarga;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Berobat Yang Terhubung');
              if queryhapus.Locate('No_Keluarga',lblnokeluarga.Caption,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelrecord.Active:=false;
                tabelrecord.Active:=true;
                if tabelrecord.Locate('No_Keluarga',lblnokeluarga.Caption,[]) then
                begin
                tabelrecord.Edit;
                tabelrecord.FieldByName('Nama_Pasien').AsString:=txtnama.Text;
                tabelrecord.Post;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
                  //

      MessageDlg('Seluruh Data Keluarga ini Telah Diperbarui',mtInformation,[mbYes],1);
      lbltransaksi.Caption:='Tidak Ada Transaksi';
      Refreshdata;
  end
else
   begin
    MessageDlg('Anda Saat Ini Tidak Dalam Mode Transaksi Edit Data',mtWarning,[mbYes],1);
   end;

end;
procedure Tformtablekeluarga.btncarikodejeniskeluargaClick(
  Sender: TObject);
var
    a:string;
begin

end;

procedure Tformtablekeluarga.btnberdasarkannnamaClick(Sender: TObject);
var
    cari:string;
begin
cari:=InputBox('Print Data','Masukkan No Induk Pegawai untuk print data keluarga','');

end;

procedure Tformtablekeluarga.HapusDataBerdasarkan1Click(Sender: TObject);
begin
Refreshdata;
querypegawai.Active:=true;
end;

procedure Tformtablekeluarga.KeluarAplikasi1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tformtablekeluarga.KembaliKeMenuAdmin1Click(Sender: TObject);
begin
Refreshdata;
TutupKoneksi;
 fMainmenu.Show;
 formtablekeluarga.Hide;
end;

procedure Tformtablekeluarga.KembaliKeMenuKeluarga1Click(Sender: TObject);
begin
Refreshdata;
TutupKoneksi;
  formmainkeluarga.Show;
  formtablekeluarga.Hide;
end;

procedure Tformtablekeluarga.KeluarAplikasi2Click(Sender: TObject);
begin
    Application.Terminate;
end;

procedure Tformtablekeluarga.RefreshDataGrid;
begin
    txtinduk.Clear;
    txtnama.Clear;
    cbkodejk.Clear;
    cbkodest.Clear;
end;
procedure Tformtablekeluarga.Refresh;
begin

end;

procedure Tformtablekeluarga.txtnamaClick(Sender: TObject);
begin
Label10.Caption:=txtnama.Text;
end;

procedure Tformtablekeluarga.Image5Click(Sender: TObject);
begin
querypegawai.Active:=true;
end;

procedure Tformtablekeluarga.RefreshData1Click(Sender: TObject);
begin
Refreshdata;
ShowMessage('Form Refresh');
end;

procedure Tformtablekeluarga.KembaliKeMenuAdmin2Click(Sender: TObject);
begin
Refreshdata;
TutupKoneksi;
fMainmenu.Show;
formtablekeluarga.Hide;
end;

procedure Tformtablekeluarga.KembaliKe1Click(Sender: TObject);
begin
Refreshdata;
TutupKoneksi;
formmainkeluarga.Show;
formtablekeluarga.Hide;
end;

procedure Tformtablekeluarga.entangAplikasi1Click(Sender: TObject);
begin
formabout.Show;
formtablekeluarga.Hide;
end;

procedure Tformtablekeluarga.LihatDataPegawai1Click(Sender: TObject);
begin
Refreshdata;
formlihatkeluarga.Show;
formtablekeluarga.Hide;
end;

procedure Tformtablekeluarga.txtindukEnter(Sender: TObject);
begin
txtinduk.Text:='';
txtinduk.Font.Color:=clHotLight;
end;

procedure Tformtablekeluarga.txtnamaEnter(Sender: TObject);
begin
txtnama.Text:='';
txtnama.Font.Color:=clHotLight;
end;

procedure Tformtablekeluarga.txtindukExit(Sender: TObject);
begin
if txtinduk.Text= '' then
  begin
    txtinduk.Text:='Nomor Induk';
    txtinduk.Font.Color:=clMedGray;
  end;


end;

procedure Tformtablekeluarga.txtnamaExit(Sender: TObject);
begin
if txtnama.Text='' then
  begin
    txtnama.Text:='Nama Keluarga';
    txtnama.Font.Color:=clMedGray;
  end;
end;

procedure Tformtablekeluarga.KeJenisKeluarga1Click(Sender: TObject);
begin
Refreshdata;
formtypekeluarga.Show;
formtablekeluarga.Hide;
end;

procedure Tformtablekeluarga.txtindukChange(Sender: TObject);
begin
if txtinduk.Text='' then
  begin
    querydatapegawai.Active:=true;
    querydatapegawai.Close;
    querydatapegawai.SQL.Clear;
    querydatapegawai.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query');
    querydatapegawai.ExecSQL;
    querydatapegawai.Open;
    DBGrid1.Visible:=false;
  end
else
  begin
    querydatapegawai.Active:=true;
    querydatapegawai.Close;
    querydatapegawai.SQL.Clear;
    querydatapegawai.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query Where Nomor_Induk Like'+QuotedStr(txtinduk.Text+'%')+' or Nama_Pegawai Like'+QuotedStr('%'+txtinduk.Text+'%'));
    querydatapegawai.ExecSQL;
    querydatapegawai.Open;
    DBGrid1.Visible:=true;
  end;
end;

procedure Tformtablekeluarga.DBGrid1DblClick(Sender: TObject);
begin
txtinduk.Text:=querydatapegawai.FieldByName('Nomor_Induk').AsString;
DBGrid1.Visible:=false;
end;

procedure Tformtablekeluarga.FormClose(Sender: TObject;
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

procedure Tformtablekeluarga.btnkembalikemenuClick(Sender: TObject);
begin
Refreshdata;
TutupKoneksi;
  formmainkeluarga.Show;
  formtablekeluarga.Hide;

end;

procedure Tformtablekeluarga.DBGrid2DblClick(Sender: TObject);
var
  no:string;
begin
  adokeluarga.Active:=false;
  adokeluarga.Active:=true;
if MessageDlg('Apakah Anda Ingin Mengedit Data ?',mtConfirmation,mbYesNoCancel,1)=mrYes then
begin
no:=querycarikeluarga.FieldByName('No_Keluarga').AsString;
querycarikeluarga.Locate('No_Keluarga',no,[loPartialKey]);
    MessageDlg('Data Ditemukan',mtInformation,[mbOK],1);
    MessageDlg('Saat ini anda dalam mode Edit Data,Silahkan Klik Tombol Edit/Add untuk menyimpan',mtInformation,[mbOK],1);
    lbltransaksi.Caption:='Edit Data Transaksi';
    //Mengisi ke Field
    txtinduk.Text:=querycarikeluarga.FieldByName('Nomor_Induk').AsString;
    txtnama.Text:=querycarikeluarga.FieldByName('nama_keluarga').AsString;
    cbkodejk.Text:=querycarikeluarga.FieldByName('jenis_keluarga').AsString;
    DateTimePicker1.Date:=StrToDate(querycarikeluarga.FieldByName('tanggal_kahir').AsString);
    lblnokeluarga.Caption:=querycarikeluarga.FieldByName('No_Keluarga').AsString;
      cbkodejk.Enabled:=true;
      cbkodest.Enabled:=true;
    cbkodejkChange(Sender);
    cbkodest.Text:=querycarikeluarga.FieldByName('status_tunjangan').AsString;
    cbkodestChange(Sender);
    //Mengaktifkan Dan Menonaktifkan
    Image6.Enabled:=false;
    Image8.Enabled:=false;
    txtnama.ReadOnly:=false;
    txtnama.Enabled:=true;

    DateTimePicker1.Enabled:=true;
    DBGrid1.Visible:=false;
    //
    DBGrid2.Enabled:=false;

end
else
  begin
  Abort;
  end;
end;

procedure Tformtablekeluarga.FormActivate(Sender: TObject);
begin
querydatapegawai.Active:=true;
qpeg.Active:=true;
ADOTable3.Active:=true;
querypegawai.Active:=true;
querycarikeluarga.Active:=true;
querytunjangan.Active:=true;

qpeg.Active:=true;
qpeg.Close;
qpeg.SQL.Clear;
qpeg.SQL.Add('Select * From master_jenis_keluarga');
qpeg.Open;
qpeg.First;
cbkodejk.Clear;
While not qpeg.Eof do
begin
cbkodejk.Items.Add(qpeg['jenis_keluarga']);
qpeg.Next;
end;

querytunjangan.Active:=true;
querytunjangan.Close;
querytunjangan.SQL.Clear;
querytunjangan.SQL.Add('Select * From master_status_tunjangan');
querytunjangan.ExecSQL;
querytunjangan.Open;
querytunjangan.First;
cbkodest.Clear;
While not querytunjangan.Eof do
begin
cbkodest.Items.Add(querytunjangan['status_tunjangan']);
querytunjangan.Next;
end;

end;

procedure Tformtablekeluarga.HapusData2Click(Sender: TObject);
var
  data:string;
begin
  adokeluarga.Active:=false;
  adokeluarga.Active:=true;

data:=querycarikeluarga.FieldByName('No_Keluarga').AsString;
if MessageDlg('Apakah Anda Ingin Menghapus Data ?',mtConfirmation,mbYesNoCancel,1)=mrYes then
begin
        if adokeluarga.Locate('No_Keluarga',data,[])then
    begin
      adokeluarga.Delete;
      MessageDlg('Data Berhasil Dihapus',mtInformation,[mbOK],1);
      Refreshdata;
    end
  else
    begin
      MessageDlg('Data Tidak Ditemukan',mtError,[mbYes],1);
    end;
end
else
  begin
      MessageDlg('Data Tidak Ditemukan',mtError,[mbYes],1);
  end;

end;

procedure Tformtablekeluarga.EditDataGrid1Click(Sender: TObject);
var
  no:string;
begin
  adokeluarga.Active:=false;
  adokeluarga.Active:=true;
if MessageDlg('Apakah Anda Ingin Mengedit Data Keluarga ini ?',mtConfirmation,mbYesNoCancel,1)=mrYes then
begin
no:=querycarikeluarga.FieldByName('No_Keluarga').AsString;
querycarikeluarga.Locate('No_Keluarga',no,[loPartialKey]);
    MessageDlg('Data Ditemukan',mtInformation,[mbOK],1);
    MessageDlg('Saat ini anda dalam mode Edit Data,Silahkan Klik Tombol Edit/Add untuk menyimpan',mtInformation,[mbOK],1);
    lbltransaksi.Caption:='Edit Data Transaksi';
    //Mengisi ke Field
    txtinduk.Text:=querycarikeluarga.FieldByName('Nomor_Induk').AsString;
    txtnama.Text:=querycarikeluarga.FieldByName('nama_keluarga').AsString;
    cbkodejk.Text:=querycarikeluarga.FieldByName('jenis_keluarga').AsString;
    DateTimePicker1.Date:=StrToDate(querycarikeluarga.FieldByName('tanggal_kahir').AsString);
      cbkodejk.Enabled:=true;
      cbkodest.Enabled:=true;
    cbkodejkChange(Sender);
    cbkodest.Text:=querycarikeluarga.FieldByName('status_tunjangan').AsString;
    cbkodestChange(Sender);
    //Mengaktifkan Dan Menonaktifkan
    Image6.Enabled:=false;
    Image8.Enabled:=false;
    txtnama.ReadOnly:=false;
    txtnama.Enabled:=true;

    DateTimePicker1.Enabled:=true;
    DBGrid1.Visible:=false;
    //
    DBGrid2.Enabled:=false;

end
else
  begin
  Abort;
  end;
end;

procedure Tformtablekeluarga.TutupKoneksi;
begin
  ADOConnection1.Connected:=false;
  qpeg.Active:=false;
  querycarikeluarga.Active:=false;
  querytunjangan.Active:=false;
  querypegawai.Active:=false;
  querydatapegawai.Active:=false;
  adokeluarga.Active:=false;
  ADOTable3.Active:=false;
  adocarikel.Active:=false;
  adopegawai.Active:=false;
end;
procedure Tformtablekeluarga.Image7Click(Sender: TObject);
begin
Refreshdata;
formtypekeluarga.Show;
formtablekeluarga.Hide;
end;

procedure Tformtablekeluarga.Image9Click(Sender: TObject);
var
  Excel : Variant;
  i : Integer;
begin
  if OpenDialog1.Execute  then
  begin
    Try
      Excel := CreateOleObject('Excel.Application');
      Excel.WorkBooks.Open(OpenDialog1.FileName);
      i:=2;
      while VarToStr(Excel.Cells.Range['a'+inttostr(i)])<>'' do
      begin
        querycarikeluarga.Close;
        querycarikeluarga.SQL.Clear;
        querycarikeluarga.SQL.Text :='insert into Master_Keluarga (Nomor_Induk,Nama_Keluarga,Kode_Jenis_Keluarga,tanggal_kahir,kode_status_tunjangan)'+
                            'values (:nomorinduk,:namakeluarga,:kodejeniskel,:tanggal,:kodestatkel)';
        querycarikeluarga.Parameters.ParamByName('nomorinduk').Value:=VarToStr(Excel.cells.range['a'+inttostr(i)]);
        querycarikeluarga.Parameters.ParamByName('namakeluarga').Value:=VarToStr(Excel.cells.range['b'+inttostr(i)]);
        querycarikeluarga.Parameters.ParamByName('kodejeniskel').Value:=StrToInt(VarToStr(Excel.cells.range['c'+inttostr(i)]));
       querycarikeluarga.Parameters.ParamByName('tanggal').Value:=VarToStr(Excel.cells.range['d'+inttostr(i)]);
       querycarikeluarga.Parameters.ParamByName('kodestatkel').Value:=StrToInt(VarToStr(Excel.cells.range['e'+inttostr(i)]));
        querycarikeluarga.ExecSQL;
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
Refreshdata;
end;

procedure Tformtablekeluarga.HapusData3Click(Sender: TObject);
var
  data:string;
  x,y:integer;
begin
  adokeluarga.Active:=false;
  adokeluarga.Active:=true;

data:=querycarikeluarga.FieldByName('No_Keluarga').AsString;
  adokeluarga.Refresh;
  adokeluarga.Active:=false;
  adokeluarga.Active:=true;
  if adokeluarga.Locate('No_Keluarga',data,[])then
    begin
      adokeluarga.Delete;
      //
      queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_pasien.No_Keluarga, Count(master_pasien.No_Keluarga) AS Jumlah');
              queryhapus.SQL.Add('From master_pasien');
              queryhapus.SQL.Add('GROUP BY master_pasien.No_Keluarga;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Pasien Yang Terhubung');
              if queryhapus.Locate('No_Keluarga',data,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelpasien.Active:=false;
                tabelpasien.Active:=true;
                if tabelpasien.Locate('No_Keluarga',data,[]) then
                begin
                tabelpasien.Delete;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
               queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_record_berobat.No_Keluarga, Count(master_record_berobat.No_Keluarga) AS Jumlah');
              queryhapus.SQL.Add('From master_record_berobat');
              queryhapus.SQL.Add('GROUP BY master_record_berobat.No_Keluarga;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Berobat Yang Terhubung');
              if queryhapus.Locate('No_Keluarga',data,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelrecord.Active:=false;
                tabelrecord.Active:=true;
                if tabelrecord.Locate('No_Keluarga',data,[]) then
                begin
                tabelrecord.Delete;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
                  ///
                    queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_beli_obat.No_Keluarga, Count(master_beli_obat.No_Keluarga) AS Jumlah');
              queryhapus.SQL.Add('From master_beli_obat');
              queryhapus.SQL.Add('GROUP BY master_beli_obat.No_Keluarga;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Pembelian Obat Yang Terhubung');
              if queryhapus.Locate('No_Keluarga',data,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelbeliobat.Active:=false;
                tabelbeliobat.Active:=true;
                if tabelbeliobat.Locate('No_Keluarga',data,[]) then
                begin
                tabelbeliobat.Delete;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
      MessageDlg('Data Berhasil Dihapus',mtInformation,[mbOK],1);
      Refreshdata;
    end
  else
    begin
      MessageDlg('Data Tidak Ditemukan',mtError,[mbYes],1);
    end;
end;

procedure Tformtablekeluarga.EditData1Click(Sender: TObject);
var
  no,data:string;
begin
if MessageDlg('Apakah Anda Ingin Mengedit Data ?',mtConfirmation,mbYesNoCancel,1)=mrYes then
begin
no:=querycarikeluarga.FieldByName('No_Keluarga').AsString;
querycarikeluarga.Locate('No_Keluarga',no,[loPartialKey]);
    MessageDlg('Data Ditemukan',mtInformation,[mbOK],1);
    MessageDlg('Saat ini anda dalam mode Edit Data,Silahkan Klik Tombol Edit/Add untuk menyimpan',mtInformation,[mbOK],1);
    lbltransaksi.Caption:='Edit Data Transaksi';
    //Mengisi ke Field
    txtinduk.Text:=querycarikeluarga.FieldByName('Nomor_Induk').AsString;
    txtnama.Text:=querycarikeluarga.FieldByName('nama_keluarga').AsString;
    cbkodejk.Text:=querycarikeluarga.FieldByName('jenis_keluarga').AsString;
    DateTimePicker1.Date:=StrToDate(querycarikeluarga.FieldByName('tanggal_kahir').AsString);
    lblnokeluarga.Caption:=querycarikeluarga.FieldByName('No_Keluarga').AsString;
      cbkodejk.Enabled:=true;
      cbkodest.Enabled:=true;
    cbkodejkChange(Sender);
    cbkodest.Text:=querycarikeluarga.FieldByName('status_tunjangan').AsString;
    cbkodestChange(Sender);
    //Mengaktifkan Dan Menonaktifkan
    Image6.Enabled:=false;
    Image8.Enabled:=false;
    txtnama.ReadOnly:=false;
    txtnama.Enabled:=true;

    DateTimePicker1.Enabled:=true;
    DBGrid1.Visible:=false;
    //
    DBGrid2.Enabled:=false;

end
else
  begin
  Abort;
  end;
  end;

end.
