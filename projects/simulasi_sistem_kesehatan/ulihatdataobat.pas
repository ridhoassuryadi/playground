unit ulihatdataobat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, jpeg, ExtCtrls, Menus, StdCtrls,
  RpDefine, RpCon, RpConDS, RpRave, ComObj;

type
  Tformlihatobat = class(TForm)
    ADOConnection1: TADOConnection;
    querylihatobatterbanyak: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Aplikasi1: TMenuItem;
    KeMenuAdmin1: TMenuItem;
    KembaliKeMenuObat1: TMenuItem;
    ransasksiDataObat1: TMenuItem;
    KeluarAplikasi1: TMenuItem;
    anyakan1: TMenuItem;
    entangAplikasi1: TMenuItem;
    Bantuan1: TMenuItem;
    PrintData1: TMenuItem;
    Image2: TImage;
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
    ednamaobat: TEdit;
    ednamageneric: TEdit;
    ed: TEdit;
    cbkelaspertama: TComboBox;
    cbkelaskedua: TComboBox;
    cbkelasketiga: TComboBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Label1: TLabel;
    grupdatagridfield: TGroupBox;
    Image4: TImage;
    Shape5: TShape;
    Label2: TLabel;
    Shape8: TShape;
    Shape9: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape10: TShape;
    Shape11: TShape;
    edgridnama: TEdit;
    edgridgeneric: TEdit;
    edgridkelaspertama: TEdit;
    edgridkelaskedua: TEdit;
    edgridkelasketiga: TEdit;
    queryformularium: TADOQuery;
    edgridnomor: TEdit;
    Shape12: TShape;
    Label7: TLabel;
    edgridstock: TEdit;
    Shape13: TShape;
    Label8: TLabel;
    Timer1: TTimer;
    DBGridLihatDataObat: TDBGrid;
    PopupMenu1: TPopupMenu;
    Kembali1: TMenuItem;
    KeMenuObat1: TMenuItem;
    KeMenuAdmin2: TMenuItem;
    KeluarAplikasi2: TMenuItem;
    KeTransaksiObat1: TMenuItem;
    LihatTransaksiObat1: TMenuItem;
    anyakan2: TMenuItem;
    entangAplikasi2: TMenuItem;
    Bantuan2: TMenuItem;
    DataSource2: TDataSource;
    Label15: TLabel;
    StockObat1: TMenuItem;
    FormulariumObat1: TMenuItem;
    Refresh1: TMenuItem;
    querymasterkelasppertama: TADOQuery;
    query_master_kedua: TADOQuery;
    querymasterkelasketiga: TADOQuery;
    lblkodejk: TLabel;
    lblkodest: TLabel;
    lblcarikodejk: TLabel;
    Shape15: TShape;
    Label18: TLabel;
    Label19: TLabel;
    lbltransaksi: TLabel;
    Label21: TLabel;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    lbljam: TLabel;
    lblhari: TLabel;
    Shape20: TShape;
    Shape21: TShape;
    lbllogin: TLabel;
    Image13: TImage;
    RvDataSetConnection1: TRvDataSetConnection;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    projectlihatterbanyak: TRvProject;
    dsobattransaksi: TRvDataSetConnection;
    JumlahPembelianObat1: TMenuItem;
    PrintS1: TMenuItem;
    dsformularium: TRvDataSetConnection;
    projectformularium: TRvProject;
    btnkembalikemenu: TImage;
    ExportData1: TMenuItem;
    ExportBerdasarkanNomorKelasSatu1: TMenuItem;
    ExportBerdasarkanNomorKelasDua1: TMenuItem;
    ExportBerdasarkanKelasPertama1: TMenuItem;
    ExportBerdasarkanKelasKedua1: TMenuItem;
    ExportBerdasarkanKelasKetiga1: TMenuItem;
    ExportBerdasarkanNamaObat1: TMenuItem;
    ExportBerdasarkanNamaGeneric1: TMenuItem;
    ExportBerdasarkanNomorObat1: TMenuItem;
    ExportBerdasarkanNomorObat2: TMenuItem;
    ExportBerdasarkanNamaGeneric2: TMenuItem;
    ExportBerdasarkanNamaObat2: TMenuItem;
    ExportBerdasarkanKelasPertama2: TMenuItem;
    ExportBerdasarkanKelasKedua2: TMenuItem;
    ExportBerdasarkanKelasKetiga2: TMenuItem;
    ExportSemuaData1: TMenuItem;
    ExportSemuaData2: TMenuItem;
    btntransdataobat: TImage;
    PrintSemuaData1: TMenuItem;
    PrintSemuaRecord1: TMenuItem;
    PrintBerdasarkanNamaObat1: TMenuItem;
    PrintBerdasarkanNamaGeneric1: TMenuItem;
    PrintBerdasarkanNomorObat1: TMenuItem;
    PrintBerdasarkanKelasPertama1: TMenuItem;
    PrintBerdasarkanKelasKetiga1: TMenuItem;
    PrintDataKelasKedua1: TMenuItem;
    PrintDataBerdasarkanNamaObat1: TMenuItem;
    PrintDataBerdasarkanNamaGeneric1: TMenuItem;
    PrintBerdasarkan1: TMenuItem;
    PrintBerdasarkanKelasPertama2: TMenuItem;
    PrintDataBerdasarkanKelasKedua1: TMenuItem;
    PrintDataBerdasarkanKelasKetiga1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure KeMenuAdmin1Click(Sender: TObject);
    procedure KembaliKeMenuObat1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure StockObat1Click(Sender: TObject);
    procedure FormulariumObat1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure KeMenuObat1Click(Sender: TObject);
    procedure KeMenuAdmin2Click(Sender: TObject);
    procedure KeTransaksiObat1Click(Sender: TObject);
    procedure btncarinomorindukClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure cbkelaspertamaChange(Sender: TObject);
    procedure cbkelaskeduaChange(Sender: TObject);
    procedure cbkelasketigaChange(Sender: TObject);
    procedure DBGridLihatDataObatDblClick(Sender: TObject);
    procedure ednamaobatKeyPress(Sender: TObject; var Key: Char);
    procedure ednamagenericKeyPress(Sender: TObject; var Key: Char);
    procedure edKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure PrintS1Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure ransasksiDataObat1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ednamaobatChange(Sender: TObject);
    procedure ednamagenericChange(Sender: TObject);
    procedure edChange(Sender: TObject);
    procedure btnkembalikemenuClick(Sender: TObject);
    procedure ExportBerdasarkanKelasPertama1Click(Sender: TObject);
    procedure ExportBerdasarkanKelasKedua1Click(Sender: TObject);
    procedure ExportBerdasarkanKelasKetiga1Click(Sender: TObject);
    procedure ExportBerdasarkanNamaObat1Click(Sender: TObject);
    procedure ExportBerdasarkanNamaGeneric1Click(Sender: TObject);
    procedure ExportBerdasarkanNomorObat1Click(Sender: TObject);
    procedure ExportSemuaData2Click(Sender: TObject);
    procedure ExportSemuaData1Click(Sender: TObject);
    procedure ExportBerdasarkanNomorObat2Click(Sender: TObject);
    procedure ExportBerdasarkanNamaGeneric2Click(Sender: TObject);
    procedure ExportBerdasarkanNamaObat2Click(Sender: TObject);
    procedure ExportBerdasarkanKelasPertama2Click(Sender: TObject);
    procedure ExportBerdasarkanKelasKedua2Click(Sender: TObject);
    procedure ExportBerdasarkanKelasKetiga2Click(Sender: TObject);
    procedure btntransdataobatClick(Sender: TObject);
    procedure PrintBerdasarkanNamaObat1Click(Sender: TObject);
    procedure PrintBerdasarkanNamaGeneric1Click(Sender: TObject);
    procedure PrintBerdasarkanNomorObat1Click(Sender: TObject);
    procedure PrintBerdasarkanKelasPertama1Click(Sender: TObject);
    procedure PrintDataKelasKedua1Click(Sender: TObject);
    procedure PrintBerdasarkanKelasKetiga1Click(Sender: TObject);
    procedure PrintSemuaRecord1Click(Sender: TObject);
    procedure PrintDataBerdasarkanNamaObat1Click(Sender: TObject);
    procedure PrintDataBerdasarkanNamaGeneric1Click(Sender: TObject);
    procedure PrintBerdasarkan1Click(Sender: TObject);
    procedure PrintBerdasarkanKelasPertama2Click(Sender: TObject);
    procedure PrintDataBerdasarkanKelasKedua1Click(Sender: TObject);
    procedure PrintDataBerdasarkanKelasKetiga1Click(Sender: TObject);
  private
    procedure RefreshData;
    procedure TutupKoneksi;
    procedure RefreshForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formlihatobat: Tformlihatobat;

