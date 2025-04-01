unit uLoginAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, StdCtrls, ExtCtrls, jpeg;

type
  Tformloginadmin = class(TForm)
    Image4: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Image2: TImage;
    Shape1: TShape;
    Shape2: TShape;
    edpass: TEdit;
    Edit1: TEdit;
    Image3: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formloginadmin: Tformloginadmin;

implementation

uses AutoCompleteText, AutoEdit, ss, uAbout, UASAL, uDoctorMain,
  uDoctorMenu, uFamilytypetrans, uInsertMasterPegawai,
  uLihatBerobatKeluarga, ulihatChart, ulihatchart2, ulihatchartobat,
  ulihatdataberobat, uLihatDataDokter, ulihatdataobat, uLihatDataPasien,
  ulihatkeluarga, uLihatPasien, uLihatpegawai, ulihatrecord,
  uLihatTranspeg, ulogin, ulogindokter, umainobat, umainobatpoli,
  uMainUtama, uMasterDokter, uMasterKeluarga, uMasterLogin, uMasterObat,
  uMasterPasien, uMasterPilihan, uMenuAwal, uMenuBerobat, uMenuDokter,
  uMenuPegawai, uMenuUser, Unit1, uPasien, uPilihKeluarga,
  uRiwayatpenyakit, uSplash, uStatusPegawai, utest2, uTransaksiuser,
  uTransunit;

{$R *.dfm}

procedure Tformloginadmin.FormCreate(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure Tformloginadmin.Image1Click(Sender: TObject);
begin
if (Edit1.Text='') or (edpass.Text='') then
  begin
    MessageDlg('Masih Ada Field Kosong',mtError,[mbYes],1);
  end
else
  begin
    if (Edit1.Text='smktelkom') and (edpass.Text='luarbiasa') then
      begin
        formadminpoli.Show;
        formloginadmin.Hide;
        Edit1.Clear;
        edpass.Clear;
        MessageDlg('Selamat Datang Admin Poliklinik',mtInformation,[mbOK],1);
      end
    else
      begin
        MessageDlg('Username / Password Anda Salah',mtError,[mbYes],1);
      end;
  end;
end;

procedure Tformloginadmin.Image2Click(Sender: TObject);
begin
formutama.Show;
formloginadmin.Hide;
end;

end.
