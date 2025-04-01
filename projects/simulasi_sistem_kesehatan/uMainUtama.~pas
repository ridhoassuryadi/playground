unit uMainUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  Tformutama = class(TForm)
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image1: TImage;
    Image8: TImage;
    Image9: TImage;
    procedure Image5Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formutama: Tformutama;

implementation

uses UASAL, uInsertMasterPegawai, ulihatrecord, uMasterDokter,
  uMasterKegunaanObat, uMasterKeluarga, uMasterLogin, uMasterObat,
  uMasterPasien, uMasterPilihan, uMenuAwal, uPasien, upilihdokter, uSplash,
  ulogindokter, uAbout, uDoctorMain, uDoctorMenu, uFamilytypetrans,
  uLihatBerobatKeluarga, ulihatChart, ulihatchart2, ulihatdataberobat,
  uLihatDataDokter, ulihatdataobat, ulihatkeluarga, uLihatPasien,
  uLihatTranspeg, ulogin, umainobat, umainobatpoli, uMenuBerobat,
  uMenuPegawai, uMenuUser, uPilihKeluarga, uStatusPegawai, uTransunit,
  AutoCompleteText, AutoEdit, ss, ulihatchartobat, uLihatDataPasien,
  uLihatpegawai, uLoginAdmin, uMenuDokter, Unit1, uRiwayatpenyakit, utest2,
  uTransaksiuser, uloginpoli;

{$R *.dfm}

procedure Tformutama.Image5Click(Sender: TObject);
begin
  if MessageDlg('Apakah Anda Ingin Keluar Dari Aplikasi',mtConfirmation,mbYesNoCancel,1)=mrYes then
    begin
      MessageDlg('Terima Kasih Telah Menggunakan Aplikasi Poliklinik',mtInformation,[mbOK],1);
      Application.Terminate;
    end
  else
    begin
      Abort;
    end;

end;

procedure Tformutama.Image3Click(Sender: TObject);
begin
formmenuuser.Show;
formutama.Hide;
end;

procedure Tformutama.Image2Click(Sender: TObject);
begin
formLogin.Show;
formutama.Hide;
end;

procedure Tformutama.Image4Click(Sender: TObject);
begin
formutama.Hide;
formlogindokter.Show;
end;

procedure Tformutama.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure Tformutama.Image7Click(Sender: TObject);
begin
  formloginpoli.Show;
  formutama.Hide;
end;

procedure Tformutama.Image8Click(Sender: TObject);
begin
MessageDlg('TES',mtInformation,[mbOK],1);
end;

end.