implementation

uses UASAL, uDoctorMenu, uInsertMasterPegawai, ulihatkeluarga,
  uLihatPasien, ulihatrecord, uLihatTranspeg, ulogindokter, umainobat,
  umainobatpoli, uMainUtama, uMasterDokter, uMasterKegunaanObat,
  uMasterKeluarga, uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal,
  uMenuPegawai, uPasien, upilihdokter, uPilihKeluarga, uSplash,
  AutoCompleteText, AutoEdit, ss, uAbout, uDoctorMain, uFamilytypetrans,
  uLihatBerobatKeluarga, ulihatChart, ulihatchart2, ulihatchartobat,
  ulihatdataberobat, uLihatDataDokter, uLihatDataPasien, uLihatpegawai,
  ulogin, uMasterPilihan, uMenuBerobat, uMenuDokter, uMenuUser, Unit1,
  uRiwayatpenyakit, uStatusPegawai, utest2, uTransaksiuser, uTransunit;

{$R *.dfm}

procedure Tformlihatobat.FormCreate(Sender: TObject);
begin
querylihatobatterbanyak.Active:=true;
queryformularium.Active:=true;
querymasterkelasppertama.Active:=true;
query_master_kedua.Active:=true;
querymasterkelasketiga.Active:=true;
//
querylihatobatterbanyak.Active:=false;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat');
querylihatobatterbanyak.Active:=true;
//
querymasterkelasppertama.Close;
querymasterkelasppertama.SQL.Clear;
querymasterkelasppertama.SQL.Add('Select * From Master_Kelas_Pertama');
querymasterkelasppertama.Open;
querymasterkelasppertama.First;
While not querymasterkelasppertama.Eof do
begin
cbkelaspertama.Items.Add(querymasterkelasppertama['Nama_Kelas_Pertama']);
querymasterkelasppertama.Next;
end;
//
query_master_kedua.Active:=true;
query_master_kedua.Close;
query_master_kedua.SQL.Clear;
query_master_kedua.SQL.Add('Select * From Master_Kelas_Kedua');
query_master_kedua.Open;
query_master_kedua.First;
While not query_master_kedua.Eof do
begin
cbkelaskedua.Items.Add(query_master_kedua['Nama_Kelas_Kedua']);
query_master_kedua.Next;
end;

//
querymasterkelasketiga.Close;
querymasterkelasketiga.SQL.Clear;
querymasterkelasketiga.SQL.Add('Select * From Master_Kelas_Ketiga');
querymasterkelasketiga.Open;
querymasterkelasketiga.First;
While not querymasterkelasketiga.Eof do
begin

cbkelasketiga.Items.Add(querymasterkelasketiga['Nama_Kelas_Ketiga']);
querymasterkelasketiga.Next;
end;

end;

procedure Tformlihatobat.KeluarAplikasi1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformlihatobat.KeMenuAdmin1Click(Sender: TObject);
begin
ednamaobat.Clear;
edgridgeneric.Clear;
ed.Clear;
cbkelaspertama.Text:='';
cbkelaskedua.Text:='';
cbkelasketiga.Text:='';
edgridnama.Clear;
edgridgeneric.Clear;
ednamageneric.Clear;
edgridkelaspertama.Clear;
edgridkelaskedua.Clear;
edgridkelasketiga.Clear;
edgridnomor.Clear;
edgridstock.Clear;
//
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat');
queryformularium.Open;
//
querylihatobatterbanyak.Active:=false;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT  Obat,count(Obat) AS Jumlah_Banyak_Pembelian FROM master_record_berobat GROUP BY Obat');
querylihatobatterbanyak.Active:=true;
//
querymasterkelasppertama.Close;
querymasterkelasppertama.SQL.Clear;
querymasterkelasppertama.SQL.Add('Select * From Master_Kelas_Pertama');
querymasterkelasppertama.Open;
querymasterkelasppertama.First;
cbkelaspertama.Clear;
While not querymasterkelasppertama.Eof do
begin
cbkelaspertama.Items.Add(querymasterkelasppertama['Nama_Kelas_Pertama']);
querymasterkelasppertama.Next;
end;
//
query_master_kedua.Close;
query_master_kedua.SQL.Clear;
query_master_kedua.SQL.Add('Select * From Master_Kelas_Kedua');
query_master_kedua.Open;
query_master_kedua.First;
cbkelaskedua.Clear;
While not query_master_kedua.Eof do
begin
cbkelaskedua.Items.Add(query_master_kedua['Nama_Kelas_Kedua']);
query_master_kedua.Next;
end;
//
querymasterkelasketiga.Close;
querymasterkelasketiga.SQL.Clear;
querymasterkelasketiga.SQL.Add('Select * From Master_Kelas_Ketiga');
querymasterkelasketiga.Open;
querymasterkelasketiga.First;
cbkelasketiga.Clear;
While not querymasterkelasketiga.Eof do
begin

cbkelasketiga.Items.Add(querymasterkelasketiga['Nama_Kelas_Ketiga']);
querymasterkelasketiga.Next;
end;
TutupKoneksi;
formadminpoli.Show;
formlihatobat.Hide;
end;

procedure Tformlihatobat.KembaliKeMenuObat1Click(Sender: TObject);
begin
ednamaobat.Clear;
edgridgeneric.Clear;
ed.Clear;
cbkelaspertama.Text:='';
cbkelaskedua.Text:='';
cbkelasketiga.Text:='';
edgridnama.Clear;
edgridgeneric.Clear;
ednamageneric.Clear;
edgridkelaspertama.Clear;
edgridkelaskedua.Clear;
edgridkelasketiga.Clear;
edgridnomor.Clear;
edgridstock.Clear;
//
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat');
queryformularium.Open;
//
querylihatobatterbanyak.Active:=false;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT  Obat,count(Obat) AS Jumlah_Banyak_Pembelian FROM master_record_berobat GROUP BY Obat');
querylihatobatterbanyak.Active:=true;
//
querymasterkelasppertama.Close;
querymasterkelasppertama.SQL.Clear;
querymasterkelasppertama.SQL.Add('Select * From Master_Kelas_Pertama');
querymasterkelasppertama.Open;
querymasterkelasppertama.First;
cbkelaspertama.Clear;
While not querymasterkelasppertama.Eof do
begin
cbkelaspertama.Items.Add(querymasterkelasppertama['Nama_Kelas_Pertama']);
querymasterkelasppertama.Next;
end;
//
query_master_kedua.Close;
query_master_kedua.SQL.Clear;
query_master_kedua.SQL.Add('Select * From Master_Kelas_Kedua');
query_master_kedua.Open;
query_master_kedua.First;
cbkelaskedua.Clear;
While not query_master_kedua.Eof do
begin
cbkelaskedua.Items.Add(query_master_kedua['Nama_Kelas_Kedua']);
query_master_kedua.Next;
end;
//
querymasterkelasketiga.Close;
querymasterkelasketiga.SQL.Clear;
querymasterkelasketiga.SQL.Add('Select * From Master_Kelas_Ketiga');
querymasterkelasketiga.Open;
querymasterkelasketiga.First;
cbkelasketiga.Clear;
While not querymasterkelasketiga.Eof do
begin

