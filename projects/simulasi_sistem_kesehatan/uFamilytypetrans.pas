unit uFamilytypetrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DB, ADODB, Menus, ComObj;

type
  Tformtypekeluarga = class(TForm)
    Image1: TImage;
    GroupBox2: TGroupBox;
    Image5: TImage;
    Image8: TImage;
    btndeletedata: TImage;
    btneditkelaskedua: TImage;
    Shape6: TShape;
    Label6: TLabel;
    edjenis: TEdit;
    GroupBox3: TGroupBox;
    Image3: TImage;
    Shape4: TShape;
    Label9: TLabel;
    Shape1: TShape;
    Image2: TImage;
    Label10: TLabel;
    btncarinomorinduk: TImage;
    txtkode: TEdit;
    txtnama: TEdit;
    Image4: TImage;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    KembalikeTransaksiKeluarga2: TMenuItem;
    Kembalikemenukeluarga1: TMenuItem;
    RefreshData1: TMenuItem;
    KeluarAplikasi1: TMenuItem;
    Image6: TImage;
    Image7: TImage;
    OpenDialog1: TOpenDialog;
    procedure edjenisKeyPress(Sender: TObject; var Key: Char);
    procedure Image8Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btndeletedataClick(Sender: TObject);
    procedure btneditkelaskeduaClick(Sender: TObject);
    procedure btncarinomorindukClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure KeluarA1Click(Sender: TObject);
    procedure KembaliKetransaksiKeluarga1Click(Sender: TObject);
    procedure KembalikemenuAwal1Click(Sender: TObject);
    procedure entangAplikasi1Click(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure KembalikeTransaksiKeluarga2Click(Sender: TObject);
    procedure Kembalikemenukeluarga1Click(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edjenisEnter(Sender: TObject);
    procedure txtkodeEnter(Sender: TObject);
    procedure txtnamaEnter(Sender: TObject);
    procedure edjenisExit(Sender: TObject);
    procedure txtkodeExit(Sender: TObject);
    procedure txtnamaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure txtkodeChange(Sender: TObject);
    procedure txtnamaChange(Sender: TObject);
  private
    procedure RefreshData;
    procedure IsiKeBerobatKeluarga;
    procedure IsiKeLihatKeluarga;
    procedure IsiKeLihatPasien;
    procedure IsiKeTableKeluarga;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formtypekeluarga: Tformtypekeluarga;

implementation

uses uAbout, UASAL, uDoctorMenu, uInsertMasterPegawai, ulihatdataobat,
  ulihatkeluarga, uLihatPasien, ulihatrecord, uLihatTranspeg, ulogindokter,
  umainobat, umainobatpoli, uMainUtama, uMasterDokter, uMasterKegunaanObat,
  uMasterKeluarga, uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal,
  uMenuPegawai, uPasien, upilihdokter, uPilihKeluarga, uSplash, uTransunit,
  AutoCompleteText, AutoEdit, ss, uDoctorMain, uLihatBerobatKeluarga,
  ulihatChart, ulihatchart2, ulihatchartobat, ulihatdataberobat,
  uLihatDataDokter, uLihatDataPasien, uLihatpegawai, ulogin,
  uMasterPilihan, uMenuBerobat, uMenuDokter, uMenuUser, Unit1,
  uRiwayatpenyakit, uStatusPegawai, utest2, uTransaksiuser;

{$R *.dfm}

procedure Tformtypekeluarga.edjenisKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  if edjenis.Text='' then
    begin
      ShowMessage('Field Jenis Masih Kosong');
    end
  else
    begin
      Image8.Enabled:=true;
      ShowMessage('Silahkan Klik Tombol ADD untuk menyimpan Data Baru');
    end;
end;

procedure Tformtypekeluarga.Image8Click(Sender: TObject);
begin
  if  (edjenis.Text='') then
    begin
      ShowMessage('Field Masih kosong');
    end
  else
    begin
      if ADOTable1.Locate('Jenis_Keluarga',edjenis.Text,[]) then
        begin
          MessageDlg('Data Sudah Ada',mtError,[mbYes],1);

        end
      else
        begin
          ADOTable1.Append;


          ADOTable1.FieldByName('Jenis_Keluarga').AsString:=edjenis.Text;
          ADOTable1.Post;
          IsiKeBerobatKeluarga;
          IsiKeLihatKeluarga;
          IsiKeLihatPasien;
          IsiKeTableKeluarga;
          MessageDlg('Data Tersimpan',mtInformation,[mbYes],1);
          RefreshData;
          end;
        end;
end;

procedure Tformtypekeluarga.Timer1Timer(Sender: TObject);
begin

if edjenis.Text<>'' then
  begin
    Shape6.Visible:=true;
  end
else
  begin
    Shape6.Visible:=false;
  end;
if txtkode.Text<>'' then
  begin
    Shape4.Visible:=true;
  end
else
  begin
    Shape4.Visible:=false;
  end;
if txtnama.Text<>'' then
  begin
    Shape1.Visible:=true;
  end
else
  begin
    Shape1.Visible:=false;
  end;
end;

procedure Tformtypekeluarga.btndeletedataClick(Sender: TObject);
var
  data1:string;
begin
  data1:=InputBox('Hapus Data :','Masukkan Jenis Keluarga : ','');
  if ADOTable1.Locate('Jenis_Keluarga',data1,[]) then
    begin
      ADOTable1.Delete;
                IsiKeBerobatKeluarga;
          IsiKeLihatKeluarga;
          IsiKeLihatPasien;
          IsiKeTableKeluarga;
      MessageDlg('Data Berhasil Terhapus',mtInformation,[mbYes],1);
      RefreshData;
    end
  else
    begin
      MessageDlg('Data Tidak Ditemukan',mtError,[mbYes],1);
    end;

end;

procedure Tformtypekeluarga.btneditkelaskeduaClick(Sender: TObject);
var
  data1,data2:string;
begin
  data1:=InputBox('Edit Data :','Masukkan Jenis Keluarga  : ','');
  if ADOTable1.Locate('Jenis_Keluarga',data1,[]) then
    begin
      data2:=InputBox('Edit Data :','Masukkan Jenis Keluarga yang Baru :','');
      ADOTable1.Edit;
      ADOTable1.FieldByName('Jenis_Keluarga').AsString:=data2;
      ADOTable1.Post;
                IsiKeBerobatKeluarga;
          IsiKeLihatKeluarga;
          IsiKeLihatPasien;
          IsiKeTableKeluarga;
      MessageDlg('Data Berhasil tersimpan',mtInformation,[mbYes],1);
      RefreshData;
    end
  else
    begin
      MessageDlg('Data Tidak Ditemukan',mtError,[mbYes],1);
    end;

end;
procedure Tformtypekeluarga.RefreshData;
begin
ADOQuery1.Active:=false;
ADOQuery1.Active:=true;

  edjenis.Clear;
  Image8.Enabled:=false;
  txtkode.Clear;
  txtnama.Clear;
  ShowMessage('Refresh Data');
  if edjenis.Text='' then
  begin
    edjenis.Text:='Jenis Keluarga';
    edjenis.Font.Color:=clMedGray;
  end;
  if txtkode.Text='' then
  begin
    txtkode.Text:='Kode Jenis';
    txtkode.Font.Color:=clMedGray;
  end;
  if txtnama.Text='' then
  begin
    txtnama.Text:='Jenis Keluarga';
    txtnama.Font.Color:=clMedGray;
  end;
end;
procedure Tformtypekeluarga.btncarinomorindukClick(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Jenis_Keluarga WHERE Kode_Jenis_Keluarga =:kode ORDER BY Kode_Jenis_Keluarga ASC');
ADOQuery1.Parameters.ParamByName('kode').Value:=txtkode.Text;
ADOQuery1.Open;

end;

procedure Tformtypekeluarga.Image2Click(Sender: TObject);
begin
ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Jenis_Keluarga WHERE Jenis_Keluarga =:jenis ORDER BY Kode_Jenis_Keluarga ASC');
ADOQuery1.Parameters.ParamByName('jenis').Value:=txtnama.Text;
ADOQuery1.Open;
end;

procedure Tformtypekeluarga.KeluarA1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformtypekeluarga.KembaliKetransaksiKeluarga1Click(
  Sender: TObject);
begin
formtablekeluarga.Show;
formtypekeluarga.Hide;
end;

procedure Tformtypekeluarga.KembalikemenuAwal1Click(Sender: TObject);
begin
RefreshData;
formmainkeluarga.Show;
formtypekeluarga.Hide;
end;

procedure Tformtypekeluarga.entangAplikasi1Click(Sender: TObject);
begin
  formabout.Show;
end;

procedure Tformtypekeluarga.KeluarAplikasi1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformtypekeluarga.KembalikeTransaksiKeluarga2Click(
  Sender: TObject);
begin
RefreshData;
formtablekeluarga.Show;
formtypekeluarga.Hide;
end;

procedure Tformtypekeluarga.Kembalikemenukeluarga1Click(Sender: TObject);
begin
RefreshData;
formmainkeluarga.Show;
formtypekeluarga.Hide;
end;

procedure Tformtypekeluarga.RefreshData1Click(Sender: TObject);
begin
RefreshData;
end;

procedure Tformtypekeluarga.FormCreate(Sender: TObject);
begin
ADOTable1.Active:=true;
ADOQuery1.Active:=true;
end;

procedure Tformtypekeluarga.edjenisEnter(Sender: TObject);
begin
edjenis.Text:='';
edjenis.Font.Color:=clHotLight;
end;

procedure Tformtypekeluarga.txtkodeEnter(Sender: TObject);
begin
txtkode.Text:='';
txtkode.Font.Color:=clHotLight;
end;

procedure Tformtypekeluarga.txtnamaEnter(Sender: TObject);
begin
txtnama.Text:='';
txtnama.Font.Color:=clHotLight;
end;

procedure Tformtypekeluarga.edjenisExit(Sender: TObject);
begin
if edjenis.Text='' then
  begin
    edjenis.Text:='Jenis Keluarga';
    edjenis.Font.Color:=clMedGray;
  end;
end;

procedure Tformtypekeluarga.txtkodeExit(Sender: TObject);
begin
if txtkode.Text='' then
  begin
    txtkode.Text:='Kode Jenis';
    txtkode.Font.Color:=clMedGray;
  end;
end;

procedure Tformtypekeluarga.txtnamaExit(Sender: TObject);
begin
if txtnama.Text='' then
  begin
    txtnama.Text:='Jenis Keluarga';
    txtnama.Font.Color:=clMedGray;
  end;
end;

procedure Tformtypekeluarga.FormClose(Sender: TObject;
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

procedure Tformtypekeluarga.Image6Click(Sender: TObject);
begin
formtablekeluarga.Show;
formtypekeluarga.Hide;
end;

procedure Tformtypekeluarga.IsiKeBerobatKeluarga;
begin
formlihatberobatkeluarga.queryjk.Active:=true;
formlihatberobatkeluarga.queryjk.Close;
formlihatberobatkeluarga.queryjk.SQL.Clear;
formlihatberobatkeluarga.queryjk.SQL.Add('SELECT * FROM Master_Jenis_Keluarga');
formlihatberobatkeluarga.queryjk.ExecSQL;
formlihatberobatkeluarga.queryjk.Open;
formlihatberobatkeluarga.queryjk.first;
//
formlihatberobatkeluarga.cbjk.Clear;
while not formlihatberobatkeluarga.queryjk.Eof do
begin
  formlihatberobatkeluarga.cbjk.Items.Add(formlihatberobatkeluarga.queryjk['Jenis_Keluarga']);
  formlihatberobatkeluarga.queryjk.Next;
end;
end;

procedure Tformtypekeluarga.IsiKeLihatKeluarga;
begin
formlihatkeluarga.qkodejenis.Close;
formlihatkeluarga.qkodejenis.SQL.Clear;
formlihatkeluarga.qkodejenis.SQL.Add('Select * From master_jenis_keluarga');
formlihatkeluarga.qkodejenis.Open;
formlihatkeluarga.qkodejenis.First;
formlihatkeluarga.cbcarijk.Clear;
While not formlihatkeluarga.qkodejenis.Eof do
begin
formlihatkeluarga.cbcarijk.Items.Add(formlihatkeluarga.qkodejenis['jenis_keluarga']);
formlihatkeluarga.qkodejenis.Next;
end;
end;

procedure Tformtypekeluarga.IsiKeLihatPasien;
begin
formlihatpasien.adojk.Active:=True;
formlihatpasien.adojk.Close;
formlihatpasien.adojk.SQL.Clear;
formlihatpasien.adojk.SQL.Add('Select * From master_jenis_keluarga');
formlihatpasien.adojk.ExecSQL;
formlihatpasien.adojk.Open;
formlihatpasien.adojk.First;
formlihatpasien.cbkspeg.Clear;
while not formlihatpasien.adojk.Eof do
  begin
    formlihatpasien.cbkspeg.Items.Add(formlihatpasien.adojk['jenis_keluarga']);
    formlihatpasien.adojk.Next;
  end;
end;

procedure Tformtypekeluarga.IsiKeTableKeluarga;
begin
formtablekeluarga.qpeg.Active:=true;
formtablekeluarga.qpeg.Close;
formtablekeluarga.qpeg.SQL.Clear;
formtablekeluarga.qpeg.SQL.Add('Select * From master_jenis_keluarga');
formtablekeluarga.qpeg.Open;
formtablekeluarga.qpeg.First;
formtablekeluarga.cbkodejk.Clear;
While not formtablekeluarga.qpeg.Eof do
begin
formtablekeluarga.cbkodejk.Items.Add(formtablekeluarga.qpeg['jenis_keluarga']);
formtablekeluarga.qpeg.Next;
end;

end;

procedure Tformtypekeluarga.Image7Click(Sender: TObject);
var
  Excel : Variant;
  i : Integer;
begin
  if OpenDialog1.Execute  then
  begin
    Try
      Excel := CreateOleObject('Excel.Application');
      Excel.WorkBooks.Open(OpenDialog1.FileName);
      i:=2;
      while VarToStr(Excel.Cells.Range['a'+inttostr(i)])<>'' do
      begin
        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Text :='insert into Master_Status (jenis_keluarga)'+
                            'values (:jekel)';
        ADOQuery1.Parameters.ParamByName('jekel').Value:=VarToStr(Excel.cells.range['a'+inttostr(i)]);
        ADOQuery1.ExecSQL;
        inc(i);
        MessageDlg('Import Data Berhasil',mtInformation,[mbOK],1);
        IsiKeBerobatKeluarga;
          IsiKeLihatKeluarga;
          IsiKeLihatPasien;
          IsiKeTableKeluarga;
      end;
      Excel.Quit;
    Except
      on E:Exception do
      begin
      MessageDlg('Import Data Gagal',mtError,[mbOK],1);
        raise Exception.Create(E.Message);
      end;
    End;
  end;

  ADOQuery1.Close;
  ADOQuery1.SQL.Text:='select * from Master_jenis_keluarga';
  ADOQuery1.Open;

  dataSource1.DataSet:=ADOQuery1;
  Dbgrid1.DataSource:=DataSource1;
end;

procedure Tformtypekeluarga.txtkodeChange(Sender: TObject);
begin
if txtkode.Text='' then
  begin
  ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Jenis_Keluarga');
ADOQuery1.Open;
  end
else
  begin
  ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Jenis_Keluarga WHERE Kode_Jenis_Keluarga Like'+QuotedStr('%'+txtkode.Text+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
  end;
end;

procedure Tformtypekeluarga.txtnamaChange(Sender: TObject);
begin
if txtkode.Text='' then
  begin
  ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Jenis_Keluarga');
ADOQuery1.Open;
  end
else
  begin
  ADOQuery1.Active:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Master_Jenis_Keluarga WHERE Jenis_Keluarga Like'+QuotedStr('%'+txtnama.Text+'%'));
ADOQuery1.ExecSQL;
ADOQuery1.Open;
  end;
end;

end.
