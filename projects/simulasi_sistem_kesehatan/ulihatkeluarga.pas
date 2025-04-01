unit ulihatkeluarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, jpeg, ExtCtrls, StdCtrls, ComCtrls,
  Menus, RpRave, RpDefine, RpCon, RpConDS, ComObj, Tlhelp32;

type
  Tformlihatkeluarga = class(TForm)
    griddata: TImage;
    DBGrid2: TDBGrid;
    querycarikeluarga: TADOQuery;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    Image1: TImage;
    GroupBox2: TGroupBox;
    Shape8: TShape;
    Label11: TLabel;
    Label10: TLabel;
    Shape10: TShape;
    Shape11: TShape;
    Label15: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Shape12: TShape;
    Image2: TImage;
    btncaritanggal: TImage;
    btncarikodejeniskeluarga: TImage;
    Image7: TImage;
    edcarinama: TEdit;
    edcarino: TEdit;
    DateTimePicker3: TDateTimePicker;
    cbcarijk: TComboBox;
    cbcarist: TComboBox;
    GroupBox1: TGroupBox;
    Image3: TImage;
    btnberdasarkannnama: TImage;
    Image10: TImage;
    qkodejenis: TADOQuery;
    qstatustunjangan: TADOQuery;
    PopupMenu1: TPopupMenu;
    RefreshData1: TMenuItem;
    Kem1: TMenuItem;
    KembaliKeMenuAdmin1: TMenuItem;
    KeluarAplikasi1: TMenuItem;
    ransaksiKeluarga1: TMenuItem;
    MainMenu1: TMainMenu;
    Aplikasi1: TMenuItem;
    KembaliKeAdmin1: TMenuItem;
    KembaliKeMenuKeluarga1: TMenuItem;
    KeTransaksiKeluarga1: TMenuItem;
    KeluarAplikasi2: TMenuItem;
    anyakan1: TMenuItem;
    entangAplikasi1: TMenuItem;
    Bantuan1: TMenuItem;
    Print1: TMenuItem;
    BerdasarkanNoInduk1: TMenuItem;
    BerdasarkanNama1: TMenuItem;
    BerdasarkanJenisKeluarga1: TMenuItem;
    BerdasarkanStatusTunjangan1: TMenuItem;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Shape5: TShape;
    Label18: TLabel;
    Label21: TLabel;
    lbllogin: TLabel;
    Shape6: TShape;
    Shape9: TShape;
    lbljam: TLabel;
    lblhari: TLabel;
    Timer1: TTimer;
    reportkeluarga: TRvDataSetConnection;
    reportkelurga: TRvProject;
    PrintSemuaData1: TMenuItem;
    btnkembalikemenu: TImage;
    Export1: TMenuItem;
    ExportSemuaData1: TMenuItem;
    ExportBerdasarkanNamaKeluarga1: TMenuItem;
    ExportBerdasarkanNomorIndukPegawai1: TMenuItem;
    ExportBerdasarkanStatusTunjangan1: TMenuItem;
    ExportBerdasarkanJenisKeluarga1: TMenuItem;
    Image8: TImage;
    procedure btncarinamaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edcarinoKeyPress(Sender: TObject; var Key: Char);
    procedure btncaritanggalClick(Sender: TObject);
    procedure edcarinamaKeyPress(Sender: TObject; var Key: Char);
    procedure cbcarijkChange(Sender: TObject);
    procedure btncarikodejeniskeluargaClick(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure KembaliKeMenuAdmin1Click(Sender: TObject);
    procedure Kem1Click(Sender: TObject);
    procedure ransaksiKeluarga1Click(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
    procedure KembaliKeAdmin1Click(Sender: TObject);
    procedure KembaliKeMenuKeluarga1Click(Sender: TObject);
    procedure KeTransaksiKeluarga1Click(Sender: TObject);
    procedure KeluarAplikasi2Click(Sender: TObject);
    procedure cbcaristChange(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure entangAplikasi1Click(Sender: TObject);
    procedure btnberdasarkannnamaClick(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure BerdasarkanNoInduk1Click(Sender: TObject);
    procedure BerdasarkanNama1Click(Sender: TObject);
    procedure BerdasarkanJenisKeluarga1Click(Sender: TObject);
    procedure BerdasarkanStatusTunjangan1Click(Sender: TObject);
    procedure PrintSemuaData1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edcarinoEnter(Sender: TObject);
    procedure edcarinamaEnter(Sender: TObject);
    procedure edcarinamaExit(Sender: TObject);
    procedure edcarinoExit(Sender: TObject);
    procedure edcarinamaChange(Sender: TObject);
    procedure edcarinoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnkembalikemenuClick(Sender: TObject);
    procedure ExportSemuaData1Click(Sender: TObject);
    procedure ExportBerdasarkanNamaKeluarga1Click(Sender: TObject);
    procedure ExportBerdasarkanNomorIndukPegawai1Click(Sender: TObject);
    procedure ExportBerdasarkanStatusTunjangan1Click(Sender: TObject);
    procedure ExportBerdasarkanJenisKeluarga1Click(Sender: TObject);
    procedure Shape5ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Image8Click(Sender: TObject);
  private
    procedure RefreshData;
    procedure MatikanSemuaTransaksi;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formlihatkeluarga: Tformlihatkeluarga;

implementation

uses UASAL, uDoctorMenu, uInsertMasterPegawai, uLihatPasien, ulihatrecord,
  uLihatTranspeg, ulogindokter, umainobat, uMainUtama, uMasterDokter,
  uMasterKegunaanObat, uMasterKeluarga, uMasterLogin, uMasterObat,
  uMasterPasien, uMenuAwal, uMenuPegawai, uPasien, upilihdokter,
  uPilihKeluarga, uSplash, uAbout, uFamilytypetrans, ulihatdataobat,
  ulogin, umainobatpoli, uStatusPegawai, uTransunit;

{$R *.dfm}

procedure Tformlihatkeluarga.btncarinamaClick(Sender: TObject);
begin
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE Nama_Keluarga=:Nama ORDER BY Nomor_Induk ASC');
querycarikeluarga.Parameters.ParamByName('Nama').Value:=edcarinama.Text;
querycarikeluarga.Open;
end;

procedure Tformlihatkeluarga.FormActivate(Sender: TObject);
begin
querycarikeluarga.Active:=true;
qstatustunjangan.Active:=true;
qkodejenis.Active:=true;

qstatustunjangan.Close;
qstatustunjangan.SQL.Clear;
qstatustunjangan.SQL.Add('Select * From master_status_tunjangan');
qstatustunjangan.Open;
qstatustunjangan.First;
cbcarijk.Clear;
cbcarist.Clear;
While not qstatustunjangan.Eof do
begin
cbcarist.Items.Add(qstatustunjangan['status_tunjangan']);
qstatustunjangan.Next;
end;
qkodejenis.Close;
qkodejenis.SQL.Clear;
qkodejenis.SQL.Add('Select * From master_jenis_keluarga');
qkodejenis.Open;
qkodejenis.First;
While not qkodejenis.Eof do
begin
cbcarijk.Items.Add(qkodejenis['jenis_keluarga']);
qkodejenis.Next;
end;

end;

procedure Tformlihatkeluarga.edcarinoKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;

end;

procedure Tformlihatkeluarga.btncaritanggalClick(Sender: TObject);
begin


querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE tanggal_kahir =:tanggal ORDER BY nomor_induk ASC');
querycarikeluarga.Parameters.ParamByName('tanggal').Value:=FormatDateTime('mm/dd/yyyy',DateTimePicker3.Date);
querycarikeluarga.Open;
end;

procedure Tformlihatkeluarga.RefreshData;
begin
edcarinama.Clear;
edcarino.Clear;
cbcarijk.Clear;
cbcarist.Clear;
  ShowMessage('Form telah di Refresh');
  querycarikeluarga.Close;
  querycarikeluarga.SQL.Clear;
  querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga');
  querycarikeluarga.Open;
  qstatustunjangan.Close;
qstatustunjangan.SQL.Clear;
qstatustunjangan.SQL.Add('Select * From master_status_tunjangan');
qstatustunjangan.Open;
qstatustunjangan.First;
While not qstatustunjangan.Eof do
begin
cbcarist.Items.Add(qstatustunjangan['status_tunjangan']);
qstatustunjangan.Next;
end;
qkodejenis.Close;
qkodejenis.SQL.Clear;
qkodejenis.SQL.Add('Select * From master_jenis_keluarga');
qkodejenis.Open;
qkodejenis.First;
While not qkodejenis.Eof do
begin
cbcarijk.Items.Add(qkodejenis['jenis_keluarga']);
qkodejenis.Next;
end;

end;
procedure Tformlihatkeluarga.edcarinamaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key=chr(13)) then exit;
    btncarinamaClick(Sender);
end;

procedure Tformlihatkeluarga.cbcarijkChange(Sender: TObject);
begin
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE jenis_keluarga =:jenis ORDER BY nomor_induk ASC');
querycarikeluarga.Parameters.ParamByName('jenis').Value:=cbcarijk.Text;
querycarikeluarga.Open;

end;

procedure Tformlihatkeluarga.btncarikodejeniskeluargaClick(
  Sender: TObject);
begin
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE jenis_keluarga =:jenis ORDER BY nomor_induk ASC');
querycarikeluarga.Parameters.ParamByName('jenis').Value:=cbcarijk.Text;
querycarikeluarga.Open;
end;

procedure Tformlihatkeluarga.KeluarAplikasi1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformlihatkeluarga.KembaliKeMenuAdmin1Click(Sender: TObject);
begin
 RefreshData;
   fMainmenu.Show;
   formlihatkeluarga.Hide;
end;

procedure Tformlihatkeluarga.Kem1Click(Sender: TObject);
begin
 RefreshData;
    formmainkeluarga.Show;
    formlihatkeluarga.Hide;
end;

procedure Tformlihatkeluarga.ransaksiKeluarga1Click(Sender: TObject);
begin
 RefreshData;
    formtablekeluarga.Show;
    formlihatkeluarga.Hide;
end;

procedure Tformlihatkeluarga.RefreshData1Click(Sender: TObject);
begin
    RefreshData;
end;

procedure Tformlihatkeluarga.KembaliKeAdmin1Click(Sender: TObject);
begin
 RefreshData;
    MatikanSemuaTransaksi;
  fMainmenu.Show;
  formlihatkeluarga.Hide;

end;

procedure Tformlihatkeluarga.KembaliKeMenuKeluarga1Click(Sender: TObject);
begin
     RefreshData;
        MatikanSemuaTransaksi;
    formmainkeluarga.Show;
    formlihatkeluarga.Hide;

end;

procedure Tformlihatkeluarga.KeTransaksiKeluarga1Click(Sender: TObject);
begin
 RefreshData;
     MatikanSemuaTransaksi;
    formtablekeluarga.Show;
    formlihatkeluarga.Hide;

end;

procedure Tformlihatkeluarga.KeluarAplikasi2Click(Sender: TObject);
begin
MatikanSemuaTransaksi;
  Application.Terminate;
  Application.Terminate;
end;

procedure Tformlihatkeluarga.cbcaristChange(Sender: TObject);
begin
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE status_tunjangan =:status ORDER BY nomor_induk ASC');
querycarikeluarga.Parameters.ParamByName('status').Value:=cbcarist.Text;
querycarikeluarga.Open;
end;

procedure Tformlihatkeluarga.Image7Click(Sender: TObject);
begin
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE status_tunjangan =:status ORDER BY nomor_induk ASC');
querycarikeluarga.Parameters.ParamByName('status').Value:=cbcarist.Text;
querycarikeluarga.Open;
end;

procedure Tformlihatkeluarga.Timer1Timer(Sender: TObject);
begin
lblhari.Caption:=FormatDateTime('dddd,mmmm,yyyy',now);
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
if edcarinama.Text<>'' then
  begin
    Shape8.Visible:=true;
  end
else
  begin
    Shape8.Visible:=false;
  end;
if edcarino.Text<>'' then
  begin
    Shape10.Visible:=true;
  end
else
  begin
    Shape10.Visible:=false;
  end;
if cbcarijk.Text<>'' then
  begin
    Shape11.Visible:=true;
  end
else
  begin
    Shape11.Visible:=false;
  end;
if cbcarist.Text<>'' then
  begin
    Shape12.Visible:=true;
  end
else
  begin
    Shape12.Visible:=false;
  end;
end;

procedure Tformlihatkeluarga.entangAplikasi1Click(Sender: TObject);
begin
formabout.Show;
end;

procedure Tformlihatkeluarga.btnberdasarkannnamaClick(Sender: TObject);
var
  data:string;
begin
   data:=InputBox('Print Data','Silahkan Masukkan Nomor Induk ;','');
   querycarikeluarga.Active:=true;
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE nomor_induk Like'+QuotedStr(data+'%'));
querycarikeluarga.ExecSQL;
querycarikeluarga.Open;
reportkelurga.Open;
reportkelurga.SelectReport('Report',False);
reportkelurga.SetParam('datastr','Berdasarkan Nomor Induk :'+data);
reportkelurga.Execute;
reportkelurga.Close;
end;

procedure Tformlihatkeluarga.Image10Click(Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nama Keluarga :','');
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE Nama_Keluarga Like'+QuotedStr('%'+data+'%'));
querycarikeluarga.ExecSQL;
querycarikeluarga.Open;
reportkelurga.Open;
reportkelurga.SelectReport('Report',False);
reportkelurga.SetParam('datastr','Berdasarkan Nama Keluarga :'+data);
reportkelurga.Execute;
reportkelurga.Close;
end;

procedure Tformlihatkeluarga.Image4Click(Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Jenis Keluarga :','');
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE jenis_keluarga Like'+QuotedStr('%'+data+'%'));
querycarikeluarga.ExecSQL;
querycarikeluarga.Open;
reportkelurga.Open;
reportkelurga.SelectReport('Report',False);
reportkelurga.SetParam('datastr','Berdasarkan Jenis Keluarga :'+data);
reportkelurga.Execute;
reportkelurga.Close;
end;

procedure Tformlihatkeluarga.Image5Click(Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Status Tunjangan :','');
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE status_tunjangan Like'+QuotedStr(data+'%'));
querycarikeluarga.ExecSQL;
querycarikeluarga.Open;
reportkelurga.Open;
reportkelurga.SelectReport('Report',False);
reportkelurga.SetParam('datastr','Berdasarkan Status Tunjangan :'+data);
reportkelurga.Execute;
reportkelurga.Close;
end;

procedure Tformlihatkeluarga.Image6Click(Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Tanggal Lahir (mm/dd/yyyy)','');
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE tanggal_kahir =:tanggal ORDER BY nomor_induk ASC');
querycarikeluarga.Parameters.ParamByName('tanggal').Value:=data;
querycarikeluarga.Open;
reportkelurga.Open;
reportkelurga.SelectReport('Report',False);
reportkelurga.SetParam('datastr','Berdasarkan Tanggal Lahir :'+data);
reportkelurga.Execute;
reportkelurga.Close;
end;

procedure Tformlihatkeluarga.BerdasarkanNoInduk1Click(Sender: TObject);
begin
btnberdasarkannnamaClick(Sender);
end;

procedure Tformlihatkeluarga.BerdasarkanNama1Click(Sender: TObject);
begin
Image10Click(Sender);
end;

procedure Tformlihatkeluarga.BerdasarkanJenisKeluarga1Click(
  Sender: TObject);
begin
Image4Click(Sender);
end;

procedure Tformlihatkeluarga.BerdasarkanStatusTunjangan1Click(
  Sender: TObject);
begin
Image5Click(Sender);
end;

procedure Tformlihatkeluarga.PrintSemuaData1Click(Sender: TObject);
begin
  querycarikeluarga.Active:=true;
  querycarikeluarga.Close;
  querycarikeluarga.SQL.Clear;
  querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga');
  querycarikeluarga.Open;
  qstatustunjangan.Close;
  reportkelurga.Execute;
end;

procedure Tformlihatkeluarga.FormCreate(Sender: TObject);
begin
querycarikeluarga.Active:=true;
qkodejenis.Active:=true;
qstatustunjangan.Active:=true;

end;

procedure Tformlihatkeluarga.edcarinoEnter(Sender: TObject);
begin
edcarino.Text:='';
edcarino.Font.Color:=clHotLight;
end;

procedure Tformlihatkeluarga.edcarinamaEnter(Sender: TObject);
begin
edcarinama.Text:='';
edcarinama.Font.Color:=clHotLight;
end;

procedure Tformlihatkeluarga.edcarinamaExit(Sender: TObject);
begin
if edcarinama.Text='' then
  begin
    edcarinama.Font.Color:=clMedGray;
    edcarinama.Text:='Nama Keluarga';
  end;
end;

procedure Tformlihatkeluarga.edcarinoExit(Sender: TObject);
begin
if edcarino.Text='' then
  begin
    edcarino.Font.Color:=clMedGray;
    edcarino.Text:='Nomor Induk Pegawai';
  end;
end;

procedure Tformlihatkeluarga.edcarinamaChange(Sender: TObject);
begin
if edcarinama.Text='' then
  begin
  querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga');
querycarikeluarga.ExecSQL;
querycarikeluarga.Open;
end
else
  begin
querycarikeluarga.Active:=true;
  querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE Nama_Keluarga Like '+QuotedStr('%'+edcarinama.Text+'%'));
querycarikeluarga.ExecSQL;
querycarikeluarga.Open;
end;
end;

procedure Tformlihatkeluarga.edcarinoChange(Sender: TObject);
begin
if edcarino.Text='' then
begin
querycarikeluarga.Active:=true;
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga');
querycarikeluarga.ExecSQL;
querycarikeluarga.Open;
end
else
  begin
  querycarikeluarga.Active:=true;
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE nomor_induk Like'+QuotedStr(edcarino.Text+'%'));
querycarikeluarga.ExecSQL;
querycarikeluarga.Open;
end;
end;

procedure Tformlihatkeluarga.FormClose(Sender: TObject;
  var Action: TCloseAction);
    var
  H: HWND;
begin
If MessageDlg('Apakah Anda Ingin Keluar Dari Aplikasi',mtConfirmation,mbYesNoCancel,1)=mrYes then
  begin
    MessageDlg('Terima Kasih Telah menggunakan Aplikasi',mtInformation,[mbOk],1);

    Self.CloseQuery;
    MatikanSemuaTransaksi;
        Application.Terminate;
    H := FindWindow(nil, 'PoliklinikBaru');
    if H <> 0 then
    begin
    PostMessage(H, WM_CLOSE, 0, 0);

    Application.Terminate;

    end
    else
    ShowMessage('Try To Close');
    Application.Terminate;
    end
else
  begin
    Abort;
  end;
end;

procedure Tformlihatkeluarga.btnkembalikemenuClick(Sender: TObject);
begin
MatikanSemuaTransaksi;
KembaliKeMenuKeluarga1Click(Sender);
end;

procedure Tformlihatkeluarga.ExportSemuaData1Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
//data:=InputBox('Silahkan Masukkan Nomor Induk :','Export Data','');
//
 querycarikeluarga.Active:=true;
  querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga order By No_Keluarga ASC');
querycarikeluarga.ExecSQL;
querycarikeluarga.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querycarikeluarga.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querycarikeluarga.Fields[filName].FieldName;
   end;
//
if querycarikeluarga.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querycarikeluarga.RecordCount=1 then
begin
for r:=0 to querycarikeluarga.RecordCount-1 do
begin
  for c:=0 to querycarikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querycarikeluarga.Fields[c].AsString;
  end;
 querycarikeluarga.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querycarikeluarga.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querycarikeluarga.RecordCount-1 do
begin
  for c:=0 to querycarikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querycarikeluarga.Fields[c].AsString;
  end;
 querycarikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querycarikeluarga.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatkeluarga.ExportBerdasarkanNamaKeluarga1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Keluarga :','Export Data','');
//
querycarikeluarga.Active:=true;
querycarikeluarga.Active:=true;
  querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE Nama_Keluarga Like '+QuotedStr('%'+data+'%'));
querycarikeluarga.ExecSQL;
querycarikeluarga.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querycarikeluarga.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querycarikeluarga.Fields[filName].FieldName;
   end;
//
if querycarikeluarga.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querycarikeluarga.RecordCount=1 then
begin
for r:=0 to querycarikeluarga.RecordCount-1 do
begin
  for c:=0 to querycarikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querycarikeluarga.Fields[c].AsString;
  end;
 querycarikeluarga.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querycarikeluarga.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querycarikeluarga.RecordCount-1 do
begin
  for c:=0 to querycarikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querycarikeluarga.Fields[c].AsString;
  end;
 querycarikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querycarikeluarga.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;


procedure Tformlihatkeluarga.ExportBerdasarkanNomorIndukPegawai1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Induk :','Export Data','');
//
  querycarikeluarga.Active:=true;
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE nomor_induk Like'+QuotedStr(data));
querycarikeluarga.ExecSQL;
querycarikeluarga.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querycarikeluarga.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querycarikeluarga.Fields[filName].FieldName;
   end;
//
if querycarikeluarga.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querycarikeluarga.RecordCount=1 then
begin
for r:=0 to querycarikeluarga.RecordCount-1 do
begin
  for c:=0 to querycarikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querycarikeluarga.Fields[c].AsString;
  end;
 querycarikeluarga.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querycarikeluarga.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querycarikeluarga.RecordCount-1 do
begin
  for c:=0 to querycarikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querycarikeluarga.Fields[c].AsString;
  end;
 querycarikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querycarikeluarga.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatkeluarga.ExportBerdasarkanStatusTunjangan1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Keluarga :','Export Data','');
//
querycarikeluarga.Active:=true;
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE status_tunjangan Like'+QuotedStr('%'+data+'%'));
querycarikeluarga.ExecSQL;
querycarikeluarga.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querycarikeluarga.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querycarikeluarga.Fields[filName].FieldName;
   end;
//
if querycarikeluarga.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querycarikeluarga.RecordCount=1 then
begin
for r:=0 to querycarikeluarga.RecordCount-1 do
begin
  for c:=0 to querycarikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querycarikeluarga.Fields[c].AsString;
  end;
 querycarikeluarga.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querycarikeluarga.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querycarikeluarga.RecordCount-1 do
begin
  for c:=0 to querycarikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querycarikeluarga.Fields[c].AsString;
  end;
 querycarikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querycarikeluarga.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;

procedure Tformlihatkeluarga.ExportBerdasarkanJenisKeluarga1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Jenis Keluarga :','Export Data','');
//
querycarikeluarga.Active:=true;
querycarikeluarga.Close;
querycarikeluarga.SQL.Clear;
querycarikeluarga.SQL.Add('SELECT * FROM Query_Pegawai_Keluarga WHERE jenis_keluarga Like'+QuotedStr('%'+data+'%'));
querycarikeluarga.ExecSQL;
querycarikeluarga.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querycarikeluarga.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querycarikeluarga.Fields[filName].FieldName;
   end;
//
if querycarikeluarga.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querycarikeluarga.RecordCount=1 then
begin
for r:=0 to querycarikeluarga.RecordCount-1 do
begin
  for c:=0 to querycarikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querycarikeluarga.Fields[c].AsString;
  end;
 querycarikeluarga.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querycarikeluarga.RecordCount)].Borders.LineStyle :=1;

XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end
else
  begin
for r:=0 to querycarikeluarga.RecordCount-1 do
begin
  for c:=0 to querycarikeluarga.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querycarikeluarga.Fields[c].AsString;
  end;
 querycarikeluarga.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querycarikeluarga.RecordCount-1)].Borders.LineStyle :=1;
XApp.WorkSheets['Sheet1'].Columns[1].ColumnWidth:=16;
XApp.WorkSheets['Sheet1'].Columns[2].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[3].ColumnWidth:=19;
XApp.WorkSheets['Sheet1'].Columns[4].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[5].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[6].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[7].ColumnWidth:=46;
XApp.WorkSheets['Sheet1'].Columns[8].ColumnWidth:=9;
XApp.WorkSheets['Sheet1'].Columns[9].ColumnWidth:=7;
XApp.WorkSheets['Sheet1'].Columns[10].ColumnWidth:=6;
XApp.WorkSheets['Sheet1'].Columns[11].ColumnWidth:=13;
end;
end;


function KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(
                        OpenProcess(PROCESS_TERMINATE,
                                    BOOL(0),
                                    FProcessEntry32.th32ProcessID),
                                    0));
     ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;
procedure Tformlihatkeluarga.Shape5ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
    KillTask('PoliklinikBaru.exe');
end;

procedure Tformlihatkeluarga.MatikanSemuaTransaksi;
begin
ADOConnection1.Connected:=false;
querycarikeluarga.Active:=false;
qkodejenis.Active:=false;
qstatustunjangan.Active:=false;
end;

procedure Tformlihatkeluarga.Image8Click(Sender: TObject);
begin
MatikanSemuaTransaksi;
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
formlihatkeluarga.Hide;
end;

end.