cbkelasketiga.Items.Add(querymasterkelasketiga['Nama_Kelas_Ketiga']);
querymasterkelasketiga.Next;
end;
TutupKoneksi;
formmainobat.Show;
formlihatobat.Hide;

end;

procedure Tformlihatobat.Timer1Timer(Sender: TObject);
begin
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
lblhari.Caption:=FormatDateTime('hhhh,mmmm,yyyy',now);
if ednamaobat.Text<>'' then
  begin
    Shape4.Visible:=true;
  end
else
  begin
    Shape4.Visible:=false;
  end;
if ednamageneric.Text<>'' then
  begin
    Shape6.Visible:=true;
  end
else
  begin
    Shape6.Visible:=false;
if ed.Text<>'' then
  begin
    Shape7.Visible:=true;
  end
else
  begin
    Shape7.Visible:=false;
  end;
if cbkelaspertama.Text<>'' then
  begin
    Shape1.Visible:=true;
  end
else
  begin
    Shape1.Visible:=false;
  end;
if cbkelaskedua.Text<> '' then
  begin
    Shape2.Visible:=true;
  end
else
  begin
    Shape2.Visible:=false;
  end;
if cbkelasketiga.Text<>'' then
  begin
    Shape3.Visible:=true;
  end
else
  begin
    Shape3.Visible:=false;
  end;
if edgridnama.Text<>'' then
  begin
    Shape5.Visible:=true;
  end
else
  begin
    Shape5.Visible:=false;
  end;
if edgridgeneric.Text<>'' then
  begin
    Shape8.Visible:=true;
  end
else
  begin
    Shape8.Visible:=false;
  end;
if edgridkelaspertama.Text<>'' then
  begin
    Shape9.Visible:=true;
  end
else
  begin
    Shape9.Visible:=false;
  end;
if edgridkelaskedua.Text<>'' then
  begin
    Shape10.Visible:=true;
  end
else
  begin
    Shape10.Visible:=false;
  end;
if edgridkelasketiga.Text<>'' then
  begin
    Shape11.Visible:=true;
  end
else
  begin
    Shape11.Visible:=false;
  end;
if edgridnomor.Text<>'' then
  begin
    Shape12.Visible:=true;
  end
else
  begin
    Shape12.Visible:=false;
  end;
if edgridstock.Text<>'' then
  begin
    Shape13.Visible:=true;
  end
else
  begin
    Shape13.Visible:=false;
  end;




end;

end;

procedure Tformlihatobat.StockObat1Click(Sender: TObject);
begin

DBGridLihatDataObat.Visible:=false;
DBGrid1.Visible:=true;
end;

procedure Tformlihatobat.FormulariumObat1Click(Sender: TObject);
begin
DBGrid1.Visible:=false;
DBGridLihatDataObat.Visible:=true;
end;

procedure Tformlihatobat.Refresh1Click(Sender: TObject);
begin
ednamaobat.Clear;
edgridgeneric.Clear;
ed.Clear;
cbkelaspertama.Text:='';
cbkelaskedua.Text:='';
cbkelasketiga.Text:='';
edgridnama.Clear;
edgridgeneric.Clear;
ednamageneric.Clear;
edgridkelaspertama.Clear;
edgridkelaskedua.Clear;
edgridkelasketiga.Clear;
edgridnomor.Clear;
edgridstock.Clear;
//
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat');
queryformularium.Open;
//
querylihatobatterbanyak.Active:=false;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT  Obat,count(Obat) AS Jumlah_Banyak_Pembelian FROM master_record_berobat GROUP BY Obat');
querylihatobatterbanyak.Active:=true;
//
querymasterkelasppertama.Close;
querymasterkelasppertama.SQL.Clear;
querymasterkelasppertama.SQL.Add('Select * From Master_Kelas_Pertama');
querymasterkelasppertama.Open;
querymasterkelasppertama.First;
cbkelaspertama.Clear;
While not querymasterkelasppertama.Eof do
begin
cbkelaspertama.Items.Add(querymasterkelasppertama['Nama_Kelas_Pertama']);
querymasterkelasppertama.Next;
end;
//
query_master_kedua.Close;
query_master_kedua.SQL.Clear;
query_master_kedua.SQL.Add('Select * From Master_Kelas_Kedua');
query_master_kedua.Open;
query_master_kedua.First;
cbkelaskedua.Clear;
While not query_master_kedua.Eof do
begin
cbkelaskedua.Items.Add(query_master_kedua['Nama_Kelas_Kedua']);
query_master_kedua.Next;
end;
//
querymasterkelasketiga.Close;
querymasterkelasketiga.SQL.Clear;
querymasterkelasketiga.SQL.Add('Select * From Master_Kelas_Ketiga');
querymasterkelasketiga.Open;
querymasterkelasketiga.First;
cbkelasketiga.Clear;
While not querymasterkelasketiga.Eof do
begin

cbkelasketiga.Items.Add(querymasterkelasketiga['Nama_Kelas_Ketiga']);
querymasterkelasketiga.Next;
end;

end;

procedure Tformlihatobat.KeMenuObat1Click(Sender: TObject);
begin
ednamaobat.Clear;
edgridgeneric.Clear;
ed.Clear;
cbkelaspertama.Text:='';
cbkelaskedua.Text:='';
cbkelasketiga.Text:='';
edgridnama.Clear;
edgridgeneric.Clear;
ednamageneric.Clear;
edgridkelaspertama.Clear;
edgridkelaskedua.Clear;
edgridkelasketiga.Clear;
edgridnomor.Clear;
edgridstock.Clear;
//
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat');
queryformularium.Open;
//
querylihatobatterbanyak.Active:=false;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT  Obat,count(Obat) AS Jumlah_Banyak_Pembelian FROM master_record_berobat GROUP BY Obat');
querylihatobatterbanyak.Active:=true;
//
querymasterkelasppertama.Close;
querymasterkelasppertama.SQL.Clear;
querymasterkelasppertama.SQL.Add('Select * From Master_Kelas_Pertama');
querymasterkelasppertama.Open;
querymasterkelasppertama.First;
cbkelaspertama.Clear;
While not querymasterkelasppertama.Eof do
begin
cbkelaspertama.Items.Add(querymasterkelasppertama['Nama_Kelas_Pertama']);
querymasterkelasppertama.Next;
end;
//
query_master_kedua.Close;
query_master_kedua.SQL.Clear;
query_master_kedua.SQL.Add('Select * From Master_Kelas_Kedua');
query_master_kedua.Open;
query_master_kedua.First;
cbkelaskedua.Clear;
While not query_master_kedua.Eof do
begin
cbkelaskedua.Items.Add(query_master_kedua['Nama_Kelas_Kedua']);
query_master_kedua.Next;
end;
//
querymasterkelasketiga.Close;
querymasterkelasketiga.SQL.Clear;
querymasterkelasketiga.SQL.Add('Select * From Master_Kelas_Ketiga');
querymasterkelasketiga.Open;
querymasterkelasketiga.First;
cbkelasketiga.Clear;
While not querymasterkelasketiga.Eof do
begin

cbkelasketiga.Items.Add(querymasterkelasketiga['Nama_Kelas_Ketiga']);
querymasterkelasketiga.Next;
end;
  formmainobat.show;
  formlihatobat.Hide;
end;

