unit uMasterLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ADODB, DB;

type
  TformLogin = class(TForm)
    edpass: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Image1: TImage;
    Image2: TImage;
    Shape1: TShape;
    Shape2: TShape;
    Image3: TImage;
    Image4: TImage;
    Label3: TLabel;
    Label4: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure edpassKeyPress(Sender: TObject; var Key: Char);
    procedure Label5Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edpassEnter(Sender: TObject);
    procedure edpassChange(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formLogin: TformLogin;

implementation

uses uMenuAwal, UASAL, uInsertMasterPegawai, uMasterDokter,
  uMasterKegunaanObat, uMasterKeluarga, uMasterObat, uMasterPasien,
  uMasterPilihan, uPasien, uSplash, uAbout, uDoctorMenu, uFamilytypetrans,
  ulihatdataobat, ulihatkeluarga, uLihatPasien, ulihatrecord,
  uLihatTranspeg, ulogin, ulogindokter, umainobat, umainobatpoli,
  uMainUtama, uMenuPegawai, upilihdokter, uPilihKeluarga, uStatusPegawai,
  uTransunit, uDoctorMain, uLihatBerobatKeluarga, ulihatChart,
  ulihatchart2, ulihatdataberobat, uLihatDataDokter, uMenuBerobat,
  uMenuDokter, uMenuUser, u_bantuan;

{$R *.dfm}

procedure TformLogin.Image1Click(Sender: TObject);
begin
if (Edit1.Text='') or (edpass.Text='') then
begin
    if Edit1.Text='' then
      begin
        Label4.Caption:= 'Username tidak boleh kosong';
        Shape2.Brush.Color := clRed;
        Label4.Visible:= true;

      end;
    if edpass.Text='' then
      begin
        Label3.Caption:= 'Password tidak boleh kosong';
        Shape1.Brush.Color := clRed;
        Label3.Visible:=true;

      end;
        
    MessageDlg('Username / Password tidak boleh kosong',mtError,[mbYes],1);
end
else
  begin
  Label4.Visible:=false;
  Label3.Visible:=false;
  //Setting Konfigurasi untuk login
    if ((Edit1.Text='admin') and (edpass.Text='shbmantap') or (Edit1.Text='admin') and (edpass.Text='admin')) then
      begin
        MessageDlg('Selamat Datang Admin Poliklinik',mtInformation,[mbYes],1);
        edpass.Clear;
        Edit1.Clear;
        formmenuberobat.lbllogin.Caption:='Administrasi PLN';
        formlihatberobatpegawai.lbllogin.Caption:='Administrasi PLN';
        formlihatberobatkeluarga.lbllogin.Caption:='Administrasi PLN';
        fMainmenu.Show;
        formLogin.Hide;
        Shape2.Brush.Color := clHotLight;
        Shape1.Brush.Color := clHotLight;
        Label4.Caption := '';
        Label3.Caption := '';
        form_bantuan.lbllogin.Caption := 'Admin Poliklinik';
        
      end
    else
      begin
        if not (Edit1.Text='admin') or (Edit1.Text='admin') then
          begin
            Label4.Visible:=true;
            Label4.Caption := 'Username anda salah';
            Shape2.Brush.Color := clRed;
          end;
        if not (edpass.Text='shbmantap') or (edpass.Text='admin') then
          begin

            Label3.Caption := 'Password anda salah';
            label3.Visible := true;
            Shape1.Brush.Color := clRed;
          end;
        MessageDlg('Username / Password Anda Salah',mtError,[mbYes],1);
      end;

  end;//Akhir Dari Validasi Data Kosong
end;

procedure TformLogin.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
edpass.SetFocus;
end;

procedure TformLogin.edpassKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key=chr(13)) then exit;
  Image1Click(Sender);
end;

procedure TformLogin.Label5Click(Sender: TObject);
begin
formdaftaradmin.ADOConnection1.Connected:=true;
formdaftaradmin.tabeluser.Active:=true;
  formdaftaradmin.Show;
  formLogin.Hide;
end;

procedure TformLogin.Image2Click(Sender: TObject);
begin
Edit1.Clear;
edpass.Clear;
formutama.Show;
formLogin.Hide;
end;

procedure TformLogin.Edit1Enter(Sender: TObject);
begin
Edit1.Text:='';
Edit1.Font.Color:=clBlue;
Shape2.Brush.Color := clHotLight;
Label4.Visible := false;
end;

procedure TformLogin.Edit1Exit(Sender: TObject);
begin
if Edit1.Text<>'' then
  begin
     Edit1.Font.Color:=clBlue;
  end
else
  begin
    Edit1.Text:='Username';
    Edit1.Font.Color:=clInactiveCaption;
  end;
end;

procedure TformLogin.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TformLogin.edpassEnter(Sender: TObject);
begin
edpass.Text:='';
edpass.Font.Color:=clBlue;
Shape1.Brush.Color := clHotLight;
Label3.Visible := false;
end;

procedure TformLogin.edpassChange(Sender: TObject);
begin
Label3.Visible := false;
Shape1.Brush.Color := clHotLight;
end;

procedure TformLogin.Image3Click(Sender: TObject);
begin
MessageDlg('Silahkan Anda Masukkan Akun Admin untuk mendapatkan service pada aplikasi ini ',mtInformation,[mbYes],1);
end;

end.
