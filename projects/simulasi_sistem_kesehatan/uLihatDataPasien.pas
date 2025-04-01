unit uLihatDataPasien;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, jpeg, ExtCtrls, Menus;

type
  Tformlihatdatapasien = class(TForm)
    dbgridpegawai: TDBGrid;
    ADOConnection1: TADOConnection;
    querypegawai: TADOQuery;
    sourcekeluarga: TDataSource;
    dbgridkeluarga: TDBGrid;
    sourcepegawai: TDataSource;
    querykeluarga: TADOQuery;
    txtinduk: TEdit;
    Label9: TLabel;
    btncarinama: TImage;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    PopupMenu1: TPopupMenu;
    Refresh1: TMenuItem;
    utup1: TMenuItem;
    PilihDataIni1: TMenuItem;
    Shape1: TShape;
    Label1: TLabel;
    Image1: TImage;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure btncarinamaClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure txtindukKeyPress(Sender: TObject; var Key: Char);
    procedure txtnamaKeyPress(Sender: TObject; var Key: Char);
    procedure Refresh1Click(Sender: TObject);
    procedure PilihDataIni1Click(Sender: TObject);
    procedure dbgridkeluargaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgridpegawaiKeyPress(Sender: TObject; var Key: Char);
    procedure dbgridpegawaiDblClick(Sender: TObject);
    procedure dbgridkeluargaDblClick(Sender: TObject);
    procedure txtindukChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formlihatdatapasien: Tformlihatdatapasien;

implementation

uses AutoCompleteText, AutoEdit, ss, uAbout, UASAL, uDoctorMain,
  uDoctorMenu, uFamilytypetrans, uInsertMasterPegawai,
  uLihatBerobatKeluarga, ulihatChart, ulihatchart2, ulihatchartobat,
  ulihatdataberobat, uLihatDataDokter, ulihatdataobat, ulihatkeluarga,
  uLihatPasien, uLihatpegawai, uLihatTranspeg, ulogin, ulogindokter,
  umainobat, umainobatpoli, uMainUtama, uMasterDokter, uMasterKegunaanObat,
  uMasterKeluarga, uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal,
  uMenuBerobat, uMenuDokter, uMenuPegawai, uMenuUser, uPasien,
  upilihdokter, uPilihKeluarga, uRiwayatpenyakit, uTransaksiuser,
  uTransunit;

{$R *.dfm}

procedure Tformlihatdatapasien.RadioButton1Click(Sender: TObject);
begin
dbgridkeluarga.Visible:=true;
dbgridpegawai.Visible:=false;
end;

procedure Tformlihatdatapasien.RadioButton2Click(Sender: TObject);
begin
dbgridpegawai.Visible:=True;
dbgridkeluarga.Visible:=false;
end;

procedure Tformlihatdatapasien.btncarinamaClick(Sender: TObject);
begin
querypegawai.Active:=True;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai where Nomor_Induk Like'+QuotedStr(txtinduk.Text+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
//
querykeluarga.Active:=true;
querykeluarga.Close;
querykeluarga.SQL.Clear;
querykeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga where Nomor_Induk Like'+QuotedStr(txtinduk.Text+'%'));
querykeluarga.ExecSQL;
querykeluarga.Open;
end;

procedure Tformlihatdatapasien.Image1Click(Sender: TObject);
begin
formlihatdatapasien.Hide;
end;

procedure Tformlihatdatapasien.txtindukKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
btncarinamaClick(Sender);
end;

procedure Tformlihatdatapasien.txtnamaKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image1Click(Sender);
end;

procedure Tformlihatdatapasien.Refresh1Click(Sender: TObject);
begin
querypegawai.Active:=True;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;
//
querykeluarga.Active:=true;
querykeluarga.Close;
querykeluarga.SQL.Clear;
querykeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
querykeluarga.ExecSQL;
querykeluarga.Open;
//
txtinduk.Clear;
end;

procedure Tformlihatdatapasien.PilihDataIni1Click(Sender: TObject);
var
  data:string;
begin
if RadioButton1.Checked=true then
  begin
     data:=querykeluarga.FieldByName('No_Keluarga').AsString;
     querykeluarga.Active:=True;
querykeluarga.Active:=true;
querykeluarga.Close;
querykeluarga.SQL.Clear;
querykeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga where No_Keluarga Like'+data+'%');
querykeluarga.ExecSQL;
querykeluarga.Open;
fromtransuser.edinduk.Text:=querykeluarga.FieldByName('Nomor_Induk').AsString;
fromtransuser.btncekkelClick(Sender);
fromtransuser.cbnamakeluarga.Enabled:=true;
fromtransuser.cbnamakeluarga.Text:=querykeluarga.FieldByName('Nama_Keluarga').AsString;
fromtransuser.DBGrid2.Visible:=false;
formlihatdatapasien.Hide;

     MessageDlg('Anda Telah Memilih Data Pegawai Ini',mtInformation,[mbYes],1);
  end
