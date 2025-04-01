unit uloginpoli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  Tformloginpoli = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Image2: TImage;
    Image3: TImage;
    Shape1: TShape;
    Shape2: TShape;
    edpass: TEdit;
    eduser: TEdit;
    Image4: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eduserKeyPress(Sender: TObject; var Key: Char);
    procedure edpassKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formloginpoli: Tformloginpoli;

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

procedure Tformloginpoli.Image2Click(Sender: TObject);
begin
if (eduser.Text='') or (edpass.Text='') then
  begin
     if eduser.Text='' then
      begin
        eduser.SetFocus;
      end;
     if edpass.Text='' then
      begin
        edpass.SetFocus;
      end;
  end
else
  begin
    if ((eduser.Text='smktelkom') and (edpass.Text='luarbiasa')) or ((eduser.Text='SMKTELKOM') and (edpass.Text='LUARBIASA')) then
      begin
        MessageDlg('Selamat Datang Admin Poliklinik :)',mtInformation,[mbYes],1);
        formadminpoli.Show;
        eduser.Clear;
        edpass.Clear;
        formloginpoli.Hide;
      end
    else
      begin
        MessageDlg('Username atau Password anda salah',mtError,[mbYes],1);
        eduser.Clear;
        edpass.Clear;
        eduser.SetFocus;
      end;
  end;
end;

procedure Tformloginpoli.Image3Click(Sender: TObject);
begin
eduser.Clear;
edpass.Clear;
formutama.Show;
formloginpoli.Hide;
end;

procedure Tformloginpoli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if MessageDlg('Apakah anda ingin keluar dari aplikasi ?',mtConfirmation,mbOKCancel,1)=mrOk then
  begin
    MessageDlg('Terima Kasih telah menggunakan Aplikasi Poliklinik',mtConfirmation,[mbOK],1);
    Application.Terminate;
  end
else
  begin
    Abort;
  end;
end;

procedure Tformloginpoli.eduserKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
edpass.SetFocus;
end;

procedure Tformloginpoli.edpassKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image2Click(Sender);
end;

end.
