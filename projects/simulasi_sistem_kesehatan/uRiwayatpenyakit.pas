unit uRiwayatpenyakit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Grids, DBGrids, DB, ADODB, ComCtrls,
  Menus;

type
  Tformriwayat = class(TForm)
    grupdatagridfield: TGroupBox;
    Image9: TImage;
    Shape23: TShape;
    Label16: TLabel;
    Shape24: TShape;
    Shape25: TShape;
    Label17: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Shape27: TShape;
    Shape29: TShape;
    Label26: TLabel;
    Label2: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Shape3: TShape;
    Label5: TLabel;
    Shape5: TShape;
    edgridno: TEdit;
    edgridnama: TEdit;
    memokel: TMemo;
    memoanameaterimpin: TMemo;
    memopempen: TMemo;
    memodiag: TMemo;
    edtipe: TEdit;
    memopemfis: TMemo;
    ListBox1: TListBox;
    Label1: TLabel;
    Shape1: TShape;
    DBGrid1: TDBGrid;
    Image1: TImage;
    GroupBox3: TGroupBox;
    Image3: TImage;
    Shape4: TShape;
    Label9: TLabel;
    ednoindukpeg: TEdit;
    ADOConnection1: TADOConnection;
    queryrecord: TADOQuery;
    DataSource1: TDataSource;
    querybeliobat: TADOQuery;
    edtipeobat: TEdit;
    Shape8: TShape;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label7: TLabel;
    DateTimePicker2: TDateTimePicker;
    Image5: TImage;
    Label8: TLabel;
    MainMenu1: TMainMenu;
    Aplikasi1: TMenuItem;
    KembaliKeMenu1: TMenuItem;
    KeluarAplikasi1: TMenuItem;
    Image4: TImage;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    PopupMenu1: TPopupMenu;
    KembaliKeMenu2: TMenuItem;
    RefreshData1: TMenuItem;
    btnkembalikemenu: TImage;
    Image6: TImage;
    DBGrid2: TDBGrid;
    querypegawai: TADOQuery;
    DataSource2: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btncarinomorindukClick(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure ednoindukpegKeyPress(Sender: TObject; var Key: Char);
    procedure ednamaKeyPress(Sender: TObject; var Key: Char);
    procedure ednoindukpegEnter(Sender: TObject);
    procedure ednoindukpegExit(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure KembaliKeMenu1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
    procedure KembaliKeMenu2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image6Click(Sender: TObject);
    procedure ednoindukpegChange(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
  private
    procedure TutupKoneksi;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formriwayat: Tformriwayat;

implementation

uses uAbout, UASAL, uDoctorMain, uDoctorMenu, uFamilytypetrans,
  uInsertMasterPegawai, uLihatBerobatKeluarga, ulihatChart, ulihatchart2,
  ulihatchartobat, ulihatdataberobat, uLihatDataDokter, ulihatdataobat,
  ulihatkeluarga, uLihatPasien, ulihatrecord, uLihatTranspeg, ulogin,
  ulogindokter, umainobat, umainobatpoli, uMainUtama, uMasterDokter,
  uMasterKegunaanObat, uMasterKeluarga, uMasterLogin, uMasterObat,
  uMasterPasien, uMenuAwal, uMenuBerobat, uMenuDokter, uMenuPegawai,
  uMenuUser, uPasien, upilihdokter, uPilihKeluarga, uSplash,
  uStatusPegawai, uTransaksiuser, uTransunit, Math;

{$R *.dfm}

procedure Tformriwayat.FormCreate(Sender: TObject);
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Master_Record_Berobat');
queryrecord.ExecSQL;
queryrecord.Open;
querybeliobat.Active:=true;
end;

procedure Tformriwayat.DBGrid1CellClick(Column: TColumn);
begin
edgridno.Text:=queryrecord.FieldByName('No').AsString;
edgridnama.Text:=queryrecord.FieldByName('Nama_Pasien').AsString;
memokel.Text:=queryrecord.FieldByName('Keluhan').AsString;
memoanameaterimpin.Text:=queryrecord.FieldByName('Anamesa_Terimpin').AsString;
memopempen.Text:=queryrecord.FieldByName('Pemeriksaan_penunjang').AsString;
memodiag.Text:=queryrecord.FieldByName('Diagnosa').AsString;
edtipe.Text:=queryrecord.fieldByName('Tipe_Penyakit').AsString;
memopemfis.Text:=queryrecord.FieldByName('Pemeriksaan_Fisik').AsString;
edtipeobat.Text:=queryrecord.FieldByName('Tipe_Obat').AsString;
querybeliobat.Active:=true;
    querybeliobat.Close;
    querybeliobat.SQL.Clear;
    querybeliobat.SQL.Add('SELECT master_beli_obat.[No], master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, master_beli_obat.id');
    querybeliobat.SQL.Add('FROM master_record_berobat INNER JOIN master_beli_obat ON master_record_berobat.[No] = master_beli_obat.[No]  where master_beli_obat.[No]='+edgridno.Text);
    querybeliobat.ExecSQL;
    querybeliobat.Open;
    ListBox1.Clear;
    querybeliobat.First;
    while not querybeliobat.Eof do
    begin
    ListBox1.Items.Add('[] '+querybeliobat['Nama_Obat']+' Dengan Dosis :'+querybeliobat['Dosis_Obat']);
    querybeliobat.Next;
    end;
end;

procedure Tformriwayat.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
edgridno.Text:=queryrecord.FieldByName('No').AsString;
edgridnama.Text:=queryrecord.FieldByName('Nama_Pasien').AsString;
memokel.Text:=queryrecord.FieldByName('Keluhan').AsString;
memoanameaterimpin.Text:=queryrecord.FieldByName('Anamesa_Terimpin').AsString;
memopempen.Text:=queryrecord.FieldByName('Pemeriksaan_penunjang').AsString;
memodiag.Text:=queryrecord.FieldByName('Diagnosa').AsString;
edtipe.Text:=queryrecord.fieldByName('Tipe_Pasien').AsString;
memopemfis.Text:=queryrecord.FieldByName('Pemeriksaan_Fisik').AsString;
edtipeobat.Text:=queryrecord.FieldByName('Tipe_Obat').AsString;
querybeliobat.Active:=true;
    querybeliobat.Close;
    querybeliobat.SQL.Clear;
    querybeliobat.SQL.Add('SELECT master_beli_obat.[No], master_beli_obat.Nama_Obat, master_beli_obat.Dosis_Obat, master_beli_obat.id');
    querybeliobat.SQL.Add('FROM master_record_berobat INNER JOIN master_beli_obat ON master_record_berobat.[No] = master_beli_obat.[No]  where master_beli_obat.[No]='+edgridno.Text);
    querybeliobat.ExecSQL;
    querybeliobat.Open;
    ListBox1.Clear;
    querybeliobat.First;
    while not querybeliobat.Eof do
    begin
    ListBox1.Items.Add('[] '+querybeliobat['Nama_Obat']+' Dengan Dosis :'+querybeliobat['Dosis_Obat']);
    querybeliobat.Next;
    end;

end;

procedure Tformriwayat.btncarinomorindukClick(Sender: TObject);
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Master_Record_Berobat where Nomor_Induk='+QuotedStr(ednoindukpeg.Text));
queryrecord.ExecSQL;
queryrecord.Open;

end;

procedure Tformriwayat.Image17Click(Sender: TObject);
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Master_Record_Berobat where Nama_Pasien='+QuotedStr(ednoindukpeg.Text));
queryrecord.ExecSQL;
queryrecord.Open;
end;

procedure Tformriwayat.ednoindukpegKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
  if DBGrid2.Visible=true then
    begin
     ednoindukpeg.Text:=querypegawai.FieldByName('Nomor_Induk').AsString;
     DBGrid2.Visible:=false;
    end;
end;

procedure Tformriwayat.ednamaKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key=chr(13)) then exit;
    Image17Click(Sender);
end;

procedure Tformriwayat.ednoindukpegEnter(Sender: TObject);
begin
queryrecord.Active:=true;
querypegawai.Active:=true;

end;

procedure Tformriwayat.ednoindukpegExit(Sender: TObject);
begin
DBGrid2.Visible:=false;
end;

procedure Tformriwayat.Image5Click(Sender: TObject);
begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Master_Record_Berobat WHERE Tanggal_Berobat BETWEEN (:tgl1) AND (:tgl2)');
queryrecord.Parameters.ParamByName('tgl1').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker1.Date);
queryrecord.Parameters.ParamByName('tgl2').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker2.Date);
queryrecord.ExecSQL;
queryrecord.Open;