procedure Tformlihatobat.KeMenuAdmin2Click(Sender: TObject);
begin
ednamaobat.Clear;
edgridgeneric.Clear;
ed.Clear;
cbkelaspertama.Text:='';
cbkelaskedua.Text:='';
cbkelasketiga.Text:='';
edgridnama.Clear;
edgridgeneric.Clear;
ednamageneric.Clear;
edgridkelaspertama.Clear;
edgridkelaskedua.Clear;
edgridkelasketiga.Clear;
edgridnomor.Clear;
edgridstock.Clear;
//
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat');
queryformularium.Open;
//
querylihatobatterbanyak.Active:=false;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT  Obat,count(Obat) AS Jumlah_Banyak_Pembelian FROM master_record_berobat GROUP BY Obat');
querylihatobatterbanyak.Active:=true;
//
querymasterkelasppertama.Close;
querymasterkelasppertama.SQL.Clear;
querymasterkelasppertama.SQL.Add('Select * From Master_Kelas_Pertama');
querymasterkelasppertama.Open;
querymasterkelasppertama.First;
cbkelaspertama.Clear;
While not querymasterkelasppertama.Eof do
begin
cbkelaspertama.Items.Add(querymasterkelasppertama['Nama_Kelas_Pertama']);
querymasterkelasppertama.Next;
end;
//
query_master_kedua.Close;
query_master_kedua.SQL.Clear;
query_master_kedua.SQL.Add('Select * From Master_Kelas_Kedua');
query_master_kedua.Open;
query_master_kedua.First;
cbkelaskedua.Clear;
While not query_master_kedua.Eof do
begin
cbkelaskedua.Items.Add(query_master_kedua['Nama_Kelas_Kedua']);
query_master_kedua.Next;
end;
//
querymasterkelasketiga.Close;
querymasterkelasketiga.SQL.Clear;
querymasterkelasketiga.SQL.Add('Select * From Master_Kelas_Ketiga');
querymasterkelasketiga.Open;
querymasterkelasketiga.First;
cbkelasketiga.Clear;
While not querymasterkelasketiga.Eof do
begin

cbkelasketiga.Items.Add(querymasterkelasketiga['Nama_Kelas_Ketiga']);
querymasterkelasketiga.Next;
end;
  fMainmenu.Show;
  formlihatobat.Hide;
end;

procedure Tformlihatobat.KeTransaksiObat1Click(Sender: TObject);
begin
ednamaobat.Clear;
edgridgeneric.Clear;
ed.Clear;
cbkelaspertama.Text:='';
cbkelaskedua.Text:='';
cbkelasketiga.Text:='';
edgridnama.Clear;
edgridgeneric.Clear;
ednamageneric.Clear;
edgridkelaspertama.Clear;
edgridkelaskedua.Clear;
edgridkelasketiga.Clear;
edgridnomor.Clear;
edgridstock.Clear;
//
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat');
queryformularium.Open;
//
querylihatobatterbanyak.Active:=false;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT  Obat,count(Obat) AS Jumlah_Banyak_Pembelian FROM master_record_berobat GROUP BY Obat');
querylihatobatterbanyak.Active:=true;
//
querymasterkelasppertama.Close;
querymasterkelasppertama.SQL.Clear;
querymasterkelasppertama.SQL.Add('Select * From Master_Kelas_Pertama');
querymasterkelasppertama.Open;
querymasterkelasppertama.First;
cbkelaspertama.Clear;
While not querymasterkelasppertama.Eof do
begin
cbkelaspertama.Items.Add(querymasterkelasppertama['Nama_Kelas_Pertama']);
querymasterkelasppertama.Next;
end;
//
query_master_kedua.Close;
query_master_kedua.SQL.Clear;
query_master_kedua.SQL.Add('Select * From Master_Kelas_Kedua');
query_master_kedua.Open;
query_master_kedua.First;
cbkelaskedua.Clear;
While not query_master_kedua.Eof do
begin
cbkelaskedua.Items.Add(query_master_kedua['Nama_Kelas_Kedua']);
query_master_kedua.Next;
end;
//
querymasterkelasketiga.Close;
querymasterkelasketiga.SQL.Clear;
querymasterkelasketiga.SQL.Add('Select * From Master_Kelas_Ketiga');
querymasterkelasketiga.Open;
querymasterkelasketiga.First;
cbkelasketiga.Clear;
While not querymasterkelasketiga.Eof do
begin

cbkelasketiga.Items.Add(querymasterkelasketiga['Nama_Kelas_Ketiga']);
querymasterkelasketiga.Next;
end;
formobat.Show;
formlihatobat.Hide;
end;

procedure Tformlihatobat.btncarinomorindukClick(Sender: TObject);
begin

queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Brand =:nama ORDER BY No_Kelas_Pertama ASC');
queryformularium.Parameters.ParamByName('nama').Value:=ednamaobat.Text;
queryformularium.Open;
//
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Obat='+QuotedStr(ednamaobat.Text));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;

end;

procedure Tformlihatobat.Image5Click(Sender: TObject);
begin
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Generic =:nama ORDER BY No_Kelas_Pertama ASC');
queryformularium.Parameters.ParamByName('nama').Value:=ednamageneric.Text;
queryformularium.ExecSQL;
queryformularium.Open;
//
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Generic='+QuotedStr(ednamageneric.Text));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;

end;

procedure Tformlihatobat.Image17Click(Sender: TObject);
begin
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE No_Obat =:nomor ORDER BY No_Kelas_Pertama ASC');
queryformularium.Parameters.ParamByName('nomor').Value:=ed.Text;
queryformularium.ExecSQL;
queryformularium.Open;
//
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where No_Obat='+ed.Text);
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;

end;

procedure Tformlihatobat.cbkelaspertamaChange(Sender: TObject);
begin
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Kelas_Pertama =:Nama ORDER BY No_Kelas_Pertama ASC');
queryformularium.Parameters.ParamByName('Nama').Value:=cbkelaspertama.Text;
queryformularium.ExecSQL;
queryformularium.Open;
//
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Kelas_Pertama='+QuotedStr(cbkelaspertama.Text));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;

end;

procedure Tformlihatobat.cbkelaskeduaChange(Sender: TObject);
begin
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Kelas_Kedua =:Nama ORDER BY No_Kelas_Pertama ASC');
queryformularium.Parameters.ParamByName('Nama').Value:=cbkelaskedua.Text;
queryformularium.ExecSQL;
queryformularium.Open;
//
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Kelas_Kedua='+QuotedStr(cbkelaskedua.Text));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
end;

procedure Tformlihatobat.cbkelasketigaChange(Sender: TObject);
begin
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Kelas_Ketiga =:Nama ORDER BY No_Kelas_Pertama ASC');
queryformularium.Parameters.ParamByName('Nama').Value:=cbkelasketiga.Text;
queryformularium.ExecSQL;
queryformularium.Open;
//
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Kelas_Ketiga='+QuotedStr(cbkelasketiga.Text));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
end;

procedure Tformlihatobat.DBGridLihatDataObatDblClick(Sender: TObject);
begin
edgridnama.Text:=queryformularium.FieldByName('Nama_Brand').AsString;
edgridgeneric.Text:=queryformularium.FieldByName('Nama_Generic').AsString;
edgridkelaspertama.Text:=queryformularium.FieldByName('Nama_Kelas_Pertama').AsString;
edgridkelaskedua.Text:=queryformularium.FieldByName('Nama_Kelas_Kedua').AsString;
edgridkelasketiga.Text:=queryformularium.FieldByName('Nama_Kelas_Ketiga').AsString;
edgridnomor.Text:=queryformularium.FieldByName('No_Obat').AsString;

end;

procedure Tformlihatobat.ednamaobatKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  btncarinomorindukClick(Sender);
end;

procedure Tformlihatobat.ednamagenericKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  Image5Click(Sender);
end;

procedure Tformlihatobat.edKeyPress(Sender: TObject; var Key: Char);
begin
if not (key=chr(13)) then exit;
Image17Click(Sender);
end;

procedure Tformlihatobat.RadioButton1Click(Sender: TObject);
begin
DBGrid1.Visible:=true;
DBGridLihatDataObat.Visible:=false;
querylihatobatterbanyak.Active:=false;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat ');
querylihatobatterbanyak.Active:=true;

end;

procedure Tformlihatobat.RadioButton2Click(Sender: TObject);
begin
DBGrid1.Visible:=false;
DBGridLihatDataObat.Visible:=true;
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('Select * From q_Formularium_Obat');
queryformularium.ExecSQL;
queryformularium.Open;
end;

