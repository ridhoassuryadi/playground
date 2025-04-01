unit uPasien;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, jpeg, ExtCtrls, DB, ADODB, Grids, DBGrids,
  Menus, RpRave, RpDefine, RpCon, RpConDS, DateUtils;

type
  Tformpengobatan = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    adorecord: TADOTable;
    ADOConnection1: TADOConnection;
    tabelpegawai: TADOTable;
    qobat: TADOQuery;
    qdatasource: TADOQuery;
    Sourcekeluarga: TDataSource;
    Label34: TLabel;
    grupformsheetpeg: TGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Image4: TImage;
    Label22: TLabel;
    btncekobat: TImage;
    txtinduk: TEdit;
    txtnama: TEdit;
    GroupBox2: TGroupBox;
    Label23: TLabel;
    Shape22: TShape;
    lblstatus: TLabel;
    Label36: TLabel;
    lbltransaksi: TLabel;
    Label37: TLabel;
    lbllogin: TLabel;
    Shape23: TShape;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    adorecordobat: TADOTable;
    querycarinamakeluarga: TADOQuery;
    mempemfis: TMemo;
    memterimpin: TMemo;
    memkel: TMemo;
    Memo4: TMemo;
    memdiag: TMemo;
    Label14: TLabel;
    Label38: TLabel;
    btnpilihobat: TImage;
    btnrefreshobat: TImage;
    queryobat: TADOQuery;
    edcariobat: TEdit;
    shapecariobat: TShape;
    Label39: TLabel;
    btncarinamaobat: TImage;
    cbtipepasien: TComboBox;
    Label40: TLabel;
    edk2: TEdit;
    Shape14: TShape;
    Timer1: TTimer;
    lbljumlah: TLabel;
    Label41: TLabel;
    btnsimpan: TImage;
    DBGrid1: TDBGrid;
    sourcedatagrid: TDataSource;
    qdataobat: TADOQuery;
    notrans: TLabel;
    adobeliobat: TADOTable;
    Memo1: TMemo;
    eddosis: TEdit;
    Shape4: TShape;
    tableformula: TADOTable;
    Shape11: TShape;
    edk1: TEdit;
    Label24: TLabel;
    edk3: TEdit;
    Label28: TLabel;
    Label42: TLabel;
    lblpersatuan: TLabel;
    Image7: TImage;
    PopupMenu1: TPopupMenu;
    HapusObatIni1: TMenuItem;
    SelesaiTransaksi1: TMenuItem;
    btncanceltranpeg: TImage;
    Label35: TLabel;
    Shape27: TShape;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    Shape33: TShape;
    Shape34: TShape;
    Shape35: TShape;
    Shape36: TShape;
    Shape37: TShape;
    MainMenu1: TMainMenu;
    Aplikasi1: TMenuItem;
    KembaliKeMenuAwal1: TMenuItem;
    KeluarA1: TMenuItem;
    lbljam: TLabel;
    lblhari: TLabel;
    Timer2: TTimer;
    edhari: TEdit;
    Shape38: TShape;
    RefreshData1: TMenuItem;
    btnselpeg: TImage;
    lblnokeluarga: TLabel;
    lblkodestatus: TLabel;
    querydatapegawi: TADOQuery;
    Image2: TImage;
    dbgridpegawai: TDBGrid;
    querybeliobat: TADOQuery;
    sourcebeli: TDataSource;
    lblnorecordberobat: TLabel;
    lblnotrans: TLabel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    PopupMenu2: TPopupMenu;
    HapusDariDataPembelian1: TMenuItem;
    Refresh1: TMenuItem;
    DateTimePicker1: TDateTimePicker;
    lbltransobat: TLabel;
    lblobattrans: TLabel;
    lblnoobat: TLabel;
    lbldosis: TLabel;
    edharga: TEdit;
    Shape3: TShape;
    Label6: TLabel;
    cbtipeobat: TComboBox;
    Shape44: TShape;
    Label8: TLabel;
    edjumlah: TEdit;
    Shape5: TShape;
    Label9: TLabel;
    lbljumlahobat: TLabel;
    queryhitungobat: TADOQuery;
    Label5: TLabel;
    Label10: TLabel;
    dbgridobat: TDBGrid;
    querynamaobat: TADOQuery;
    sourceobat: TDataSource;
    btnkembalikemenu: TImage;
    lblnoinduk: TLabel;
    lblkeluarga: TLabel;
    Image1: TImage;
    projbeliobat: TRvProject;
    tabeldokter: TADOTable;
    lblnapeg: TLabel;
    lblsip: TLabel;
    DateTimePicker2: TDateTimePicker;
    lblumur: TLabel;
    tabelkeluarga: TADOTable;
    ADOTable1: TADOTable;
    query_temporary: TADOQuery;
    coba: TRvDataSetConnection;
//    procedure btnckekpegClick(Sender: TObject);
    procedure txtindukKeyPress(Sender: TObject; var Key: Char);
    procedure txtkelKeyPress(Sender: TObject; var Key: Char);
    procedure txtpemfisKeyPress(Sender: TObject; var Key: Char);
    procedure txtanamesaKeyPress(Sender: TObject; var Key: Char);
    procedure cbobatChange(Sender: TObject);
//    procedure btncekkelClick(Sender: TObject);
//    procedure RadioButton2Click(Sender: TObject);
//    procedure RadioButton1Click(Sender: TObject);
    procedure btnrefreshClick(Sender: TObject);
    procedure txtpempenunjangKeyPress(Sender: TObject; var Key: Char);
//    procedure btnbersihkeluargaClick(Sender: TObject);
    procedure edindukKeyPress(Sender: TObject; var Key: Char);
//    procedure btnsimpankeluargaClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
//    procedure btnpilihobatkelClick(Sender: TObject);
    procedure btncarinamaobatClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnpilihobatClick(Sender: TObject);
    procedure dataClick(Sender: TObject);
    procedure btnrefreshobatClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cbtipepasienChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure HapusObatIni1Click(Sender: TObject);
    procedure btncanceltranpegClick(Sender: TObject);
    procedure gruppilClick(Sender: TObject);
    procedure btnselpegClick(Sender: TObject);
    procedure KeluarA1Click(Sender: TObject);
    procedure edhariKeyPress(Sender: TObject; var Key: Char);
    procedure edhariChange(Sender: TObject);
    procedure edcariobatKeyPress(Sender: TObject; var Key: Char);
    procedure RefreshData1Click(Sender: TObject);
    procedure eddosisKeyPress(Sender: TObject; var Key: Char);