end;

procedure Tformriwayat.KeluarAplikasi1Click(Sender: TObject);
begin
Application.Terminate;

end;

procedure Tformriwayat.KembaliKeMenu1Click(Sender: TObject);
begin
TutupKoneksi;
DBGrid2.Visible:=false;
ednoindukpeg.Clear;
ednoindukpeg.Font.Color:=clMedGray;
//ednama.Text:='Nama Pasien';
//ednama.Font.Color:=clMedGray;
edgridno.Clear;
edgridnama.Clear;
memokel.Clear;
memopempen.Clear;
memodiag.Clear;
edtipe.Clear;
memopemfis.Clear;
ListBox1.Clear;
edtipeobat.Clear;
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('Select * from Master_Record_Berobat');
queryrecord.ExecSQL;
queryrecord.Open;
  formawaldokter.Show;
  formriwayat.Hide;
end;

procedure Tformriwayat.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[0].Text:=FormatDateTime('hh:mm:ss',now);
StatusBar1.Panels[1].Text:=FormatDateTime('dddd,mmmm,yyyy',now);
if (ednoindukpeg.Text<>'') and (ednoindukpeg.Font.Color=clHotLight) then
  begin
    Shape4.Visible:=True;
  end
else
  begin
    Shape4.Visible:=false;
  end;