procedure Tformlihatobat.PrintS1Click(Sender: TObject);
begin
querylihatobatterbanyak.Active:=false;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat');
querylihatobatterbanyak.Active:=true;
projectlihatterbanyak.Open;
projectlihatterbanyak.SelectReport('Report',False);
projectlihatterbanyak.SetParam('datastr','  Print Semua Data');
projectlihatterbanyak.Execute;
projectlihatterbanyak.Close;
end;

procedure Tformlihatobat.Image9Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Kelas_Kedua='+QuotedStr(cbkelaskedua.Text));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
projectlihatterbanyak.Open;
projectlihatterbanyak.SelectReport('Report',False);
projectlihatterbanyak.SetParam('datastr',' Print Berdasarkan Kelas Kedua :'+cbkelaskedua.Text);
projectlihatterbanyak.Execute;
projectlihatterbanyak.Close;
  end
else if RadioButton2.Checked=true then
  begin
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Kelas_Kedua =:Nama ORDER BY No_Kelas_Pertama ASC');
queryformularium.Parameters.ParamByName('Nama').Value:=cbkelaskedua.Text;
queryformularium.ExecSQL;
queryformularium.Open;
projectformularium.Open;
projectformularium.SelectReport('Report',False);
projectformularium.SetParam('datastr',' Print Berdasarkan Kelas Kedua :'+cbkelaskedua.Text);
projectformularium.Execute;
projectformularium.Close;

  end
else
  begin
  MessageDlg('Print Data Tidak Tersedia',mtError,[mbYes],1);

  end;
end;

procedure Tformlihatobat.Image13Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
  querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Obat Like'+QuotedStr('%'+ednamaobat.Text+'%'));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
projectlihatterbanyak.Open;
projectlihatterbanyak.SelectReport('Report',False);
projectlihatterbanyak.SetParam('datastr',' Print Berdasarkan Nama Obat :'+ednamaobat.Text);
projectlihatterbanyak.Execute;
projectlihatterbanyak.Close;
end
else if RadioButton2.Checked=true then
  begin
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Brand Like '+QuotedStr('%'+ednamaobat.Text+'%'));
queryformularium.ExecSQL;
queryformularium.Open;
projectformularium.Open;
projectformularium.SelectReport('Report',False);
projectformularium.SetParam('datastr',' Print Berdasarkan Nama Obat :'+ednamaobat.Text);
projectformularium.Execute;
projectformularium.Close;
  end
else
  begin
    MessageDlg('Print Data tidak Tersedia',mtError,[mbYes],1);
  end;
end;

procedure Tformlihatobat.Image6Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Generic Like'+QuotedStr('%'+ednamageneric.Text+'%'));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
projectlihatterbanyak.Open;
projectlihatterbanyak.SelectReport('Report',False);
projectlihatterbanyak.SetParam('datastr',' Print Berdasarkan Nama Generic :'+ednamageneric.Text);
projectlihatterbanyak.Execute;
projectlihatterbanyak.Close;
  end
else if RadioButton2.Checked=true then
  begin
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Generic Like'+QuotedStr('%'+ednamageneric.Text+'%'));
queryformularium.ExecSQL;
queryformularium.Open;

projectformularium.Open;
projectformularium.SelectReport('Report',False);
projectformularium.SetParam('datastr',' Print Berdasarkan Nama Generic :'+ednamageneric.Text);
projectformularium.Execute;
projectformularium.Close;
  end
else
  begin
    MessageDlg('Print Data Tidak Tersedia',mtError,[mbOK],1);
  end;
end;

procedure Tformlihatobat.Image7Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where No_Obat Like'+QuotedStr(ed.Text+'%'));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
projectlihatterbanyak.Open;
projectlihatterbanyak.SelectReport('Report',False);
projectlihatterbanyak.SetParam('datastr',' Print Berdasarkan No Obat :'+ed.Text);
projectlihatterbanyak.Execute;
projectlihatterbanyak.Close;

  end
else if RadioButton2.Checked=true then
  begin
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE No_Obat Like'+QuotedStr(ed.Text+'%'));
queryformularium.ExecSQL;
queryformularium.Open;
projectformularium.Open;
projectformularium.SelectReport('Report',False);
projectformularium.SetParam('datastr',' Print Berdasarkan Nomor Obat :'+ed.Text);
projectformularium.Execute;
projectformularium.Close;

  end
else
  begin
    ShowMessage('Print Data Tidak Tersedia');
  end;
end;

procedure Tformlihatobat.Image8Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
  querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Kelas_Pertama='+QuotedStr(cbkelaspertama.Text));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
projectlihatterbanyak.Open;
projectlihatterbanyak.SelectReport('Report',False);
projectlihatterbanyak.SetParam('datastr',' Print Berdasarkan Kelas Pertama :'+cbkelaspertama.Text);
projectlihatterbanyak.Execute;
projectlihatterbanyak.Close;

  end
else if RadioButton2.Checked=true then
  begin
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Kelas_Pertama =:Nama ORDER BY No_Kelas_Pertama ASC');
queryformularium.Parameters.ParamByName('Nama').Value:=cbkelaspertama.Text;
queryformularium.ExecSQL;
queryformularium.Open;
projectformularium.Open;
projectformularium.SelectReport('Report',False);
projectformularium.SetParam('datastr',' Print Berdasarkan Kelas Pertama :'+cbkelaspertama.Text);
projectformularium.Execute;
projectformularium.Close;

  end
else
  begin
  end;
end;

procedure Tformlihatobat.Image10Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
  begin
  querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Kelas_Ketiga='+QuotedStr(cbkelasketiga.Text));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
projectlihatterbanyak.Open;
projectlihatterbanyak.SelectReport('Report',False);
projectlihatterbanyak.SetParam('datastr',' Print Berdasarkan Kelas Ketiga :'+cbkelasketiga.Text);
projectlihatterbanyak.Execute;
projectlihatterbanyak.Close;
  end
else if RadioButton2.Checked=true then
  begin
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Kelas_Ketiga =:Nama ORDER BY No_Kelas_Pertama ASC');
queryformularium.Parameters.ParamByName('Nama').Value:=cbkelasketiga.Text;
queryformularium.ExecSQL;
queryformularium.Open;
projectformularium.Open;
projectformularium.SelectReport('Report',False);
projectformularium.SetParam('datastr',' Print Berdasarkan Kelas Ketiga :'+cbkelasketiga.Text);
projectformularium.Execute;
projectformularium.Close;

  end
else
  begin
    MessageDlg('Print Data Tidak Tersedia',mtError,[mbOK],1);
  end;
end;

procedure Tformlihatobat.ransasksiDataObat1Click(Sender: TObject);
begin
ednamaobat.Clear;
edgridgeneric.Clear;
ed.Clear;
cbkelaspertama.Text:='';
cbkelaskedua.Text:='';
cbkelasketiga.Text:='';
edgridnama.Clear;
edgridgeneric.Clear;
ednamageneric.Clear;
edgridkelaspertama.Clear;
edgridkelaskedua.Clear;
edgridkelasketiga.Clear;
edgridnomor.Clear;
edgridstock.Clear;
//
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat');
queryformularium.Open;
//
querylihatobatterbanyak.Active:=false;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT  Obat,count(Obat) AS Jumlah_Banyak_Pembelian FROM master_record_berobat GROUP BY Obat');
querylihatobatterbanyak.Active:=true;
//
querymasterkelasppertama.Close;
querymasterkelasppertama.SQL.Clear;
querymasterkelasppertama.SQL.Add('Select * From Master_Kelas_Pertama');
querymasterkelasppertama.Open;
querymasterkelasppertama.First;
cbkelaspertama.Clear;
While not querymasterkelasppertama.Eof do
begin
cbkelaspertama.Items.Add(querymasterkelasppertama['Nama_Kelas_Pertama']);
querymasterkelasppertama.Next;
end;
//
query_master_kedua.Close;
query_master_kedua.SQL.Clear;
query_master_kedua.SQL.Add('Select * From Master_Kelas_Kedua');
query_master_kedua.Open;
query_master_kedua.First;
cbkelaskedua.Clear;
While not query_master_kedua.Eof do
begin
cbkelaskedua.Items.Add(query_master_kedua['Nama_Kelas_Kedua']);
query_master_kedua.Next;
end;
//
querymasterkelasketiga.Close;
querymasterkelasketiga.SQL.Clear;
querymasterkelasketiga.SQL.Add('Select * From Master_Kelas_Ketiga');
querymasterkelasketiga.Open;
querymasterkelasketiga.First;
cbkelasketiga.Clear;
While not querymasterkelasketiga.Eof do
begin

