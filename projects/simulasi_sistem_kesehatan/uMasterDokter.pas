unit uMasterDokter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, StdCtrls, jpeg, ExtCtrls, Grids, DBGrids,
  Menus;

type
  Tformdokter = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Image6: TImage;
    Image8: TImage;
    Image1: TImage;
    Image3: TImage;
    Image16: TImage;
    ednomor: TEdit;
    ednama: TEdit;
    edalamat: TEdit;
    cbkelamin: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    ADODokter: TADOTable;
    ADOConnection1: TADOConnection;
    edtempatlahir: TEdit;
    Shape4: TShape;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Shape5: TShape;
    Label18: TLabel;
    Label21: TLabel;
    lbllogin: TLabel;
    Shape6: TShape;
    Shape9: TShape;
    lbljam: TLabel;
    lblhari: TLabel;
    edbidang: TEdit;
    Shape7: TShape;
    lbltransaksi: TLabel;
    Shape8: TShape;
    Image2: TImage;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    RefreshField1: TMenuItem;
    KeMenuUtama1: TMenuItem;
    KeluarAplikasi1: TMenuItem;
    edtelepon: TEdit;
    Shape10: TShape;
    Label8: TLabel;
    edpin: TEdit;
    Shape11: TShape;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    Aplikasi1: TMenuItem;
    KembaliKeMenu1: TMenuItem;
    KeluarAplikasi2: TMenuItem;
    procedure Image1Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure ednomorKeyPress(Sender: TObject; var Key: Char);
    procedure ednamaKeyPress(Sender: TObject; var Key: Char);
    procedure edalamatKeyPress(Sender: TObject; var Key: Char);
    procedure edtempatlahirKeyPress(Sender: TObject; var Key: Char);
    procedure cbkelaminKeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure cbbidangKeyPress(Sender: TObject; var Key: Char);
    procedure Image16Click(Sender: TObject);
    procedure ednomorEnter(Sender: TObject);
    procedure ednomorExit(Sender: TObject);
    procedure ednamaEnter(Sender: TObject);
    procedure ednamaExit(Sender: TObject);
    procedure edalamatEnter(Sender: TObject);
    procedure edalamatExit(Sender: TObject);
    procedure edtempatlahirEnter(Sender: TObject);
    procedure edtempatlahirExit(Sender: TObject);
    procedure edbidangExit(Sender: TObject);
    procedure edbidangKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure RefreshField1Click(Sender: TObject);
    procedure KeMenuUtama1Click(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure edteleponKeyPress(Sender: TObject; var Key: Char);
    procedure edteleponExit(Sender: TObject);
    procedure edteleponEnter(Sender: TObject);
    procedure edpinKeyPress(Sender: TObject; var Key: Char);
    procedure KembaliKeMenu1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure KeluarAplikasi2Click(Sender: TObject);
  private
    procedure MatikanKoneksi;
    procedure HidupkanKoneksi;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formdokter: Tformdokter;

implementation

uses Math, uAbout, UASAL, uDoctorMain, uDoctorMenu, uFamilytypetrans,
  uInsertMasterPegawai, uLihatBerobatKeluarga, ulihatChart, ulihatchart2,
  ulihatdataberobat, ulihatdataobat, ulihatkeluarga, uLihatPasien,
  ulihatrecord, uLihatTranspeg, ulogin, ulogindokter, umainobat,
  umainobatpoli, uMainUtama, uMasterKegunaanObat, uMasterKeluarga,
  uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal, uMenuBerobat,
  uMenuPegawai, uPasien, upilihdokter, uPilihKeluarga, uSplash,
  uStatusPegawai, uTransunit;

{$R *.dfm}

procedure Tformdokter.Image1Click(Sender: TObject);
begin
HidupkanKoneksi;
//
if (ednomor.Text='') or (ednama.Text='') or (edalamat.Text='') or (edtempatlahir.Text='')
or (cbkelamin.Text='') or (edbidang.Text='') then
begin
  ShowMessage('Periksa Kembali Data Anda');
   ednomor.SetFocus;
end
else
  begin
  if lbltransaksi.Caption='Tidak Ada Transaksi' then
    begin
      ShowMessage('Silahkan Klik Tombol Cek Untuk Validasi Data');
    end
  else if lbltransaksi.Caption='Transaksi Data Baru' then
    begin
      if ADODokter.Locate('Nomor_Dokter',ednomor.Text,[]) then
        begin
          showmessage('Data Ditemukan');
      end
    else
    begin
    ADODokter.Append;
    ADODokter.FieldByName('Nomor_Dokter').AsString:=ednomor.Text;
    ADODokter.FieldByName('Nama_Dokter').AsString:=ednama.Text;
    ADODokter.FieldByName('Alamat').AsString:=edalamat.Text;
    ADODokter.FieldByName('Tempat_lahir').AsString:=edtempatlahir.Text;
    ADODokter.FieldByName('Jenis_Kelamin').AsString:=cbkelamin.Text;
    ADODokter.FieldByName('Tanggal_lahir').AsString:=FormatDateTime('dd/mm/yyyy',DateTimePicker1.Date);
    ADODokter.FieldByName('Bidang').AsString:=edbidang.Text;
    ADODokter.FieldByName('Nomor_Telepon').AsString:=edtelepon.Text;
    ADODokter.FieldByName('Pin').AsString:=edpin.Text;
    ADODokter.Post;
    ShowMessage('Data Tersimpan');
    lbltransaksi.Caption:='Tidak Ada Transaksi';
    ednomor.Clear;
    ednama.Clear;
    edalamat.Clear;
    edtempatlahir.Clear;
    cbkelamin.Text:='';
    edbidang.Clear;
    ednomor.Enabled:=true;
    edtelepon.Clear;
    edpin.Clear;
    end;
    end
  else if lbltransaksi.Caption='Edit Data Transaksi' then
    begin
     ADODokter.Edit;
       ADODokter.FieldByName('Nomor_Dokter').AsString:=ednomor.Text;
    ADODokter.FieldByName('Nama_Dokter').AsString:=ednama.Text;
    ADODokter.FieldByName('Alamat').AsString:=edalamat.Text;
    ADODokter.FieldByName('Tempat_lahir').AsString:=edtempatlahir.Text;
    ADODokter.FieldByName('Jenis_Kelamin').AsString:=cbkelamin.Text;
    ADODokter.FieldByName('Tanggal_lahir').AsString:=FormatDateTime('dd/mm/yyyy',DateTimePicker1.Date);
    ADODokter.FieldByName('Bidang').AsString:=edbidang.Text;
      ADODokter.FieldByName('Nomor_Telepon').AsString:=edtelepon.Text;
       ADODokter.FieldByName('Pin').AsString:=edpin.Text;
    ADODokter.Post;
    ShowMessage('Data Edit Berhasil Tersimpan');
    lbltransaksi.Caption:='Tidak Ada Transaksi';
        ednomor.Clear;
    ednama.Clear;
    edalamat.Clear;
    edtempatlahir.Clear;
    cbkelamin.Text:='';
    edbidang.Clear;
    ednomor.Enabled:=true;
        edtelepon.Clear;
    edpin.Clear;
    end
else
  begin
    ShowMessage('Error:Terjadi Kesalahan Validasi');
    MatikanKoneksi;
  end;
end;
end;

procedure Tformdokter.Image6Click(Sender: TObject);
begin
if ADODokter.Locate('Nomor_Dokter',ednomor.Text,[])then
begin
 if MessageDlg('Apakah anda ingin mengedit Data Dokter ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
then
  begin
      lbltransaksi.Caption:='Edit Data Transaksi';
      ednomor.Text:=ADODokter.FieldByName('Nomor_Dokter').AsString;
      ednama.Text:=ADODokter.FieldByName('Nama_Dokter').AsString;
      edalamat.Text:=ADODokter.FieldByName('Alamat').AsString;
      edtempatlahir.Text:=ADODokter.FieldByName('Tempat_Lahir').AsString;
      cbkelamin.Text:=ADODokter.FieldByName('Jenis_Kelamin').AsString;
      edbidang.Text:=ADODokter.FieldByName('Bidang').AsString;
      DateTimePicker1.Date:=StrToDate(ADODokter.FieldbyName('Tanggal_Lahir').AsString);
       edtelepon.Text:=ADODokter.FieldByName('Nomor_Telepon').AsString;
       edpin.Text:=ADODokter.FieldByName('Pin').AsString;
      ednomor.Enabled:=false;
      lbltransaksi.Caption:='Edit Data Transaksi';
  end
else
  begin
    showmessage('Tidak Jadi menghapus Data');
    ednomor.SetFocus;
  end;
end
else
  begin
    if ADODokter.Locate('Nomor_Dokter',ednomor.Text,[]) then
      begin
      showmessage('Data Ditemukan');
    end
    else
    begin
    ShowMessage('Data Baru');
    lbltransaksi.Caption:='Transaksi Data Baru';
    ednama.SetFocus;
    end;
end;
end;

procedure Tformdokter.Image3Click(Sender: TObject);
var
    data:string;
begin
data:=inputbox('Silahkan Masukkan No Induk Dokter :','Konfirmasi','');
HidupkanKoneksi;
If ADODokter.locate('Nomor_Dokter',data,[]) then
begin
Showmessage('Data ditemukan');
if MessageDlg('Apakah anda ingin menghapus Data Dokter ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
then
begin
ADODokter.Delete;
showmessage('Data berhasil Dihapus');
ednomor.SetFocus;
end
else
begin
showmessage('Tidak Jadi menghapus Data');
ednomor.SetFocus;
end;
end
else
begin
showmessage('Data Tidak Ditemukan');
ednomor.SetFocus;
end;
end;

procedure Tformdokter.ednomorKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
Image6Click(Sender);
end;

procedure Tformdokter.ednamaKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
edalamat.SetFocus;
end;

procedure Tformdokter.edalamatKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
edtempatlahir.SetFocus;
end;

procedure Tformdokter.edtempatlahirKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
edtelepon.SetFocus;
end;

procedure Tformdokter.cbkelaminKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
DateTimePicker1.SetFocus;
end;

procedure Tformdokter.DateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
edbidang.SetFocus;
end;

procedure Tformdokter.cbbidangKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
Image1Click(Sender);
end;

procedure Tformdokter.Image16Click(Sender: TObject);
var
    data:string;
begin
HidupkanKoneksi;
if lbltransaksi.Caption='Tidak Ada Transaksi' then
  begin
data:=inputbox('Silahkan Masukkan No Induk Dokter :','Konfirmasi','');
If ADODokter.locate('Nomor_Dokter',data,[]) then
begin
Showmessage('Data ditemukan');
if MessageDlg('Apakah anda ingin mengedit Data Dokter ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
then
begin
    lbltransaksi.Caption:='Edit Data Transaksi';
    ednomor.Text:=ADODokter.FieldByName('Nomor_Dokter').AsString;
    ednama.Text:=ADODokter.FieldByName('Nama_Dokter').AsString;
    edalamat.Text:=ADODokter.FieldByName('Alamat').AsString;
    edtempatlahir.Text:=ADODokter.FieldByName('Tempat_Lahir').AsString;
    cbkelamin.Text:=ADODokter.FieldByName('Jenis_Kelamin').AsString;
    edbidang.Text:=ADODokter.FieldByName('Bidang').AsString;
    edtelepon.Text:=ADODokter.FieldByName('Nomor_Telepon').AsString;
    edpin.Text:=ADODokter.FieldByName('Pin').AsString;
    DateTimePicker1.Date:=StrToDate(ADODokter.FieldbyName('Tanggal_Lahir').AsString);
end
else
  begin
    showmessage('Tidak Jadi menghapus Data');
    ednomor.SetFocus;
    end;
  end
else
  begin
    showmessage('Data Tidak Ditemukan');
    ednomor.SetFocus;
  end;
    end
  else if lbltransaksi.Caption='Edit Data Transaksi' then
    begin
     ADODokter.Edit;
       ADODokter.FieldByName('Nomor_Dokter').AsString:=ednomor.Text;
    ADODokter.FieldByName('Nama_Dokter').AsString:=ednama.Text;
    ADODokter.FieldByName('Alamat').AsString:=edalamat.Text;
    ADODokter.FieldByName('Tempat_lahir').AsString:=edtempatlahir.Text;
    ADODokter.FieldByName('Jenis_Kelamin').AsString:=cbkelamin.Text;
    ADODokter.FieldByName('Tanggal_lahir').AsString:=FormatDateTime('dd/mm/yyyy',DateTimePicker1.Date);
    ADODokter.FieldByName('Bidang').AsString:=edbidang.Text;
      ADODokter.FieldByName('Nomor_Telepon').AsString:=edtelepon.Text;
       ADODokter.FieldByName('Pin').AsString:=edpin.Text;
    ADODokter.Post;
    lbltransaksi.Caption:='Tidak Ada Transaksi';
    ShowMessage('Data Berhasil Tersimpan');
        ednomor.Clear;
    ednama.Clear;
    edalamat.Clear;
    edtempatlahir.Clear;
    cbkelamin.Text:='';
    edbidang.Clear;
    ednomor.Enabled:=true;
    ednomor.Clear;
        edtelepon.Clear;
    edpin.Clear;
    end
  else
begin
    ShowMessage('Tidak dalam format Edit Data');
end;
end;

procedure Tformdokter.ednomorEnter(Sender: TObject);
begin
HidupkanKoneksi;
ednomor.Text:='';
ednomor.Font.Color:=clHotLight;
end;

procedure Tformdokter.ednomorExit(Sender: TObject);
begin
if ednomor.Text='' then
  begin
    ednomor.Text:='Nomor Dokter';
    ednomor.Font.Color:=clHotLight;
  end;
end;

procedure Tformdokter.ednamaEnter(Sender: TObject);
begin
ednama.Text:='';
ednama.Font.Color:=clHotLight;
end;

procedure Tformdokter.ednamaExit(Sender: TObject);
begin
if ednama.Text='' then
  begin
    ednama.Font.Color:=clMedGray;
    ednama.Text:='Nama Dokter';
  end;
end;

procedure Tformdokter.edalamatEnter(Sender: TObject);
begin
edalamat.Text:='';
edalamat.font.Color:=clHotLight;
end;

procedure Tformdokter.edalamatExit(Sender: TObject);
begin
if edalamat.Text='' then
  begin
    edalamat.Text:='Alamat Rumah Dokter';
    edalamat.Font.Color:=clMedGray;
  end;
end;

procedure Tformdokter.edtempatlahirEnter(Sender: TObject);
begin
edtempatlahir.Text:='';
edtempatlahir.Font.Color:=clHotLight;
end;

procedure Tformdokter.edtempatlahirExit(Sender: TObject);
begin
if edtempatlahir.Text='' then
  begin
    edtempatlahir.Font.Color:=clMedGray;
    edtempatlahir.Text:='Kota Kelahiran';
  end;
end;

procedure Tformdokter.edbidangExit(Sender: TObject);
begin
edbidang.Text:='';
edbidang.Font.Color:=clHotLight;
end;

procedure Tformdokter.edbidangKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if edbidang.Text='' then
  begin
    edbidang.Font.Color:=clMedGray;
    edbidang.Text:='Bidang Pekerjaan';
  end;
end;

procedure Tformdokter.Timer1Timer(Sender: TObject);
begin
if ednomor.Text<>'' then
  begin
    Shape1.Visible:=true;
  end
else
  begin
    Shape1.Visible:=false;
  end;
if ednama.Text<>'' then
  begin
    Shape2.Visible:=true;
  end
else
  begin
    Shape2.Visible:=false;
  end;
if edalamat.Text<>'' then
  begin
    Shape3.Visible:=true;
  end
else
  begin
    Shape3.Visible:=false;
  end;
if edtempatlahir.Text<>'' then
  begin
    Shape4.Visible:=true;
  end
else
  begin
    Shape4.Visible:=false;
  end;
if edbidang.Text<>'' then
  begin
    Shape7.Visible:=true;
  end
else
  begin
    shape7.Visible:=false;
  end;
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
lblhari.Caption:=FormatDateTime('hhhh,mmmm,yyyy',now);
end;

procedure Tformdokter.RefreshField1Click(Sender: TObject);
begin
ednomor.Clear;
    ednama.Clear;
    edalamat.Clear;
    edtempatlahir.Clear;
    cbkelamin.Text:='';
    edbidang.Clear;
     edtelepon.Clear;
     edpin.Clear;
ADODokter.Active:=false;
ADODokter.Active:=true;
end;

procedure Tformdokter.KeMenuUtama1Click(Sender: TObject);
begin
ednomor.Clear;
    ednama.Clear;
    edalamat.Clear;
    edtempatlahir.Clear;
    cbkelamin.Clear;
    edbidang.Clear;
    ednomor.Enabled:=true;
    ednomor.Text:='Nomor Dokter';
    ednomor.Font.Color:=clMedGray;
    ednama.Text:='Nama Dokter';
    ednama.Font.Color:=clMedGray;
    edalamat.Text:='Alamat Rumah Dokter';
    edalamat.Font.Color:=clMedGray;
    edtempatlahir.Text:='Kota Kelahiran';
    edtempatlahir.Font.Color:=clMedGray;
    edbidang.Text:='Bidang Perkerjaan';
    edbidang.Font.Color:=clMedGray;
ADODokter.Active:=false;
ADODokter.Active:=true;
formmaindokter.Show;
formdokter.Hide;
end;

procedure Tformdokter.KeluarAplikasi1Click(Sender: TObject);
begin
Application.Terminate;

end;

procedure Tformdokter.edteleponKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
  edpin.SetFocus;
end;

procedure Tformdokter.edteleponExit(Sender: TObject);
begin
if edtelepon.Text='' then
  begin
    edtelepon.Text:='Telephone';
    edtelepon.Font.Color:=clMedGray;
  end;
end;

procedure Tformdokter.edteleponEnter(Sender: TObject);
begin
edtelepon.Text:='';
edtelepon.Font.Color:=clHotLight;
end;

procedure Tformdokter.edpinKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image1Click(Sender);
end;

procedure Tformdokter.KembaliKeMenu1Click(Sender: TObject);
begin
MatikanKoneksi;
if ADOConnection1.Connected=false then
begin
ShowMessage('Koneksi terputus');
ednomor.Clear;
    ednama.Clear;
    edalamat.Clear;
    edtempatlahir.Clear;
    cbkelamin.Clear;
    edbidang.Clear;
    ednomor.Enabled:=true;
    ednomor.Text:='Nomor Dokter';
    ednomor.Font.Color:=clMedGray;
    ednama.Text:='Nama Dokter';
    ednama.Font.Color:=clMedGray;
    edalamat.Text:='Alamat Rumah Dokter';
    edalamat.Font.Color:=clMedGray;
    edtempatlahir.Text:='Kota Kelahiran';
    edtempatlahir.Font.Color:=clMedGray;
    edbidang.Text:='Bidang Perkerjaan';
    edbidang.Font.Color:=clMedGray;
    
ADODokter.Active:=false;
fMainmenu.Show;
formdokter.hide;
end
else
  begin
  MatikanKoneksi;
{  ednomor.Clear;
    ednama.Clear;
    edalamat.Clear;
    edtempatlahir.Clear;
    cbkelamin.Clear;
    edbidang.Clear;
    ednomor.Enabled:=true;
    ednomor.Text:='Nomor Dokter';
    ednomor.Font.Color:=clMedGray;
    ednama.Text:='Nama Dokter';
    ednama.Font.Color:=clMedGray;
    edalamat.Text:='Alamat Rumah Dokter';
    edalamat.Font.Color:=clMedGray;
    edtempatlahir.Text:='Kota Kelahiran';
    edtempatlahir.Font.Color:=clMedGray;
    edbidang.Text:='Bidang Perkerjaan';
    edbidang.Font.Color:=clMedGray;
   }
    ADODokter.Active:=false;
ADODokter.Active:=true;
formmaindokter.Show;
formdokter.hide;
end;
end;

procedure Tformdokter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
If MessageDlg('Apakah Anda Ingin Keluar Dari Aplikasi',mtConfirmation,mbYesNoCancel,1)=mrYes then
  begin
   MatikanKoneksi;
  if ADOConnection1.Connected=false then
  begin
     MessageDlg('Terima Kasih Telah menggunakan Aplikasi',mtInformation,[mbOk],1);
     Application.Terminate;
  end
  else
    begin
    MatikanKoneksi;
    Application.Terminate;
    end;
  end
else
  begin
    Abort;
  end;

end;

procedure Tformdokter.FormCreate(Sender: TObject);
begin
MatikanKoneksi;
lbltransaksi.Caption:='Tidak Ada Transaksi';
end;

procedure Tformdokter.MatikanKoneksi;
begin
ADODokter.Active:=false;
ADOConnection1.Connected:=false;
end;

procedure Tformdokter.HidupkanKoneksi;
begin
ADOConnection1.Connected:=true;
ADODokter.Active:=true;
end;
procedure Tformdokter.KeluarAplikasi2Click(Sender: TObject);
begin
MatikanKoneksi;
if ADOConnection1.Connected=false then
begin
MessageDlg('Terima Kasih Telah Menggunakan Aplikasi Ini',mtInformation,[mbYes],1);
Application.Terminate;
end
else
begin
  MatikanKoneksi;
  Application.Terminate;
  End;
end;

end.
