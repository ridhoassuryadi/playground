unit upilihdokter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  Tformmaindokter = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    lblhari: TLabel;
    lbljam: TLabel;
    Timer1: TTimer;
    Image5: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formmaindokter: Tformmaindokter;

implementation

uses UASAL, uInsertMasterPegawai, ulihatrecord, uMasterDokter,
  uMasterKegunaanObat, uMasterKeluarga, uMasterLogin, uMasterObat,
  uMasterPasien, uMasterPilihan, uMenuAwal, uPasien, uSplash;

{$R *.dfm}

procedure Tformmaindokter.Image2Click(Sender: TObject);
begin
formrecorddokter.Show;
formmaindokter.Hide;
end;

procedure Tformmaindokter.Image3Click(Sender: TObject);
begin
formpengobatan.Show;
formmaindokter.Hide;
end;

procedure Tformmaindokter.Timer1Timer(Sender: TObject);
begin
lblhari.Caption:=FormatDateTime('dddd ,mmmm,yyyy',now);
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
end;

procedure Tformmaindokter.FormClose(Sender: TObject;
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