cbkelasketiga.Items.Add(querymasterkelasketiga['Nama_Kelas_Ketiga']);
querymasterkelasketiga.Next;
end;
TutupKoneksi;
formobat.Show;
formlihatobat.Hide;
end;

procedure Tformlihatobat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
If MessageDlg('Apakah Anda Ingin Keluar Dari Aplikasi',mtConfirmation,mbYesNoCancel,1)=mrYes then
  begin
    MessageDlg('Terima Kasih Telah menggunakan Aplikasi',mtInformation,[mbOk],1);
    Application.Terminate;
  end
else
  begin
    Abort;
  end;
end;

procedure Tformlihatobat.ednamaobatChange(Sender: TObject);
begin
if ednamaobat.Text='' then
  begin
  querylihatobatterbanyak.Active:=false;
  querylihatobatterbanyak.Close;
  querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat ');
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('Select * From q_Formularium_Obat');
queryformularium.ExecSQL;
queryformularium.Open;
  end
else
begin
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Brand Like'+QuotedStr('%'+ednamaobat.Text+'%'));
queryformularium.ExecSQL;
queryformularium.Open;
//
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Obat Like'+QuotedStr('%'+ednamaobat.Text+'%'));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
end;
end;

procedure Tformlihatobat.ednamagenericChange(Sender: TObject);
begin
if ednamageneric.Text='' then
  begin
    querylihatobatterbanyak.Active:=false;
  querylihatobatterbanyak.Close;
  querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat ');
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('Select * From q_Formularium_Obat');
queryformularium.ExecSQL;
queryformularium.Open;
  end
else
  begin
  queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Generic Like'+QuotedStr('%'+ednamageneric.Text+'%'));
queryformularium.ExecSQL;
queryformularium.Open;
//
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Generic Like'+QuotedStr('%'+ednamageneric.Text+'%'));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
end;
end;

procedure Tformlihatobat.edChange(Sender: TObject);
begin
if ed.Text='' then
  begin
      querylihatobatterbanyak.Active:=false;
  querylihatobatterbanyak.Close;
  querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat ');
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('Select * From q_Formularium_Obat');
queryformularium.ExecSQL;
queryformularium.Open;
  end
else
  begin
   queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE No_Obat Like'+QuotedStr(ed.Text+'%'));
queryformularium.ExecSQL;
queryformularium.Open;
//
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where No_Obat Like'+QuotedStr(ed.Text+'%'));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;

  end;
end;

procedure Tformlihatobat.btnkembalikemenuClick(Sender: TObject);
begin
KembaliKeMenuObat1Click(Sender);
end;

procedure Tformlihatobat.ExportBerdasarkanKelasPertama1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Kelas Pertama :','Export Data','');
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Kelas_Pertama Like'+QuotedStr('%'+data+'%'));
queryformularium.ExecSQL;
queryformularium.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryformularium.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryformularium.Fields[filName].FieldName;
   end;
//
if queryformularium.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryformularium.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to queryformularium.RecordCount-1 do
begin
  for c:=0 to queryformularium.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryformularium.Fields[c].AsString;
  end;
 queryformularium.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryformularium.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to queryformularium.RecordCount-1 do
begin
  for c:=0 to queryformularium.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryformularium.Fields[c].AsString;
  end;
 queryformularium.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryformularium.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatobat.ExportBerdasarkanKelasKedua1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Kelas Kedua :','Export Data','');
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Kelas_Kedua Like'+QuotedStr('%'+data+'%'));
queryformularium.ExecSQL;
queryformularium.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryformularium.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryformularium.Fields[filName].FieldName;
   end;
//
if queryformularium.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryformularium.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to queryformularium.RecordCount-1 do
begin
  for c:=0 to queryformularium.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryformularium.Fields[c].AsString;
  end;
 queryformularium.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryformularium.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to queryformularium.RecordCount-1 do
begin
  for c:=0 to queryformularium.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryformularium.Fields[c].AsString;
  end;
 queryformularium.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryformularium.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatobat.ExportBerdasarkanKelasKetiga1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Kelas Ketiga :','Export Data','');
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Kelas_Ketiga Like'+QuotedStr('%'+data+'%'));
queryformularium.ExecSQL;
queryformularium.Open;
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryformularium.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryformularium.Fields[filName].FieldName;
   end;
//
if queryformularium.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryformularium.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to queryformularium.RecordCount-1 do
begin
  for c:=0 to queryformularium.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryformularium.Fields[c].AsString;
  end;
 queryformularium.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryformularium.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to queryformularium.RecordCount-1 do
begin
  for c:=0 to queryformularium.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryformularium.Fields[c].AsString;
  end;
 queryformularium.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryformularium.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatobat.ExportBerdasarkanNamaObat1Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Obat :','Export Data','');
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Brand Like'+QuotedStr('%'+data+'%'));
queryformularium.ExecSQL;
queryformularium.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryformularium.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryformularium.Fields[filName].FieldName;
   end;
//
if queryformularium.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryformularium.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to queryformularium.RecordCount-1 do
begin
  for c:=0 to queryformularium.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryformularium.Fields[c].AsString;
  end;
 queryformularium.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryformularium.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to queryformularium.RecordCount-1 do
begin
  for c:=0 to queryformularium.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryformularium.Fields[c].AsString;
  end;
 queryformularium.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryformularium.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatobat.ExportBerdasarkanNamaGeneric1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Generic :','Export Data','');
queryformularium.Active:=true;
  queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Generic Like'+QuotedStr('%'+data+'%'));
queryformularium.ExecSQL;
queryformularium.Open;

//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryformularium.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryformularium.Fields[filName].FieldName;
   end;
//
if queryformularium.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryformularium.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to queryformularium.RecordCount-1 do
begin
  for c:=0 to queryformularium.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryformularium.Fields[c].AsString;
  end;
 queryformularium.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryformularium.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to queryformularium.RecordCount-1 do
begin
  for c:=0 to queryformularium.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryformularium.Fields[c].AsString;
  end;
 queryformularium.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryformularium.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatobat.ExportBerdasarkanNomorObat1Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Obat :','Export Data','');
   queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE No_Obat Like'+QuotedStr(data));
queryformularium.ExecSQL;
queryformularium.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryformularium.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryformularium.Fields[filName].FieldName;
   end;
//
if queryformularium.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryformularium.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to queryformularium.RecordCount-1 do
begin
  for c:=0 to queryformularium.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryformularium.Fields[c].AsString;
  end;
 queryformularium.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryformularium.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to queryformularium.RecordCount-1 do
begin
  for c:=0 to queryformularium.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryformularium.Fields[c].AsString;
  end;
 queryformularium.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryformularium.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatobat.ExportSemuaData2Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
//data:=InputBox('Silahkan Masukkan Nomor Obat :','Export Data','');
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('Select * From q_Formularium_Obat');
queryformularium.ExecSQL;
queryformularium.Open;

//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to queryformularium.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=queryformularium.Fields[filName].FieldName;
   end;
//
if queryformularium.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if queryformularium.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to queryformularium.RecordCount-1 do
begin
  for c:=0 to queryformularium.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryformularium.Fields[c].AsString;
  end;
 queryformularium.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryformularium.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to queryformularium.RecordCount-1 do