else if RadioButton2.Checked=true then
  begin
    data:=querypegawai.FieldByName('Nomor_Induk').AsString;
    querypegawai.Active:=True;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai where Nomor_Induk Like'+QuotedStr(txtinduk.Text+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
fromtransuser.txtinduk.Text:=querypegawai.FieldByName('Nomor_Induk').AsString;
MessageDlg('Anda Telah Memilih Data Pegawai Ini',mtInformation,[mbYes],1);
formlihatdatapasien.Hide;
end
else
  begin
    MessageDlg('Maaf Terjadi Kesalahan,Harap Tekan Pilihan Refresh',mtWarning,[mbOK],1);
  end;
end;

procedure Tformlihatdatapasien.dbgridkeluargaKeyPress(Sender: TObject;
  var Key: Char);
var
  data:string;
begin
if not (key=chr(13)) then exit;
if RadioButton1.Checked=true then
  begin
     data:=querykeluarga.FieldByName('No_Keluarga').AsString;
     querykeluarga.Active:=True;
querykeluarga.Active:=true;
querykeluarga.Close;
querykeluarga.SQL.Clear;
querykeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga where No_Keluarga Like'+data+'%');
querykeluarga.ExecSQL;
querykeluarga.Open;
fromtransuser.edinduk.Text:=querykeluarga.FieldByName('Nomor_Induk').AsString;
fromtransuser.btncekkelClick(Sender);
fromtransuser.cbnamakeluarga.Enabled:=true;
fromtransuser.cbnamakeluarga.Text:=querykeluarga.FieldByName('Nama_Keluarga').AsString;
fromtransuser.DBGrid2.Visible:=false;
formlihatdatapasien.Hide;

     MessageDlg('Anda Telah Memilih Data Pegawai Ini',mtInformation,[mbYes],1);
  end
else if RadioButton2.Checked=true then
  begin
    data:=querypegawai.FieldByName('Nomor_Induk').AsString;
    querypegawai.Active:=True;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai where Nomor_Induk Like'+QuotedStr(txtinduk.Text+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
fromtransuser.txtinduk.Text:=querypegawai.FieldByName('Nomor_Induk').AsString;
MessageDlg('Anda Telah Memilih Data Pegawai Ini',mtInformation,[mbYes],1);
formlihatdatapasien.Hide;
end
else
  begin
    MessageDlg('Maaf Terjadi Kesalahan,Harap Tekan Pilihan Refresh',mtWarning,[mbOK],1);
  end;

end;

procedure Tformlihatdatapasien.dbgridpegawaiKeyPress(Sender: TObject;
  var Key: Char);
var
  data:string;
  begin
if not (key=chr(13)) then exit;
if RadioButton1.Checked=true then
  begin
     data:=querykeluarga.FieldByName('No_Keluarga').AsString;
     querykeluarga.Active:=True;
querykeluarga.Active:=true;
querykeluarga.Close;
querykeluarga.SQL.Clear;
querykeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga where No_Keluarga Like'+data+'%');
querykeluarga.ExecSQL;
querykeluarga.Open;
fromtransuser.edinduk.Text:=querykeluarga.FieldByName('Nomor_Induk').AsString;
fromtransuser.btncekkelClick(Sender);
fromtransuser.cbnamakeluarga.Enabled:=true;
fromtransuser.cbnamakeluarga.Text:=querykeluarga.FieldByName('Nama_Keluarga').AsString;
fromtransuser.DBGrid2.Visible:=false;
formlihatdatapasien.Hide;

     MessageDlg('Anda Telah Memilih Data Pegawai Ini',mtInformation,[mbYes],1);
  end
else if RadioButton2.Checked=true then
  begin
    data:=querypegawai.FieldByName('Nomor_Induk').AsString;
    querypegawai.Active:=True;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai where Nomor_Induk Like'+QuotedStr(txtinduk.Text+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
fromtransuser.txtinduk.Text:=querypegawai.FieldByName('Nomor_Induk').AsString;
MessageDlg('Anda Telah Memilih Data Pegawai Ini',mtInformation,[mbYes],1);
formlihatdatapasien.Hide;
end
else
  begin
    MessageDlg('Maaf Terjadi Kesalahan,Harap Tekan Pilihan Refresh',mtWarning,[mbOK],1);
  end;

end;

procedure Tformlihatdatapasien.dbgridpegawaiDblClick(Sender: TObject);
var
  data:string;
begin
if RadioButton1.Checked=true then
  begin
     data:=querykeluarga.FieldByName('No_Keluarga').AsString;
     querykeluarga.Active:=True;