//    procedure cbnamakeluargaChange(Sender: TObject);
//    procedure Image11Click(Sender: TObject);
//    procedure btnselkelClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
//    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure KembaliKeMenuAwal1Click(Sender: TObject);
    procedure cbsendokKeyPress(Sender: TObject; var Key: Char);
    procedure BerobatPegawai1Click(Sender: TObject);
    procedure BerobatKeluarga1Click(Sender: TObject);
    procedure dbgridpegawaiCellClick(Column: TColumn);
    procedure RadioButton2Click(Sender: TObject);
    procedure HapusDariDataPembelian1Click(Sender: TObject);
    procedure SelesaiTransaksi1Click(Sender: TObject);
    procedure edjumlahKeyPress(Sender: TObject; var Key: Char);
    procedure cbtipeobatChange(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgridpegawaiKeyPress(Sender: TObject; var Key: Char);
    procedure edcariobatChange(Sender: TObject);
    procedure dbgridobatDblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cbtipeobatKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnkembalikemenuClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    procedure kuncilagi;
    procedure NIPada;
    procedure kuncilagiPegawai;
    procedure NIPadaPegawai;
    procedure SimpanTransaksiPegawaa;
    procedure SimpanTransaksiPegawai;
    procedure SimpanObat;
    procedure EditObat;
    procedure RefreshObat;
    procedure RefreshObatdata;
    procedure TutupKoneksi;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formpengobatan: Tformpengobatan;

implementation

uses uMasterPasien, UASAL, uInsertMasterPegawai, ulihatrecord,
  uMasterDokter, uMasterKegunaanObat, uMasterKeluarga, uMasterLogin,
  uMasterObat, uMasterPilihan, uMenuAwal, upilihdokter, uSplash, Math,
  uAbout, uDoctorMenu, uFamilytypetrans, ulihatdataberobat, ulihatdataobat,
  ulihatkeluarga, uLihatPasien, uLihatTranspeg, ulogin, ulogindokter,
  umainobat, umainobatpoli, uMainUtama, uMenuPegawai, uPilihKeluarga,
  uStatusPegawai, uTransunit, uLihatBerobatKeluarga, ulihatChart,
  ulihatchart2, uMenuBerobat, uDoctorMain, uLihatDataDokter, uMenuUser,
  uMenuDokter;

{$R *.dfm}



procedure Tformpengobatan.txtindukKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
if txtinduk.Text='' then
  begin
    ShowMessage('Data yang anda cari Kosong');
  end
else
  begin

  end;
end;

procedure Tformpengobatan.txtkelKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;

end;

procedure Tformpengobatan.txtpemfisKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;

end;

procedure Tformpengobatan.txtanamesaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;

end;

procedure Tformpengobatan.cbobatChange(Sender: TObject);
begin

end;//Akhir Dari Procedure



procedure Tformpengobatan.btnrefreshClick(Sender: TObject);
begin
txtinduk.Text:='';
txtnama.Text:='';


end;

procedure Tformpengobatan.txtpempenunjangKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;

end;


procedure Tformpengobatan.edindukKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
end;

procedure Tformpengobatan.Image5Click(Sender: TObject);
begin
formmaindokter.Show;
formpengobatan.Hide;
end;



procedure Tformpengobatan.btncarinamaobatClick(Sender: TObject);
begin
    tableformula.Active:=true;
    if tableformula.Locate('Nama_Brand',edcariobat.Text,[]) then
      begin
             queryobat.Active:=true;
             queryobat.Close;
             queryobat.SQL.Clear;
             queryobat.SQL.Add('SELECT master_beli_obat.[No], master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, master_beli_obat.id, master_beli_obat.Sendok, master_beli_obat.Hari, master_beli_obat.Dosis, master_beli_obat.Tipe_Obat,');
             queryobat.SQL.Add('master_beli_obat.Jumlah_Beli');
             queryobat.SQL.Add('FROM master_record_berobat INNER JOIN master_beli_obat ON master_record_berobat.[No] = master_beli_obat.[No] where master_beli_obat.[No]='+lblnotrans.Caption);
             queryobat.ExecSQL;
             queryobat.Open;
              if queryobat.Locate('Nama_Obat',edcariobat.Text,[]) then
                begin
                  MessageDlg('Obat Sudah Ada Di Data Obat yang Beli!',mtWarning,[mbok],0);
                  if MessageDlg('Apakah Anda ingin Mengganti Obat Ini ?',mtConfirmation,[mbyes,mbno],0)=mrYes then
                    begin
                        lblnoobat.Caption:=queryobat.FieldByName('Id').AsString;
                    tableformula.Locate('Nama_Brand',edcariobat.Text,[]);
                    Memo1.Text:=tableformula.FieldByName('Komposisi').AsString;
                    edk1.Text:=tableformula.FieldByName('Nama_Kelas_Pertama').AsString;
                    edk2.Text:=tableformula.FieldByName('Nama_Kelas_Kedua').AsString;
                    edk3.Text:=tableformula.FieldByName('Nama_Kelas_Ketiga').AsString;
                    edharga.Text:=tableformula.FieldByName('Harga').AsString;
                    //
                    cbtipeobat.Enabled:=true;
                    cbtipeobat.SetFocus;
                    //
                    eddosis.Text:=queryobat.FieldByName('Sendok').AsString;
                    edhari.Text:=queryobat.FieldByName('Hari').AsString;
                    cbtipeobat.Text:=queryobat.FieldByName('Tipe_Obat').AsString;
                    lblobattrans.Caption:='Edit Data Transaksi';
                    Label42.Caption:='Edit Data Transaksi';
                    ShowMessage(lblobattrans.Caption);
                    edjumlah.Text:=queryobat.FieldByName('Jumlah_Beli').AsString;
                    dbgridobat.Visible:=false;
                    end
                  else
                    begin
                      MessageDlg('Anda Membatalkan Edit Transaksi!',mtWarning,[mbok],0);
                       dbgridobat.Visible:=false;
                    end;
                end
              else
                begin
        if (lblobattrans.Caption='Edit Data Transaksi') then
        begin
        cbtipeobat.Enabled:=true;
        cbtipeobat.SetFocus;
        Memo1.Text:=tableformula.FieldByName('Komposisi').AsString;
        edk1.Text:=tableformula.FieldByName('Nama_Kelas_Pertama').AsString;
        edk2.Text:=tableformula.FieldByName('Nama_Kelas_Kedua').AsString;
        edk3.Text:=tableformula.FieldByName('Nama_Kelas_Ketiga').AsString;
        edharga.Text:=tableformula.FieldByName('Harga').AsString;
         dbgridobat.Visible:=false;
        MessageDlg('Obat ditemukan Dari Data Formularium Obat!',mtInformation,[mbok],0);
        end
        else if ((lblobattrans.Caption='Transaksi Data Baru') or (lbltransaksi.Caption='Tidak Ada Transaksi')) then
        begin
        cbtipeobat.Enabled:=true;
        cbtipeobat.SetFocus;
        Memo1.Text:=tableformula.FieldByName('Komposisi').AsString;
        edk1.Text:=tableformula.FieldByName('Nama_Kelas_Pertama').AsString;
        edk2.Text:=tableformula.FieldByName('Nama_Kelas_Kedua').AsString;
        edk3.Text:=tableformula.FieldByName('Nama_Kelas_Ketiga').AsString;
        edharga.Text:=tableformula.FieldByName('Harga').AsString;
         dbgridobat.Visible:=false;
        MessageDlg('Obat ditemukan Dari Data Formularium Obat!',mtInformation,[mbok],0);
        end
        else
          begin
            MessageDlg('Error Pada Status Transaksi Obat',mtError,[mbYes],1);
          end;
          end;
      end
    else
      begin
        ShowMessage('Data Obat Tidak Ditemukan');
         dbgridobat.Visible:=false;
        end;
end;

procedure Tformpengobatan.Timer1Timer(Sender: TObject);
begin
  lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
  lblhari.Caption:=FormatDateTime('dddd,mmmm,yyyy',now);
If (edcariobat.Text<>'')then
begin
shapecariobat.Visible:=true;
end
else
begin
shapecariobat.Visible:=false;
end;
if  txtinduk.Text<>'' then
  begin
    Shape1.Visible:=true;
  end
else
  begin
    Shape1.Visible:=false;
  end;
if txtnama.Text<>'' then
  begin
    Shape2.Visible:=true;
  end
else
  begin
    Shape2.Visible:=false;
  end;




if memkel.Text<>'' then
  begin
    Shape32.Visible:=true;
  end
else
  begin
    Shape32.Visible:=false;
  end;

if memterimpin.Text='' then
  begin
      Shape33.Visible:=true;
  end
else
  begin
    Shape33.Visible:=false;
  end;
if mempemfis.Text<>'' then
  begin
    Shape34.Visible:=true;
  end
else
  begin
    Shape34.Visible:=false;
  end;
if Memo4.Text<>'' then
  begin
    Shape35.Visible:=true;
  end
else
  begin
    Shape35.Visible:=false;
  end;
if memdiag.Text<>'' then
  begin
    Shape36.Visible:=true;
  end
else
  begin
    Shape36.Visible:=false;
  end;
if cbtipepasien.Text<>'' then
  begin
    Shape37.Visible:=true;
  end
else
  begin
    Shape37.Visible:=false;
  end;
DateTimePicker1.Date:=StrToDate(FormatDateTime('mm/dd/yyyy',now));
if cbtipeobat.Text<>'' then
  begin
    Shape44.Visible:=true;
  end
else
  begin
    Shape44.Visible:=false;
  end;
if edhari.Text<>'' then
  begin
    Shape3.Visible:=true;
  end
else
  begin
    Shape3.Visible:=false;
  end;
if edjumlah.Text<>'' then
  begin
    Shape5.Visible:=true;
  end
else
  begin
    Shape5.Visible:=false;
  end;

end;

procedure Tformpengobatan.btnpilihobatClick(Sender: TObject);
var
  a,b,dosis,angka,jumlah,beli,batas:integer;
begin
//
adobeliobat.Active:=true;
jumlah:=StrToInt(lbljumlahobat.Caption);
beli:=StrToInt(edjumlah.Text);
dosis:=StrToInt(eddosis.Text);
batas:=dosis * 5;
//
a:=StrToInt(eddosis.Text);
b:=StrToInt(edhari.Text);
if a<1 then
  begin
  MessageDlg('Dosis tidak boleh kurang dari 1',mtError,[mbYes],1);
  end
else
  begin
    if b<1 then
      begin
       MessageDlg('Hari tidak boleh kurang dari 1',mtError,[mbYes],1);
      end
    else
      begin
    if (edcariobat.Text='') or (eddosis.Text='') or (edhari.Text='') or (edjumlah.Text='') then
  begin
      ShowMessage('Masih ada Field Kosong');
  end
else
  begin
    if ((lblobattrans.Caption='Transaksi Data Baru') or (lblobattrans.Caption='Tidak Ada Transaksi')) then
      begin
        if cbtipepasien.Text='Degeneratif' then
          begin//Jika Tipe Pasien Degeneratif
                if jumlah > 3 then
                begin//Jika Jumlah lebih dari 4 tidak Boleh Tambah Lagi
                edcariobat.Clear;
memo1.Clear;
edk1.Clear;
edk2.Clear;
edk3.Clear;
edhari.Clear;
eddosis.Clear;

cbtipeobat.Text:='';
edcariobat.ReadOnly:=false;
   edcariobat.Clear;
   edcariobat.SetFocus;
   edk1.Clear;
   edk2.Clear;
   edk3.Clear;
   edharga.Clear;
   cbtipeobat.Text:='';
   cbtipeobat.Enabled:=false;
   eddosis.ReadOnly:=true;
   eddosis.Clear;
   edhari.ReadOnly:=true;
   edhari.Clear;
   edjumlah.ReadOnly:=true;
   edjumlah.Clear;
   lblobattrans.Caption:='Tidak Ada Transaksi';
    MessageDlg('Degeneratif tidak boleh lebih dari 4 Item',mtWarning,[mbOK],1);
end
                else //Jika Jumlah kurang dari 4
                 begin
                  if beli > batas then
                   begin
                     MessageDlg('Batas Pembelian Anda maksimalnya adalah '+IntToStr(batas),mtError,[mbOK],0);
                     edjumlah.SetFocus;
                     btnpilihobat.Enabled:=false;
                   end
                  else
                    begin
                    SimpanObat;
                    jumlah:=jumlah + 1;
                    lblobattrans.Caption:='Tidak Ada Transaksi';
                    lbljumlahobat.Caption:=IntToStr(jumlah);
                      end;//Akhir Jika Jumlah tidak Melebihi Batas
                 end;//Akhir Jika Jumlah kurang dari 4 item
               end
             else
              begin
                SimpanObat;
              end;

               end//Akhir Dari Jika Simpan Data
   else if lblobattrans.Caption='Edit Data Transaksi' then
    begin
          if beli > batas then
                   begin
                     MessageDlg('Batas Pembelian Anda maksimalnya adalah '+IntToStr(batas),mtError,[mbOK],0);
                     edjumlah.SetFocus;
                     btnpilihobat.Enabled:=false;
                end
                 else
                  begin
                    EditObat;
                    lblobattrans.Caption:='Tidak Ada Transaksi';
                    btnrefreshobatClick(Sender);
          end;//Akhir Jika Jumlah Tidak Melebihi Batas
        end
   else
    begin
      MessageDlg('Format Data Transaksi Salah',mtError,[mbOK],0);
    end;
end;
end;
end;
end;


procedure Tformpengobatan.dataClick(Sender: TObject);
var
  jumlah:integer;
begin
end;


procedure Tformpengobatan.btnrefreshobatClick(Sender: TObject);
begin
edcariobat.Clear;
memo1.Clear;
edk1.Clear;
edk2.Clear;
edk3.Clear;
edhari.Clear;
eddosis.Clear;

cbtipeobat.Text:='';
edcariobat.ReadOnly:=false;
   edcariobat.Clear;
   edcariobat.SetFocus;
   edk1.Clear;
   edk2.Clear;
   edk3.Clear;
   edharga.Clear;
   cbtipeobat.Text:='';
   cbtipeobat.Enabled:=false;
   eddosis.ReadOnly:=true;
   eddosis.Clear;
   edhari.ReadOnly:=true;
   edhari.Clear;
   edjumlah.ReadOnly:=true;
   edjumlah.Clear;
   lblobattrans.Caption:='Tidak Ada Transaksi';




end;

procedure Tformpengobatan.btnsimpanClick(Sender: TObject);
begin
if (lblnotrans.Caption='00') or (txtinduk.Text='') or (txtnama.Text='') then
begin
  MessageDlg('Silahkan Pilih Dulu Record Pengobatan',mtError,mbOKCancel,1);
end
else
begin
adorecord.Active:=true;
adorecord.Locate('No',lblnotrans.Caption,[]);
adorecord.Edit;
adorecord.FieldByName('Anamesa_terimpin').AsString:=memterimpin.Text;
adorecord.FieldByName('Pemeriksaan_Fisik').AsString:=mempemfis.Text;
adorecord.FieldByName('Pemeriksaan_Penunjang').AsString:=memo4.Text;
adorecord.FieldByName('Diagnosa').AsString:=memdiag.Text;
adorecord.FieldByName('Tipe_Penyakit').AsString:=cbtipepasien.Text;
adorecord.FieldByName('Diperiksa').AsString:='Sudah';
adorecord.Post;

if MessageDlg('Silahkan Masukkan Obat yang ingin dibeli ?',mtConfirmation,[mbyes,mbno],1)=mryes
  then
    begin//Jika Pasien ingin membeli obat
        qdatasource.Active:=true;
        qdatasource.Close;
        qdatasource.SQL.Clear;
        qdatasource.SQL.Add('SELECT master_record_berobat.[No], master_record_berobat.Nomor_induk, master_record_berobat.Nama_Pasien, master_record_berobat.Keluhan, master_record_berobat.Anamesa_terimpin,');
        qdatasource.SQL.Add('master_record_berobat.Pemeriksaan_fisik, master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.diagnosa, master_record_berobat.Tanggal_Berobat, master_record_berobat.Obat,');
        qdatasource.SQL.Add('master_record_berobat.No_Keluarga, master_record_berobat.Diperiksa, master_record_berobat.Tipe_Penyakit');
         qdatasource.SQL.Add('FROM MASTER_PEGAWAI INNER JOIN master_record_berobat ON MASTER_PEGAWAI.Nomor_induk = master_record_berobat.Nomor_induk WHERE master_record_berobat.Tanggal_Berobat=:tgl1');
        qdatasource.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
        qdatasource.ExecSQL;
        qdatasource.Open;
        btnsimpan.Enabled:=false;
        memkel.Enabled:=false;
        mempemfis.Enabled:=false;
        memterimpin.Enabled:=false;
        Memo4.Enabled:=false;
        memdiag.Enabled:=false;
        GroupBox2.Enabled:=true;
        edcariobat.SetFocus;
         dbgridpegawai.Enabled:=false;
        dbgridpegawai.Visible:=false;
   dbgridpegawai.Visible:=true;
   edcariobat.ReadOnly:=false;
   edcariobat.Clear;
   edcariobat.SetFocus;
   edk1.Clear;
   edk2.Clear;
   edk3.Clear;
   edharga.Clear;
   cbtipeobat.Text:='';
   cbtipeobat.Enabled:=false;
   eddosis.ReadOnly:=true;
   eddosis.Clear;
   edhari.ReadOnly:=true;
   edhari.Clear;
   edjumlah.ReadOnly:=true;
   edjumlah.Clear;
   cbtipepasien.Enabled:=false;
   lblobattrans.Caption:='Tidak Ada Transaksi';

    end
  else
begin
        qdatasource.Active:=true;
        qdatasource.Close;
        qdatasource.SQL.Clear;
        qdatasource.SQL.Add('SELECT master_record_berobat.[No], master_record_berobat.Nomor_induk, master_record_berobat.Nama_Pasien, master_record_berobat.Keluhan, master_record_berobat.Anamesa_terimpin,');
        qdatasource.SQL.Add('master_record_berobat.Pemeriksaan_fisik, master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.diagnosa, master_record_berobat.Tanggal_Berobat, master_record_berobat.Obat,');
        qdatasource.SQL.Add('master_record_berobat.No_Keluarga, master_record_berobat.Diperiksa, master_record_berobat.Tipe_Penyakit');
         qdatasource.SQL.Add('FROM MASTER_PEGAWAI INNER JOIN master_record_berobat ON MASTER_PEGAWAI.Nomor_induk = master_record_berobat.Nomor_induk WHERE master_record_berobat.Tanggal_Berobat=:tgl1');
        qdatasource.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
        qdatasource.ExecSQL;
   lblnotrans.Caption:='00';
   txtinduk.Clear;
   txtnama.Clear;
   GroupBox2.Enabled:=false;
   cbtipepasien.Text:='';
   cbtipeobat.Text:='';
   mempemfis.Clear;
   Memo4.Clear;
   memterimpin.Clear;
   memkel.Clear;
   memdiag.Clear;
   memkel.Enabled:=false;
   mempemfis.Enabled:=false;
   memterimpin.Enabled:=false;
   Memo4.Enabled:=false;
   memdiag.Enabled:=false;
   qdatasource.Active:=true;
   qdatasource.Close;
     dbgridpegawai.Enabled:=true;
     dbgridpegawai.Visible:=false;
     dbgridpegawai.Visible:=true;
   MessageDlg('Data Anda Tersimpan Di Data Transaksi',mtInformation,[mbOK],0);
   edcariobat.Clear;
//   edcariobat.SetFocus;
   edk1.Clear;
   edk2.Clear;
   edk3.Clear;
   edharga.Clear;
   cbtipeobat.Text:='';
   cbtipeobat.Enabled:=false;
   eddosis.ReadOnly:=true;
   eddosis.Clear;
   edhari.ReadOnly:=true;
   edhari.Clear;
   edjumlah.ReadOnly:=true;
   edjumlah.Clear;
   lblobattrans.Caption:='Tidak Ada Transaksi';

    end;//Akihr dari Jika Tidak Membeli Obat
end;
end;//Akhir dari Procedue

procedure Tformpengobatan.Button3Click(Sender: TObject);
begin
ShowMessage(Memo4.Text);
end;

procedure Tformpengobatan.kuncilagiPegawai;
begin
  txtinduk.Clear;
  txtnama.Clear;

  memkel.Clear;
  memterimpin.Clear;
  mempemfis.Clear;
  Memo4.Clear;
  memdiag.Clear;
  txtnama.Enabled:=false;

  memkel.Enabled:=false;
  memterimpin.Enabled:=false;
  mempemfis.Enabled:=false;
  Memo4.Enabled:=false;
  memdiag.Enabled:=false;
  ShowMessage('Data Di Refresh');
  lbltransaksi.Caption:='Tidak Ada Transaksi';
  lblstatus.Caption:='Ready';
end;

procedure Tformpengobatan.NIPadaPegawai;
begin
  txtnama.Enabled:=true;

  memkel.Enabled:=true;
  memterimpin.Enabled:=true;
  mempemfis.Enabled:=true;
  Memo4.Enabled:=true;
  memdiag.Enabled:=true;
  memkel.SetFocus;
  lbltransaksi.Caption:='Transaksi Berobat Pegawai';
  lblstatus.Caption:='Working';
  edcariobat.Text:='';
  Memo1.Clear;
  edk1.Clear;
  edk2.Clear;
  edk3.Clear;
end;

procedure Tformpengobatan.SimpanTransaksiPegawai;
begin
  adorecordobat.Append;
  adorecordobat.FieldByName('Nomor_Induk').AsString:=txtinduk.Text;
  adorecordobat.FieldByName('Nama_Pasien').AsString:=txtnama.Text;
  adorecordobat.FieldByName('Keluhan').AsString:=memkel.Text;
  adorecordobat.FieldByName('Anamesa_terimpin').AsString:=memterimpin.Text;
  adorecordobat.FieldByName('Pemeriksaan_Fisik').AsString:=mempemfis.Text;
  adorecordobat.FieldByName('Pemeriksaan_Penunjang').AsString:=Memo4.Text;
  adorecordobat.FieldByName('Diagnosa').AsString:=memdiag.Text;
  adorecordobat.FieldByName('Tipe_Pasien').AsString:=cbtipepasien.Text;
  adorecordobat.FieldByName('Tipe_Obat').AsString:=cbtipeobat.Text;
  adorecordobat.FieldByName('Tanggal_Berobat').AsString:=FormatDateTime('mm/dd/yyyy',now);
  adorecordobat.FieldByName('kode_status').AsString:=lblkodestatus.Caption;

  adorecordobat.Post;
  adorecordobat.Last;
end;

procedure Tformpengobatan.kuncilagi;
begin

end;

procedure Tformpengobatan.NIPada;
begin

end;

procedure Tformpengobatan.SimpanTransaksiPegawaa;
begin

end;

procedure Tformpengobatan.cbtipepasienChange(Sender: TObject);
begin
  btnsimpan.Enabled:=true;
  MessageDlg('Silahkan Klik Tombol Simpan Untuk menyimpan Data Baru',mtInformation,[mbOK],0);
end;

procedure Tformpengobatan.Button2Click(Sender: TObject);
begin
qdataobat.Close;
qdataobat.SQL.Clear;
qdataobat.SQL.Add('SELECT * FROM master_beli_obat WHERE No =:no ORDER BY No ASC');
qdataobat.Parameters.ParamByName('no').Value:='15';
qdataobat.Open;
end;

procedure Tformpengobatan.HapusObatIni1Click(Sender: TObject);
begin
qdataobat.Delete;
end;

procedure Tformpengobatan.btncanceltranpegClick(Sender: TObject);
begin
  qdatasource.Active:=true;
qdatasource.Close;
qdatasource.SQL.Clear;
     qdatasource.SQL.Add('SELECT master_record_berobat.[No], master_record_berobat.Nomor_induk, master_record_berobat.Nama_Pasien, master_record_berobat.Keluhan, master_record_berobat.Anamesa_terimpin,');
        qdatasource.SQL.Add('master_record_berobat.Pemeriksaan_fisik, master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.diagnosa, master_record_berobat.Tanggal_Berobat, master_record_berobat.Obat,');
        qdatasource.SQL.Add('master_record_berobat.No_Keluarga, master_record_berobat.Diperiksa, master_record_berobat.Tipe_Penyakit');
         qdatasource.SQL.Add('FROM MASTER_PEGAWAI INNER JOIN master_record_berobat ON MASTER_PEGAWAI.Nomor_induk = master_record_berobat.Nomor_induk WHERE master_record_berobat.Tanggal_Berobat=:tgl1');
         qdatasource.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
qdatasource.ExecSQL;
qdatasource.Open;
dbgridpegawai.Enabled:=true;
txtinduk.Clear;
lblnotrans.Caption:='00';
txtnama.Clear;
memkel.Clear;
mempemfis.Clear;
memterimpin.Clear;
Memo4.Clear;
memdiag.Clear;
cbtipepasien.Text:='';
cbtipeobat.Text:='';
//
mempemfis.Enabled:=false;
memterimpin.Enabled:=false;
Memo4.Enabled:=false;
memdiag.Enabled:=false;
cbtipepasien.Enabled:=false;
cbtipeobat.Enabled:=false;
queryobat.Active:=false;
end;

procedure Tformpengobatan.gruppilClick(Sender: TObject);
begin
  if lblstatus.Caption='Working' then
    begin
      ShowMessage('Tidak Dapat memilih sebelum menyelesaikan transaksi');
    end;

end;

procedure Tformpengobatan.btnselpegClick(Sender: TObject);
begin
          if MessageDlg('Apakah Anda Ingin Menyeleasaikan Transaksi Kali Ini ?',mtConfirmation,[mbYes,mbNo],1)=mryes
            then
              begin
                    dbgridpegawai.Visible:=false;
                   dbgridpegawai.Enabled:=true;
                   dbgridpegawai.Visible:=true;

                    lblstatus.Caption:='Ready';
                    lbltransaksi.Caption:='Tidak Ada Transaksi';
                    txtinduk.Enabled:=true;
                    Memo1.Clear;
                    txtinduk.SetFocus;
                    //
                    txtinduk.Clear;
                    txtnama.Clear;
                    mempemfis.Clear;
                    memterimpin.Clear;
                    memkel.Clear;
                    Memo4.Clear;
                    memdiag.Clear;
                    cbtipeobat.Text:='';
                    cbtipepasien.Text:='';
                    lblnotrans.Caption:='00';
                    //
                    edcariobat.Clear;
                    eddosis.Clear;
                    edhari.Clear;

                    cbtipepasien.Text:='';
                    cbtipeobat.Text:='';
                    GroupBox2.Enabled:=false;
                    btnsimpan.Enabled:=false;
                    lbljumlah.Caption:='0';
                    cbtipepasien.Text:='';
                    btncanceltranpeg.Enabled:=true;
                    btnsimpan.Enabled:=true;
                      qdatasource.Active:=true;
        qdatasource.Active:=true;
        qdatasource.Close;
        qdatasource.SQL.Clear;
        qdatasource.SQL.Add('SELECT master_record_berobat.[No], master_record_berobat.Nomor_induk, master_record_berobat.Nama_Pasien, master_record_berobat.Keluhan, master_record_berobat.Anamesa_terimpin,');
        qdatasource.SQL.Add('master_record_berobat.Pemeriksaan_fisik, master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.diagnosa, master_record_berobat.Tanggal_Berobat, master_record_berobat.Obat,');
        qdatasource.SQL.Add('master_record_berobat.No_Keluarga, master_record_berobat.Diperiksa, master_record_berobat.Tipe_Penyakit');
         qdatasource.SQL.Add('FROM MASTER_PEGAWAI INNER JOIN master_record_berobat ON MASTER_PEGAWAI.Nomor_induk = master_record_berobat.Nomor_induk WHERE master_record_berobat.Tanggal_Berobat=:tgl1');
        qdatasource.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
        qdatasource.ExecSQL;
        qdatasource.Open;
   edcariobat.Clear;
   edk1.Clear;
   edk2.Clear;
   edk3.Clear;
   edharga.Clear;
   cbtipeobat.Text:='';
   cbtipeobat.Enabled:=false;
   eddosis.ReadOnly:=true;
   eddosis.Clear;
   edhari.ReadOnly:=true;
   edhari.Clear;

   edjumlah.ReadOnly:=true;
   edjumlah.Clear;
   lblnotrans.Caption:='00';
   notrans.Caption:='00';
   lblobattrans.Caption:='Tidak Ada Transaksi';
   queryobat.Active:=true;
   queryobat.Close;
   queryobat.SQL.Clear;
   queryobat.SQL.Add('SELECT * FROM Query_Record_Berobat where No=0');
   queryobat.ExecSQL;
   queryobat.Open;
              end
            else
          begin
              ShowMessage('Anda Masih Dalam Proses Transaksi');
            end;

end;

procedure Tformpengobatan.KeluarA1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tformpengobatan.edhariKeyPress(Sender: TObject; var Key: Char);
var
  a,angka:integer;
begin
if not (key=chr(13)) then exit;
if (key in['0'..'9',#8,#13,#32]) then //Validasi Angka
 begin
 a:=StrToInt(edhari.Text);
 if a<1 then
  begin
    MessageDlg('Hari Tidak Boleh kurang dari 1',mtError,[mbYes],1);
  end
  else
  begin
  angka:=StrToInt(edhari.Text);
    if cbtipepasien.Text='Degeneratif' then
      begin //Jika Degeneratif maka boleh lebih dari 5 hari
        angka:=StrToInt(edhari.Text);
          if angka > 5 then
            begin
              ShowMessage('Degeneratif tidak boleh lebih dari 5 hari');
              edhari.SetFocus;
            end
          else
            begin
             edjumlah.ReadOnly:=false;
             edjumlah.SetFocus;
            end;//
        end
      else
        begin
          edjumlah.ReadOnly:=false;
          edjumlah.SetFocus;
        end;///
     end;

    end
else
  begin//Jika Selain Dari Huruf


    showmessage('Hari Harus Berupa angka');
  end;

end;

procedure Tformpengobatan.edhariChange(Sender: TObject);
var
  angka:integer;
begin
if cbtipepasien.Text='NonDegeneratif' then
      begin //Jika Non Generic maka
        angka:=StrToInt(edhari.Text);
          if angka > 5 then
            begin

              ShowMessage('NonGeneric tidak boleh lebih dari 5');
              edhari.SetFocus;
            end
          else
            begin
            end;//
end
  else
    begin
      end;
end;
procedure Tformpengobatan.edcariobatKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
if dbgridobat.Visible=true then
  begin
   edcariobat.Text:=querynamaobat.FieldByName('Nama_Brand').AsString;
dbgridobat.Visible:=false;
end
else
begin
btncarinamaobatClick(Sender);
end;
end;

procedure Tformpengobatan.RefreshData1Click(Sender: TObject);
begin

   lblnotrans.Caption:='00';
txtinduk.Clear;
txtnama.Clear;
memkel.Clear;
memterimpin.Clear;
mempemfis.Clear;
Memo4.Clear;
memdiag.Clear;
cbtipeobat.Text:='';
cbtipepasien.Text:='';
btnsimpan.Enabled:=false;
mempemfis.Enabled:=false;
memterimpin.Enabled:=false;
memkel.Enabled:=false;
Memo4.Enabled:=false;
memdiag.Enabled:=false;
txtinduk.Enabled:=true;
txtinduk.SetFocus;
txtinduk.Clear;
lblnotrans.Caption:='00';
                    //
edcariobat.Clear;
eddosis.Clear;
edhari.Clear;
cbtipepasien.Text:='';
cbtipeobat.Text:='';
GroupBox2.Enabled:=false;
btnsimpan.Enabled:=false;
lbljumlah.Caption:='0';
cbtipepasien.Text:='';
btncanceltranpeg.Enabled:=true;
btnsimpan.Enabled:=false;
dbgridpegawai.Visible:=false;
                   dbgridpegawai.Enabled:=true;
                   dbgridpegawai.Visible:=true;

                    lblstatus.Caption:='Ready';
                    lbltransaksi.Caption:='Tidak Ada Transaksi';
                    txtinduk.Enabled:=true;

                    txtinduk.SetFocus;
                    //
                    txtinduk.Clear;
                    txtnama.Clear;
                    mempemfis.Clear;
                    memterimpin.Clear;
                    memkel.Clear;
                    Memo4.Clear;
                    memdiag.Clear;
                    cbtipeobat.Text:='';
                    cbtipepasien.Text:='';
                    lblnotrans.Caption:='00';
                    //
                    edcariobat.Clear;
                    eddosis.Clear;
                    edhari.Clear;

                    cbtipepasien.Text:='';
                    cbtipeobat.Text:='';
                    GroupBox2.Enabled:=false;
                    btnsimpan.Enabled:=false;
                    lbljumlah.Caption:='0';
                    cbtipepasien.Text:='';
                    btncanceltranpeg.Enabled:=true;
                    btnsimpan.Enabled:=true;
                      qdatasource.Active:=true;
  qdatasource.Active:=true;
        qdatasource.Close;
        qdatasource.SQL.Clear;
        qdatasource.SQL.Add('SELECT master_record_berobat.[No], master_record_berobat.Nomor_induk, master_record_berobat.Nama_Pasien, master_record_berobat.Keluhan, master_record_berobat.Anamesa_terimpin,');
        qdatasource.SQL.Add('master_record_berobat.Pemeriksaan_fisik, master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.diagnosa, master_record_berobat.Tanggal_Berobat, master_record_berobat.Tipe_Pasien,');
        qdatasource.SQL.Add('master_record_berobat.Obat, master_record_berobat.No_Keluarga, master_record_berobat.Kode_status, master_record_berobat.Diperiksa');
         qdatasource.SQL.Add('FROM MASTER_PEGAWAI INNER JOIN master_record_berobat ON MASTER_PEGAWAI.Nomor_induk = master_record_berobat.Nomor_induk WHERE master_record_berobat.Tanggal_Berobat=:tgl1');
        qdatasource.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
        qdatasource.ExecSQL;
        qdatasource.Open;
   edcariobat.Clear;
   edk1.Clear;
   edk2.Clear;
   edk3.Clear;
   edharga.Clear;
   cbtipeobat.Text:='';
   cbtipeobat.Enabled:=false;
   eddosis.ReadOnly:=true;
   eddosis.Clear;
   edhari.ReadOnly:=true;
   edhari.Clear;
   edjumlah.ReadOnly:=true;
   edjumlah.Clear;

   lblobattrans.Caption:='Tidak Ada Transaksi';
   queryobat.Active:=true;
   queryobat.Close;
   queryobat.SQL.Clear;
   queryobat.SQL.Add('SELECT * FROM Query_Record_Berobat where No=0');
   queryobat.ExecSQL;
   queryobat.Open;

end;

procedure Tformpengobatan.eddosisKeyPress(Sender: TObject; var Key: Char);
var
  a:integer;
begin
if not (key=chr(13)) then exit;
  a:=StrToInt(eddosis.Text);
  if a<1 then
  begin
    MessageDlg('Dosis Tidak Boleh kurang dari 1',mtError,[mbYes],1);
  end
  else
  begin
  edhari.ReadOnly:=false;
  edhari.SetFocus;
  end;
end;




procedure Tformpengobatan.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;

end;

procedure Tformpengobatan.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;

end;




procedure Tformpengobatan.ComboBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;

end;


procedure Tformpengobatan.KembaliKeMenuAwal1Click(Sender: TObject);
begin
TutupKoneksi;
lblnotrans.Caption:='00';
txtinduk.Clear;
txtnama.Clear;
memkel.Clear;
memterimpin.Clear;
mempemfis.Clear;
Memo4.Clear;
memdiag.Clear;
cbtipeobat.Text:='';
cbtipepasien.Text:='';
btnsimpan.Enabled:=false;
mempemfis.Enabled:=false;
memterimpin.Enabled:=false;
memkel.Enabled:=false;
Memo4.Enabled:=false;
memdiag.Enabled:=false;
txtinduk.Enabled:=true;
txtinduk.SetFocus;
txtinduk.Clear;
lblnotrans.Caption:='00';
                    //
edcariobat.Clear;
eddosis.Clear;
edhari.Clear;

cbtipepasien.Text:='';
cbtipeobat.Text:='';
GroupBox2.Enabled:=false;
btnsimpan.Enabled:=false;
lbljumlah.Caption:='0';
cbtipepasien.Text:='';
btncanceltranpeg.Enabled:=true;
btnsimpan.Enabled:=false;
formawaldokter.Show;
formpengobatan.Hide;

end;

procedure Tformpengobatan.cbsendokKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
 edjumlah.ReadOnly:=false;
 edjumlah.SetFocus;
end;

procedure Tformpengobatan.BerobatPegawai1Click(Sender: TObject);
begin
formlihatberobatpegawai.Show;
formpengobatan.Hide;
end;

procedure Tformpengobatan.BerobatKeluarga1Click(Sender: TObject);
begin
formlihatberobatkeluarga.Show;
formpengobatan.Hide;
end;

procedure Tformpengobatan.dbgridpegawaiCellClick(Column: TColumn);
var
  a,hari,bulan,tahun:string;
  umur, tl, ts: Integer;
begin
if MessageDlg('Apakah anda memilih record ini ?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
            lblnotrans.Caption:=qdatasource.FieldByName('No').AsString;
            notrans.Caption:=qdatasource.FieldByName('No').AsString;
            txtinduk.Text:=qdatasource.FieldByName('Nomor_Induk').AsString;
            txtnama.Text:=qdatasource.FieldByName('Nama_Pasien').AsString;
            memkel.Text:=qdatasource.FieldByName('Keluhan').AsString;
            memterimpin.Text:=qdatasource.FieldByName('Anamesa_terimpin').AsString;
            mempemfis.Text:=qdatasource.FieldByName('Pemeriksaan_Fisik').AsString;
            memo4.Text:=qdatasource.FieldByName('Pemeriksaan_Penunjang').AsString;
            memdiag.Text:=qdatasource.FieldByName('Diagnosa').AsString;
            cbtipepasien.Text:=qdatasource.FieldByName('Tipe_Penyakit').AsString;
            tabelkeluarga.Active:=true;
            tabelkeluarga.Locate('No_Keluarga',qdatasource.fieldByName('No_Keluarga').AsString,[]);
            DateTimePicker2.Date:=StrToDate(tabelkeluarga.fieldByName('tanggal_kahir').AsString);
            tabelkeluarga.Active:=true;

            if qdatasource.FieldByName('No_Keluarga').AsString='0' then
             begin
             end
             else
              begin
                tl := Yearof(Now);
                  ts := YearOf(DateTimePicker2.Date);
                  umur := tl -ts;
                  lblumur.Caption:= IntToStr(umur)
              end;
              tabelpegawai.active:=true;
            if tabelpegawai.Locate('Nomor_Induk',txtinduk.Text,[]) then
              begin
                lblnapeg.Caption:=tabelpegawai.FieldByName('Nama_Pegawai').AsString;
              end;

            if qdatasource.FieldByName('Nomor_Induk').AsString='' then
              begin
                MessageDlg('Medical Record mengalami kekurangan Data Berupa (Nomor Induk) segera hubungi admin untuk record ulang',mtError,[mbYes],1);
                lblnoinduk.Caption:='0';
              end
              else
                begin
                  lblnoinduk.Caption:=qdatasource.FieldByName('Nomor_Induk').AsString;
                end;
            lblkeluarga.Caption:=qdatasource.FieldByName('No_Keluarga').AsString;
            dbgridpegawai.Enabled:=false;
            cbtipepasien.Enabled:=true;
            cbtipeobat.Enabled:=true;
            mempemfis.Enabled:=true;
            memterimpin.Enabled:=true;
            memkel.Enabled:=true;
            Memo4.Enabled:=true;
            memdiag.Enabled:=true;
            memterimpin.SetFocus;
            adorecord.Active:=true;
            adorecord.Locate('No',lblnotrans.Caption,[]);
            queryhitungobat.Active:=true;
            queryhitungobat.Close;
            queryhitungobat.SQL.Clear;
            queryhitungobat.SQL.Add('SELECT * FROM Query_Jumlah_Beli_Tipe');
            queryhitungobat.ExecSQL;
            queryhitungobat.Open;
            if queryhitungobat.Locate('No',lblnotrans.Caption,[]) then
              begin
                if queryhitungobat.FieldByName('Jumlah_transaksi').AsString='' then
                  begin
                    lbljumlahobat.Caption:='0';
                  end
                    else
                      begin
                        lbljumlahobat.Caption:=queryhitungobat.FieldByName('Jumlah_Transaksi').AsString;
                  end;
                end
                else
                  begin
                    lbljumlahobat.Caption:='0';
                  end;
                queryobat.Active:=true;
queryobat.Active:=true;
             queryobat.Close;
             queryobat.SQL.Clear;
             queryobat.SQL.Add('SELECT master_beli_obat.[No], master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, master_beli_obat.id, master_beli_obat.Sendok, master_beli_obat.Hari, master_beli_obat.Dosis, master_beli_obat.Tipe_Obat,');
             queryobat.SQL.Add('master_beli_obat.Jumlah_Beli');
             queryobat.SQL.Add('FROM master_record_berobat INNER JOIN master_beli_obat ON master_record_berobat.[No] = master_beli_obat.[No] where master_beli_obat.[No]='+lblnotrans.Caption);
             queryobat.ExecSQL;
             queryobat.Open;
             cbtipepasien.Enabled:=true;
         end
        else
      begin
         MessageDlg('Anda Membatalkan Pilihan Transaksi',mtInformation,[mbYes],1);
      end;//Akihr dari Jika Tidak Membeli Obat
end;

procedure Tformpengobatan.RadioButton2Click(Sender: TObject);
begin
 qdatasource.Active:=true;
 qdatasource.Close;
 qdatasource.SQL.Clear;
 qdatasource.SQL.Add('SELECT * FROM Master_record_Berobat');
 qdatasource.ExecSQL;
 qdatasource.Open;
end;

procedure Tformpengobatan.HapusDariDataPembelian1Click(Sender: TObject);
var
  data:string;
begin
queryobat.Active:=true;
adobeliobat.Active:=true;
data:=queryobat.FieldByName('Id').AsString;
if adobeliobat.Locate('Id',data,[])then
   begin
   if MessageDlg('Apakah Obat ini ingin Dihapus Dari Data Pembelian ?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
           adobeliobat.Delete;
    queryobat.Active:=true;
    queryobat.Close;
    queryobat.SQL.Clear;
    queryobat.SQL.Add('SELECT master_beli_obat.[No], master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, master_beli_obat.id');
    queryobat.SQL.Add('FROM master_record_berobat INNER JOIN master_beli_obat ON master_record_berobat.[No] = master_beli_obat.[No]  where master_beli_obat.[No]='+lblnotrans.Caption);
    queryobat.ExecSQL;
    queryobat.Open;
    MessageDlg('Obat Sudah dihapus dari Data Pembelian',mtInformation,[mbOK],0);
         end
        else
      begin
      MessageDlg('Tidak Jadi menghapus obat',mtInformation,[mbOK],0);
      end;
    end
else
  begin
    MessageDlg('Obat tidak Ditemukan Dalam Daftar Obat!',mtError,[mbok],0);
  end;
end;

procedure Tformpengobatan.SelesaiTransaksi1Click(Sender: TObject);
begin
lblnotrans.Caption:='00';
txtinduk.Clear;
txtnama.Clear;
memkel.Clear;
memterimpin.Clear;
mempemfis.Clear;
Memo4.Clear;
memdiag.Clear;
cbtipeobat.Text:='';
cbtipepasien.Text:='';
btnsimpan.Enabled:=false;
mempemfis.Enabled:=false;
memterimpin.Enabled:=false;
memkel.Enabled:=false;
Memo4.Enabled:=false;
memdiag.Enabled:=false;
txtinduk.Enabled:=true;
txtinduk.SetFocus;
txtinduk.Clear;
lblnotrans.Caption:='00';
                    //
edcariobat.Clear;
eddosis.Clear;
edhari.Clear;

cbtipepasien.Text:='';
cbtipeobat.Text:='';
GroupBox2.Enabled:=false;
btnsimpan.Enabled:=false;
lbljumlah.Caption:='0';
cbtipepasien.Text:='';
btncanceltranpeg.Enabled:=true;
btnsimpan.Enabled:=false;
end;

procedure Tformpengobatan.SimpanObat;
begin
adobeliobat.Append;
adobeliobat.FieldByName('No').AsString:=lblnotrans.Caption;
adobeliobat.FieldByName('Nama_Obat').AsString:=edcariobat.Text;
adobeliobat.FieldByName('Dosis_Obat').AsString:=eddosis.Text+' x '+edhari.Text+' '+' Hari';
adobeliobat.FieldByName('Sendok').AsString:=eddosis.Text;
adobeliobat.FieldByName('Hari').AsString:=edhari.Text;
adobeliobat.FieldByName('Tipe_Obat').AsString:=cbtipeobat.Text;
adobeliobat.FieldByName('Jumlah_Beli').AsString:=edjumlah.Text;
adobeliobat.FieldByName('Nomor_Induk').AsString:=lblnoinduk.Caption;
adobeliobat.FieldByName('No_Keluarga').AsString:=lblkeluarga.Caption;
adobeliobat.Post;
RefreshObatdata;
edcariobat.ReadOnly:=false;
   edcariobat.Clear;
   edcariobat.SetFocus;
   edk1.Clear;
   edk2.Clear;
   edk3.Clear;
   edharga.Clear;
   cbtipeobat.Text:='';
   cbtipeobat.Enabled:=false;
   eddosis.ReadOnly:=true;
   eddosis.Clear;
   edhari.ReadOnly:=true;
   edhari.Clear;
   edjumlah.ReadOnly:=true;
   edjumlah.Clear;
   Memo1.Clear;
   lblobattrans.Caption:='Tidak Ada Transaksi';
MessageDlg('Data pembelian Obat berhasil masuk!',mtInformation,[mbok],0);
end;

procedure Tformpengobatan.EditObat;
begin
adobeliobat.Locate('Id',lblnoobat.Caption,[]);
adobeliobat.Edit;
adobeliobat.FieldByName('No').AsString:=lblnotrans.Caption;
adobeliobat.FieldByName('Nama_Obat').AsString:=edcariobat.Text;
adobeliobat.FieldByName('Dosis_Obat').AsString:=eddosis.Text+' x '+edhari.Text+' '+' Hari';
adobeliobat.FieldByName('Sendok').AsString:=eddosis.Text;
adobeliobat.FieldByName('Hari').AsString:=edhari.Text;
adobeliobat.FieldByName('Tipe_Obat').AsString:=cbtipeobat.Text;
adobeliobat.FieldByName('Jumlah_Beli').AsString:=edjumlah.Text;
adobeliobat.FieldByName('Nomor_Induk').AsString:=lblnoinduk.Caption;
adobeliobat.FieldByName('No_Keluarga').AsString:=lblkeluarga.Caption;
adobeliobat.Post;
RefreshObatdata;
//
edcariobat.ReadOnly:=false;
   edcariobat.Clear;
   edcariobat.SetFocus;
   edk1.Clear;
   edk2.Clear;
   edk3.Clear;
   edharga.Clear;
   cbtipeobat.Text:='';
   cbtipeobat.Enabled:=false;
   eddosis.ReadOnly:=true;
   eddosis.Clear;
   edhari.ReadOnly:=true;
   edhari.Clear;
   edjumlah.ReadOnly:=true;
   edjumlah.Clear;
   Memo1.Clear;
   lblobattrans.Caption:='Tidak Ada Transaksi';
   MessageDlg('Pengeditan Obat Berhasil',mtInformation,[mbOK],1);
end;

procedure Tformpengobatan.edjumlahKeyPress(Sender: TObject; var Key: Char);
var
  total,batas,jumlah,dosis,hari:integer;

begin
if not (key=chr(13)) then exit;
  jumlah:=StrToInt(edjumlah.Text);
  dosis:=StrToInt(eddosis.Text);
  hari:=StrToInt(edhari.Text);
batas:=dosis * 5;
if cbtipepasien.Text='Degeneratif' then
 begin
    if jumlah > batas then
      begin
       MessageDlg('Batas Pembelian Anda maksimal '+IntToStr(batas),mtError,[mbOK],0);
       edjumlah.SetFocus;
       btnpilihobat.Enabled:=false;
    end
      else
        begin
         MessageDlg('Silahkan Klik Tombol Pilih Obat Untuk Menyimpan',mtInformation,[mbOK],0);
         btnpilihobat.Enabled:=true;
         end;
    end
else
  begin
  MessageDlg('Silahkan Klik Tombol Pilih Obat Untuk Menyimpan',mtInformation,[mbOK],0);
  btnpilihobat.Enabled:=true;
  end;



end;

procedure Tformpengobatan.cbtipeobatChange(Sender: TObject);
begin
eddosis.ReadOnly:=false;
eddosis.SetFocus;
end;

procedure Tformpengobatan.RadioButton1Click(Sender: TObject);
begin
    qdatasource.Active:=true;
        qdatasource.Close;
        qdatasource.SQL.Clear;
        qdatasource.SQL.Add('SELECT master_record_berobat.[No], master_record_berobat.Nomor_induk, master_record_berobat.Nama_Pasien, master_record_berobat.Keluhan, master_record_berobat.Anamesa_terimpin,');
        qdatasource.SQL.Add('master_record_berobat.Pemeriksaan_fisik, master_record_berobat.Pemeriksaan_penunjang, master_record_berobat.diagnosa, master_record_berobat.Tanggal_Berobat, master_record_berobat.Obat,');
        qdatasource.SQL.Add('master_record_berobat.No_Keluarga, master_record_berobat.Diperiksa, master_record_berobat.Tipe_Penyakit');
         qdatasource.SQL.Add('FROM MASTER_PEGAWAI INNER JOIN master_record_berobat ON MASTER_PEGAWAI.Nomor_induk = master_record_berobat.Nomor_induk WHERE master_record_berobat.Tanggal_Berobat=:tgl1');
        qdatasource.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
        qdatasource.ExecSQL;
        qdatasource.Open;

end;

function SelisihTanggal(TglOld,TglNew: TDate): Integer;
begin
  Result:= Trunc(TglNew - TglOld);
end;

procedure Tformpengobatan.FormCreate(Sender: TObject);
begin
DateTimePicker1.Date:=StrToDate(FormatDateTime('mm/dd/yyyy',now));
RadioButton1Click(Sender);
RadioButton1.Checked:=True;
end;

procedure Tformpengobatan.RefreshObat;
begin
    queryobat.Active:=true;
             queryobat.Close;
             queryobat.SQL.Clear;
             queryobat.SQL.Add('SELECT master_beli_obat.[No], master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, master_beli_obat.id, master_beli_obat.Sendok, master_beli_obat.Hari, master_beli_obat.Dosis, master_beli_obat.Tipe_Obat,');
             queryobat.SQL.Add('master_beli_obat.Jumlah_Beli');
             queryobat.SQL.Add('FROM master_record_berobat INNER JOIN master_beli_obat ON master_record_berobat.[No] = master_beli_obat.[No] where master_beli_obat.[No]='+lblnotrans.Caption);
             queryobat.ExecSQL;
             queryobat.Open;
end;
 procedure Tformpengobatan.RefreshObatdata;
 begin
 queryobat.Active:=true;
 queryobat.Close;
 queryobat.SQL.Clear;
 queryobat.SQL.Add('SELECT master_beli_obat.[No], master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, master_beli_obat.id, master_beli_obat.Sendok, master_beli_obat.Hari, master_beli_obat.Dosis, master_beli_obat.Tipe_Obat,');
 queryobat.SQL.Add('master_beli_obat.Jumlah_Beli');
 queryobat.SQL.Add('FROM master_record_berobat INNER JOIN master_beli_obat ON master_record_berobat.[No] = master_beli_obat.[No] where master_beli_obat.[No]='+lblnotrans.Caption);
 queryobat.ExecSQL;
 queryobat.Open;
 end;
procedure Tformpengobatan.dbgridpegawaiKeyPress(Sender: TObject;
  var Key: Char);
begin
if MessageDlg('Apakah anda memilih record ini ?',mtConfirmation,[mbYes,mbNo],1)=mryes
        then
          begin
            lblnotrans.Caption:=qdatasource.FieldByName('No').AsString;
            notrans.Caption:=qdatasource.FieldByName('No').AsString;
            txtinduk.Text:=qdatasource.FieldByName('Nomor_Induk').AsString;
            txtnama.Text:=qdatasource.FieldByName('Nama_Pasien').AsString;
            memkel.Text:=qdatasource.FieldByName('Keluhan').AsString;
            memterimpin.Text:=qdatasource.FieldByName('Anamesa_terimpin').AsString;
            mempemfis.Text:=qdatasource.FieldByName('Pemeriksaan_Fisik').AsString;
            memo4.Text:=qdatasource.FieldByName('Pemeriksaan_Penunjang').AsString;
            memdiag.Text:=qdatasource.FieldByName('Diagnosa').AsString;
            cbtipepasien.Text:=qdatasource.FieldByName('Tipe_Penyakit').AsString;
            dbgridpegawai.Enabled:=false;
            cbtipepasien.Enabled:=true;
            cbtipeobat.Enabled:=true;
            mempemfis.Enabled:=true;
            memterimpin.Enabled:=true;
            memkel.Enabled:=true;
            Memo4.Enabled:=true;
            memdiag.Enabled:=true;
            memterimpin.SetFocus;
            adorecord.Active:=true;
            adorecord.Locate('No',lblnotrans.Caption,[]);
            queryhitungobat.Active:=true;
            queryhitungobat.Close;
            queryhitungobat.SQL.Clear;
            queryhitungobat.SQL.Add('SELECT * FROM Query_Jumlah_Beli_Tipe');
            queryhitungobat.ExecSQL;
            queryhitungobat.Open;
            queryhitungobat.Locate('No',lblnotrans.Caption,[]);
            if queryhitungobat.FieldByName('Jumlah_transaksi').AsString='' then
            begin
            lbljumlahobat.Caption:='0';
            end
            else
              begin
                lbljumlahobat.Caption:=queryhitungobat.FieldByName('Jumlah_Transaksi').AsString;
              end;
                queryobat.Active:=true;
queryobat.Active:=true;
             queryobat.Close;
             queryobat.SQL.Clear;
             queryobat.SQL.Add('SELECT master_beli_obat.[No], master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, master_beli_obat.id, master_beli_obat.Sendok, master_beli_obat.Hari, master_beli_obat.Dosis, master_beli_obat.Tipe_Obat,');
             queryobat.SQL.Add('master_beli_obat.Jumlah_Beli');
             queryobat.SQL.Add('FROM master_record_berobat INNER JOIN master_beli_obat ON master_record_berobat.[No] = master_beli_obat.[No] where master_beli_obat.[No]='+lblnotrans.Caption);
             queryobat.ExecSQL;
             queryobat.Open;
             cbtipepasien.Enabled:=true;
         end
        else
      begin
         MessageDlg('Anda Membatalkan Pilihan Transaksi',mtInformation,[mbYes],1);
      end;//Akihr dari Jika Tidak Membeli Obat

end;

procedure Tformpengobatan.edcariobatChange(Sender: TObject);
begin
if edcariobat.Text='' then
  begin
  querynamaobat.Active:=true;
     querynamaobat.Close;
     querynamaobat.SQL.Clear;
     querynamaobat.SQL.Add('SELECT * FROM q_formularium_obat');
     querynamaobat.ExecSQL;
     querynamaobat.Open;
      dbgridobat.Visible:=false;
  end
else
  begin
     querynamaobat.Active:=true;
     querynamaobat.Close;
     querynamaobat.SQL.Clear;
     querynamaobat.SQL.Add('SELECT Master_Kelas_Pertama.No_Kelas_Pertama, Master_Kelas_Pertama.Nama_Kelas_Pertama, Master_Kelas_Kedua.No_Kelas_Kedua, Master_Kelas_Kedua.Nama_Kelas_Kedua, Master_Kelas_Ketiga.No_Kelas_Ketiga,');
     querynamaobat.SQL.Add('Master_Kelas_Ketiga.Nama_Kelas_Ketiga, Master_Formularium_Obat.Nama_Generic, Master_Formularium_Obat.Komposisi, Master_Formularium_Obat.Nama_Brand, Master_Formularium_Obat.No_Obat,');
     querynamaobat.SQL.Add('Master_Formularium_Obat.Harga');
     querynamaobat.SQL.Add('FROM Master_Formularium_Obat INNER JOIN ((Master_Kelas_Ketiga INNER JOIN Master_Kelas_Kedua ON Master_Kelas_Ketiga.No_Kelas_Kedua = Master_Kelas_Kedua.No_Kelas_Kedua) INNER JOIN Master_Kelas_Pertama');
     querynamaobat.SQL.Add('ON (Master_Kelas_Pertama.No_Kelas_Pertama = Master_Kelas_Kedua.No_Kelas_Pertama) AND (Master_Kelas_Ketiga.No_Kelas_Pertama = Master_Kelas_Pertama.No_Kelas_Pertama)) ON ');
     querynamaobat.SQL.Add('Master_Formularium_Obat.No_Kelas_Ketiga = Master_Kelas_Ketiga.No_Kelas_Ketiga where Master_Formularium_Obat.Nama_Brand Like'+QuotedStr(edcariobat.Text+'%'));
     querynamaobat.ExecSQL;
     dbgridobat.Visible:=true;
     querynamaobat.Open;
end;
end;
procedure Tformpengobatan.dbgridobatDblClick(Sender: TObject);
begin
edcariobat.Text:=querynamaobat.FieldByName('Nama_Brand').AsString;
dbgridobat.Visible:=false;
end;

procedure Tformpengobatan.DBGrid1DblClick(Sender: TObject);
begin
if MessageDlg('Apakah anda ingin mengedit datap pembelian obat ini ?',mtConfirmation,[mbyes,mbno],0)=mrYes then
  begin
tableformula.Active:=true;
  dbgridobat.Visible:=false;
  edcariobat.Clear;
memo1.Clear;
edk1.Clear;
edk2.Clear;
edk3.Clear;
edhari.Clear;
eddosis.Clear;
edjumlah.Clear;
edjumlah.ReadOnly:=true;
cbtipeobat.Text:='';
eddosis.ReadOnly:=true;
edhari.ReadOnly:=true;
lblnoobat.Caption:=queryobat.FieldByName('Id').AsString;
edcariobat.Text:=queryobat.FieldByName('Nama_Obat').AsString;
                    tableformula.Locate('Nama_Brand',edcariobat.Text,[]);
                    Memo1.Text:=tableformula.FieldByName('Komposisi').AsString;
                    edk1.Text:=tableformula.FieldByName('Nama_Kelas_Pertama').AsString;
                    edk2.Text:=tableformula.FieldByName('Nama_Kelas_Kedua').AsString;
                    edk3.Text:=tableformula.FieldByName('Nama_Kelas_Ketiga').AsString;
                    edharga.Text:=tableformula.FieldByName('Harga').AsString;
                    cbtipeobat.Enabled:=true;
                    cbtipeobat.SetFocus;
                    //
                    eddosis.Text:=queryobat.FieldByName('Sendok').AsString;
                    edhari.Text:=queryobat.FieldByName('Hari').AsString;
                    cbtipeobat.Text:=queryobat.FieldByName('Tipe_Obat').AsString;
                    lblobattrans.Caption:='Edit Data Transaksi';
                    edjumlah.Text:=queryobat.FieldByName('Jumlah_Beli').AsString;
                    dbgridobat.Visible:=false;
                    edjumlah.ReadOnly:=true;
                    btnpilihobat.Enabled:=false;

end
else
  begin
  end;
  end;

procedure Tformpengobatan.cbtipeobatKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
eddosis.ReadOnly:=false;
eddosis.SetFocus;
end;

procedure Tformpengobatan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
If MessageDlg('Apakah Anda Ingin Keluar Dari Aplikasi',mtConfirmation,mbYesNoCancel,1)=mrYes then
  begin
    TutupKoneksi;
    MessageDlg('Terima Kasih Telah menggunakan Aplikasi',mtInformation,[mbOk],1);
    Application.Terminate;

    end
else
  begin
    Abort;
  end;
end;

procedure Tformpengobatan.btnkembalikemenuClick(Sender: TObject);
begin
TutupKoneksi;
KembaliKeMenuAwal1Click(Sender);
end;

procedure Tformpengobatan.Image1Click(Sender: TObject);
var
  namaobat,dosisobat:string;
  x,y:integer;
begin
lblumur.Caption:='0';
queryobat.Active:=true;
              queryobat.Active:=false;
              queryobat.Active:=true;
              queryobat.Close;
              queryobat.SQL.Clear;
              queryobat.SQL.Add('SELECT master_beli_obat.No, Count(master_beli_obat.No) AS Jumlah');
              queryobat.SQL.Add('From master_beli_obat');
              queryobat.SQL.Add('GROUP BY master_beli_obat.No;');
              queryobat.ExecSQL;
         queryobat.Open;

              if queryobat.Locate('No',lblnotrans.Caption,[]) then
                begin
                y:=StrToInt(queryobat.fieldbyName('Jumlah').AsString);
                queryobat.Close;
                queryobat.SQL.Clear;
             queryobat.SQL.Add('SELECT master_beli_obat.[No], master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, master_beli_obat.id, master_beli_obat.Sendok, master_beli_obat.Hari, master_beli_obat.Dosis, master_beli_obat.Tipe_Obat,');
             queryobat.SQL.Add('master_beli_obat.Jumlah_Beli, Master_Formularium_Obat.Harga');
             queryobat.SQL.Add('FROM (MASTER_PEGAWAI_Query_Query INNER JOIN (master_record_berobat INNER JOIN master_beli_obat ON master_record_berobat.[No] = master_beli_obat.[No]) ON MASTER_PEGAWAI_Query_Query.Nomor_induk = ');
             queryobat.SQL.Add('master_record_berobat.Nomor_induk) INNER JOIN Master_Formularium_Obat ON (master_beli_obat.Nama_Obat = Master_Formularium_Obat.Nama_Brand) AND (master_beli_obat.Nama_Obat = ');
             queryobat.SQL.Add('Master_Formularium_Obat.Nama_Brand) where master_beli_obat.[No] ='+lblnotrans.Caption);
             queryobat.ExecSQL;
             queryobat.Open;
             //
             with queryobat do
             begin
              queryobat.Close;
queryobat.SQL.Clear;
queryobat.SQL.Add('DELETE * FROM tabTemp');
queryobat.ExecSQL;
end;
queryobat.Close;
                queryobat.SQL.Clear;
             queryobat.SQL.Add('SELECT master_beli_obat.[No], master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, master_beli_obat.id, master_beli_obat.Sendok, master_beli_obat.Hari, master_beli_obat.Dosis, master_beli_obat.Tipe_Obat,');
             queryobat.SQL.Add('master_beli_obat.Jumlah_Beli, Master_Formularium_Obat.Harga');
             queryobat.SQL.Add('FROM (MASTER_PEGAWAI_Query_Query INNER JOIN (master_record_berobat INNER JOIN master_beli_obat ON master_record_berobat.[No] = master_beli_obat.[No]) ON MASTER_PEGAWAI_Query_Query.Nomor_induk = ');
             queryobat.SQL.Add('master_record_berobat.Nomor_induk) INNER JOIN Master_Formularium_Obat ON (master_beli_obat.Nama_Obat = Master_Formularium_Obat.Nama_Brand) AND (master_beli_obat.Nama_Obat = ');
             queryobat.SQL.Add('Master_Formularium_Obat.Nama_Brand) where master_beli_obat.[No] ='+lblnotrans.Caption);
             queryobat.ExecSQL;
             queryobat.Open;

             //
             ADOTable1.Active:=false;
             ADOTable1.Active:=true;
              while not queryobat.Eof do
              begin

                namaobat:=queryobat.fieldByName('Nama_Obat').AsString;
                dosisobat:=queryobat.fieldByName('Dosis_Obat').AsString;
                ADOTable1.Append;
                ADOTable1.FieldByName('Nama_Obat').AsString:=namaobat;
                ADOTable1.FieldByName('Dosis_Obat').AsString:=dosisobat;
                ADOTable1.Post;
                queryobat.Next;
              end;

            projbeliobat.Open;
             projbeliobat.SelectReport('Report',False);
             projbeliobat.SetParam('NamaPegawai',lblnapeg.Caption);
             projbeliobat.SetParam('NamaPasien',txtnama.Text);
             projbeliobat.SetParam('NamaDokter',lbllogin.Caption);
             projbeliobat.SetParam('Ijin',lblsip.Caption);
             x:=StrToInt(lblumur.Caption);
             if x<1 then
              begin
                 projbeliobat.SetParam('Umur','Dibawah 1 tahun');
              end
             else
              begin
                 projbeliobat.SetParam('Umur',lblumur.Caption+' tahun');
              end;
             projbeliobat.Execute;
            end
            else
              begin
                ShowMessage('Gagal Pada Koneksi Data');
              end;

end;

procedure Tformpengobatan.FormActivate(Sender: TObject);
begin
lbljumlahobat.Caption:='0';
end;

procedure Tformpengobatan.TutupKoneksi;
begin
  ADOConnection1.Connected:=false;
  adorecord.Active:=false;
  adorecordobat.Active:=false;
  adobeliobat.Active:=false;
  ADOTable1.Active:=false;
  tabelpegawai.Active:=false;
  tableformula.Active:=false;
  tabeldokter.Active:=false;
  tabelkeluarga.Active:=false;
  qobat.Active:=false;
  qdatasource.Active:=false;
  qdataobat.Active:=false;
  querycarinamakeluarga.Active:=false;
  queryobat.Active:=false;
  querydatapegawi.Active:=false;
  querybeliobat.Active:=false;
  queryhitungobat.Active:=false;
  querynamaobat.Active:=false;
  query_temporary.Active:=false;
  end;
end.


