unit uPilihKeluarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls;

type
  Tformmainkeluarga = class(TForm)
    Image1: TImage;
    btnlihatdatakel: TImage;
    btntranskel: TImage;
    bnkembalikeadmin: TImage;
    Shape5: TShape;
    Label18: TLabel;
    Label21: TLabel;
    lbllogin: TLabel;
    Shape6: TShape;
    Shape9: TShape;
    lbljam: TLabel;
    lblhari: TLabel;
    Timer1: TTimer;
    Image2: TImage;
    procedure bnkembalikeadminClick(Sender: TObject);
    procedure btntranskelClick(Sender: TObject);
    procedure btnlihatdatakelClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formmainkeluarga: Tformmainkeluarga;

implementation

uses UASAL, uDoctorMenu, uInsertMasterPegawai, ulihatrecord,
  uLihatTranspeg, ulogindokter, uMainUtama, uMasterDokter,
  uMasterKegunaanObat, uMasterKeluarga, uMasterLogin, uMasterObat,
  uMasterPasien, uMenuAwal, uMenuPegawai, uPasien, upilihdokter, uSplash,
  uLihatPasien, umainobat, ulihatkeluarga;

{$R *.dfm}

procedure Tformmainkeluarga.bnkembalikeadminClick(Sender: TObject);
begin
 fMainmenu.Show;
 formmainkeluarga.Hide;
end;

procedure Tformmainkeluarga.btntranskelClick(Sender: TObject);
begin
formtablekeluarga.ADOConnection1.Connected:=true;
formtablekeluarga.qpeg.Active:=true;
formtablekeluarga.querycarikeluarga.Active:=true;
formtablekeluarga.querytunjangan.Active:=true;
formtablekeluarga.querypegawai.Active:=true;
formtablekeluarga.querydatapegawai.Active:=true;
formtablekeluarga.adokeluarga.Active:=true;
formtablekeluarga.ADOTable3.Active:=true;
formtablekeluarga.adopegawai.Active:=true;

  formtablekeluarga.Show;
  formmainkeluarga.Hide;
end;

procedure Tformmainkeluarga.btnlihatdatakelClick(Sender: TObject);
begin
 formlihatkeluarga.Show;
 formmainkeluarga.Hide; 
end;

procedure Tformmainkeluarga.Timer1Timer(Sender: TObject);
begin
lblhari.Caption:=FormatDateTime('hhhh,mmmm,yyyy',now);
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
end;

procedure Tformmainkeluarga.FormClose(Sender: TObject;
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
