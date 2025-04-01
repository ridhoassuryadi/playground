unit uDoctorMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TformAdminTreatment = class(TForm)
    Image3: TImage;
    Image4: TImage;
    Timer1: TTimer;
    Image1: TImage;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    lblhari: TLabel;
    Image5: TImage;
    btnkeluar: TImage;
    lbllogin: TLabel;
    lbljams: TLabel;
    procedure btnkeluarClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formAdminTreatment: TformAdminTreatment;

implementation

uses UASAL, uInsertMasterPegawai, ulihatrecord, uLihatTranspeg,
  ulogindokter, uMainUtama, uMasterDokter, uMasterKegunaanObat,
  uMasterKeluarga, uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal,
  uMenuPegawai, uPasien, upilihdokter, uPilihKeluarga, uSplash, uAbout,
  uFamilytypetrans, ulihatdataobat, ulihatkeluarga, uLihatPasien, ulogin,
  umainobat, umainobatpoli, uStatusPegawai, uTransunit, uMenuBerobat;

{$R *.dfm}

procedure TformAdminTreatment.btnkeluarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TformAdminTreatment.Image5Click(Sender: TObject);
begin
    fMainmenu.Show;
    formAdminTreatment.Hide;
    
end;

procedure TformAdminTreatment.Image1Click(Sender: TObject);
begin
   formmenuberobat.show;
   formAdminTreatment.Hide;
end;

procedure TformAdminTreatment.Image6Click(Sender: TObject);
begin
formmainpasien.Show;
formAdminTreatment.Hide;
end;

procedure TformAdminTreatment.Image3Click(Sender: TObject);
begin
formmainobat.WindowState:=wsNormal;
formAdminTreatment.Hide;
end;

procedure TformAdminTreatment.Timer1Timer(Sender: TObject);
begin
lblhari.Caption:=FormatDateTime('dddd,mmmm,yyyy',now);
lbljams.Caption:=FormatDateTime('hh:mm:ss',now);
end;

end.