querykeluarga.Active:=true;
querykeluarga.Close;
querykeluarga.SQL.Clear;
querykeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga where No_Keluarga Like'+data+'%');
querykeluarga.ExecSQL;
querykeluarga.Open;
fromtransuser.edinduk.Text:=querykeluarga.FieldByName('Nomor_Induk').AsString;
fromtransuser.btncekkelClick(Sender);
fromtransuser.cbnamakeluarga.Enabled:=true;
fromtransuser.cbnamakeluarga.Text:=querykeluarga.FieldByName('Nama_Keluarga').AsString;
fromtransuser.DBGrid2.Visible:=false;
formlihatdatapasien.Hide;

     MessageDlg('Anda Telah Memilih Data Pegawai Ini',mtInformation,[mbYes],1);
  end
else if RadioButton2.Checked=true then
  begin
    data:=querypegawai.FieldByName('Nomor_Induk').AsString;
    querypegawai.Active:=True;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai where Nomor_Induk Like'+QuotedStr(txtinduk.Text+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
fromtransuser.txtinduk.Text:=querypegawai.FieldByName('Nomor_Induk').AsString;
MessageDlg('Anda Telah Memilih Data Pegawai Ini',mtInformation,[mbYes],1);
formlihatdatapasien.Hide;
end
else
  begin
    MessageDlg('Maaf Terjadi Kesalahan,Harap Tekan Pilihan Refresh',mtWarning,[mbOK],1);
  end;

end;

procedure Tformlihatdatapasien.dbgridkeluargaDblClick(Sender: TObject);
var
  data:string;
begin
if RadioButton1.Checked=true then
  begin
     data:=querykeluarga.FieldByName('No_Keluarga').AsString;
     querykeluarga.Active:=True;
querykeluarga.Active:=true;
querykeluarga.Close;
querykeluarga.SQL.Clear;
querykeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga where No_Keluarga Like'+data+'%');
querykeluarga.ExecSQL;
querykeluarga.Open;
fromtransuser.edinduk.Text:=querykeluarga.FieldByName('Nomor_Induk').AsString;
fromtransuser.btncekkelClick(Sender);
fromtransuser.cbnamakeluarga.Enabled:=true;
fromtransuser.cbnamakeluarga.Text:=querykeluarga.FieldByName('Nama_Keluarga').AsString;
fromtransuser.DBGrid2.Visible:=false;
formlihatdatapasien.Hide;

     MessageDlg('Anda Telah Memilih Data Pegawai Ini',mtInformation,[mbYes],1);
  end
else if RadioButton2.Checked=true then
  begin
    data:=querypegawai.FieldByName('Nomor_Induk').AsString;
    querypegawai.Active:=True;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai where Nomor_Induk Like'+QuotedStr(txtinduk.Text+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
fromtransuser.txtinduk.Text:=querypegawai.FieldByName('Nomor_Induk').AsString;
MessageDlg('Anda Telah Memilih Data Pegawai Ini',mtInformation,[mbYes],1);
formlihatdatapasien.Hide;
end
else
  begin
    MessageDlg('Maaf Terjadi Kesalahan,Harap Tekan Pilihan Refresh',mtWarning,[mbOK],1);
  end;

end;

procedure Tformlihatdatapasien.txtindukChange(Sender: TObject);
begin
if txtinduk.Text='' then
  begin
  querypegawai.Active:=True;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;
//
querykeluarga.Active:=true;
querykeluarga.Close;
querykeluarga.SQL.Clear;
querykeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
querykeluarga.ExecSQL;
querykeluarga.Open;
end
  else
    begin
      querypegawai.Active:=True;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai where Nomor_Induk Like'+QuotedStr(txtinduk.Text+'%')+' or Nama_Pegawai Like'+QuotedStr('%'+txtinduk.Text+'%')+' or Personel_Number Like'+QuotedStr(txtinduk.Text+'%'));
querypegawai.ExecSQL;
querypegawai.Open;
//
querykeluarga.Active:=true;
querykeluarga.Close;
querykeluarga.SQL.Clear;
querykeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga where Nomor_Induk Like'+QuotedStr(txtinduk.Text+'%')+' or Nama_Keluarga Like'+QuotedStr('%'+txtinduk.Text+'%'));
querykeluarga.ExecSQL;
querykeluarga.Open;
end;
end;

procedure Tformlihatdatapasien.FormActivate(Sender: TObject);
begin
querypegawai.Active:=True;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Query_Pasien_Pegawai');
querypegawai.ExecSQL;
querypegawai.Open;
//
querykeluarga.Active:=true;
querykeluarga.Close;
querykeluarga.SQL.Clear;
querykeluarga.SQL.Add('SELECT * FROM Query_Pasien_Keluarga');
querykeluarga.ExecSQL;
querykeluarga.Open;

end;

end.
