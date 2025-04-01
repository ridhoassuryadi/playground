unit uTransunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ExtCtrls, jpeg, Grids, DBGrids, Menus, ComObj;

type
  Tformtransunit = class(TForm)
    GroupBox2: TGroupBox;
    Image5: TImage;
    Image8: TImage;
    btndeletedata: TImage;
    btneditkelaskedua: TImage;
    Shape3: TShape;
    Label2: TLabel;
    btncekkodeunit: TImage;
    Shape6: TShape;
    Label6: TLabel;
    ednamaunit: TEdit;
    edkodeunit: TEdit;
    ADOConnection1: TADOConnection;
    adounit: TADOTable;
    DBGrid1: TDBGrid;
    Image1: TImage;
    DataSource1: TDataSource;
    queryunit: TADOQuery;
    GroupBox3: TGroupBox;
    Image3: TImage;
    Shape4: TShape;
    Label9: TLabel;
    Shape1: TShape;
    Label10: TLabel;
    txtkode: TEdit;
    txtnama: TEdit;
    Image4: TImage;
    PopupMenu1: TPopupMenu;
    KembaliKeTransaksiPegawai1: TMenuItem;
    KeluarAplikasi1: TMenuItem;
    RefreshData1: TMenuItem;
    MainMenu1: TMainMenu;
    Timer1: TTimer;
    Image6: TImage;
    Image7: TImage;
    OpenDialog1: TOpenDialog;
    procedure btncekkodeunitClick(Sender: TObject);
    procedure ednamaunitKeyPress(Sender: TObject; var Key: Char);
    procedure Image8Click(Sender: TObject);
    procedure btncarinomorindukClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure KembaliKeTransaksiPegawai1Click(Sender: TObject);
    procedure edkodeunitKeyPress(Sender: TObject; var Key: Char);
    procedure btndeletedataClick(Sender: TObject);
    procedure btneditkelaskeduaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure KeTransaksiPegawai1Click(Sender: TObject);
    procedure KeluarAplikasi2Click(Sender: TObject);
    procedure entangAplikasi1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edkodeunitEnter(Sender: TObject);
    procedure ednamaunitEnter(Sender: TObject);
    procedure txtkodeEnter(Sender: TObject);
    procedure txtnamaEnter(Sender: TObject);
    procedure edkodeunitExit(Sender: TObject);
    procedure ednamaunitExit(Sender: TObject);
    procedure txtkodeExit(Sender: TObject);
    procedure txtnamaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure txtkodeChange(Sender: TObject);
    procedure txtnamaChange(Sender: TObject);
  private
    procedure RefreshData;
    procedure IsiKeTransaksiPegawai;
    procedure IsiKelihatDataPegawai;
    procedure IsiKeBerobatPegawai;
    procedure IsiKeLihatPasien;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formtransunit: Tformtransunit;

implementation

uses UASAL, uDoctorMenu, uInsertMasterPegawai, ulihatdataobat,
  ulihatkeluarga, uLihatPasien, ulihatrecord, uLihatTranspeg, ulogindokter,
  umainobat, umainobatpoli, uMainUtama, uMasterDokter, uMasterKegunaanObat,
  uMasterKeluarga, uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal,
  uMenuPegawai, uPasien, upilihdokter, uPilihKeluarga, uSplash, uAbout,
  uFamilytypetrans, uStatusPegawai, AutoCompleteText, AutoEdit, ss,
  uDoctorMain, uLihatBerobatKeluarga, ulihatChart, ulihatchart2,
  ulihatchartobat, ulihatdataberobat, uLihatDataDokter, uLihatDataPasien,
  uLihatpegawai, ulogin, uMasterPilihan, uMenuBerobat, uMenuDokter,
  uMenuUser, Unit1, uRiwayatpenyakit, utest2, uTransaksiuser;

{$R *.dfm}

procedure Tformtransunit.btncekkodeunitClick(Sender: TObject);
begin
if edkodeunit.Text<>'' then
  begin
    if adounit.Locate('kode_unit',edkodeunit.Text,[]) then
      begin
        MessageDlg('Kode Unit '+edkodeunit.Text+' sudah tersedia dengan Wilayah '+adounit.FieldByName('Nama_Unit').AsString,mtWarning,[mbOK],1);
        end
    else
      begin
        MessageDlg('Kode Unit Belum Terdatar dan Dapat Disimpan',mtInformation,[mbYes],1);
        ednamaunit.ReadOnly:=false;
        ednamaunit.SetFocus;
      end;
    end
else
  begin
    MessageDlg('Field Kode masih Kosong',mtError,[mbOK],1);
    edkodeunit.SetFocus;
  end;

