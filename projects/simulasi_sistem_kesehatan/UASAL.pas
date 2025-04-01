unit UASAL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, ComCtrls;

type
  TformSplash = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSplash: TformSplash;

implementation

uses uAbout, uDoctorMenu, uFamilytypetrans, uInsertMasterPegawai,
  ulihatdataobat, ulihatkeluarga, uLihatPasien, ulihatrecord,
  uLihatTranspeg, ulogin, ulogindokter, umainobat, umainobatpoli,
  uMainUtama, uMasterDokter, uMasterKegunaanObat, uMasterKeluarga,
  uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal, uMenuPegawai,
  uPasien, upilihdokter, uPilihKeluarga, uSplash, uStatusPegawai,
  uTransunit;

{$R *.dfm}

procedure TformSplash.Timer1Timer(Sender: TObject);
var
  load:integer;
begin
end;

end.
