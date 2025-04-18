unit uLihatpegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, jpeg, ExtCtrls, StdCtrls, Menus;

type
  Tformlihatpegawai = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Image2: TImage;
    qstatus: TADOQuery;
    qunit: TADOQuery;
    PopupMenu1: TPopupMenu;
    utup1: TMenuItem;
    Refresh1: TMenuItem;
    Shape1: TShape;
    Label1: TLabel;
    btncarinama: TImage;
    Label2: TLabel;
    txtcari: TEdit;
    cbkspeg: TComboBox;
    cbkupeg: TComboBox;
    Label12: TLabel;
    Label3: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure cbkspegChange(Sender: TObject);
    procedure cbkupegChange(Sender: TObject);
    procedure utup1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure txtcariChange(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formlihatpegawai: Tformlihatpegawai;

implementation

uses uAbout, UASAL, uDoctorMain, uDoctorMenu, uFamilytypetrans,
  uInsertMasterPegawai, uLihatBerobatKeluarga, ulihatChart, ulihatchart2,
  ulihatchartobat, ulihatdataberobat, uLihatDataDokter, ulihatdataobat,
  ulihatkeluarga, uLihatPasien, ulihatrecord, uLihatTranspeg, ulogin,
  ulogindokter, umainobat, umainobatpoli, uMainUtama, uMasterDokter,
  uMasterKegunaanObat, uMasterKeluarga, uMasterLogin, uMasterObat,
  uMasterPasien, uMenuAwal, uMenuBerobat, uMenuDokter, uMenuPegawai,
  uMenuUser, uPasien, upilihdokter, uPilihKeluarga, uRiwayatpenyakit,
  uSplash, uStatusPegawai, uTransaksiuser, uTransunit, ss, uInsertKeluarga,
  AutoCompleteText, AutoEdit;

{$R *.dfm}

procedure Tformlihatpegawai.FormCreate(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Pegawai_Query_Query');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
qstatus.Active:=true;
qstatus.SQL.Clear;
qstatus.SQL.Add('SELECT * FROM Master_Status');
qstatus.ExecSQL;
qstatus.Open;
while not qstatus.Eof do
  begin
    cbkspeg.Items.Add(qstatus['Keterangan_Status']);
    qstatus.Next;
  end;
//
qunit.Active:=true;
qunit.Close;
qunit.SQL.Clear;
qunit.SQL.Add('SELECT * FROM Master_Unit');
qunit.ExecSQL;
qunit.Open;
while not qunit.Eof do
begin
  cbkupeg.Items.Add(qunit['Nama_Unit']);
  qunit.Next;
end;

end;

procedure Tformlihatpegawai.cbkspegChange(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Pegawai_Query_Query Where Keterangan_Status='+QuotedStr(cbkspeg.Text));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
end;

procedure Tformlihatpegawai.cbkupegChange(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Pegawai_Query_Query Where Nama_Unit='+QuotedStr(cbkupeg.Text));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
end;

procedure Tformlihatpegawai.utup1Click(Sender: TObject);
begin
txtcari.Clear;
cbkspeg.Text:='';
cbkupeg.Text:='';
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Pegawai_Query_Query');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
qstatus.Active:=true;
qstatus.SQL.Clear;
qstatus.SQL.Add('SELECT * FROM Master_Status');
qstatus.ExecSQL;
qstatus.Open;
cbkspeg.Clear;
while not qstatus.Eof do
  begin
    cbkspeg.Items.Add(qstatus['Keterangan_Status']);
    qstatus.Next;
  end;
//
qunit.Active:=true;
qunit.Close;
qunit.SQL.Clear;
qunit.SQL.Add('SELECT * FROM Master_Unit');
qunit.ExecSQL;
qunit.Open;
cbkupeg.Clear;
while not qunit.Eof do
begin
  cbkupeg.Items.Add(qunit['Nama_Unit']);
  qunit.Next;
end;
formlihatpegawai.Hide;
fromtransuser.Show;
end;

procedure Tformlihatpegawai.Refresh1Click(Sender: TObject);
begin
cbkupeg.Text:='';
cbkspeg.Text:='';
txtcari.Clear;
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Pegawai_Query_Query');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
//
qstatus.Active:=true;
qstatus.SQL.Clear;
qstatus.SQL.Add('SELECT * FROM Master_Status');
qstatus.ExecSQL;
qstatus.Open;
cbkspeg.Clear;
while not qstatus.Eof do
  begin
    cbkspeg.Items.Add(qstatus['Keterangan_Status']);
    qstatus.Next;
  end;
//
qunit.Active:=true;
qunit.Close;
qunit.SQL.Clear;
qunit.SQL.Add('SELECT * FROM Master_Unit');
qunit.ExecSQL;
qunit.Open;
cbkupeg.Clear;
while not qunit.Eof do
begin
  cbkupeg.Items.Add(qunit['Nama_Unit']);
  qunit.Next;
end;
end;

procedure Tformlihatpegawai.DBGrid1CellClick(Column: TColumn);
var
  nama:string;
begin
fromtransuser.txtinduk.Text:=ADOQuery1.FieldByName('Nomor_Induk').AsString;
fromtransuser.edinduk.Text:=ADOQuery1.FieldByName('Nomor_Induk').AsString;
formpasien.txtindukkel.Text:=ADOQuery1.FieldByName('Nomor_Induk').AsString;
formpasien.txtpeginduk.Text:=ADOQuery1.FieldByName('Nomor_Induk').AsString;
formtablekeluarga.txtinduk.Text:=ADOQuery1.FieldByName('Nomor_Induk').AsString;
MessageDlg('Anda Memilih Data Pegawai atas Nama '+ADOQuery1.FieldByName('Nama_Pegawai').AsString,mtInformation,mbOKCancel,0);
formlihatdatakeluarga.Hide;

end;

procedure Tformlihatpegawai.txtcariChange(Sender: TObject);
begin
if txtcari.Text='' then
  begin
   ADOQuery1.Active:=true;
   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('SELECT * FROM Master_Pegawai_Query_Query');
   ADOQuery1.ExecSQL;
   ADOQuery1.Open;
  end
else
  begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Pegawai_Query_Query Where Nomor_Induk Like'+QuotedStr(txtcari.Text+'%')+' or Nama_Pegawai Like'+QuotedStr('%'+txtcari.Text+'%')+' or Personel_Number Like'+QuotedStr(txtcari.Text+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
end;

end;

procedure Tformlihatpegawai.Image1Click(Sender: TObject);
begin
formlihatpegawai.Hide;
end;

end.
