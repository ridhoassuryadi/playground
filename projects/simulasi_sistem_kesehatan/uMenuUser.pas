unit uMenuUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls;

type
  Tformmenuuser = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Timer1: TTimer;
    Image5: TImage;
    procedure Image3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formmenuuser: Tformmenuuser;

implementation

uses uAbout, UASAL, uDoctorMain, uDoctorMenu, uFamilytypetrans,
  uInsertMasterPegawai, uLihatBerobatKeluarga, ulihatChart, ulihatchart2,
  ulihatdataberobat, uLihatDataDokter, ulihatdataobat, ulihatkeluarga,
  uLihatPasien, ulihatrecord, uLihatTranspeg, ulogin, ulogindokter,
  umainobat, umainobatpoli, uMainUtama, uMasterDokter, uMasterKegunaanObat,
  uMasterKeluarga, uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal,
  uMenuBerobat, uMenuPegawai, uPasien, upilihdokter, uPilihKeluarga,
  uSplash, uStatusPegawai, uTransunit, ulihatchartobat, uMenuDokter,
  uTransaksiuser;

{$R *.dfm}

procedure Tformmenuuser.Image3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformmenuuser.Image1Click(Sender: TObject);
begin
formmenuuser.Hide;
formpasien.Show;
formpasien.lbllogin.Caption:='User';
end;

procedure Tformmenuuser.Image2Click(Sender: TObject);
begin
fromtransuser.Show;
formmenuuser.Hide;
end;

procedure Tformmenuuser.FormClose(Sender: TObject;
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

end.
