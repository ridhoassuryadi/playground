unit uTransaksiuser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, jpeg, ExtCtrls, DB, ADODB, Menus, Grids,
  DBGrids;

type
  Tfromtransuser = class(TForm)
    gruppil: TGroupBox;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    grupformsheetkeluarga: TGroupBox;
    Shape5: TShape;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    btncekkel: TImage;
    Shape6: TShape;
    Image1: TImage;
    Label10: TLabel;
    Shape15: TShape;
    Shape16: TShape;
    Label17: TLabel;
    btnsimpankeluarga: TImage;
    Image3: TImage;
    edinduk: TEdit;
    cbnamakeluarga: TComboBox;
    DateTimePicker2: TDateTimePicker;
    edjeniskel: TEdit;
    edstatustun: TEdit;
    memokeluargakeluhan: TMemo;
    grupformsheetpeg: TGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Shape3: TShape;
    Shape7: TShape;
    Image4: TImage;
    Shape21: TShape;
    Label22: TLabel;
    btncekobat: TImage;
    btnsimpan: TImage;
    btncanceltranpeg: TImage;
    Shape32: TShape;
    txtinduk: TEdit;
    txtnama: TEdit;
    txtpersonnum: TEdit;
    txtnamapeg: TEdit;
    txtunitpeg: TEdit;
    memkelpeg: TMemo;
    txtketpeg: TEdit;
    Image2: TImage;
    ADOConnection1: TADOConnection;
    adosimpan: TADOTable;
    querypegawai: TADOQuery;
    lblkodestatus: TLabel;
    querynamakeluarga: TADOQuery;
    lblnokeluarga: TLabel;
    MainMenu1: TMainMenu;
    Aplikasi1: TMenuItem;
    KembaliKeMenu1: TMenuItem;
    LihatDataPegawai1: TMenuItem;
    KeluarAplikasi1: TMenuItem;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    Refresh1: TMenuItem;
    KembaliKeMenu2: TMenuItem;
    KeluarAplikasi2: TMenuItem;
    queryberobatpegawai: TADOQuery;
    date: TDateTimePicker;
    DataSource1: TDataSource;
    Shape4: TShape;
    Label18: TLabel;
    lbltransaksi: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    lbljam: TLabel;
    lblhari: TLabel;
    lblnotrans: TLabel;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    querydatapegawai: TADOQuery;
    DBGrid2: TDBGrid;
    Image5: TImage;
    btnkembalikemenu: TImage;
    Image6: TImage;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure btncekobatClick(Sender: TObject);
    procedure btncanceltranpegClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure txtindukKeyPress(Sender: TObject; var Key: Char);
    procedure btncekkelClick(Sender: TObject);
    procedure cbnamakeluargaChange(Sender: TObject);
    procedure btnsimpankeluargaClick(Sender: TObject);
    procedure edindukKeyPress(Sender: TObject; var Key: Char);
    procedure Image3Click(Sender: TObject);
    procedure LihatDataPegawai1Click(Sender: TObject);
    procedure KembaliKeMenu1Click(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure entangAplikasi1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure KembaliKeMenu2Click(Sender: TObject);
    procedure KeluarAplikasi2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtindukChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edindukChange(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnkembalikemenuClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fromtransuser: Tfromtransuser;

implementation

uses uAbout, UASAL, uDoctorMain, uDoctorMenu, uFamilytypetrans,
  uInsertMasterPegawai, uLihatBerobatKeluarga, ulihatChart, ulihatchart2,
  ulihatchartobat, ulihatdataberobat, uLihatDataDokter, ulihatdataobat,
  ulihatkeluarga, uLihatPasien, ulihatrecord, uLihatTranspeg, ulogin,
  ulogindokter, umainobat, umainobatpoli, uMainUtama, uMasterDokter,
  uMasterKegunaanObat, uMasterKeluarga, uMasterLogin, uMasterObat,
  uMasterPasien, uMenuAwal, uMenuBerobat, uMenuDokter, uMenuPegawai,
  uMenuUser, uPasien, upilihdokter, uPilihKeluarga, uSplash,
  uStatusPegawai, uTransunit, uLihatpegawai, uRiwayatpenyakit,
  AutoCompleteText, AutoEdit, ss, uLihatDataPasien, uMasterPilihan;

{$R *.dfm}

procedure Tfromtransuser.RadioButton1Click(Sender: TObject);
begin
grupformsheetkeluarga.Visible:=true;
grupformsheetpeg.Visible:=false;
txtinduk.ReadOnly:=false;
txtnamapeg.Clear;
txtketpeg.Clear;
txtpersonnum.Clear;
txtunitpeg.Clear;
memokeluargakeluhan.Clear;
gruppil.Enabled:=true;
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;
querynamakeluarga.Active:=true;
querynamakeluarga.Close;
  querynamakeluarga.SQL.Clear;
  querynamakeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
  querynamakeluarga.ExecSQL;
  querynamakeluarga.Open;
txtinduk.Clear;
memkelpeg.Clear;
end;

procedure Tfromtransuser.RadioButton2Click(Sender: TObject);
begin
grupformsheetkeluarga.Visible:=false;
grupformsheetpeg.Visible:=true;
txtinduk.SetFocus;
edinduk.ReadOnly:=false;
cbnamakeluarga.Enabled:=false;
edinduk.Clear;
cbnamakeluarga.Clear;
edjeniskel.Clear;
edstatustun.Clear;
memokeluargakeluhan.Clear;
gruppil.Enabled:=true;
end;

procedure Tfromtransuser.btncekobatClick(Sender: TObject);
begin
if txtinduk.Text='' then
  begin
    ShowMessage('Harap Field Nomor Induk Diisi');
  end
else
  begin
   querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;
    if querypegawai.Locate('Nomor_Induk',txtinduk.Text,[]) then
      begin //Jika Sudah Terdaftar Pegawai
               txtnamapeg.Text:=querypegawai.FieldByName('Nama_Pegawai').AsString;
        txtketpeg.Text:=querypegawai.FieldByName('Keterangan_status').AsString;
        txtpersonnum.Text:=querypegawai.FieldByName('Personel_number').AsString;
        txtunitpeg.Text:=querypegawai.FieldByName('nama_unit').AsString;

      //
        queryberobatpegawai.Active:=true;
        queryberobatpegawai.Close;
        queryberobatpegawai.SQL.Clear;
        queryberobatpegawai.SQL.Add('SELECT master_record_berobat.[No], master_record_berobat.Nomor_induk, master_record_berobat.Nama_Pasien, master_record_berobat.Keluhan, master_record_berobat.Anamesa_terimpin,');
        queryberobatpegawai.SQL.Add('master_record_berobat.Pemeriksaan_fisik, master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.diagnosa, master_record_berobat.Tanggal_Berobat, master_record_berobat.Obat,');
        queryberobatpegawai.SQL.Add('master_record_berobat.No_Keluarga, master_record_berobat.Diperiksa, master_record_berobat.Tipe_Penyakit');
         queryberobatpegawai.SQL.Add('FROM MASTER_PEGAWAI INNER JOIN master_record_berobat ON MASTER_PEGAWAI.Nomor_induk = master_record_berobat.Nomor_induk WHERE master_record_berobat.Tanggal_Berobat=:tgl1 and master_record_berobat.Nomor_Induk=:nomor');
        queryberobatpegawai.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',date.Date);
        queryberobatpegawai.Parameters.ParamByName('Nomor').Value:=txtinduk.Text;
        queryberobatpegawai.ExecSQL;
        queryberobatpegawai.Open;
          if queryberobatpegawai.Locate('Nama_Pasien',txtnamapeg.Text,[]) then
            begin//Jika Sudah Berobat Hari ini
            DBGrid1.Visible:=false;
              MessageDlg('Anda Sudah Terdaftar Berobat',mtWarning,[mbok],0);
              if MessageDlg('Apakah Anda ingin Mengedit Transaksi Berobat Sebelumnya ?',mtConfirmation,[mbYes,mbNo],1)=mryes
                then
                  begin
                    memkelpeg.Text:=queryberobatpegawai.FieldByName('Keluhan').AsString;
                    lbltransaksi.Caption:='Edit Data Transaksi';
                    lblnotrans.Caption:=queryberobatpegawai.FieldByName('No').AsString;

                  end
              else
            begin
              txtinduk.SetFocus;
              DBGrid1.Visible:=false;
            end;
          end
          else
            begin
              MessageDlg('Silahkan isi Field Berobat hari ini',mtInformation,[mbOK],0);
        txtnamapeg.Text:=querypegawai.FieldByName('Nama_Pegawai').AsString;
        txtketpeg.Text:=querypegawai.FieldByName('Keterangan_status').AsString;
        txtpersonnum.Text:=querypegawai.FieldByName('Personel_number').AsString;
        txtunitpeg.Text:=querypegawai.FieldByName('nama_unit').AsString;

        memkelpeg.SetFocus;
        txtinduk.ReadOnly:=true;
        gruppil.Enabled:=false;
        lbltransaksi.Caption:='Transaksi Data Baru';
        DBGrid1.Visible:=false;
      end;
    end
      else
        begin
             MessageDlg('Anda Belum Terdaftar Sebagai Pasien!',mtError,[mbok],0);
             formpasien.lbllogin.Caption:='User';
             formpasien.Show;
             fromtransuser.Hide;
             DBGrid1.Visible:=false;
             if MessageDlg('Apakah Anda ingin melihat Daftar Pasien ?',mtConfirmation,[mbyes,mbno],0)=mrYes then
              begin
                formlihatdatapasien.Show;
              end
             else
              begin
                  txtinduk.SetFocus;
              end;
        end;
  end;
end;

procedure Tfromtransuser.btncanceltranpegClick(Sender: TObject);
begin
DBGrid1.Visible:=false;
txtinduk.ReadOnly:=false;
txtnamapeg.Clear;
txtketpeg.Clear;
txtpersonnum.Clear;
txtunitpeg.Clear;
memokeluargakeluhan.Clear;
gruppil.Enabled:=true;
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;
querynamakeluarga.Active:=true;
querynamakeluarga.Close;
  querynamakeluarga.SQL.Clear;
  querynamakeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
  querynamakeluarga.ExecSQL;
  querynamakeluarga.Open;
txtinduk.Clear;
memkelpeg.Clear;
txtinduk.SetFocus;
end;

procedure Tfromtransuser.btnsimpanClick(Sender: TObject);
begin
adosimpan.Active:=true;
if (txtinduk.Text='') or (txtnamapeg.Text='') or (txtketpeg.Text='') or
(txtunitpeg.Text='') or (memkelpeg.Text='') then
begin
  ShowMessage('Field Masih ada yang Kosong');
end
else
  begin
  if lbltransaksi.Caption='Edit Data Transaksi' then
    begin
     if MessageDlg('Apakah Anda ingin Mengedit Data Record Pegawai ini ?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
           adosimpan.Locate('No',lblnotrans.Caption,[]);
           adosimpan.Edit;
          adosimpan.FieldByName('Nomor_Induk').AsString:=txtinduk.Text;
          adosimpan.FieldByName('Nama_Pasien').AsString:=txtnamapeg.Text;
          adosimpan.FieldByName('Keluhan').AsString:=memkelpeg.Text;
          adosimpan.FieldByName('Diperiksa').AsString:='Belum';
          adosimpan.FieldByName('Tanggal_Berobat').AsString:=FormatDateTime('mm/dd/yyyy',now);
          adosimpan.Post;
          MessageDlg('Anda Berhasil Mengedit Record Pengobatan ini',mtInformation,[mbOK],0);
          txtinduk.Clear;
          txtnamapeg.Clear;
          txtpersonnum.Clear;
          txtunitpeg.Clear;
          memkelpeg.Clear;
          txtketpeg.Clear;
          lblkodestatus.Caption:='0';
          txtinduk.ReadOnly:=false;
          txtinduk.SetFocus;
          gruppil.Enabled:=true;
          lbltransaksi.Caption:='Tidak Ada Transaksi';

          end
      else
        begin
             txtinduk.Clear;
          txtnamapeg.Clear;
          txtpersonnum.Clear;
          txtunitpeg.Clear;
          memkelpeg.Clear;
          txtketpeg.Clear;
          lblkodestatus.Caption:='0';
          txtinduk.ReadOnly:=false;
          txtinduk.SetFocus;
          gruppil.Enabled:=true;
           MessageDlg('Anda Membatalkan Pegeditan Data Transaksi',mtInformation,[mbOK],0);
        end;
      end//Akhir Jika Edit Data
        else if lbltransaksi.Caption='Transaksi Data Baru' then //Jika Transaksi Data Baru
          begin
          querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;
    if querypegawai.Locate('Nomor_Induk',txtinduk.Text,[]) then
      begin //Jika Sudah Terdaftar Pegawai
               txtnamapeg.Text:=querypegawai.FieldByName('Nama_Pegawai').AsString;
        txtketpeg.Text:=querypegawai.FieldByName('Keterangan_status').AsString;
        txtpersonnum.Text:=querypegawai.FieldByName('Personel_number').AsString;
        txtunitpeg.Text:=querypegawai.FieldByName('nama_unit').AsString;

      //
  queryberobatpegawai.Active:=true;
        queryberobatpegawai.Close;
        queryberobatpegawai.SQL.Clear;
        queryberobatpegawai.SQL.Add('SELECT master_record_berobat.[No], master_record_berobat.Nomor_induk, master_record_berobat.Nama_Pasien, master_record_berobat.Keluhan, master_record_berobat.Anamesa_terimpin,');
        queryberobatpegawai.SQL.Add('master_record_berobat.Pemeriksaan_fisik, master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.diagnosa, master_record_berobat.Tanggal_Berobat, master_record_berobat.Obat,');
        queryberobatpegawai.SQL.Add('master_record_berobat.No_Keluarga, master_record_berobat.Diperiksa, master_record_berobat.Tipe_Penyakit');
         queryberobatpegawai.SQL.Add('FROM MASTER_PEGAWAI INNER JOIN master_record_berobat ON MASTER_PEGAWAI.Nomor_induk = master_record_berobat.Nomor_induk WHERE master_record_berobat.Tanggal_Berobat=:tgl1 and master_record_berobat.Nomor_Induk=:nomor');
        queryberobatpegawai.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',date.Date);
        queryberobatpegawai.Parameters.ParamByName('Nomor').Value:=txtinduk.Text;
        queryberobatpegawai.ExecSQL;
        queryberobatpegawai.Open;
        if queryberobatpegawai.Locate('Nama_Pasien',txtnamapeg.Text,[]) then
            begin//Jika Sudah Berobat Hari ini
              MessageDlg('Anda Sudah Terdaftar Berobat',mtWarning,[mbok],0);
              if MessageDlg('Apakah Anda ingin Mengedit Transaksi Berobat Sebelumnya ?',mtConfirmation,[mbYes,mbNo],1)=mryes
                then
                  begin
                    memkelpeg.Text:=queryberobatpegawai.FieldByName('Keluhan').AsString;
                    lbltransaksi.Caption:='Edit Data Transaksi';
                    lblnotrans.Caption:=queryberobatpegawai.FieldByName('No').AsString;
                  end
              else
            begin
              txtinduk.SetFocus;
            end;
          end
          else
            begin
              MessageDlg('Transaksi Berhasil Dilakukan',mtInformation,[mbOK],0);
              adosimpan.Append;
          adosimpan.FieldByName('Nomor_Induk').AsString:=txtinduk.Text;
          adosimpan.FieldByName('Nama_Pasien').AsString:=txtnamapeg.Text;
          adosimpan.FieldByName('Keluhan').AsString:=memkelpeg.Text;
          adosimpan.FieldByName('Diperiksa').AsString:='Belum';
          adosimpan.FieldByName('Tanggal_Berobat').AsString:=FormatDateTime('mm/dd/yyyy',now);
          adosimpan.Post;
          btncanceltranpegClick(Sender);
          DBGrid1.Visible:=false;
          lbltransaksi.Caption:='Tidak Ada Transaksi';
      end;
    end
      else
        begin
             MessageDlg('Anda Belum Terdaftar Sebagai Pasien!',mtError,[mbok],0)
        end;
         end//Akhir Jika Data Baru
    else
      begin
        MessageDlg('Anda Tidak Dalam Mode Data!',mtWarning,[mbok],0);
      end;//Akhir Jika Tidak Dalam Mode Simpan;
  end;//Akhir Jika Data Tidak Kosong
end;

procedure Tfromtransuser.txtindukKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
if DBGrid1.Visible=true then
  begin
    txtinduk.Text:=querydatapegawai.FieldByName('Nomor_Induk').AsString;
    DBGrid1.Visible:=false;
  end
else
  begin
    btncekobatClick(Sender);
  end;
end;

procedure Tfromtransuser.btncekkelClick(Sender: TObject);
begin
if edinduk.Text='' then
  begin
    ShowMessage('Field No Induk Kosong');
  end
else
  begin
    querynamakeluarga.Active:=true;
    querynamakeluarga.Close;
    querynamakeluarga.SQL.Clear;
    querynamakeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga WHERE Nomor_Induk='+QuotedStr(edinduk.Text));
    querynamakeluarga.ExecSQL;
    querynamakeluarga.Open;
    querynamakeluarga.First;
    if querynamakeluarga.Locate('Nomor_Induk',edinduk.Text,[]) then
      begin
     MessageDlg('Anda Terdaftar Di Data Pengobatan',mtInformation,[mbOK],0);
      while not querynamakeluarga.Eof do
      begin
        cbnamakeluarga.Items.Add(querynamakeluarga['Nama_Keluarga']);
        querynamakeluarga.Next;
      end;
      DBGrid2.Visible:=false;
      edinduk.ReadOnly:=true;
      cbnamakeluarga.Enabled:=true;
      cbnamakeluarga.SetFocus;

    end
      else
        begin
            MessageDlg('Tidak Ada Satupun Keluarga Terdaftar sebagai Pasien!',mtError,[mbok],0);
            if MessageDlg('Apakah Anda ingin melihat Data Pasien?',mtConfirmation,[mbyes,mbno],0)=mrYes then
              begin
                formlihatdatapasien.Show;
              end
            else
              begin
                 DBGrid2.Visible:=false;
            DBGrid2.Visible:=false;
           end;
        end;
  end;
end;

procedure Tfromtransuser.cbnamakeluargaChange(Sender: TObject);
begin
querynamakeluarga.Active:=true;
querynamakeluarga.Close;
querynamakeluarga.SQL.Clear;
querynamakeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
querynamakeluarga.ExecSQL;
querynamakeluarga.Open;
    if querynamakeluarga.Locate('Nama_Keluarga',cbnamakeluarga.Text,[]) then
      begin //Jika Sudah Terdaftar Pegawai

      //
 queryberobatpegawai.Active:=true;
        queryberobatpegawai.Close;
        queryberobatpegawai.SQL.Clear;
        queryberobatpegawai.SQL.Add('SELECT master_record_berobat.[No], master_record_berobat.Nomor_induk, master_record_berobat.Nama_Pasien, master_record_berobat.Keluhan, master_record_berobat.Anamesa_terimpin,');
        queryberobatpegawai.SQL.Add('master_record_berobat.Pemeriksaan_fisik, master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.diagnosa, master_record_berobat.Tanggal_Berobat, master_record_berobat.Obat,');
        queryberobatpegawai.SQL.Add('master_record_berobat.No_Keluarga, master_record_berobat.Diperiksa, master_record_berobat.Tipe_Penyakit');
         queryberobatpegawai.SQL.Add('FROM MASTER_PEGAWAI INNER JOIN master_record_berobat ON MASTER_PEGAWAI.Nomor_induk = master_record_berobat.Nomor_induk WHERE master_record_berobat.Tanggal_Berobat=:tgl1 and master_record_berobat.Nomor_Induk=:nomor');
        queryberobatpegawai.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',date.Date);
        queryberobatpegawai.Parameters.ParamByName('Nomor').Value:=txtinduk.Text;
        queryberobatpegawai.ExecSQL;
        queryberobatpegawai.Open;
          if queryberobatpegawai.Locate('Nama_Pasien',cbnamakeluarga.Text,[]) then
            begin//Jika Sudah Berobat Hari ini
              MessageDlg('Anda Sudah Terdaftar Berobat',mtWarning,[mbok],0);
              if MessageDlg('Apakah Anda ingin Mengedit Transaksi Berobat Sebelumnya ?',mtConfirmation,[mbYes,mbNo],1)=mryes
                then
                  begin
                    memokeluargakeluhan.Text:=queryberobatpegawai.FieldByName('Keluhan').AsString;
                    DateTimePicker2.Date:=StrToDate(querynamakeluarga.FieldByName('tanggal_kahir').AsString);
                     edjeniskel.Text:=querynamakeluarga.FieldByName('jenis_keluarga').AsString;
                    edstatustun.Text:=querynamakeluarga.FieldByName('status_tunjangan').AsString;
                    lblnokeluarga.Caption:=querynamakeluarga.FieldByName('No_Keluarga').AsString;
                   lbltransaksi.Caption:='Edit Data Transaksi';
                   lblnotrans.Caption:=queryberobatpegawai.FieldByName('No').AsString;
                   cbnamakeluarga.Enabled:=false;
                   memokeluargakeluhan.SetFocus;
                  end
              else
            begin
              txtinduk.SetFocus;
              MessageDlg('Edit Record Dibatalkan',mtWarning,[mbok],0);
            end;
          end
          else
            begin//Kalau Belum Berobat
              MessageDlg('Silahkan isi Field Berobat hari ini',mtInformation,[mbOK],0);
             DateTimePicker2.Date:=StrToDate(querynamakeluarga.FieldByName('tanggal_kahir').AsString);
     edjeniskel.Text:=querynamakeluarga.FieldByName('jenis_keluarga').AsString;
     edstatustun.Text:=querynamakeluarga.FieldByName('status_tunjangan').AsString;
        lblnokeluarga.Caption:=querynamakeluarga.FieldByName('No_Keluarga').AsString;
        lbltransaksi.Caption:='Transaksi Data Baru';
        cbnamakeluarga.Enabled:=false;
        memokeluargakeluhan.SetFocus;
      end;
    end
      else
        begin
             MessageDlg('Anda Belum Terdaftar Sebagai Pasien!',mtError,[mbok],0);
             formpasien.lbllogin.Caption:='User';
             formpasien.Show;
             fromtransuser.Hide;
        end;
  end;



procedure Tfromtransuser.btnsimpankeluargaClick(Sender: TObject);
begin
adosimpan.Active:=true;
if (edinduk.Text='') or (cbnamakeluarga.Text='') then
begin
  MessageDlg('Masih ada Field Kosong',mtInformation,[mbOK],0);
end
else
  begin
if lbltransaksi.Caption='Transaksi Data Baru' then
  begin
  if MessageDlg('Apakah Anda ingin Menyimpan Transaksi Record ini ?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
  adosimpan.Active:=True;
adosimpan.Append;
adosimpan.FieldByName('Nomor_Induk').AsString:=edinduk.Text;
adosimpan.FieldByName('Nama_Pasien').AsString:=cbnamakeluarga.Text;
adosimpan.FieldByName('Keluhan').AsString:=memokeluargakeluhan.Text;
adosimpan.FieldByName('Tanggal_Berobat').AsString:=FormatDateTime('mm/dd/yyyy',now);
adosimpan.FieldByName('No_Keluarga').AsString:=lblnokeluarga.Caption;
adosimpan.FieldByName('Diperiksa').Asstring:='Belum';
adosimpan.Post;
edinduk.Clear;
cbnamakeluarga.Clear;
edjeniskel.Clear;
edstatustun.Clear;
memokeluargakeluhan.Clear;
MessageDlg('Data Tersimpan',mtInformation,[mbOK],0);
edinduk.ReadOnly:=false;
cbnamakeluarga.Enabled:=false;
edinduk.SetFocus;
lbltransaksi.Caption:='Tidak Ada Transaksi';
end
else
  begin
end;
  end
else if lbltransaksi.Caption='Edit Data Transaksi' then
  begin
  if adosimpan.Locate('No',lblnotrans.Caption,[]) then
    begin
     if MessageDlg('Apakah Anda ingin Mengedit Transaksi Record ini ?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
      adosimpan.Active:=True;
adosimpan.Edit;
adosimpan.FieldByName('Nomor_Induk').AsString:=edinduk.Text;
adosimpan.FieldByName('Nama_Pasien').AsString:=cbnamakeluarga.Text;
adosimpan.FieldByName('Keluhan').AsString:=memokeluargakeluhan.Text;
adosimpan.FieldByName('Tanggal_Berobat').AsString:=FormatDateTime('mm/dd/yyyy',now);
adosimpan.FieldByName('No_Keluarga').AsString:=lblnokeluarga.Caption;
adosimpan.FieldByName('Diperiksa').Asstring:='Belum';
adosimpan.Post;
edinduk.Clear;
cbnamakeluarga.Clear;
edjeniskel.Clear;
edstatustun.Clear;
memokeluargakeluhan.Clear;
MessageDlg('Data Tersimpan',mtInformation,[mbOK],0);
edinduk.ReadOnly:=false;
cbnamakeluarga.Enabled:=false;
edinduk.SetFocus;
lbltransaksi.Caption:='Tidak Ada Transaksi';
end
else
  begin
  end;
end
else
  begin
  MessageDlg('Terjadi Sebuah Kesalahan Dimana Nomor Transaksi Tidak Ditemukan,Harap cek kembali!',mtWarning,[mbok],0);
   edinduk.Clear;
    cbnamakeluarga.Clear;
    edjeniskel.Clear;
    edstatustun.Clear;
    memokeluargakeluhan.Clear;
    edinduk.ReadOnly:=false;
    cbnamakeluarga.Enabled:=false;
    edinduk.SetFocus;
    lbltransaksi.Caption:='Tidak Ada Transaksi';
   end;
   end
else
  begin
    MessageDlg('Anda Tidak Dalam Mode Apapun!',mtWarning,[mbok],0);
  end;
end;
end;

procedure Tfromtransuser.edindukKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
if DBGrid2.Visible=true then
  begin
    edinduk.Text:=querydatapegawai.FieldByName('Nomor_Induk').AsString;
    DBGrid2.Visible:=false;
  end
else
  begin
    btncekkelClick(Sender);
  end;
end;

procedure Tfromtransuser.Image3Click(Sender: TObject);
begin
edinduk.ReadOnly:=false;
cbnamakeluarga.Enabled:=false;
edinduk.Clear;
cbnamakeluarga.Clear;
edjeniskel.Clear;
edstatustun.Clear;
memokeluargakeluhan.Clear;
edinduk.SetFocus;
gruppil.Enabled:=true;
DBGrid2.Visible:=false;
end;

procedure Tfromtransuser.LihatDataPegawai1Click(Sender: TObject);
begin
txtinduk.ReadOnly:=false;
txtnamapeg.Clear;
txtketpeg.Clear;
txtpersonnum.Clear;
txtunitpeg.Clear;
memokeluargakeluhan.Clear;
gruppil.Enabled:=true;
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;
querynamakeluarga.Active:=true;
querynamakeluarga.Close;
  querynamakeluarga.SQL.Clear;
  querynamakeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
  querynamakeluarga.ExecSQL;
  querynamakeluarga.Open;
formlihatpegawai.Show;
end;

procedure Tfromtransuser.KembaliKeMenu1Click(Sender: TObject);
begin
txtinduk.ReadOnly:=false;
txtnamapeg.Clear;
txtketpeg.Clear;
txtpersonnum.Clear;
txtunitpeg.Clear;
//
edinduk.Clear;
edjeniskel.Clear;
edstatustun.Clear;
cbnamakeluarga.Clear;
//
memokeluargakeluhan.Clear;
gruppil.Enabled:=true;
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;
querynamakeluarga.Active:=true;
querynamakeluarga.Close;
  querynamakeluarga.SQL.Clear;
  querynamakeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
  querynamakeluarga.ExecSQL;
  querynamakeluarga.Open;
Self.Hide;
formmenuuser.Show;

end;

procedure Tfromtransuser.KeluarAplikasi1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfromtransuser.entangAplikasi1Click(Sender: TObject);
begin
formabout.Show;
end;

procedure Tfromtransuser.Timer1Timer(Sender: TObject);
begin
if txtinduk.Text<>'' then
  begin
    Shape1.Visible:=true;
  end
else
  begin
    Shape1.Visible:=false;
  end;
if txtnamapeg.Text<>'' then
  begin
    Shape2.Visible:=true;
  end
else
  begin
    Shape2.Visible:=false;
  end;
if txtketpeg.Text<>'' then
  begin
    Shape21.Visible:=true;
  end
else
  begin
    Shape21.Visible:=false;
  end;
if txtpersonnum.Text<>'' then
  begin
    Shape3.Visible:=true;
  end
else
  begin
    Shape3.Visible:=false;
  end;
if txtunitpeg.Text<>'' then
  begin
    Shape7.Visible:=true;
  end
else
  begin
    Shape7.Visible:=false;
  end;
if memkelpeg.Text<>'' then
  begin
    Shape32.Visible:=true;
  end
else
  begin
    Shape32.Visible:=false;
  end;
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
lblhari.Caption:=FormatDateTime('dddd/mmmm/yyyy',now);
date.Date:=StrToDate(FormatDateTime('mm/dd/yyyy',now));
end;

procedure Tfromtransuser.Refresh1Click(Sender: TObject);
begin
DBGrid1.Visible:=false;
DBGrid2.Visible:=false;
txtinduk.ReadOnly:=false;
txtnamapeg.Clear;
txtketpeg.Clear;
txtpersonnum.Clear;
txtunitpeg.Clear;
memokeluargakeluhan.Clear;
gruppil.Enabled:=true;
//
  querydatapegawai.Active:=true;
    querydatapegawai.Close;
    querydatapegawai.SQL.Clear;
    querydatapegawai.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query');
    querydatapegawai.ExecSQL;
    querydatapegawai.Open;
    DBGrid1.Visible:=false;
//
txtinduk.ReadOnly:=false;
txtnamapeg.Clear;
txtketpeg.Clear;
txtpersonnum.Clear;
txtunitpeg.Clear;
memokeluargakeluhan.Clear;
gruppil.Enabled:=true;
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;
querynamakeluarga.Active:=true;
querynamakeluarga.Close;
  querynamakeluarga.SQL.Clear;
  querynamakeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
  querynamakeluarga.ExecSQL;
  querynamakeluarga.Open;
txtinduk.Clear;
memkelpeg.Clear;
txtinduk.SetFocus;
//
edinduk.ReadOnly:=false;
cbnamakeluarga.Enabled:=false;
edinduk.Clear;
cbnamakeluarga.Clear;
edjeniskel.Clear;
edstatustun.Clear;
memokeluargakeluhan.Clear;
edinduk.SetFocus;
gruppil.Enabled:=true;
//
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;
querynamakeluarga.Active:=true;
querynamakeluarga.Close;
  querynamakeluarga.SQL.Clear;
  querynamakeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
  querynamakeluarga.ExecSQL;
  querynamakeluarga.Open;
end;

procedure Tfromtransuser.KembaliKeMenu2Click(Sender: TObject);
begin
txtinduk.ReadOnly:=false;
txtnamapeg.Clear;
txtketpeg.Clear;
txtpersonnum.Clear;
txtunitpeg.Clear;
memokeluargakeluhan.Clear;
gruppil.Enabled:=true;
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;
querynamakeluarga.Active:=true;
querynamakeluarga.Close;
  querynamakeluarga.SQL.Clear;
  querynamakeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
  querynamakeluarga.ExecSQL;
  querynamakeluarga.Open;
formmenuuser.Show;
fromtransuser.Hide;
end;

procedure Tfromtransuser.KeluarAplikasi2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tfromtransuser.Button1Click(Sender: TObject);
begin
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;
    if querypegawai.Locate('Nomor_Induk',txtinduk.Text,[]) then
      begin //Jika Sudah Terdaftar Pegawai
               txtnamapeg.Text:=querypegawai.FieldByName('Nama_Pegawai').AsString;
        txtketpeg.Text:=querypegawai.FieldByName('Keterangan_status').AsString;
        txtpersonnum.Text:=querypegawai.FieldByName('Personel_number').AsString;
        txtunitpeg.Text:=querypegawai.FieldByName('nama_unit').AsString;
        lblkodestatus.Caption:=querypegawai.FieldByName('kode_status').AsString;

      //
        queryberobatpegawai.Active:=true;
        queryberobatpegawai.Close;
        queryberobatpegawai.SQL.Clear;
        queryberobatpegawai.SQL.Add('SELECT master_record_berobat.[No], master_record_berobat.Nomor_induk, master_record_berobat.Nama_Pasien, master_record_berobat.Keluhan, master_record_berobat.Anamesa_terimpin,');
        queryberobatpegawai.SQL.Add('master_record_berobat.Pemeriksaan_fisik, master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.diagnosa, master_record_berobat.Tanggal_Berobat, master_record_berobat.Tipe_Pasien,');
        queryberobatpegawai.SQL.Add('master_record_berobat.Obat, master_record_berobat.No_Keluarga, master_record_berobat.Kode_status, master_record_berobat.Tipe_Obat, master_record_berobat.Diperiksa');
        queryberobatpegawai.SQL.Add('FROM MASTER_PEGAWAI INNER JOIN master_record_berobat ON MASTER_PEGAWAI.Nomor_induk = master_record_berobat.Nomor_induk WHERE master_record_berobat.Tanggal_Berobat=:tgl1 and master_record_berobat.Nomor_Induk=:nomor');
        queryberobatpegawai.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',date.Date);
        queryberobatpegawai.Parameters.ParamByName('Nomor').Value:=txtinduk.Text;
        queryberobatpegawai.ExecSQL;
        queryberobatpegawai.Open;
          if queryberobatpegawai.Locate('Nama_Pasien',txtnamapeg.Text,[]) then
            begin//Jika Sudah Berobat Hari ini
              MessageDlg('Anda Sudah Terdaftar Berobat',mtWarning,[mbok],0);
              if MessageDlg('Apakah Anda ingin Mengedit Transaksi Berobat Sebelumnya ?',mtConfirmation,[mbYes,mbNo],1)=mryes
                then
                  begin
                    memkelpeg.Text:=queryberobatpegawai.FieldByName('Keluhan').AsString;
                    lbltransaksi.Caption:='Edit Data Transaksi';
                    lblnotrans.Caption:=queryberobatpegawai.FieldByName('No').AsString;
                  end
              else
            begin
              txtinduk.SetFocus;
            end;
          end
          else
            begin
              MessageDlg('Silahkan isi Field Berobat hari ini',mtInformation,[mbOK],0);
        txtnamapeg.Text:=querypegawai.FieldByName('Nama_Pegawai').AsString;
        txtketpeg.Text:=querypegawai.FieldByName('Keterangan_status').AsString;
        txtpersonnum.Text:=querypegawai.FieldByName('Personel_number').AsString;
        txtunitpeg.Text:=querypegawai.FieldByName('nama_unit').AsString;
        lblkodestatus.Caption:=querypegawai.FieldByName('kode_status').AsString;
        memkelpeg.SetFocus;
        txtinduk.ReadOnly:=true;
        gruppil.Enabled:=false;
        lbltransaksi.Caption:='Transaksi Data Baru';
      end;
    end
      else
        begin
             MessageDlg('Anda Belum Terdaftar Sebagai Pasien!',mtError,[mbok],0);
             formpasien.lbllogin.Caption:='User';
             formpasien.Show;
             fromtransuser.Hide;
        end;
    end;
procedure Tfromtransuser.FormCreate(Sender: TObject);
begin
date.Date:=StrToDate(FormatDateTime('mm/dd/yyyy',now));
querydatapegawai.Active:=true;
end;

procedure Tfromtransuser.txtindukChange(Sender: TObject);
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
procedure Tfromtransuser.DBGrid1DblClick(Sender: TObject);
begin
txtinduk.Text:=querydatapegawai.FieldByName('Nomor_Induk').AsString;
DBGrid1.Visible:=false;
end;

procedure Tfromtransuser.edindukChange(Sender: TObject);
begin
if edinduk.Text='' then
  begin
        querydatapegawai.Active:=true;
    querydatapegawai.Close;
    querydatapegawai.SQL.Clear;
    querydatapegawai.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query');
    querydatapegawai.ExecSQL;
    querydatapegawai.Open;
    DBGrid2.Visible:=false;
  end
else
  begin
        querydatapegawai.Active:=true;
    querydatapegawai.Close;
    querydatapegawai.SQL.Clear;
    querydatapegawai.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query Where Nomor_Induk Like'+QuotedStr(edinduk.Text+'%')+' or Nama_Pegawai Like'+QuotedStr('%'+edinduk.Text+'%'));
    querydatapegawai.ExecSQL;
    querydatapegawai.Open;
    DBGrid2.Visible:=true;
end;

end;

procedure Tfromtransuser.DBGrid2DblClick(Sender: TObject);
begin
edinduk.Text:=querydatapegawai.FieldByName('Nomor_Induk').AsString;
DBGrid2.Visible:=false;
end;

procedure Tfromtransuser.FormClose(Sender: TObject;
  var Action: TCloseAction);
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

procedure Tfromtransuser.btnkembalikemenuClick(Sender: TObject);
begin
KembaliKeMenu1Click(Sender);
end;

procedure Tfromtransuser.Image5Click(Sender: TObject);
begin
formlihatdatapasien.Show;
end;

procedure Tfromtransuser.Image6Click(Sender: TObject);
begin
btnkembalikemenuClick(Sender);
formutama.Show;
fromtransuser.Hide;
end;

end.