if edgridno.Text<>'' then
  begin
    Shape23.Visible:=true;
  end
else
  begin
    Shape23.Visible:=false;
  end;
if edgridnama.Text<>'' then
  begin
    Shape24.Visible:=true;
  end
else
  begin
    Shape24.Visible:=false;
  end;
if memokel.Text<>'' then
  begin
    Shape25.Visible:=true;
  end
else
  begin
    Shape25.Visible:=false;
  end;
if memoanameaterimpin.Text<>'' then
  begin
    Shape27.Visible:=true;
  end
else
  begin
    Shape27.Visible:=false;
  end;
if memopempen.Text<>'' then
  begin
    Shape29.Visible:=true;
   end
else
  begin
    Shape29.Visible:=false;
  end;
if memodiag.Text<>'' then
  begin
    Shape2.Visible:=true;
  end
else
  begin
    Shape2.Visible:=false;
  end;
if edtipe.Text<>'' then
  begin
    Shape5.Visible:=true;
  end
else
  begin
    Shape5.Visible:=false;
  end;
if memopemfis.Text<>'' then
  begin
      Shape3.Visible:=true;
  end
else
  begin
    Shape3.Visible:=false;
  end;
if Listbox1.Items.Text<>'' then
  begin
    Shape1.Visible:=true;
  end
else
  begin
    Shape1.Visible:=false;
  end;
if edtipeobat.Text<>'' then
  begin
    Shape8.Visible:=true;
  end
else
  begin
    Shape8.Visible:=false;
  end;
  
end;

procedure Tformriwayat.RefreshData1Click(Sender: TObject);
begin
ednoindukpeg.Text:='Nomor Induk';
ednoindukpeg.Font.Color:=clMedGray;
edgridno.Clear;
edgridnama.Clear;
memokel.Clear;
memopempen.Clear;
memodiag.Clear;
edtipe.Clear;
memopemfis.Clear;
ListBox1.Clear;
edtipeobat.Clear;
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('Select * from Master_Record_Berobat');
queryrecord.ExecSQL;
queryrecord.Open;
end;

procedure Tformriwayat.KembaliKeMenu2Click(Sender: TObject);
begin
ednoindukpeg.Text:='Nomor Induk';
ednoindukpeg.Font.Color:=clMedGray;
edgridno.Clear;
edgridnama.Clear;
memokel.Clear;
memopempen.Clear;
memodiag.Clear;
edtipe.Clear;
memopemfis.Clear;
ListBox1.Clear;
edtipeobat.Clear;
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('Select * from Master_Record_Berobat');
queryrecord.ExecSQL;
queryrecord.Open;
formawaldokter.Show;
formriwayat.Hide;
end;

procedure Tformriwayat.FormClose(Sender: TObject;
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

procedure Tformriwayat.Image6Click(Sender: TObject);
begin
KembaliKeMenu1Click(Sender);
end;

procedure Tformriwayat.ednoindukpegChange(Sender: TObject);
begin
if ednoindukpeg.Text<>'' then
  begin
queryrecord.Active:=true;
queryrecord.Close;
queryrecord.SQL.Clear;
queryrecord.SQL.Add('SELECT * FROM Master_Record_Berobat where Nomor_Induk Like'+QuotedStr(ednoindukpeg.Text+'%')+' or No_Keluarga Like'+QuotedStr(ednoindukpeg.Text+'%')+' or Nama_Pasien Like'+QuotedStr('%'+ednoindukpeg.Text+'%'));
queryrecord.ExecSQL;
queryrecord.Open;
//
querypegawai.Active:=true;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Master_Pegawai_Query_Query where Nomor_Induk Like'+QuotedStr(ednoindukpeg.Text+'%')+' or Personel_Number Like'+QuotedStr(ednoindukpeg.Text+'%')+' or Nama_Pegawai Like'+QuotedStr('%'+ednoindukpeg.Text+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
DBGrid2.Visible:=true;
end
else
  begin
  DBGrid2.Visible:=false;
  end;
end;

procedure Tformriwayat.DBGrid2CellClick(Column: TColumn);
begin
ednoindukpeg.Text:=querypegawai.FieldByName('Nomor_Induk').AsString;
end;

procedure Tformriwayat.TutupKoneksi;
begin
ADOConnection1.Connected:=false;
queryrecord.Active:=false;
querybeliobat.Active:=false;
querypegawai.Active:=false;
end;
end.
