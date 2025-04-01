unit utest2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  Tformadminpoli = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    procedure Image4Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formadminpoli: Tformadminpoli;

implementation

uses AutoCompleteText, AutoEdit, ss, uAbout, UASAL, uDoctorMain,
  uDoctorMenu, uFamilytypetrans, uInsertMasterPegawai,
  uLihatBerobatKeluarga, ulihatChart, ulihatchart2, ulihatchartobat,
  ulihatdataberobat, uLihatDataDokter, ulihatdataobat, uLihatDataPasien,
  ulihatkeluarga, uLihatPasien, uLihatpegawai, ulihatrecord,
  uLihatTranspeg, ulogin, uLoginAdmin, ulogindokter, umainobat,
  umainobatpoli, uMainUtama, uMasterDokter, uMasterKeluarga, uMasterLogin,
  uMasterObat, uMasterPasien, uMasterPilihan, uMenuAwal, uMenuBerobat,
  uMenuDokter, uMenuPegawai, uMenuUser, Unit1, uPasien, uPilihKeluarga,
  uRiwayatpenyakit, uSplash, uStatusPegawai, uTransaksiuser, uTransunit;

{$R *.dfm}

procedure Tformadminpoli.Image4Click(Sender: TObject);
begin
if MessageDlg('Apakah anda ingin Logout Sekarang ?',mtWarning,mbOKCancel,1)=mrOk then
  begin
formutama.Show;
formadminpoli.Hide;
end
else
  begin
    Abort;
  end;
end;

procedure Tformadminpoli.Image3Click(Sender: TObject);
begin
formmainobat.Show;
formmainobat.lbllogin.Caption:='Administrasi Poliklinik';
formobat.lbllogin.Caption:='Administrasi Poliklinik';
formlihatobat.lbllogin.Caption:='Administrasi Poliklinik';
formadminpoli.Hide;
end;

procedure Tformadminpoli.Image1Click(Sender: TObject);
begin
formmenuberobat.Show;
formadminpoli.Hide;
formmenuberobat.lbllogin.Caption:='Administrasi Poliklinik';
end;

procedure Tformadminpoli.Image2Click(Sender: TObject);
begin
formmainpasien.lbllogin.Caption:='Administrasi Poliklinik';
formpasien.lbllogin.Caption:='Administrasi Poliklinik';
formmainpasien.Show;
end;

end.