end;

procedure Tformtransunit.ednamaunitKeyPress(Sender: TObject; var Key: Char);
begin
if ((key >= 'A') and (key <= 'Z')) or (key=#8) or (key=chr(13)) then
  begin
    if not (key=chr(13)) then exit;
    Image8.Enabled:=true;
  ShowMessage('Silahkan Klik Tombol Add Untuk menyimpan Unit Baru');
  end
else
  begin
    ShowMessage('NAMA UNIT SELURUHNYA HARUS HURUF BESAR');
    ednamaunit.Clear;
  end;


end;

procedure Tformtransunit.Image8Click(Sender: TObject);
begin
if (edkodeunit.Text='')or (ednamaunit.Text='') then
  begin
    ShowMessage('Field Kode masih Kosong');
    edkodeunit.SetFocus;
    end
else
  begin

    if adounit.Locate('kode_unit',edkodeunit.Text,[]) then
      begin
        ShowMessage('Kode Unit '+edkodeunit.Text+' sudah tersedia dengan Wilayah '+adounit.FieldByName('Nama_Unit').AsString);
        end
    else
      begin
        adounit.Append;
        adounit.FieldByName('Kode_Unit').AsString:=edkodeunit.Text;
        adounit.FieldByName('Nama_Unit').AsString:=ednamaunit.Text;
        adounit.Post;
        //
        queryunit.Active:=True;
        queryunit.Last;
         //
                 IsiKeTransaksiPegawai;
         IsiKelihatDataPegawai;
         IsiKeBerobatPegawai;
         IsiKeLihatPasien;
        MessageDlg('Unit Baru Tersimpan',mtInformation,[mbOK],1);
        ednamaunit.ReadOnly:=true;
        Image8.Enabled:=false;
        RefreshData;

      end;
  end;

end;

procedure Tformtransunit.btncarinomorindukClick(Sender: TObject);
begin
queryunit.Close;
queryunit.SQL.Clear;
queryunit.SQL.Add('SELECT * FROM Master_Unit WHERE Kode_unit =:kode ORDER BY Kode_Unit ASC');
queryunit.Parameters.ParamByName('kode').Value:=txtkode.Text;
queryunit.Open;

end;

procedure Tformtransunit.Image2Click(Sender: TObject);
begin
queryunit.Close;
queryunit.SQL.Clear;
queryunit.SQL.Add('SELECT * FROM Master_Unit WHERE Nama_unit =:nama ORDER BY Kode_Unit ASC');
queryunit.Parameters.ParamByName('nama').Value:=txtnama.Text;
queryunit.Open;
end;

procedure Tformtransunit.RefreshData;
begin
edkodeunit.Clear;
ednamaunit.Clear;
ednamaunit.ReadOnly:=true;
Image8.Enabled:=false;
txtkode.Clear;
txtnama.Clear;
ADOConnection1.Connected:=true;
queryunit.Active:=false;
queryunit.Active:=True;
adounit.Active:=false;
adounit.Active:=true;
edkodeunit.Clear;
ednamaunit.Clear;
txtkode.Clear;
txtnama.Clear;

end;

procedure Tformtransunit.RefreshData1Click(Sender: TObject);
begin
RefreshData;
end;

procedure Tformtransunit.KeluarAplikasi1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformtransunit.KembaliKeTransaksiPegawai1Click(Sender: TObject);
begin
RefreshData;
ftransaksipegawai.Show;
formtransunit.Hide;
end;

procedure Tformtransunit.edkodeunitKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  btncekkodeunitClick(Sender);

end;

procedure Tformtransunit.btndeletedataClick(Sender: TObject);
var
  data:string;
begin
   data:=InputBox('Konfirmasi :','Masukkan Kode Unit:','');
   if data='' then
    begin
    MessageDlg('Field Pencarian Anda Kosong',mtError,[mbOK],1);
    end
   else
    begin
   if adounit.Locate('Kode_Unit',data,[]) then
    begin
      adounit.Delete;
      RefreshData;
                       IsiKeTransaksiPegawai;
  //       IsiKelihatDataPegawai;
//         IsiKeBerobatPegawai;
//         IsiKeLihatPasien;
      MessageDlg('Unit '+data+' Berhasil Dihapus',mtInformation,[mbYes],1);

    end
   else
    begin
      MessageDlg('Unit Tidak Ditemukan',mtError,[mbOK],1);
    end;
    end;
end;

procedure Tformtransunit.btneditkelaskeduaClick(Sender: TObject);
var
  data,data1,data2:string;
begin
   data:=InputBox('Edit Data','Masukkan Kode Unit :','');

   if adounit.Locate('Kode_Unit',data,[])then
    begin
      ShowMessage('Data Ditemukan');
      data1:=InputBox('Edit Data ','Masukkan Kode Unit Yang Baru :','');
      data2:=InputBox('Edit Data ','Masukkan Nama Unit yang baru :','');
      adounit.Edit;
      adounit.FieldByName('Kode_Unit').AsString:=data1;
      adounit.FieldByName('Nama_Unit').AsString:=data2;
      adounit.Post;
                             IsiKeTransaksiPegawai;
         IsiKelihatDataPegawai;
                  IsiKeBerobatPegawai;
//         IsiKeLihatPasien;
      MessageDlg('Data Edit Berhasil Disimpan',mtInformation,[mbYes],1);
      RefreshData;
    end
   else
    begin
      ShowMessage('Data Tidak Ditemukan');
    end;
end;

procedure Tformtransunit.Timer1Timer(Sender: TObject);
begin
if edkodeunit.Text<>'' then
  begin
    Shape3.Visible:=true;
  end
else
  begin
    Shape3.Visible:=false;
  end;
if ednamaunit.Text<>'' then
  begin
    Shape6.Visible:=true;
  end
else
  begin
    Shape6.Visible:=false;
  end;
if txtkode.Text<>'' then
  begin
    Shape1.Visible:=true;
  end
else
  begin
    Shape1.Visible:=false;
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

procedure Tformtransunit.KeTransaksiPegawai1Click(Sender: TObject);
begin
RefreshData;
ftransaksipegawai.Show;
formtransunit.Hide;
end;

procedure Tformtransunit.KeluarAplikasi2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tformtransunit.entangAplikasi1Click(Sender: TObject);
begin
formabout.Show;
end;

procedure Tformtransunit.FormCreate(Sender: TObject);
begin
queryunit.Active:=true;
adounit.Active:=true;
end;

procedure Tformtransunit.edkodeunitEnter(Sender: TObject);
begin
edkodeunit.Text:='';
edkodeunit.Font.Color:=clHotLight;
end;

procedure Tformtransunit.ednamaunitEnter(Sender: TObject);
begin
ednamaunit.Text:='';
ednamaunit.Font.Color:=clHotLight;
end;

procedure Tformtransunit.txtkodeEnter(Sender: TObject);
begin
txtkode.Text:='';
txtkode.Font.Color:=clHotLight;
end;

procedure Tformtransunit.txtnamaEnter(Sender: TObject);
begin
txtnama.Text:='';
txtnama.Font.Color:=clHotLight;
end;

procedure Tformtransunit.edkodeunitExit(Sender: TObject);
begin
if edkodeunit.Text = '' then
  begin
    edkodeunit.Font.Color:=clMedGray;
    edkodeunit.Text:='Kode Unit';
  end;
end;

procedure Tformtransunit.ednamaunitExit(Sender: TObject);
begin
if ednamaunit.Text='' then
  begin
    ednamaunit.Text:='Nama Unit';
    ednamaunit.Font.Color:=clMedGray;
    end;
end;

procedure Tformtransunit.txtkodeExit(Sender: TObject);
begin
if txtkode.Text='' then
  begin
    txtkode.Text:='Kode Unit';
    txtkode.Font.Color:=clMedGray;
  end;
end;

procedure Tformtransunit.txtnamaExit(Sender: TObject);
begin
if txtnama.Text='' then
  begin
    txtnama.Text:='Nama Unit';
    txtnama.Font.Color:=clMedGray;
  end;
end;

procedure Tformtransunit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ADOConnection1.Connected:=false;
adounit.Active:=false;
queryunit.Active:=false;
ftransaksipegawai.Show;
formtransunit.Hide;
end;

procedure Tformtransunit.Image6Click(Sender: TObject);
begin
ADOConnection1.Connected:=false;
adounit.Active:=false;
queryunit.Active:=false;
formtransunit.Hide;
ftransaksipegawai.Show;
edkodeunit.Clear;
ednamaunit.Clear;
txtkode.Clear;
txtnama.Clear;
end;

procedure Tformtransunit.IsiKeTransaksiPegawai;
begin
ftransaksipegawai.qkunit.Active:=true;
ftransaksipegawai.qkunit.SQL.Clear;
ftransaksipegawai.qkunit.SQL.Add('Select * from master_unit');
ftransaksipegawai.qkunit.ExecSQL;
ftransaksipegawai.qkunit.Open;
ftransaksipegawai.qkunit.First;
ftransaksipegawai.cbkunit.Clear;
While not ftransaksipegawai.qkunit.Eof do
  begin
  ftransaksipegawai.cbkunit.Items.Add(ftransaksipegawai.qkunit['nama_unit']);
  ftransaksipegawai.qkunit.Next;
end;
end;

procedure Tformtransunit.IsiKelihatDataPegawai;
begin
formlihattranspeg.adokodeunit.Active:=true;
formlihattranspeg.adokodeunit.Close;
formlihattranspeg.adokodeunit.SQL.Clear;
formlihattranspeg.adokodeunit.SQL.Add('SELECT * FROM Master_Unit');
formlihattranspeg.adokodeunit.ExecSQL;
formlihattranspeg.adokodeunit.Open;
formlihattranspeg.adokodeunit.First;
formlihattranspeg.cbkupeg.Clear;
While not formlihattranspeg.adokodeunit.Eof do
  begin
  formlihattranspeg.cbkupeg.Items.Add(formlihattranspeg.adokodeunit['nama_unit']);
  formlihattranspeg.adokodeunit.Next;
end;
end;

procedure Tformtransunit.IsiKeBerobatPegawai;
begin
formlihatberobatpegawai.queryunit.Active:=true;
formlihatberobatpegawai.queryunit.Close;
formlihatberobatpegawai.queryunit.SQL.Clear;
formlihatberobatpegawai.queryunit.SQL.Add('Select * From Master_Unit');
formlihatberobatpegawai.queryunit.ExecSQL;
formlihatberobatpegawai.queryunit.Open;
formlihatberobatpegawai.queryunit.First;
formlihatberobatpegawai.cbunitpeg.Clear;
while not queryunit.Eof do
begin
  formlihatberobatpegawai.cbunitpeg.Items.Add(formlihatberobatpegawai.queryunit['nama_unit']);
  formlihatberobatpegawai.queryunit.Next;
end;

end;
procedure Tformtransunit.IsiKeLihatPasien;
begin
formlihatpasien.qunit.Active:=true;
formlihatpasien.qunit.Close;
formlihatpasien.qunit.SQL.Clear;
formlihatpasien.qunit.SQL.Add('Select * from master_unit');
formlihatpasien.qunit.ExecSQL;
formlihatpasien.qunit.Open;
formlihatpasien.cbunit.Clear;
formlihatpasien.qunit.First;
while not formlihatpasien.qunit.Eof do
begin
   formlihatpasien.cbunit.Items.Add(formlihatpasien.qunit['Nama_Unit']);
   formlihatpasien.qunit.Next;
end;

end;
procedure Tformtransunit.Image7Click(Sender: TObject);
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
        queryunit.Close;
        queryunit.SQL.Clear;
        queryunit.SQL.Text :='insert into Master_Unit (kode_unit,nama_unit)'+
                            'values (:kodeunit,:namaunit)';
        queryunit.Parameters.ParamByName('kodeunit').Value:=VarToStr(Excel.cells.range['a'+inttostr(i)]);
        queryunit.Parameters.ParamByName('namaunit').Value:=VarToStr(Excel.cells.range['b'+inttostr(i)]);
        queryunit.ExecSQL;
        inc(i);
                         IsiKeTransaksiPegawai;
         IsiKelihatDataPegawai;
         IsiKeBerobatPegawai;
         IsiKeLihatPasien;
        MessageDlg('Import Data Berhasil',mtInformation,[mbOK],1);
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
  queryunit.Close;
  queryunit.SQL.Text:='select * from Master_Unit';
  queryunit.Open;

  dataSource1.DataSet:=queryunit;
  Dbgrid1.DataSource:=DataSource1;
end;

procedure Tformtransunit.txtkodeChange(Sender: TObject);
begin
if txtkode.Text='' then
begin
queryunit.Close;
queryunit.SQL.Clear;
queryunit.SQL.Add('SELECT * FROM Master_Unit');
queryunit.Open;
end
else
begin
queryunit.Close;
queryunit.SQL.Clear;
queryunit.SQL.Add('SELECT * FROM Master_Unit WHERE Kode_unit Like '+QuotedStr('%'+txtkode.Text+'%'));
queryunit.ExecSQL;
queryunit.Open;
end;
end;

procedure Tformtransunit.txtnamaChange(Sender: TObject);
begin
if txtnama.Text='' then
begin
queryunit.Close;
queryunit.SQL.Clear;
queryunit.SQL.Add('SELECT * FROM Master_Unit');
queryunit.Open;
end
else
begin
queryunit.Close;
queryunit.SQL.Clear;
queryunit.SQL.Add('SELECT * FROM Master_Unit WHERE nama_unit Like '+QuotedStr('%'+txtnama.Text+'%'));
queryunit.ExecSQL;
queryunit.Open;
end;
end;

end.
