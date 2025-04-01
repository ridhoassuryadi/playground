unit uLihatTranspeg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Grids, DBGrids, Menus, DB, ADODB,
  Provider, RpRave, RpDefine, RpCon, RpConDS, ComObj;

type
  Tformlihattranspeg = class(TForm)
    GroupBox3: TGroupBox;
    Image2: TImage;
    Shape4: TShape;
    Label9: TLabel;
    Shape6: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    txtnomor: TEdit;
    txtperson: TEdit;
    txtnama: TEdit;
    cbkspeg: TComboBox;
    cbkupeg: TComboBox;
    Image1: TImage;
    DBGrid1: TDBGrid;
    Image3: TImage;
    MainMenu1: TMainMenu;
    Aplikasi1: TMenuItem;
    PrintData1: TMenuItem;
    Ba1: TMenuItem;
    KembaliKeMenuPegawai1: TMenuItem;
    KembaliKeMainMenuAdmin1: TMenuItem;
    PrintDataBerdasarkanNIP1: TMenuItem;
    PrintDataBerdasarkanNamaPegawai1: TMenuItem;
    PrintDataBerdasarkanNoUnit1: TMenuItem;
    PrintDataBerdasarkanPersonel1: TMenuItem;
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
    edgridinduk: TEdit;
    edgridperson: TEdit;
    edgridpeg: TEdit;
    edgridkodestatpeg: TEdit;
    Shape5: TShape;
    edgridunitpeg: TEdit;
    Shape8: TShape;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    KeluarDariAplikasi1: TMenuItem;
    lblkodejk: TLabel;
    lblkodest: TLabel;
    lblcarikodejk: TLabel;
    Shape9: TShape;
    Label18: TLabel;
    Label19: TLabel;
    lbltransaksi: TLabel;
    Label21: TLabel;
    Shape10: TShape;
    Shape11: TShape;
    Shape13: TShape;
    Shape14: TShape;
    lbljam: TLabel;
    lblhari: TLabel;
    Shape12: TShape;
    Shape15: TShape;
    lblkodestatpeg: TLabel;
    lblkodeunitpeg: TLabel;
    ADOQuery2: TADOQuery;
    adokodeunit: TADOQuery;
    lblnokodestatpeg: TLabel;
    lblnokodeunit: TLabel;
    Image6: TImage;
    Image7: TImage;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    KembaliKeMenuAdmin1: TMenuItem;
    KembaliKeMenuPegawai2: TMenuItem;
    RefreshData1: TMenuItem;
    ransaksiDataPegawai1: TMenuItem;
    ransaksiUnit1: TMenuItem;
    ransaksiStatus1: TMenuItem;
    KeluarAplikasi1: TMenuItem;
    Shape7: TShape;
    lbllogin: TLabel;
    reportpegawai1: TRvDataSetConnection;
    reportpegawai: TRvProject;
    DataSetProvider1: TDataSetProvider;
    queryreport: TADOQuery;
    PrintSemuaData1: TMenuItem;
    Image13: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    ExportData1: TMenuItem;
    ExportDataSemuanya1: TMenuItem;
    ExportDataBerdasarkanNomorInduk1: TMenuItem;
    ExportBerdasarkanNamaPegawai1: TMenuItem;
    ExportBerdasarkanPersonelNumber1: TMenuItem;
    ExportBerdasarkanStatusPegawai1: TMenuItem;
    ExportBerdasarkanUnitPegawai1: TMenuItem;
    entangAplikasi1: TMenuItem;
    Petunjuk1: TMenuItem;
    RvDataSetConnection1: TRvDataSetConnection;
    procedure KeluarDariAplikasi1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormActivate(Sender: TObject);
    procedure cbkspegChange(Sender: TObject);
    procedure cbkupegChange(Sender: TObject);
    procedure btncarinomorindukClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure txtnomorKeyPress(Sender: TObject; var Key: Char);
    procedure txtpersonKeyPress(Sender: TObject; var Key: Char);
    procedure txtnamaKeyPress(Sender: TObject; var Key: Char);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure entang1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure KembaliKeMenuPegawai1Click(Sender: TObject);
    procedure KembaliKeMainMenuAdmin1Click(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure ransaksiStatus1Click(Sender: TObject);
    procedure ransaksiUnit1Click(Sender: TObject);
    procedure ransaksiDataPegawai1Click(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
    procedure KembaliKeMenuPegawai2Click(Sender: TObject);
    procedure KembaliKeMenuAdmin1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PrintSemuaData1Click(Sender: TObject);
    procedure PrintDataBerdasarkanNIP1Click(Sender: TObject);
    procedure PrintDataBerdasarkanNamaPegawai1Click(Sender: TObject);
    procedure PrintDataBerdasarkanPersonel1Click(Sender: TObject);
    procedure PrintDataBerdasarkanNoUnit1Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure txtnomorChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtpersonChange(Sender: TObject);
    procedure txtnamaChange(Sender: TObject);
    procedure ExportDataSemuanya1Click(Sender: TObject);
    procedure ExportDataBerdasarkanNomorInduk1Click(Sender: TObject);
    procedure ExportBerdasarkanNamaPegawai1Click(Sender: TObject);
    procedure ExportBerdasarkanPersonelNumber1Click(Sender: TObject);
    procedure ExportBerdasarkanStatusPegawai1Click(Sender: TObject);
    procedure ExportBerdasarkanUnitPegawai1Click(Sender: TObject);
  private
    procedure RefreshData;
    procedure TutupKoneksi;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formlihattranspeg: Tformlihattranspeg;

implementation

uses UASAL, uDoctorMenu, uInsertMasterPegawai, ulihatrecord, ulogindokter,
  uMainUtama, uMasterDokter, uMasterKegunaanObat, uMasterKeluarga,
  uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal, uMenuPegawai,
  uPasien, upilihdokter, uPilihKeluarga, uSplash, uAbout, uFamilytypetrans,
  ulihatdataobat, ulihatkeluarga, uLihatPasien, umainobat, umainobatpoli,
  uStatusPegawai, uTransunit, Math;

{$R *.dfm}

procedure Tformlihattranspeg.KeluarDariAplikasi1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tformlihattranspeg.DBGrid1CellClick(Column: TColumn);
begin
    edgridinduk.Text:=ADOQuery1.FieldByName('Nomor_induk').AsString;
    edgridperson.Text:=ADOQuery1.FieldByName('Personel_number').AsString;
    edgridpeg.Text:=ADOQuery1.FieldByName('Nama_pegawai').AsString;
    lblkodestatpeg.Caption:=ADOQuery1.FieldByName('kode_status_pegawai').AsString;
    lblkodeunitpeg.Caption:=ADOQuery1.FieldByName('kode_unit').AsString;
      ADOQuery2.Locate('kode_status',lblkodestatpeg.Caption,[]);
      edgridkodestatpeg.Text:=ADOQuery2.FieldByName('Keterangan_status').AsString;
      adokodeunit.Locate('kode_unit',lblkodeunitpeg.Caption,[]);
      edgridunitpeg.Text:=adokodeunit.FieldByName('nama_unit').AsString;
end;

procedure Tformlihattranspeg.FormActivate(Sender: TObject);
begin
if ADOConnection1.Connected=true then
begin
//
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Master_Status');
ADOQuery2.ExecSQL;
ADOQuery2.Open;
While not ADOQuery2.Eof do
  begin
  cbkspeg.Items.Add(ADOQuery2['Keterangan_status']);
  ADOQuery2.Next;
end;
//
adokodeunit.Active:=true;
adokodeunit.Close;
adokodeunit.SQL.Clear;
adokodeunit.SQL.Add('SELECT * FROM Master_Unit');
adokodeunit.ExecSQL;
adokodeunit.Open;
While not adokodeunit.Eof do
  begin
  cbkupeg.Items.Add(adokodeunit['nama_unit']);
  adokodeunit.Next;
end;
end
else
  begin
  end;
end;

procedure Tformlihattranspeg.cbkspegChange(Sender: TObject);
begin
     if ADOQuery2.Locate('Keterangan_status',cbkspeg.Text,[])then
      begin
        lblnokodestatpeg.Caption:=ADOQuery2.FieldByName('kode_status').AsString;
        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query WHERE kode_status_pegawai =:kodesp ORDER BY Nomor_induk ASC');
        ADOQuery1.Parameters.ParamByName('kodesp').Value:=lblnokodestatpeg.Caption;
        ADOQuery1.Open;
      end
      else
        begin
        end;

end;

procedure Tformlihattranspeg.cbkupegChange(Sender: TObject);
begin
  if adokodeunit.Locate('nama_unit',cbkupeg.Text,[])then
      begin
        lblnokodeunit.Caption:=adokodeunit.FieldByName('kode_unit').AsString;
        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query WHERE kode_unit =:kodeup ORDER BY Nomor_induk ASC');
        ADOQuery1.Parameters.ParamByName('kodeup').Value:=lblnokodeunit.Caption;
        ADOQuery1.Open;
      end
      else
        begin
        end;
end;

procedure Tformlihattranspeg.btncarinomorindukClick(Sender: TObject);
begin
  if txtnomor.Text='' then
    begin
      ShowMessage('Data Yang Dicari Kosong');
    end
  else
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI Query WHERE Nomor_induk =:nomor ORDER BY Nomor_induk ASC');
      ADOQuery1.Parameters.ParamByName('nomor').Value:=txtnomor.Text;
      ADOQuery1.Open;
    end;

end;

procedure Tformlihattranspeg.Image5Click(Sender: TObject);
begin
    if txtperson.Text='' then
    begin
      ShowMessage('Data Yang Dicari Kosong');
    end
  else
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI Query WHERE Personel_number =:person ORDER BY Nomor_induk ASC');
      ADOQuery1.Parameters.ParamByName('person').Value:=txtperson.Text;
      ADOQuery1.Open;
    end;
end;

procedure Tformlihattranspeg.Image17Click(Sender: TObject);
begin
  if txtnama.Text='' then
    begin
      ShowMessage('Data Yang Dicari Kosong');
    end
  else
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI Query WHERE Nama_Pegawai =:nama ORDER BY Nomor_induk ASC');
      ADOQuery1.Parameters.ParamByName('nama').Value:=txtnama.Text;
      ADOQuery1.Open;
    end;
end;

procedure Tformlihattranspeg.txtnomorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key=chr(13)) then exit;
    btncarinomorindukClick(Sender);
end;

procedure Tformlihattranspeg.txtpersonKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not(key=chr(13)) then exit;
      Image5Click(Sender);
end;

procedure Tformlihattranspeg.txtnamaKeyPress(Sender: TObject;
  var Key: Char);
begin
      if not(key=chr(13)) then exit;
        Image17Click(Sender);
end;

procedure Tformlihattranspeg.Image6Click(Sender: TObject);
begin
   RefreshData;
end;

procedure Tformlihattranspeg.Image7Click(Sender: TObject);
begin
     RefreshData;
    formmainpegawai.Show;
    formlihattranspeg.Hide;
end;

procedure Tformlihattranspeg.Image2Click(Sender: TObject);
begin
    txtnomor.SetFocus;

end;

procedure Tformlihattranspeg.entang1Click(Sender: TObject);
begin
formabout.Show;
end;

procedure Tformlihattranspeg.FormCreate(Sender: TObject);
begin
ADOQuery1.Active:=true;
end;

procedure Tformlihattranspeg.RefreshData;
begin
txtnomor.Clear;
txtperson.Clear;
txtnama.Clear;
edgridinduk.Clear;
edgridperson.Clear;
edgridpeg.Clear;
edgridkodestatpeg.Clear;
edgridunitpeg.Clear;
ADOQuery1.Active:=true;
ADOQuery2.Active:=true;
adokodeunit.Active:=true;
//
ADOQuery2.Active:=true;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('SELECT * FROM Master_Status');
ADOQuery2.ExecSQL;
ADOQuery2.Open;
cbkspeg.Clear;
While not ADOQuery2.Eof do
  begin
  cbkspeg.Items.Add(ADOQuery2['Keterangan_status']);
  ADOQuery2.Next;
end;
//
adokodeunit.Active:=true;
adokodeunit.Close;
adokodeunit.SQL.Clear;
adokodeunit.SQL.Add('SELECT * FROM Master_Unit');
adokodeunit.ExecSQL;
adokodeunit.Open;
cbkupeg.Clear;
While not adokodeunit.Eof do
  begin
  cbkupeg.Items.Add(adokodeunit['nama_unit']);
  adokodeunit.Next;
end;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('Select * From MASTER_PEGAWAI Query');
ADOQuery1.ExecSQL;
ADOQuery1.Open;
end;
procedure Tformlihattranspeg.KembaliKeMenuPegawai1Click(Sender: TObject);
begin
RefreshData;
TutupKoneksi;
formmainpegawai.Show;
formlihattranspeg.Hide;
end;

procedure Tformlihattranspeg.KembaliKeMainMenuAdmin1Click(Sender: TObject);
begin
RefreshData;
TutupKoneksi;
fMainmenu.Show;
formlihattranspeg.Hide;
end;

procedure Tformlihattranspeg.KeluarAplikasi1Click(Sender: TObject);
begin
RefreshData;
Application.Terminate;

end;

procedure Tformlihattranspeg.ransaksiStatus1Click(Sender: TObject);
begin
RefreshData;
formmasterstatus.Show;
formlihattranspeg.Hide;
end;

procedure Tformlihattranspeg.ransaksiUnit1Click(Sender: TObject);
begin
RefreshData;
formtransunit.Show;
formlihattranspeg.Hide;
end;

procedure Tformlihattranspeg.ransaksiDataPegawai1Click(Sender: TObject);
begin
RefreshData;
ftransaksipegawai.Show;
formlihattranspeg.Hide;
end;

procedure Tformlihattranspeg.RefreshData1Click(Sender: TObject);
begin
        ADOQuery1.Active:=false;
        ADOQuery1.Active:=true;

               txtnomor.Clear;
        txtperson.Clear;
        txtnama.Clear;
        edgridinduk.Clear;
        edgridperson.Clear;
        edgridpeg.Clear;
        edgridkodestatpeg.Clear;
        edgridunitpeg.Clear;
        
end;

procedure Tformlihattranspeg.KembaliKeMenuPegawai2Click(Sender: TObject);
begin
RefreshData;
formmainpegawai.Show;
formlihattranspeg.Hide;
end;

procedure Tformlihattranspeg.KembaliKeMenuAdmin1Click(Sender: TObject);
begin
RefreshData;
fMainmenu.Show;
formlihattranspeg.Hide;

end;

procedure Tformlihattranspeg.Timer1Timer(Sender: TObject);
begin
if txtnomor.Text<>'' then
  begin
    Shape4.Visible:=true;
  end
else
  begin
    Shape4.Visible:=false;
  end;
if txtperson.Text<>'' then
  begin
    Shape6.Visible:=true;
  end
else
  begin
    Shape6.Visible:=false;
  end;
if txtnama.Text<>'' then
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
if edgridperson.Text<>'' then
  begin
    Shape2.Visible:=true;
  end
else
  begin
    Shape2.Visible:=false;
  end;
if edgridpeg.Text<>'' then
  begin
    Shape3.Visible:=true;
  end
else
  begin
    Shape3.Visible:=false;
  end;
if edgridkodestatpeg.Text<>'' then
  begin
    Shape5.Visible:=true;
  end
else
  begin
    Shape5.Visible:=false;
  end;
if edgridunitpeg.Text<>'' then
  begin
    Shape8.Visible:=true;
  end
else
  begin
    Shape8.Visible:=false;
  end;
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
lblhari.Caption:=FormatDateTime('hhhh,mmmm,yyyy',now);
end;

procedure Tformlihattranspeg.Button1Click(Sender: TObject);
begin
reportpegawai.Execute;
end;

procedure Tformlihattranspeg.PrintSemuaData1Click(Sender: TObject);
begin
queryreport.Active:=true;
queryreport.Close;
queryreport.SQL.Clear;
queryreport.SQL.Add('SELECT * FROM queryreport');
queryreport.ExecSQL;
queryreport.Open;
reportpegawai.Open;
reportpegawai.SelectReport('Report',False);
reportpegawai.SetParam('datastr','Semua Data ');
reportpegawai.Execute;
reportpegawai.Close;

end;

procedure Tformlihattranspeg.PrintDataBerdasarkanNIP1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Filter Data','Silahkan Masukkan Nomor Induk :','');
queryreport.Close;
queryreport.SQL.Clear;
queryreport.SQL.Add('SELECT * FROM queryreport WHERE Nomor_induk =:nomor ORDER BY Nomor_induk ASC');
queryreport.Parameters.ParamByName('nomor').Value:=data;
queryreport.Open;
reportpegawai.Execute;
reportpegawai.Open;
reportpegawai.SelectReport('Report',False);
reportpegawai.SetParam('datastr','Berdasarkan Nomor Induk :'+data);
reportpegawai.Execute;
reportpegawai.Close;
end;

procedure Tformlihattranspeg.PrintDataBerdasarkanNamaPegawai1Click(
  Sender: TObject);
var
data:string;
begin
data:=InputBox('Filter Data','Silahkan Masukkan Nama Pegawai :','');
queryreport.Close;
queryreport.SQL.Clear;
queryreport.SQL.Add('SELECT * FROM queryreport WHERE Nama_Pegawai =:nama ORDER BY Nomor_induk ASC');
queryreport.Parameters.ParamByName('nama').Value:=data;
queryreport.Open;
reportpegawai.Open;
reportpegawai.SelectReport('Report',False);
reportpegawai.SetParam('datastr','Berdasarkan Nama Pegawai:'+data);
reportpegawai.Execute;
reportpegawai.Close;
end;

procedure Tformlihattranspeg.PrintDataBerdasarkanPersonel1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Filter Data','Silahkan Masukkan Personel Number :','');
queryreport.Close;
queryreport.SQL.Clear;
queryreport.SQL.Add('SELECT * FROM queryreport WHERE Personel_Number =:person ORDER BY Nomor_induk ASC');
queryreport.Parameters.ParamByName('person').Value:=data;
queryreport.Open;
reportpegawai.Open;
reportpegawai.SelectReport('Report',False);
reportpegawai.SetParam('datastr','Berdasarkan Personel Number :'+data);
reportpegawai.Execute;
reportpegawai.Close;
end;

procedure Tformlihattranspeg.PrintDataBerdasarkanNoUnit1Click(
  Sender: TObject);
var
  data:string;
begin
data:=InputBox('Filter Data','Silahkan Masukkan Nama Unit :','');
queryreport.Close;
queryreport.SQL.Clear;
queryreport.SQL.Add('SELECT * FROM queryreport WHERE Nama_Unit Like '+QuotedStr(data));
queryreport.ExecSQL;
queryreport.Open;
reportpegawai.Open;
reportpegawai.SelectReport('Report',False);
reportpegawai.SetParam('datastr','Berdasarkan Unit Pegawai :'+data);
reportpegawai.Execute;
reportpegawai.Close;
end;

procedure Tformlihattranspeg.Image13Click(Sender: TObject);
begin
        ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query WHERE Nomor_induk Like'+QuotedStr(txtnomor.Text+'%'));
      ADOQuery1.ExecSQL;
      ADOQuery1.Open;
reportpegawai.Open;
reportpegawai.SelectReport('Report',False);
reportpegawai.SetParam('datastr','Berdasarkan Nomor Induk :'+txtnomor.Text);
reportpegawai.Execute;
reportpegawai.Close;
end;

procedure Tformlihattranspeg.Image8Click(Sender: TObject);
begin
         ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query WHERE Personel_number Like'+QuotedStr(txtperson.Text+'%'));
      ADOQuery1.ExecSQL;
      ADOQuery1.Open;
reportpegawai.Open;
reportpegawai.SelectReport('Report',False);
reportpegawai.SetParam('datastr','Berdasarkan Personel Number :'+txtperson.Text);
reportpegawai.Execute;
reportpegawai.Close;
end;

procedure Tformlihattranspeg.Image9Click(Sender: TObject);
begin
      ADOQuery1.Active:=true;
          ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query WHERE Nama_Pegawai Like'+QuotedStr('%'+txtnama.Text+'%'));
      ADOQuery1.ExecSQL;
      ADOQuery1.Open;
reportpegawai.Open;
reportpegawai.SelectReport('Report',False);
reportpegawai.SetParam('datastr','Berdasarkan Nama Pegawai:'+txtnama.Text);
reportpegawai.Execute;
reportpegawai.Close;
end;

procedure Tformlihattranspeg.Image10Click(Sender: TObject);
begin
        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query WHERE kode_status_pegawai =:kodesp ORDER BY Nomor_induk ASC');
        ADOQuery1.Parameters.ParamByName('kodesp').Value:=lblnokodestatpeg.Caption;
        ADOQuery1.Open;
reportpegawai.Open;
reportpegawai.SelectReport('Report',False);
reportpegawai.SetParam('datastr','Berdasarkan Status Pegawai :'+cbkspeg.Text);
reportpegawai.Execute;
reportpegawai.Close;
end;

procedure Tformlihattranspeg.Image11Click(Sender: TObject);
begin
        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query WHERE kode_unit =:kodeup ORDER BY Nomor_induk ASC');
        ADOQuery1.Parameters.ParamByName('kodeup').Value:=lblnokodeunit.Caption;
        ADOQuery1.Open;
reportpegawai.Open;
reportpegawai.SelectReport('Report',False);
reportpegawai.SetParam('datastr','Berdasarkan Unit Pegawai :'+cbkupeg.Text);
reportpegawai.Execute;
reportpegawai.Close;
end;

procedure Tformlihattranspeg.txtnomorChange(Sender: TObject);
begin
if txtnomor.Text='' then
  begin

  end
  else
  begin
        ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query WHERE Nomor_induk Like'+QuotedStr(txtnomor.Text+'%'));
      ADOQuery1.ExecSQL;
      ADOQuery1.Open;
  end;
end;

procedure Tformlihattranspeg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
If MessageDlg('Apakah Anda Ingin Keluar Dari Aplikasi',mtConfirmation,mbYesNoCancel,1)=mrYes then
  begin
    TutupKoneksi;
    Application.Terminate;
    MessageDlg('Terima Kasih Telah menggunakan Aplikasi',mtInformation,[mbOk],1);
    end
else
  begin
    Abort;
  end;
end;

procedure Tformlihattranspeg.txtpersonChange(Sender: TObject);
begin
if txtperson.Text='' then
begin

end
else
begin
         ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query WHERE Personel_number Like'+QuotedStr(txtperson.Text+'%'));
      ADOQuery1.ExecSQL;
      ADOQuery1.Open;
end;
end;

procedure Tformlihattranspeg.txtnamaChange(Sender: TObject);
begin
if txtnama.Text='' then
  begin
  end
else
  begin
      ADOQuery1.Active:=true;
          ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query WHERE Nama_Pegawai Like'+QuotedStr('%'+txtnama.Text+'%'));
      ADOQuery1.ExecSQL;
      ADOQuery1.Open;
  end;
end;

procedure Tformlihattranspeg.ExportDataSemuanya1Click(Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
begin
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to AdoQuery1.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=AdoQuery1.Fields[filName].FieldName;
   end;
for r:=0 to AdoQuery1.RecordCount-1 do
begin
  for c:=0 to AdoQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=AdoQuery1.Fields[c].AsString;
  end;
  AdoQuery1.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(AdoQuery1.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihattranspeg.ExportDataBerdasarkanNomorInduk1Click(
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
        ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query WHERE Nomor_induk Like'+QuotedStr(data+'%'));
      ADOQuery1.ExecSQL;
      ADOQuery1.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery1.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery1.Fields[filName].FieldName;
   end;
//
if ADOQuery1.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery1.RecordCount=1 then
begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihattranspeg.ExportBerdasarkanNamaPegawai1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Pegawai :','Export Data','');
        ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query WHERE Nama_Pegawai Like'+QuotedStr('%'+data+'%'));
      ADOQuery1.ExecSQL;
      ADOQuery1.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery1.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery1.Fields[filName].FieldName;
   end;
//
if ADOQuery1.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery1.RecordCount=1 then
begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihattranspeg.ExportBerdasarkanPersonelNumber1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Personel Number :','Export Data','');
        ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query WHERE Personel_Number Like'+QuotedStr('%'+data+'%'));
      ADOQuery1.ExecSQL;
      ADOQuery1.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery1.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery1.Fields[filName].FieldName;
   end;
//
if ADOQuery1.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery1.RecordCount=1 then
begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihattranspeg.ExportBerdasarkanStatusPegawai1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Status Pegawai :','Export Data','');
        ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query WHERE Keterangan_Status Like'+QuotedStr('%'+data+'%'));
      ADOQuery1.ExecSQL;
      ADOQuery1.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery1.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery1.Fields[filName].FieldName;
   end;
//
if ADOQuery1.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery1.RecordCount=1 then
begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihattranspeg.ExportBerdasarkanUnitPegawai1Click(
  Sender: TObject);
var XApp:Variant;
sheet:Variant;
r,c:Integer;
row,col:Integer;
filName:Integer;
q:Integer;
data:string;
begin
data:=InputBox('Silahkan Masukkan Nama Unit :','Export Data','');
        ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT * FROM MASTER_PEGAWAI_Query_Query WHERE nama_unit Like'+QuotedStr('%'+data+'%'));
      ADOQuery1.ExecSQL;
      ADOQuery1.Open;
//
XApp:=CreateOleObject('Excel.Application');
XApp.Visible:=true;
XApp.WorkBooks.Add(-4167);
XApp.WorkBooks[1].WorkSheets[1].Name:='Sheet1';
sheet:=XApp.WorkBooks[1].WorkSheets['Sheet1'];
  for filName:=0 to ADOQuery1.FieldCount-1 do
   begin
    q:=filName+1;
    sheet.Cells[1,q]:=ADOQuery1.Fields[filName].FieldName;
   end;
//
if ADOQuery1.RecordCount=0 then
  begin
    MessageDlg('Data yang Ingin Diexport Tidak Ada',mtError,[mbYes],1);
  end
else if ADOQuery1.RecordCount=1 then
begin
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;

XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount)].Borders.LineStyle :=1;

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
for r:=0 to ADOQuery1.RecordCount-1 do
begin
  for c:=0 to ADOQuery1.FieldCount-1 do
  begin
   row:=r+2;
   col:=c+1;
   sheet.Cells[row,col]:=ADOQuery1.Fields[c].AsString;
  end;
 ADOQuery1.Next;
end;
XApp.WorkSheets['Sheet1'].Range['A1:AA1'].Font.Bold:=True;
XApp.WorkSheets['Sheet1'].Range['A1:K1'].Borders.LineStyle :=13;
XApp.WorkSheets['Sheet1'].Range['A2:K'+inttostr(ADOQuery1.RecordCount-1)].Borders.LineStyle :=1;
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

procedure Tformlihattranspeg.TutupKoneksi;
begin
ADOConnection1.Connected:=false;
queryreport.Active:=false;
ADOQuery1.Active:=false;
ADOQuery2.Active:=false;
adokodeunit.Active:=false;
end;

end.
