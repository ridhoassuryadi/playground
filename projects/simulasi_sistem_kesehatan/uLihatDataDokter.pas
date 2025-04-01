unit uLihatDataDokter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, jpeg, DB, ADODB, Grids, DBGrids,
  Menus, RpRave, RpDefine, RpCon, RpConDS;

type
  Tformlihatdokter = class(TForm)
    GroupBox3: TGroupBox;
    Image3: TImage;
    Shape4: TShape;
    Label9: TLabel;
    Shape6: TShape;
    Shape7: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    txtnomor: TEdit;
    txtnama: TEdit;
    txtbidang: TEdit;
    cbjk: TComboBox;
    DateTimePicker1: TDateTimePicker;
    grupdatagridfield: TGroupBox;
    Image4: TImage;
    Shape1: TShape;
    Label1: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Shape5: TShape;
    Shape8: TShape;
    edgridinduk: TEdit;
    edgridnama: TEdit;
    edgridjenis: TEdit;
    edgridtanggal: TEdit;
    edgridstatus: TEdit;
    Image2: TImage;
    DBGrid2: TDBGrid;
    qdokter: TADOQuery;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    Image1: TImage;
    Image6: TImage;
    PopupMenu1: TPopupMenu;
    RefreshData1: TMenuItem;
    KembaliKeMenu1: TMenuItem;
    KeluarAplikasi1: TMenuItem;
    dsdokter: TRvDataSetConnection;
    projectdokter: TRvProject;
    edtelepon: TEdit;
    Shape9: TShape;
    Label6: TLabel;
    Timer1: TTimer;
    Image13: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    MainMenu1: TMainMenu;
    Aplikasi1: TMenuItem;
    KembaliKeMenu2: TMenuItem;
    KeluarAplikasi2: TMenuItem;
    anyakan1: TMenuItem;
    BantuanTentangAplikasi1: TMenuItem;
    entanAplikasi1: TMenuItem;
    btnkembalikemenu: TImage;
    procedure btncarinomorindukClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure cbjkChange(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure txtnomorKeyPress(Sender: TObject; var Key: Char);
    procedure txtnamaKeyPress(Sender: TObject; var Key: Char);
    procedure txtbidangKeyPress(Sender: TObject; var Key: Char);
    procedure txtnomorEnter(Sender: TObject);
    procedure txtnamaEnter(Sender: TObject);
    procedure txtnomorExit(Sender: TObject);
    procedure txtnamaExit(Sender: TObject);
    procedure txtbidangEnter(Sender: TObject);
    procedure txtbidangExit(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure KembaliKeMenu1Click(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Timer1Timer(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure entanAplikasi1Click(Sender: TObject);
    procedure KembaliKeMenu2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtnomorChange(Sender: TObject);
    procedure txtnamaChange(Sender: TObject);
    procedure txtbidangChange(Sender: TObject);
    procedure btnkembalikemenuClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure KeluarAplikasi2Click(Sender: TObject);
  private
    procedure TutupKoneksi;
    procedure BukaKoneksi;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formlihatdokter: Tformlihatdokter;

implementation

uses uAbout, UASAL, uDoctorMain, uDoctorMenu, uFamilytypetrans,
  uInsertMasterPegawai, uLihatBerobatKeluarga, ulihatChart, ulihatchart2,
  ulihatdataberobat, ulihatdataobat, ulihatkeluarga, uLihatPasien,
  ulihatrecord, uLihatTranspeg, ulogin, ulogindokter, umainobat,
  umainobatpoli, uMainUtama, uMasterDokter, uMasterKegunaanObat,
  uMasterKeluarga, uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal,
  uMenuBerobat, uMenuPegawai, uPasien, upilihdokter, uPilihKeluarga,
  uSplash, uStatusPegawai, uTransunit, uMenuDokter, uMenuUser;

{$R *.dfm}

procedure Tformlihatdokter.btncarinomorindukClick(Sender: TObject);
begin
qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter where Nomor_Dokter='+QuotedStr(txtnomor.Text));
qdokter.ExecSQL;
qdokter.Open;
end;

procedure Tformlihatdokter.Image5Click(Sender: TObject);
begin
qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter where Nama_Dokter='+QuotedStr(txtnama.Text));
qdokter.ExecSQL;
qdokter.Open;
end;

procedure Tformlihatdokter.Image17Click(Sender: TObject);
begin
qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter where Bidang='+QuotedStr(txtbidang.Text));
qdokter.ExecSQL;
qdokter.Open;
end;

procedure Tformlihatdokter.cbjkChange(Sender: TObject);
begin
qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter where Jenis_Kelamin='+QuotedStr(cbjk.Text));
qdokter.ExecSQL;
qdokter.Open;
end;

procedure Tformlihatdokter.Image6Click(Sender: TObject);
begin
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Query_Berobat_Keluarga WHERE tanggal_kahir=:tgl1');
qdokter.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
qdokter.ExecSQL;
qdokter.Open;
end;

procedure Tformlihatdokter.txtnomorKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  btncarinomorindukClick(Sender);
end;

procedure Tformlihatdokter.txtnamaKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image5Click(Sender);
end;

procedure Tformlihatdokter.txtbidangKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image17Click(Sender);
end;

procedure Tformlihatdokter.txtnomorEnter(Sender: TObject);
begin
txtnomor.Text:='';
txtnomor.Font.Color:=clHotLight;
end;

procedure Tformlihatdokter.txtnamaEnter(Sender: TObject);
begin
txtnama.Text:='';
txtnama.Font.Color:=clHotLight;
end;

procedure Tformlihatdokter.txtnomorExit(Sender: TObject);
begin
if txtnomor.Text='' then
  begin
    txtnomor.Text:='Nomor Dokter';
     txtnomor.Font.Color:=clmedgray;
  end;
end;

procedure Tformlihatdokter.txtnamaExit(Sender: TObject);
begin
if txtnama.Text='' then
  begin
    txtnama.Font.Color:=clMedGray;
    txtnama.Text:='Nama Dokter';
  end;
end;

procedure Tformlihatdokter.txtbidangEnter(Sender: TObject);
begin
txtbidang.Text:='';
txtbidang.Font.Color:=clHotLight;
end;

procedure Tformlihatdokter.txtbidangExit(Sender: TObject);
begin
if txtbidang.Text='' then
  begin
    txtbidang.Text:='Bidang Perkerjaan';
    txtbidang.Font.Color:=clmedgray;
  end;
end;

procedure Tformlihatdokter.KeluarAplikasi1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformlihatdokter.KembaliKeMenu1Click(Sender: TObject);
begin
qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter');
qdokter.ExecSQL;
qdokter.Open;
txtnomor.Text:='Nomor Dokter';
txtnomor.Font.Color:=clMedGray;
txtnama.Text:='Nama Dokter';
txtnama.Font.Color:=clMedGray;
txtbidang.Text:='Bidang Perkerjaan';
txtbidang.Font.Color:=clMedGray;
cbjk.Text:='';
edgridinduk.Clear;
edgridnama.Clear;
edgridjenis.Clear;
edgridtanggal.Clear;
edgridstatus.Clear;
edtelepon.Clear;

formmaindokter.Show;
formlihatdokter.Hide;
end;

procedure Tformlihatdokter.RefreshData1Click(Sender: TObject);
begin
BukaKoneksi;
qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter');
qdokter.ExecSQL;
qdokter.Open;
txtnomor.Text:='Nomor Dokter';
txtnomor.Font.Color:=clMedGray;
txtnama.Text:='Nama Dokter';
txtnama.Font.Color:=clMedGray;
txtbidang.Text:='Bidang Perkerjaan';
txtbidang.Font.Color:=clMedGray;
cbjk.Text:='';
edgridinduk.Clear;
edgridnama.Clear;
edgridjenis.Clear;
edgridtanggal.Clear;
edgridstatus.Clear;
edtelepon.Clear;
ShowMessage('Refresh Form');
end;

procedure Tformlihatdokter.DBGrid2CellClick(Column: TColumn);
begin
edgridinduk.Text:=qdokter.FieldByName('Nomor_Dokter').AsString;
edgridnama.Text:=qdokter.FieldByName('Nama_Dokter').AsString;
edgridjenis.Text:=qdokter.FieldByName('Jenis_Kelamin').AsString;
edgridtanggal.Text:=qdokter.FieldByName('Bidang').AsString;
edgridstatus.Text:=qdokter.FieldByName('Tanggal_Lahir').AsString;
edtelepon.Text:=qdokter.FieldByName('Nomor_Telepon').AsString;
end;

procedure Tformlihatdokter.Timer1Timer(Sender: TObject);
begin
if txtnomor.Text<>'' then
  begin
    Shape4.Visible:=true;
  end
else
  begin
    Shape4.Visible:=false;
  end;
if txtnama.Text<>'' then
  begin
    Shape6.Visible:=true;
  end
else
  begin
    Shape6.Visible:=false;
  end;
if txtbidang.Text<>'' then
  begin
    Shape7.Visible:=true;
  end
else
  begin
    Shape7.Visible:=false;
  end;
if edgridinduk.Text<>'' then
  begin
    Shape1.Visible:=true;
  end
else
  begin
    Shape1.Visible:=false;
  end;
if edgridnama.Text <>'' then
  begin
    Shape2.Visible:=true;
  end
else
  begin
    Shape2.Visible:=false;
  end;
if edgridjenis.Text<>'' then
  begin
    Shape3.Visible:=true;
  end
else
  begin
    Shape3.Visible:=false;
  end;
if edgridtanggal.Text<>'' then
  begin
    Shape5.Visible:=true;
  end
else
  begin
    Shape5.Visible:=false;
  end;
if edgridstatus.Text<> '' then
    begin
      Shape8.Visible:=true;
    end
else
  begin
    Shape8.Visible:=false;
  end;
if edtelepon.Text<>'' then
  begin
    Shape9.Visible:=true;
  end
else
  begin
    Shape9.Visible:=false;
  end;
end;

procedure Tformlihatdokter.Image13Click(Sender: TObject);
begin
qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter where Nomor_Dokter Like'+QuotedStr(txtnomor.Text+'%'));
qdokter.ExecSQL;
qdokter.Open;
projectdokter.Open;
projectdokter.SelectReport('Report',False);
projectdokter.SetParam('datastr','Berdasarkan Nomor Dokter :'+txtnomor.Text);
projectdokter.Execute;
projectdokter.Close;
end;

procedure Tformlihatdokter.Image7Click(Sender: TObject);
begin
qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter where Nama_Dokter Like'+QuotedStr('%'+txtnama.Text+'%'));
qdokter.ExecSQL;
qdokter.Open;
projectdokter.Open;
projectdokter.SelectReport('Report',False);
projectdokter.SetParam('datastr','Berdasarkan Nama Dokter :'+txtnama.Text);
projectdokter.Execute;
projectdokter.Close;
end;

procedure Tformlihatdokter.Image8Click(Sender: TObject);
begin
qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter where Bidang Like'+QuotedStr('%'+txtbidang.Text+'%'));
qdokter.ExecSQL;
qdokter.Open;
projectdokter.Open;
projectdokter.SelectReport('Report',False);
projectdokter.SetParam('datastr','Berdasarkan Bidang :'+txtbidang.Text);
projectdokter.Execute;
projectdokter.Close;
end;

procedure Tformlihatdokter.Image9Click(Sender: TObject);
begin
qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter where Jenis_Kelamin='+QuotedStr(cbjk.Text));
qdokter.ExecSQL;
qdokter.Open;
projectdokter.Open;
projectdokter.SelectReport('Report',False);
projectdokter.SetParam('datastr','Berdasarkan Jenis Kelamin :'+cbjk.Text);
projectdokter.Execute;
projectdokter.Close;
end;

procedure Tformlihatdokter.Image10Click(Sender: TObject);
begin
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Query_Berobat_Keluarga WHERE tanggal_kahir=:tgl1');
qdokter.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
qdokter.ExecSQL;
qdokter.Open;
projectdokter.Open;
projectdokter.SelectReport('Report',False);
projectdokter.SetParam('datastr','Berdasarkan Tanggal Lahir :'+DateToStr(DateTimePicker1.Date));
projectdokter.Execute;
projectdokter.Close;
end;

procedure Tformlihatdokter.entanAplikasi1Click(Sender: TObject);
begin
formabout.Show;
end;

procedure Tformlihatdokter.KembaliKeMenu2Click(Sender: TObject);
begin
TutupKoneksi;
if ADOConnection1.Connected=false then
begin
txtnomor.Text:='Nomor Dokter';
txtnomor.Font.Color:=clMedGray;
txtnama.Text:='Nama Dokter';
txtnama.Font.Color:=clMedGray;
txtbidang.Text:='Bidang Perkerjaan';
txtbidang.Font.Color:=clMedGray;
cbjk.Text:='';
edgridinduk.Clear;
edgridnama.Clear;
edgridjenis.Clear;
edgridtanggal.Clear;
edgridstatus.Clear;
edtelepon.Clear;
formmenudokter.Show;
formlihatdokter.Hide;
end
else
  begin
    TutupKoneksi;
    txtnomor.Text:='Nomor Dokter';
txtnomor.Font.Color:=clMedGray;
txtnama.Text:='Nama Dokter';
txtnama.Font.Color:=clMedGray;
txtbidang.Text:='Bidang Perkerjaan';
txtbidang.Font.Color:=clMedGray;
cbjk.Text:='';
edgridinduk.Clear;
edgridnama.Clear;
edgridjenis.Clear;
edgridtanggal.Clear;
edgridstatus.Clear;
edtelepon.Clear;
formmenudokter.Show;
formlihatdokter.Hide;
  end;
end;

procedure Tformlihatdokter.FormClose(Sender: TObject;
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

procedure Tformlihatdokter.txtnomorChange(Sender: TObject);
begin
if txtnomor.Text='' then
  begin
qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter');
qdokter.ExecSQL;
qdokter.Open;
end
else
  begin
  qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter where Nomor_Dokter Like'+QuotedStr(txtnomor.Text+'%'));
qdokter.ExecSQL;
qdokter.Open;

  end;

end;

procedure Tformlihatdokter.txtnamaChange(Sender: TObject);
begin
if txtnama.Text='' then
  begin
   qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter');
qdokter.ExecSQL;
qdokter.Open;
end
else
  begin
  qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter where Nama_Dokter Like'+QuotedStr('%'+txtnama.Text+'%'));
qdokter.ExecSQL;
qdokter.Open;
end;


end;

procedure Tformlihatdokter.txtbidangChange(Sender: TObject);
begin
if txtbidang.Text='' then
begin
qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter');
qdokter.ExecSQL;
qdokter.Open;
end
else
  begin
  qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter where Bidang Like'+QuotedStr('%'+txtbidang.Text+'%'));
qdokter.ExecSQL;
qdokter.Open;
end;
end;

procedure Tformlihatdokter.btnkembalikemenuClick(Sender: TObject);
begin
KembaliKeMenu2Click(Sender);
end;

procedure Tformlihatdokter.TutupKoneksi;
begin
qdokter.Active:=false;
ADOConnection1.Connected:=false;
end;

procedure Tformlihatdokter.BukaKoneksi;
begin

ADOConnection1.Connected:=true;
qdokter.Active:=true;
end;
procedure Tformlihatdokter.FormActivate(Sender: TObject);
begin
if ADOConnection1.Connected=true then
  begin
    qdokter.Active:=true;
qdokter.Close;
qdokter.SQL.Clear;
qdokter.SQL.Add('SELECT * FROM Master_Dokter');
qdokter.ExecSQL;
qdokter.Open;
end
else
  begin
  end;
end;

procedure Tformlihatdokter.KeluarAplikasi2Click(Sender: TObject);
begin
TutupKoneksi;
if ADOConnection1.Connected=false then
begin
txtnomor.Text:='Nomor Dokter';
txtnomor.Font.Color:=clMedGray;
txtnama.Text:='Nama Dokter';
txtnama.Font.Color:=clMedGray;
txtbidang.Text:='Bidang Perkerjaan';
txtbidang.Font.Color:=clMedGray;
cbjk.Text:='';
edgridinduk.Clear;
edgridnama.Clear;
edgridjenis.Clear;
edgridtanggal.Clear;
edgridstatus.Clear;
edtelepon.Clear;
Application.Terminate;
end
else
  begin
    TutupKoneksi;
    txtnomor.Text:='Nomor Dokter';
txtnomor.Font.Color:=clMedGray;
txtnama.Text:='Nama Dokter';
txtnama.Font.Color:=clMedGray;
txtbidang.Text:='Bidang Perkerjaan';
txtbidang.Font.Color:=clMedGray;
cbjk.Text:='';
edgridinduk.Clear;
edgridnama.Clear;
edgridjenis.Clear;
edgridtanggal.Clear;
edgridstatus.Clear;
edtelepon.Clear;
Application.Terminate;
  end;

end;

end.