begin
  for c:=0 to queryformularium.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=queryformularium.Fields[c].AsString;
  end;
 queryformularium.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(queryformularium.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatobat.ExportSemuaData1Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
//data:=InputBox('Silahkan Masukkan Nomor Obat :','Export Data','');
  querylihatobatterbanyak.Active:=false;
  querylihatobatterbanyak.Close;
  querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat ');
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;

//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querylihatobatterbanyak.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querylihatobatterbanyak.Fields[filName].FieldName;
   end;
//
if querylihatobatterbanyak.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querylihatobatterbanyak.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querylihatobatterbanyak.RecordCount-1 do
begin
  for c:=0 to querylihatobatterbanyak.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querylihatobatterbanyak.Fields[c].AsString;
  end;
 querylihatobatterbanyak.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querylihatobatterbanyak.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querylihatobatterbanyak.RecordCount-1 do
begin
  for c:=0 to querylihatobatterbanyak.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querylihatobatterbanyak.Fields[c].AsString;
  end;
 querylihatobatterbanyak.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querylihatobatterbanyak.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatobat.ExportBerdasarkanNomorObat2Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nomor Obat :','Export Data','');
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where No_Obat Like'+QuotedStr(data));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;

//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querylihatobatterbanyak.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querylihatobatterbanyak.Fields[filName].FieldName;
   end;
//
if querylihatobatterbanyak.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querylihatobatterbanyak.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querylihatobatterbanyak.RecordCount-1 do
begin
  for c:=0 to querylihatobatterbanyak.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querylihatobatterbanyak.Fields[c].AsString;
  end;
 querylihatobatterbanyak.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querylihatobatterbanyak.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querylihatobatterbanyak.RecordCount-1 do
begin
  for c:=0 to querylihatobatterbanyak.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querylihatobatterbanyak.Fields[c].AsString;
  end;
 querylihatobatterbanyak.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querylihatobatterbanyak.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatobat.ExportBerdasarkanNamaGeneric2Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Generic :','Export Data','');
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Generic Like'+QuotedStr('%'+data+'%'));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;

//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querylihatobatterbanyak.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querylihatobatterbanyak.Fields[filName].FieldName;
   end;
//
if querylihatobatterbanyak.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querylihatobatterbanyak.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querylihatobatterbanyak.RecordCount-1 do
begin
  for c:=0 to querylihatobatterbanyak.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querylihatobatterbanyak.Fields[c].AsString;
  end;
 querylihatobatterbanyak.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querylihatobatterbanyak.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querylihatobatterbanyak.RecordCount-1 do
begin
  for c:=0 to querylihatobatterbanyak.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querylihatobatterbanyak.Fields[c].AsString;
  end;
 querylihatobatterbanyak.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querylihatobatterbanyak.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatobat.ExportBerdasarkanNamaObat2Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Obat :','Export Data','');
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Obat Like'+QuotedStr('%'+data+'%'));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;

//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querylihatobatterbanyak.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querylihatobatterbanyak.Fields[filName].FieldName;
   end;
//
if querylihatobatterbanyak.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querylihatobatterbanyak.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querylihatobatterbanyak.RecordCount-1 do
begin
  for c:=0 to querylihatobatterbanyak.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querylihatobatterbanyak.Fields[c].AsString;
  end;
 querylihatobatterbanyak.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querylihatobatterbanyak.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querylihatobatterbanyak.RecordCount-1 do
begin
  for c:=0 to querylihatobatterbanyak.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querylihatobatterbanyak.Fields[c].AsString;
  end;
 querylihatobatterbanyak.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querylihatobatterbanyak.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatobat.ExportBerdasarkanKelasPertama2Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Kelas Pertama :','Export Data','');
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Kelas_Pertama='+QuotedStr(data));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querylihatobatterbanyak.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querylihatobatterbanyak.Fields[filName].FieldName;
   end;
//
if querylihatobatterbanyak.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querylihatobatterbanyak.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querylihatobatterbanyak.RecordCount-1 do
begin
  for c:=0 to querylihatobatterbanyak.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querylihatobatterbanyak.Fields[c].AsString;
  end;
 querylihatobatterbanyak.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querylihatobatterbanyak.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querylihatobatterbanyak.RecordCount-1 do
begin
  for c:=0 to querylihatobatterbanyak.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querylihatobatterbanyak.Fields[c].AsString;
  end;
 querylihatobatterbanyak.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querylihatobatterbanyak.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatobat.ExportBerdasarkanKelasKedua2Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Kelas Kedua :','Export Data','');
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Kelas_Kedua='+QuotedStr(data));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querylihatobatterbanyak.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querylihatobatterbanyak.Fields[filName].FieldName;
   end;
//
if querylihatobatterbanyak.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querylihatobatterbanyak.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querylihatobatterbanyak.RecordCount-1 do
begin
  for c:=0 to querylihatobatterbanyak.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querylihatobatterbanyak.Fields[c].AsString;
  end;
 querylihatobatterbanyak.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querylihatobatterbanyak.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querylihatobatterbanyak.RecordCount-1 do
begin
  for c:=0 to querylihatobatterbanyak.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querylihatobatterbanyak.Fields[c].AsString;
  end;
 querylihatobatterbanyak.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querylihatobatterbanyak.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatobat.ExportBerdasarkanKelasKetiga2Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Kelas Ketiga :','Export Data','');
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Kelas_Ketiga='+QuotedStr(data));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to querylihatobatterbanyak.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=querylihatobatterbanyak.Fields[filName].FieldName;
   end;
//
if querylihatobatterbanyak.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if querylihatobatterbanyak.RecordCount=1 then
begin
MessageDlg('Record Anda Hanya Satu',mtWarning,[mbYes],1);
for r:=0 to querylihatobatterbanyak.RecordCount-1 do
begin
  for c:=0 to querylihatobatterbanyak.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querylihatobatterbanyak.Fields[c].AsString;
  end;
 querylihatobatterbanyak.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querylihatobatterbanyak.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to querylihatobatterbanyak.RecordCount-1 do
begin
  for c:=0 to querylihatobatterbanyak.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=querylihatobatterbanyak.Fields[c].AsString;
  end;
 querylihatobatterbanyak.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(querylihatobatterbanyak.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihatobat.TutupKoneksi;
begin
ADOConnection1.Connected:=false;
querylihatobatterbanyak.Active:=false;
queryformularium.Active:=false;
querymasterkelasppertama.Active:=false;
query_master_kedua.Active:=false;
querymasterkelasketiga.Active:=false;
end;
procedure Tformlihatobat.RefreshData;
begin

end;

procedure Tformlihatobat.btntransdataobatClick(Sender: TObject);
begin
RefreshForm;
formobat.Show;
formobat.ADOConnection1.Connected:=true;
formobat.querymasterkelasppertama.Active:=true;
formobat.querykelaskedua.Active:=true;
formobat.querykelastiga.Active:=true;
formobat.qDataGrid.Active:=true;
formobat.queryhapus.Active:=true;
//formobat.queryjumlahmasterkelaskedua.Active:=true;
formobat.adosimpankelassatu.Active:=true;
formobat.adoqdataobat.Active:=true;
formobat.adomasterdataobat.Active:=true;
formobat.adokelaspertama.Active:=true;
formobat.adokelaskedua.Active:=true;
formobat.adomasterkelastiga.Active:=true;
formmainobat.Hide;
end;

procedure Tformlihatobat.RefreshForm;
begin
ednamaobat.Clear;
edgridgeneric.Clear;
ed.Clear;
cbkelaspertama.Text:='';
cbkelaskedua.Text:='';
cbkelasketiga.Text:='';
edgridnama.Clear;
edgridgeneric.Clear;
ednamageneric.Clear;
edgridkelaspertama.Clear;
edgridkelaskedua.Clear;
edgridkelasketiga.Clear;
edgridnomor.Clear;
edgridstock.Clear;
//
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat');
queryformularium.Open;
//
querylihatobatterbanyak.Active:=false;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT  Obat,count(Obat) AS Jumlah_Banyak_Pembelian FROM master_record_berobat GROUP BY Obat');
querylihatobatterbanyak.Active:=true;
//
querymasterkelasppertama.Close;
querymasterkelasppertama.SQL.Clear;
querymasterkelasppertama.SQL.Add('Select * From Master_Kelas_Pertama');
querymasterkelasppertama.Open;
querymasterkelasppertama.First;
cbkelaspertama.Clear;
While not querymasterkelasppertama.Eof do
begin
cbkelaspertama.Items.Add(querymasterkelasppertama['Nama_Kelas_Pertama']);
querymasterkelasppertama.Next;
end;
//
query_master_kedua.Close;
query_master_kedua.SQL.Clear;
query_master_kedua.SQL.Add('Select * From Master_Kelas_Kedua');
query_master_kedua.Open;
query_master_kedua.First;
cbkelaskedua.Clear;
While not query_master_kedua.Eof do
begin
cbkelaskedua.Items.Add(query_master_kedua['Nama_Kelas_Kedua']);
query_master_kedua.Next;
end;
//
querymasterkelasketiga.Close;
querymasterkelasketiga.SQL.Clear;
querymasterkelasketiga.SQL.Add('Select * From Master_Kelas_Ketiga');
querymasterkelasketiga.Open;
querymasterkelasketiga.First;
cbkelasketiga.Clear;
While not querymasterkelasketiga.Eof do
begin

cbkelasketiga.Items.Add(querymasterkelasketiga['Nama_Kelas_Ketiga']);
querymasterkelasketiga.Next;
end;

end;
procedure Tformlihatobat.PrintBerdasarkanNamaObat1Click(Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nama Brand Obat : ','');
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Brand Like '+QuotedStr('%'+data+'%'));
queryformularium.ExecSQL;
queryformularium.Open;
projectformularium.Open;
projectformularium.SelectReport('Report',False);
projectformularium.SetParam('datastr',' Print Berdasarkan Nama Obat :'+data);
projectformularium.Execute;
projectformularium.Close;
end;

procedure Tformlihatobat.PrintBerdasarkanNamaGeneric1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Masukkan Nama Generic Obat :','');
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Generic Like'+QuotedStr('%'+data+'%'));
queryformularium.ExecSQL;
queryformularium.Open;
projectformularium.Open;
projectformularium.SelectReport('Report',False);
projectformularium.SetParam('datastr',' Print Berdasarkan Nama Generic :'+data);
projectformularium.Execute;
projectformularium.Close;

end;

procedure Tformlihatobat.PrintBerdasarkanNomorObat1Click(Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nomor Obat :','');
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE No_Obat Like'+QuotedStr(data+'%'));
queryformularium.ExecSQL;
queryformularium.Open;
projectformularium.Open;
projectformularium.SelectReport('Report',False);
projectformularium.SetParam('datastr',' Print Berdasarkan Nomor Obat :'+data);
projectformularium.Execute;
projectformularium.Close;

end;

procedure Tformlihatobat.PrintBerdasarkanKelasPertama1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nama Kelas Pertama :','');
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Kelas_Pertama Like'+QuotedStr('%'+data+'%'));
queryformularium.ExecSQL;
queryformularium.Open;
projectformularium.Open;
projectformularium.SelectReport('Report',False);
projectformularium.SetParam('datastr',' Print Berdasarkan Kelas Pertama :'+data);
projectformularium.Execute;
projectformularium.Close;

end;

procedure Tformlihatobat.PrintDataKelasKedua1Click(Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nama Kelas Dua :','');
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Kelas_Kedua Like'+QuotedStr('%'+data+'%'));
queryformularium.ExecSQL;
queryformularium.Open;
projectformularium.Open;
projectformularium.SelectReport('Report',False);
projectformularium.SetParam('datastr',' Print Berdasarkan Kelas Kedua :'+data);
projectformularium.Execute;
projectformularium.Close;
end;

procedure Tformlihatobat.PrintBerdasarkanKelasKetiga1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nama Kelas Ketiga :','');
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat WHERE Nama_Kelas_Ketiga Like'+QuotedStr('%'+data+'%'));
queryformularium.ExecSQL;
queryformularium.Open;
projectformularium.Open;
projectformularium.SelectReport('Report',False);
projectformularium.SetParam('datastr',' Print Berdasarkan Kelas Ketiga :'+cbkelasketiga.Text);
projectformularium.Execute;
projectformularium.Close;
end;

procedure Tformlihatobat.PrintSemuaRecord1Click(Sender: TObject);
begin
queryformularium.Active:=true;
queryformularium.Close;
queryformularium.SQL.Clear;
queryformularium.SQL.Add('SELECT * FROM q_Formularium_Obat ');
queryformularium.ExecSQL;
queryformularium.Open;
projectformularium.Open;
projectformularium.SelectReport('Report',False);
projectformularium.SetParam('datastr',' Print Semua Data');
projectformularium.Execute;
projectformularium.Close;

end;

procedure Tformlihatobat.PrintDataBerdasarkanNamaObat1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nama Obat :','');
  querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Obat Like'+QuotedStr('%'+data+'%'));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
projectlihatterbanyak.Open;
projectlihatterbanyak.SelectReport('Report',False);
projectlihatterbanyak.SetParam('datastr',' Print Berdasarkan Nama Obat :'+data);
projectlihatterbanyak.Execute;
projectlihatterbanyak.Close;

end;

procedure Tformlihatobat.PrintDataBerdasarkanNamaGeneric1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nama Generic :','');
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Generic Like'+QuotedStr('%'+data+'%'));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
projectlihatterbanyak.Open;
projectlihatterbanyak.SelectReport('Report',False);
projectlihatterbanyak.SetParam('datastr',' Print Berdasarkan Nama Generic :'+data);
projectlihatterbanyak.Execute;
projectlihatterbanyak.Close;
end;

procedure Tformlihatobat.PrintBerdasarkan1Click(Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nomor Obat :','');
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where No_Obat Like'+QuotedStr(data+'%'));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
projectlihatterbanyak.Open;
projectlihatterbanyak.SelectReport('Report',False);
projectlihatterbanyak.SetParam('datastr',' Print Berdasarkan No Obat :'+data);
projectlihatterbanyak.Execute;
projectlihatterbanyak.Close;

end;

procedure Tformlihatobat.PrintBerdasarkanKelasPertama2Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nama Kelas Pertama :','');
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Kelas_Pertama Like'+QuotedStr('%'+data+'%'));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
projectlihatterbanyak.Open;
projectlihatterbanyak.SelectReport('Report',False);
projectlihatterbanyak.SetParam('datastr',' Print Berdasarkan Kelas Pertama :'+data);
projectlihatterbanyak.Execute;
projectlihatterbanyak.Close;


end;

procedure Tformlihatobat.PrintDataBerdasarkanKelasKedua1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nama Kelas Kedua :','');
querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Kelas_Kedua Like'+QuotedStr('%'+data+'%'));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
projectlihatterbanyak.Open;
projectlihatterbanyak.SelectReport('Report',False);
projectlihatterbanyak.SetParam('datastr',' Print Berdasarkan Kelas Kedua :'+data);
projectlihatterbanyak.Execute;
projectlihatterbanyak.Close;
end;

procedure Tformlihatobat.PrintDataBerdasarkanKelasKetiga1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Print Data','Silahkan Masukkan Nama Kelas Ketiga :','');
  querylihatobatterbanyak.Close;
querylihatobatterbanyak.Active:=true;
querylihatobatterbanyak.SQL.Clear;
querylihatobatterbanyak.SQL.Add('SELECT * FROM Query_Transaksi_Beli_Obat where Nama_Kelas_Ketiga Like'+QuotedStr('%'+data+'%'));
querylihatobatterbanyak.ExecSQL;
querylihatobatterbanyak.Open;
projectlihatterbanyak.Open;
projectlihatterbanyak.SelectReport('Report',False);
projectlihatterbanyak.SetParam('datastr',' Print Berdasarkan Kelas Ketiga :'+data);
projectlihatterbanyak.Execute;
projectlihatterbanyak.Close;

end;

end.
