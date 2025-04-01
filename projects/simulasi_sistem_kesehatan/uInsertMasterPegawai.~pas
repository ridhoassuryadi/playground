unit uInsertMasterPegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids, Menus, DBCtrls, ExtCtrls,
  jpeg, RpCon, RpConDS, RpDefine, RpRave, ComObj;

type
  Tftransaksipegawai = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    adopegawai: TADOTable;
    qkstatus: TADOQuery;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Image6: TImage;
    ednomor: TEdit;
    edpersonel: TEdit;
    ednama: TEdit;
    cbkodestp: TComboBox;
    cbkunit: TComboBox;
    Label17: TLabel;
    Image8: TImage;
    Image1: TImage;
    btnhapus: TImage;
    Image16: TImage;
    griddatabase: TImage;
    lblkodejk: TLabel;
    lblkodest: TLabel;
    lblcarikodejk: TLabel;
    Shape5: TShape;
    Label18: TLabel;
    Label19: TLabel;
    lbltransaksi: TLabel;
    Label21: TLabel;
    lbllogin: TLabel;
    Shape8: TShape;
    Shape9: TShape;
    Shape13: TShape;
    Shape14: TShape;
    lbljam: TLabel;
    lblhari: TLabel;
    Shape10: TShape;
    Shape11: TShape;
    Image3: TImage;
    Timer1: TTimer;
    qkunit: TADOQuery;
    querypegawai: TADOQuery;
    MainMenu1: TMainMenu;
    Aplikasi1: TMenuItem;
    LihatTransaksiPegawai1: TMenuItem;
    Ke1: TMenuItem;
    KembaliKeMenuAwal1: TMenuItem;
    queryedit: TADOTable;
    lblkodestp: TLabel;
    lblkunit: TLabel;
    PopupMenu2: TPopupMenu;
    KembaliKeMenuPegawai1: TMenuItem;
    LihatDataPegawai1: TMenuItem;
    RefreshDATA1: TMenuItem;
    KeluarAplikasi1: TMenuItem;
    T1: TMenuItem;
    ransaksiStatusPegawai1: TMenuItem;
    ransaksiUnit1: TMenuItem;
    ransaksiStatus1: TMenuItem;
    queryrefresh: TADOQuery;
    RvProject1: TRvProject;
    RvDataSetConnection1: TRvDataSetConnection;
    btnkembalikemenu: TImage;
    Image2: TImage;
    Image5: TImage;
    querypeg: TADOQuery;
    OpenDialog1: TOpenDialog;
    Image4: TImage;
    queryhapus: TADOQuery;
    tabelkeluarga: TADOTable;
    tabelpasien: TADOTable;
    tabelrecord: TADOTable;
    tabelbeliobat: TADOTable;
    queryeditdata: TADOQuery;
    lblnoinduk: TLabel;
    lblnamapeg: TLabel;
    Image22: TImage;
    procedure Image7Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure entangAplikasi1Click(Sender: TObject);
    procedure LihatTransaksiPegawai1Click(Sender: TObject);
    procedure Ke1Click(Sender: TObject);
    procedure KembaliKeMenuAwal1Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure KeluarAplikasi1Click(Sender: TObject);
    procedure RefreshDATA1Click(Sender: TObject);
    procedure KembaliKeMenuPegawai1Click(Sender: TObject);
    procedure LihatDataPegawai1Click(Sender: TObject);
    procedure cbkodestpChange(Sender: TObject);
    procedure cbkunitChange(Sender: TObject);
    procedure ednomorKeyPress(Sender: TObject; var Key: Char);
    procedure Image1Click(Sender: TObject);
    procedure edpersonelKeyPress(Sender: TObject; var Key: Char);
    procedure Image4Click(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure ransaksiStatusPegawai1Click(Sender: TObject);
    procedure ransaksiUnit1Click(Sender: TObject);
    procedure ransaksiStatus1Click(Sender: TObject);
    procedure ednomorEnter(Sender: TObject);
    procedure ednomorExit(Sender: TObject);
    procedure edpersonelEnter(Sender: TObject);
    procedure ednamaEnter(Sender: TObject);
    procedure ednamaExit(Sender: TObject);
    procedure edpersonelExit(Sender: TObject);
    procedure ednamaKeyPress(Sender: TObject; var Key: Char);
    procedure cbkodestpKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnkembalikemenuClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Image22Click(Sender: TObject);


  private
    procedure RefreshData;
    procedure TutupKoneksi;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftransaksipegawai: Tftransaksipegawai;

implementation

uses uAbout, UASAL, uDoctorMenu, uFamilytypetrans, ulihatdataobat,
  ulihatkeluarga, uLihatPasien, ulihatrecord, uLihatTranspeg, ulogindokter,
  umainobat, umainobatpoli, uMainUtama, uMasterDokter, uMasterKegunaanObat,
  uMasterKeluarga, uMasterLogin, uMasterObat, uMasterPasien, uMenuAwal,
  uMenuPegawai, uPasien, upilihdokter, uPilihKeluarga, uSplash,
  uStatusPegawai, uTransunit, Math;

{$R *.dfm}



procedure Tftransaksipegawai.Image7Click(Sender: TObject);
begin
formmainpegawai.Show;
ftransaksipegawai.Hide;

end;

procedure Tftransaksipegawai.Image15Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tftransaksipegawai.FormCreate(Sender: TObject);
begin
adopegawai.Active:=true;
qkstatus.Active:=true;
qkunit.Active:=true;
queryrefresh.Active:=true;
qkstatus.Active:=true;
qkstatus.Close;
qkstatus.SQL.Clear;
qkstatus.SQL.Add('SELECT * FROM Master_Status');
qkstatus.ExecSQL;
qkstatus.Open;
While not qkunit.Eof do
  begin
  cbkunit.Items.Add(qkunit['nama_unit']);
  qkunit.Next;
end;
While not qkstatus.Eof do
  begin
  cbkodestp.Items.Add(qkstatus['Keterangan_Status']);
  qkstatus.Next;
end;
qkstatus.Active:=false;
qkunit.Active:=false;
end;

procedure Tftransaksipegawai.RefreshData;
begin
queryrefresh.Close;
queryrefresh.SQL.Clear;
queryrefresh.SQL.Add('SELECT * From MASTER_PEGAWAI Query');
queryrefresh.ExecSQL;
queryrefresh.Open;
querypegawai.Close;
querypegawai.SQL.Clear;
querypegawai.SQL.Add('SELECT * FROM Master_Pegawai');
querypegawai.Open;
querypegawai.Last;
ednomor.Clear;
edpersonel.Clear;
ednama.Clear;
edpersonel.ReadOnly:=true;
ednama.ReadOnly:=true;
lbltransaksi.Caption:='Tidak Ada Transaksi';
cbkunit.Clear;
cbkodestp.Clear;
//
qkunit.Close;
qkunit.SQL.Clear;
qkunit.SQL.Add('SELECT * FROM Master_Unit');
qkunit.ExecSQL;
qkunit.Open;
//
qkstatus.Close;
qkstatus.SQL.Clear;
qkstatus.SQL.Add('SELECT * FROM Master_Status');
qkstatus.ExecSQL;
qkstatus.Open;
cbkunit.Clear;
While not qkunit.Eof do
  begin
  cbkunit.Items.Add(qkunit['nama_unit']);
  qkunit.Next;
end;
//
cbkodestp.Clear;
While not qkstatus.Eof do
  begin
  cbkodestp.Items.Add(qkstatus['Keterangan_Status']);
  qkstatus.Next;
end;
cbkodestp.Enabled:=false;
cbkunit.Enabled:=false;
ednomor.ReadOnly:=false;
adopegawai.Active:=false;
adopegawai.Active:=true;
DBGrid1.Enabled:=true;
DBGrid1.Visible:=False;
DBGrid1.Visible:=true;
edpersonel.Font.Color:=clHotLight;
end;

procedure Tftransaksipegawai.entangAplikasi1Click(Sender: TObject);
begin
formabout.Show;
end;

procedure Tftransaksipegawai.LihatTransaksiPegawai1Click(Sender: TObject);
begin
RefreshData;
TutupKoneksi;
formlihattranspeg.Show;
ftransaksipegawai.Hide;

end;

procedure Tftransaksipegawai.Ke1Click(Sender: TObject);
begin
Application.Terminate;

end;

procedure Tftransaksipegawai.KembaliKeMenuAwal1Click(Sender: TObject);
begin
RefreshData;
TutupKoneksi;
fMainmenu.Show;
ftransaksipegawai.Hide;
end;

procedure Tftransaksipegawai.Image6Click(Sender: TObject);
begin
qkunit.Active:=true;
if ednomor.Text='' then
  begin //Validasi Data Kosong
    ShowMessage('Field Masih Kosong');
  end
else
  begin//Jika Data Tidak Kosong
    if adopegawai.Locate('Nomor_Induk',ednomor.Text,[]) then
      begin
        ShowMessage('Data Sudah Ada');
          if MessageDlg('Apakah anda ingin Mengedit Data Pegawai ini?',mtConfirmation,[mbYes,mbNo],1)=mryes
             then
               begin
                 adopegawai.Locate('Nomor_Induk',ednomor.Text,[]);
                 ednomor.ReadOnly:=true;
                 ednomor.Text:=adopegawai.FieldByName('Nomor_Induk').AsString;
                  edpersonel.Text:=adopegawai.FieldByName('Personel_Number').AsString;
                  ednama.Text:=adopegawai.FieldByName('Nama_Pegawai').AsString;
                  lblkodestp.Caption:=adopegawai.FieldByName('Kode_Status_Pegawai').AsString;
                  lblkunit.Caption:=adopegawai.FieldByName('kode_unit').AsString;
                  lblnoinduk.Caption:=adopegawai.FieldByName('Nomor_Induk').AsString;
                  lblnamapeg.Caption:=adopegawai.FieldByName('Nama_Pegawai').AsString;
                  //
                  qkunit.Locate('Kode_Unit',lblkunit.Caption,[]);
                  cbkunit.Text:=qkunit.FieldByName('Nama_Unit').AsString;
                  //
                  qkstatus.Locate('Kode_status',lblkodestp.Caption,[]);
                  cbkodestp.Text:=qkstatus.FieldByName('Keterangan_Status').AsString;
                  //
                  edpersonel.ReadOnly:=false;
                  ednama.ReadOnly:=false;
                  lbltransaksi.Caption:='Edit Data Transaksi';
                  cbkodestp.Enabled:=true;
                  cbkunit.Enabled:=true;
                end//Jika User Memilih Edit Data
            else//Tidak Melakukan Transaksi Apapun
              begin
                 showmessage('Tidak Melakukan Transaksi Apapun');
              end;
          end//Akhir Jika menemukan data
        else
          begin
            MessageDlg('Data Anda Baru',mtInformation,[mbOK],1);
            lbltransaksi.Caption:='Transaksi Data Baru';
            ednomor.ReadOnly:=true;
            edpersonel.ReadOnly:=false;
            edpersonel.SetFocus;
            ednama.ReadOnly:=false;
            //
            cbkodestp.Enabled:=true;
            cbkunit.Enabled:=true;
           end;
     end;

end;

procedure Tftransaksipegawai.KeluarAplikasi1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tftransaksipegawai.RefreshDATA1Click(Sender: TObject);
begin
RefreshData;
end;

procedure Tftransaksipegawai.KembaliKeMenuPegawai1Click(Sender: TObject);
begin
RefreshData;
formmainpegawai.Show;
ftransaksipegawai.Hide;
end;

procedure Tftransaksipegawai.LihatDataPegawai1Click(Sender: TObject);
begin
RefreshData;
formlihattranspeg.Show;
ftransaksipegawai.Hide;
end;

procedure Tftransaksipegawai.cbkodestpChange(Sender: TObject);
begin
qkstatus.Locate('Keterangan_Status',cbkodestp.Text,[]);
lblkodestp.Caption:=qkstatus.FieldByName('kode_status').AsString;
cbkunit.SetFocus;
end;

procedure Tftransaksipegawai.cbkunitChange(Sender: TObject);
begin
qkunit.Locate('Nama_Unit',cbkunit.Text,[]);
lblkunit.Caption:=qkunit.FieldByName('Kode_Unit').AsString;

end;

procedure Tftransaksipegawai.ednomorKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
Image6Click(Sender);
end;

procedure Tftransaksipegawai.Image1Click(Sender: TObject);
var
  x,y:integer;
  data:string;
begin
if (ednomor.Text='') or (edpersonel.Text='') or (ednama.Text='') or
(cbkodestp.Text='') or (cbkunit.Text='') then
begin//Jika Data Kosong
end
else
  begin//Jika Data Tidak Kosong
    if lbltransaksi.Caption='Tidak Ada Transaksi' then
      begin //Jika tidak melakukan transaksi apapun
        MessageDlg('Anda Saat ini Tidak Melakukan Transaksi Apapun',mtError,[mbOK],1);
      end
    else if lbltransaksi.Caption='Transaksi Data Baru' then
      begin//Jika Transaksi Data Baru
        adopegawai.Append;
        adopegawai.FieldByName('Nomor_Induk').AsString:=ednomor.Text;
        adopegawai.FieldByName('Personel_Number').AsString:=edpersonel.Text;
        adopegawai.FieldByName('Nama_Pegawai').AsString:=ednama.Text;
        adopegawai.FieldByName('kode_status_pegawai').AsString:=lblkodestp.Caption;
        adopegawai.FieldByName('Kode_Unit').AsString:=lblkunit.Caption;
        adopegawai.Post;
        MessageDlg('Data Pegawai Baru Tersimpan',mtInformation,[mbOK],1);
        formpasien.Refresh1Click(Sender);
        formpasien.adopegawai.Active:=false;
        formpasien.adopegawai.Active:=true;
        RefreshData;
      end
    else if lbltransaksi.Caption='Edit Data Transaksi' then
      begin //Jika Edit Data
             if adopegawai.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
       begin
                               adopegawai.Edit;
                               adopegawai.FieldByName('Nomor_Induk').AsString:=ednomor.Text;
                               adopegawai.FieldByName('Personel_Number').AsString:=edpersonel.Text;
                               adopegawai.FieldByName('Nama_Pegawai').AsString:=ednama.Text;
                               adopegawai.FieldByName('kode_status_pegawai').AsString:=lblkodestp.Caption;
                               adopegawai.FieldByName('Kode_Unit').AsString:=lblkunit.Caption;
                               adopegawai.Post;

       if lblnoinduk.Caption = ednomor.Text then
                  begin

                     queryeditdata.Active:=true;
                     queryeditdata.Close;
                     queryeditdata.SQL.Clear;
                     queryeditdata.SQL.Add('SELECT * FROM Master_record_berobat');
                     queryeditdata.ExecSQL;
                     queryeditdata.Open;
                          if queryeditdata.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                            begin
                               if lblnamapeg.Caption = ednama.Text then
                                begin
                                  RefreshData;
                                  MessageDlg('Edit Data Pegawai Tersimpan',mtInformation,[mbOK],1);
                                end
                                else
                                begin
                                    try

                                          queryeditdata.Active:=false;
                                          queryeditdata.Active:=true;
                                          queryeditdata.Close;
                                          queryeditdata.SQL.Clear;
                                          queryeditdata.SQL.Add('Update Master_record_berobat SET Nama_Pasien=:nama WHERE Nomor_Induk=:nomor and No_Keluarga=0');
                                          queryeditdata.Parameters.ParamByName('nama').Value:=ednama.Text;
                                          queryeditdata.Parameters.ParamByName('nomor').Value:=lblnoinduk.Caption;
                                          queryeditdata.ExecSQL;
                                          //
                                          MessageDlg('Edit Data Pegawai Tersimpan',mtInformation,[mbOK],1);
                                          RefreshData;
                                        Except
                                        on E : Exception do
                                          MessageDlg('Data Edit Pegawai Tersimpan',mtInformation,[mbOK],1);
                                         end;//Akhir mencoba
                                end;
                            end
                          else
                            begin
                              ShowMessage('Nomor Induk ini tidak ada di data berobat');
                            end;

                end//Akhir jika nomor induk sama
                else
                  begin
                  if lblnamapeg.Caption = ednama.Text then
                                begin


                                end
                              else
                                begin
                                      try

                                          queryeditdata.Active:=false;
                                          queryeditdata.Active:=true;
                                          queryeditdata.Close;
                                          queryeditdata.SQL.Clear;
                                          queryeditdata.SQL.Add('Update Master_record_berobat SET Nama_Pasien=:nama WHERE Nomor_Induk=:nomor and No_Keluarga=0');
                                          queryeditdata.Parameters.ParamByName('nama').Value:=ednama.Text;
                                          queryeditdata.Parameters.ParamByName('nomor').Value:=lblnoinduk.Caption;
                                          queryeditdata.ExecSQL;
                                          //
                                          MessageDlg('Edit Data Pegawai Tersimpan',mtInformation,[mbOK],1);

                                        Except
                                        on E : Exception do
                                          MessageDlg('Data Edit Pegawai Tersimpan',mtInformation,[mbOK],1);
                                         end;//Akhir mencoba

                                   end;
                queryhapus.Active:=false;
                queryhapus.Active:=true;
                queryhapus.Close;
                queryhapus.SQL.Clear;
                queryhapus.SQL.Add('SELECT master_record_berobat.Nomor_Induk, Count(master_record_berobat.Nomor_Induk) AS Jumlah');
                queryhapus.SQL.Add('From master_record_berobat');
                queryhapus.SQL.Add('GROUP BY master_record_berobat.Nomor_Induk;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Berobat Yang Terhubung');
              if queryhapus.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelrecord.Active:=false;
                tabelrecord.Active:=true;
                if tabelrecord.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                begin
                tabelrecord.Edit;
                tabelrecord.FieldByName('Nomor_Induk').AsString:=ednomor.Text;
                tabelrecord.Post;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
                  //
                  queryhapus.Active:=false;
                queryhapus.Active:=true;
                queryhapus.Close;
                queryhapus.SQL.Clear;
                queryhapus.SQL.Add('SELECT master_pasien.Nomor_Induk, Count(master_pasien.Nomor_Induk) AS Jumlah');
                queryhapus.SQL.Add('From master_pasien');
                queryhapus.SQL.Add('GROUP BY master_pasien.Nomor_Induk;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Berobat Yang Terhubung');
              if queryhapus.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelpasien.Active:=false;
                tabelpasien.Active:=true;
                if tabelpasien.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                begin
                tabelpasien.Edit;
                tabelpasien.FieldByName('Nomor_Induk').AsString:=ednomor.Text;
                tabelpasien.Post;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
                  //

                    queryhapus.Active:=false;
                queryhapus.Active:=true;
                queryhapus.Close;
                queryhapus.SQL.Clear;
                queryhapus.SQL.Add('SELECT master_keluarga.Nomor_Induk, Count(master_keluarga.Nomor_Induk) AS Jumlah');
                queryhapus.SQL.Add('From master_keluarga');
                queryhapus.SQL.Add('GROUP BY master_keluarga.Nomor_Induk;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Berobat Yang Terhubung');
              if queryhapus.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelkeluarga.Active:=false;
                tabelkeluarga.Active:=true;
                if tabelkeluarga.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                begin
                tabelkeluarga.Edit;
                tabelkeluarga.FieldByName('Nomor_Induk').AsString:=ednomor.Text;
                tabelkeluarga.Post;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
                  //

                    queryhapus.Active:=false;
                queryhapus.Active:=true;
                queryhapus.Close;
                queryhapus.SQL.Clear;
                queryhapus.SQL.Add('SELECT master_beli_obat.Nomor_Induk, Count(master_beli_obat.Nomor_Induk) AS Jumlah');
                queryhapus.SQL.Add('From master_beli_obat');
                queryhapus.SQL.Add('GROUP BY master_beli_obat.Nomor_Induk;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Berobat Yang Terhubung');
              if queryhapus.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelbeliobat.Active:=false;
                tabelbeliobat.Active:=true;
                if tabelbeliobat.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                begin
                tabelbeliobat.Edit;
                tabelbeliobat.FieldByName('Nomor_Induk').AsString:=ednomor.Text;
                tabelbeliobat.Post;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data

                  ///

                  RefreshData;
                 end;
       end
       else
        begin
          MessageDlg('Nomor Induk Tidak Ditemukan',mtError,[mbYes],1);
        end;//Akhir Dari Cari Nomr
      end
    else
      begin
        MessageDlg('Sesuatu Error Harap Refresh',mtError,[mbOK],1);
      end;
  end;
end;//Akhir Procedure

procedure Tftransaksipegawai.edpersonelKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in['0'..'9',#8,#13,#32]) then //Validasi Angka
 begin
 key:=#0;
 showmessage('Inputan Hanya dapat berupa angka');
 end;
if not (key=chr(13)) then exit;
  ednama.SetFocus;

end;

procedure Tftransaksipegawai.Image4Click(Sender: TObject);
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
        querypegawai.Close;
        querypegawai.SQL.Clear;
        querypegawai.SQL.Text :='insert into Master_Pegawai (Nomor_Induk,Personel_Number,Nama_Pegawai,kode_status_pegawai,kode_unit)'+
                            'values (:nomorinduk,:person,:nama,:kodestat,:kodeunit)';
        querypegawai.Parameters.ParamByName('nomorinduk').Value:=VarToStr(Excel.cells.range['a'+inttostr(i)]);
        querypegawai.Parameters.ParamByName('person').Value:=VarToStr(Excel.cells.range['b'+inttostr(i)]);
        querypegawai.Parameters.ParamByName('nama').Value:=VarToStr(Excel.cells.range['c'+inttostr(i)]);
        querypegawai.Parameters.ParamByName('kodestat').Value:=VarToStr(Excel.cells.range['d'+inttostr(i)]);
        querypegawai.Parameters.ParamByName('kodeunit').Value:=VarToStr(Excel.cells.range['e'+inttostr(i)]);
        querypegawai.ExecSQL;
        inc(i);
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
  querypegawai.Close;
  querypegawai.SQL.Text:='select * from Master_Pegawai';
  querypegawai.Open;

  dataSource1.DataSet:=querypegawai;
  Dbgrid1.DataSource:=DataSource1;
end;

procedure Tftransaksipegawai.btnhapusClick(Sender: TObject);
var
  data:string;
  x,y:integer;
begin
  data:=InputBox('Konfirmasi ','Masukkan Nomor Induk :','');
  if adopegawai.Locate('Nomor_Induk',data,[])then
    begin

      adopegawai.Delete;
      //
      //Perulangan Hapus Data Dari Master Kelas Ketiga
              queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_keluarga.Nomor_Induk, Count(master_keluarga.Nomor_Induk) AS Jumlah');
              queryhapus.SQL.Add('From master_keluarga');
              queryhapus.SQL.Add('GROUP BY master_keluarga.Nomor_Induk;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Keluarga Yang Terhubung');
              if queryhapus.Locate('Nomor_Induk',data,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelkeluarga.Active:=false;
                tabelkeluarga.Active:=true;
                if tabelkeluarga.Locate('Nomor_Induk',data,[]) then
                begin
                tabelkeluarga.Delete;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
                                queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_pasien.Nomor_Induk, Count(master_pasien.Nomor_Induk) AS Jumlah');
              queryhapus.SQL.Add('From master_pasien');
              queryhapus.SQL.Add('GROUP BY master_pasien.Nomor_Induk;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Pasien Yang Terhubung');
              if queryhapus.Locate('Nomor_Induk',data,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelpasien.Active:=false;
                tabelpasien.Active:=true;
                if tabelpasien.Locate('Nomor_Induk',data,[]) then
                begin
                tabelpasien.Delete;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
               queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_record_berobat.Nomor_Induk, Count(master_record_berobat.Nomor_Induk) AS Jumlah');
              queryhapus.SQL.Add('From master_record_berobat');
              queryhapus.SQL.Add('GROUP BY master_record_berobat.Nomor_Induk;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Berobat Yang Terhubung');
              if queryhapus.Locate('Nomor_Induk',data,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelrecord.Active:=false;
                tabelrecord.Active:=true;
                if tabelrecord.Locate('Nomor_Induk',data,[]) then
                begin
                tabelrecord.Delete;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
                  ///
                    queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_beli_obat.Nomor_Induk, Count(master_beli_obat.Nomor_Induk) AS Jumlah');
              queryhapus.SQL.Add('From master_beli_obat');
              queryhapus.SQL.Add('GROUP BY master_beli_obat.Nomor_Induk;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Pembelian Obat Yang Terhubung');
              if queryhapus.Locate('Nomor_Induk',data,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelbeliobat.Active:=false;
                tabelbeliobat.Active:=true;
                if tabelbeliobat.Locate('Nomor_Induk',data,[]) then
                begin
                tabelbeliobat.Delete;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
      MessageDlg('Data Berhasil Dihapus',mtInformation,[mbOK],1);
      RefreshData;
    end
  else
    begin
      MessageDlg('Data Tidak Berhasil Ditemukan',mtError,[mbOK],1);
    end;
end;

procedure Tftransaksipegawai.Image16Click(Sender: TObject);
var
  data:string;
  x,y:integer;
begin

if lbltransaksi.Caption='Tidak Ada Transaksi' then
  begin
    data:=InputBox('Edit Data','Masukkan Nomor Induk :','');
    if adopegawai.Locate('Nomor_Induk',data,[]) then
      begin
        lbltransaksi.Caption:='Edit Data Transaksi';
        ShowMessage('Anda Saat Ini dalam Edit Transaksi,Silahkan Klik Tombol Simpan untuk meyimpan');
        ednomor.Text:=adopegawai.FieldByName('Nomor_Induk').AsString;
        edpersonel.Text:=adopegawai.FieldByName('Personel_Number').AsString;
        ednama.Text:=adopegawai.FieldByName('Nama_Pegawai').AsString;
        lblkodestp.Caption:=adopegawai.FieldByName('Kode_Status_Pegawai').AsString;
        lblkunit.Caption:=adopegawai.FieldByName('kode_unit').AsString;
        lblnoinduk.Caption:=adopegawai.FieldByName('Nomor_Induk').AsString;
        lblnamapeg.Caption:=adopegawai.FieldByName('Nama_Pegawai').AsString;
        qkunit.Locate('Kode_Unit',lblkunit.Caption,[]);
        cbkunit.Text:=qkunit.FieldByName('Nama_Unit').AsString;
                  //
        qkstatus.Locate('Kode_status',lblkodestp.Caption,[]);
        cbkodestp.Text:=qkstatus.FieldByName('Keterangan_Status').AsString;
                  //
        edpersonel.ReadOnly:=false;
        ednama.ReadOnly:=false;
        lbltransaksi.Caption:='Edit Data Transaksi';
        cbkodestp.Enabled:=true;
        cbkunit.Enabled:=true;
        Image16.Enabled:=true;
      end//Jika Data Ditemukan
      else
        begin
          ShowMessage('Data Tidak Ditemukan');
        end;
    end//Akhir Jika Tidak Ada Transaksi

  else if lbltransaksi.Caption='Edit Data Transaksi' then
    begin//Jika Edit Transaksi

       if adopegawai.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
       begin
                               adopegawai.Edit;
                               adopegawai.FieldByName('Nomor_Induk').AsString:=ednomor.Text;
                               adopegawai.FieldByName('Personel_Number').AsString:=edpersonel.Text;
                               adopegawai.FieldByName('Nama_Pegawai').AsString:=ednama.Text;
                               adopegawai.FieldByName('kode_status_pegawai').AsString:=lblkodestp.Caption;
                               adopegawai.FieldByName('Kode_Unit').AsString:=lblkunit.Caption;
                               adopegawai.Post;

       if lblnoinduk.Caption = ednomor.Text then
                  begin

                     queryeditdata.Active:=true;
                     queryeditdata.Close;
                     queryeditdata.SQL.Clear;
                     queryeditdata.SQL.Add('SELECT * FROM Master_record_berobat');
                     queryeditdata.ExecSQL;
                     queryeditdata.Open;
                          if queryeditdata.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                            begin
                               if lblnamapeg.Caption = ednama.Text then
                                begin
                                  RefreshData;
                                  MessageDlg('Edit Data Pegawai Tersimpan',mtInformation,[mbOK],1);
                                end
                                else
                                begin
                                    try

                                          queryeditdata.Active:=false;
                                          queryeditdata.Active:=true;
                                          queryeditdata.Close;
                                          queryeditdata.SQL.Clear;
                                          queryeditdata.SQL.Add('Update Master_record_berobat SET Nama_Pasien=:nama WHERE Nomor_Induk=:nomor and No_Keluarga=0');
                                          queryeditdata.Parameters.ParamByName('nama').Value:=ednama.Text;
                                          queryeditdata.Parameters.ParamByName('nomor').Value:=lblnoinduk.Caption;
                                          queryeditdata.ExecSQL;
                                          //
                                          MessageDlg('Edit Data Pegawai Tersimpan',mtInformation,[mbOK],1);
                                          RefreshData;
                                        Except
                                        on E : Exception do
                                          MessageDlg('Data Edit Pegawai Tersimpan',mtInformation,[mbOK],1);
                                         end;//Akhir mencoba
                                end;
                            end
                          else
                            begin
                              ShowMessage('Nomor Induk ini tidak ada di data berobat');
                            end;

                end//Akhir jika nomor induk sama
                else
                  begin
                  if lblnamapeg.Caption = ednama.Text then
                                begin


                                end
                              else
                                begin
                                      try

                                          queryeditdata.Active:=false;
                                          queryeditdata.Active:=true;
                                          queryeditdata.Close;
                                          queryeditdata.SQL.Clear;
                                          queryeditdata.SQL.Add('Update Master_record_berobat SET Nama_Pasien=:nama WHERE Nomor_Induk=:nomor and No_Keluarga=0');
                                          queryeditdata.Parameters.ParamByName('nama').Value:=ednama.Text;
                                          queryeditdata.Parameters.ParamByName('nomor').Value:=lblnoinduk.Caption;
                                          queryeditdata.ExecSQL;
                                          //
                                          MessageDlg('Edit Data Pegawai Tersimpan',mtInformation,[mbOK],1);

                                        Except
                                        on E : Exception do
                                          MessageDlg('Data Edit Pegawai Tersimpan',mtInformation,[mbOK],1);
                                         end;//Akhir mencoba

                                   end;
                queryhapus.Active:=false;
                queryhapus.Active:=true;
                queryhapus.Close;
                queryhapus.SQL.Clear;
                queryhapus.SQL.Add('SELECT master_record_berobat.Nomor_Induk, Count(master_record_berobat.Nomor_Induk) AS Jumlah');
                queryhapus.SQL.Add('From master_record_berobat');
                queryhapus.SQL.Add('GROUP BY master_record_berobat.Nomor_Induk;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Berobat Yang Terhubung');
              if queryhapus.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelrecord.Active:=false;
                tabelrecord.Active:=true;
                if tabelrecord.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                begin
                tabelrecord.Edit;
                tabelrecord.FieldByName('Nomor_Induk').AsString:=ednomor.Text;
                tabelrecord.Post;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
                  //
                  queryhapus.Active:=false;
                queryhapus.Active:=true;
                queryhapus.Close;
                queryhapus.SQL.Clear;
                queryhapus.SQL.Add('SELECT master_pasien.Nomor_Induk, Count(master_pasien.Nomor_Induk) AS Jumlah');
                queryhapus.SQL.Add('From master_pasien');
                queryhapus.SQL.Add('GROUP BY master_pasien.Nomor_Induk;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Berobat Yang Terhubung');
              if queryhapus.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelpasien.Active:=false;
                tabelpasien.Active:=true;
                if tabelpasien.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                begin
                tabelpasien.Edit;
                tabelpasien.FieldByName('Nomor_Induk').AsString:=ednomor.Text;
                tabelpasien.Post;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
                  //

                    queryhapus.Active:=false;
                queryhapus.Active:=true;
                queryhapus.Close;
                queryhapus.SQL.Clear;
                queryhapus.SQL.Add('SELECT master_keluarga.Nomor_Induk, Count(master_keluarga.Nomor_Induk) AS Jumlah');
                queryhapus.SQL.Add('From master_keluarga');
                queryhapus.SQL.Add('GROUP BY master_keluarga.Nomor_Induk;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Berobat Yang Terhubung');
              if queryhapus.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelkeluarga.Active:=false;
                tabelkeluarga.Active:=true;
                if tabelkeluarga.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                begin
                tabelkeluarga.Edit;
                tabelkeluarga.FieldByName('Nomor_Induk').AsString:=ednomor.Text;
                tabelkeluarga.Post;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
                  //

                    queryhapus.Active:=false;
                queryhapus.Active:=true;
                queryhapus.Close;
                queryhapus.SQL.Clear;
                queryhapus.SQL.Add('SELECT master_beli_obat.Nomor_Induk, Count(master_beli_obat.Nomor_Induk) AS Jumlah');
                queryhapus.SQL.Add('From master_beli_obat');
                queryhapus.SQL.Add('GROUP BY master_beli_obat.Nomor_Induk;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Berobat Yang Terhubung');
              if queryhapus.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelbeliobat.Active:=false;
                tabelbeliobat.Active:=true;
                if tabelbeliobat.Locate('Nomor_Induk',lblnoinduk.Caption,[]) then
                begin
                tabelbeliobat.Edit;
                tabelbeliobat.FieldByName('Nomor_Induk').AsString:=ednomor.Text;
                tabelbeliobat.Post;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data

                  ///

                  RefreshData;
                 end;
       end
       else
        begin
          MessageDlg('Nomor Induk Tidak Ditemukan',mtError,[mbYes],1);
        end;//Akhir Dari Cari Nomr
      end
  else
    begin
      MessageDlg('Tidak Bisa Melakukan Edit Data ,Karena saat ini anda dalam mode Simpan Data',mtError,[mbOK],1);
    end;

   END;


procedure Tftransaksipegawai.Timer1Timer(Sender: TObject);
begin
lbljam.Caption:=FormatDateTime('hh:mm:ss',now);
lblhari.Caption:=FormatDateTime('dddd,mmmm,yyyy',now);
if ednomor.Text<>'' then
  begin
    Shape1.Visible:=true;
  end
else
  begin
    Shape1.Visible:=false;
  end;
if edpersonel.Text<>'' then
  begin
    Shape2.Visible:=true;
  end
else
  begin
    Shape2.Visible:=false;
  end;
if ednama.Text<>'' then
  begin
    Shape3.Visible:=true;
  end
else
  begin
    Shape3.Visible:=false;
  end;
end;

procedure Tftransaksipegawai.T1Click(Sender: TObject);
begin
RefreshData;
  formtransunit.Show;
  ftransaksipegawai.Show;

end;

procedure Tftransaksipegawai.ransaksiStatusPegawai1Click(Sender: TObject);
begin
RefreshData;
formmasterstatus.Show;
ftransaksipegawai.Hide;
end;

procedure Tftransaksipegawai.ransaksiUnit1Click(Sender: TObject);
begin
RefreshData;
formtransunit.Show;
ftransaksipegawai.Hide;
end;

procedure Tftransaksipegawai.ransaksiStatus1Click(Sender: TObject);
begin
RefreshData;
ftransaksipegawai.Hide;
end;

procedure Tftransaksipegawai.ednomorEnter(Sender: TObject);
begin
ednomor.Text:='';
ednomor.Font.Color:=clHotLight;


end;

procedure Tftransaksipegawai.ednomorExit(Sender: TObject);
begin
if ednomor.Text<>'' then
  begin
  end
else
  begin
    ednomor.Text:='Nomor Induk';
    ednomor.Font.Color:=clMedGray;
  end;
end;

procedure Tftransaksipegawai.edpersonelEnter(Sender: TObject);
begin
edpersonel.Text:='';
edpersonel.Font.Color:=clHotLight;
end;

procedure Tftransaksipegawai.ednamaEnter(Sender: TObject);
begin
ednama.Text:='';
ednama.Font.Color:=clHotLight;
end;

procedure Tftransaksipegawai.ednamaExit(Sender: TObject);
begin
if ednama.Text<>'' then
  begin
  end
else
  begin
    ednama.Text:='Nama Pegawai';
    ednama.Font.Color:=clMedGray;
  end;
end;

procedure Tftransaksipegawai.edpersonelExit(Sender: TObject);
begin
if edpersonel.Text<>'' then
  begin
  end
else
  begin
    edpersonel.Text:='Personel Number';
    edpersonel.Font.Color:=clMedGray;
  end;
end;

procedure Tftransaksipegawai.ednamaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
  cbkodestp.SetFocus;

end;

procedure Tftransaksipegawai.cbkodestpKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
qkstatus.Locate('Keterangan_Status',cbkodestp.Text,[]);
lblkodestp.Caption:=qkstatus.FieldByName('kode_status').AsString;
cbkunit.SetFocus;
end;

procedure Tftransaksipegawai.FormClose(Sender: TObject;
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

procedure Tftransaksipegawai.btnkembalikemenuClick(Sender: TObject);
begin
RefreshData;
TutupKoneksi;
formmainpegawai.Show;
ftransaksipegawai.Hide;
end;

procedure Tftransaksipegawai.Image2Click(Sender: TObject);
begin
formtransunit.ADOConnection1.Connected:=true;
formtransunit.adounit.Active:=true;
formtransunit.queryunit.Active:=true;
formtransunit.Show;
ftransaksipegawai.Hide;
end;

procedure Tftransaksipegawai.Image5Click(Sender: TObject);
begin
RefreshData;
formmasterstatus.ADOConnection1.Connected:=true;
formmasterstatus.ADOTable1.Active:=true;
formmasterstatus.ADOQuery1.Active:=true;
formmasterstatus.Show;
ftransaksipegawai.Hide;
end;

procedure Tftransaksipegawai.DBGrid1DblClick(Sender: TObject);
var
  no:string;
begin
if MessageDlg('Apakah anda ingin mengedit Data Ini',mtConfirmation,mbYesNoCancel,1)=mrYes then
begin
no:=queryrefresh.FieldByName('Nomor_Induk').AsString;
queryrefresh.Locate('Nomor_Induk',no,[loPartialKey]);
lbltransaksi.Caption:='Edit Data Transaksi';
        MessageDlg('Anda Saat Ini dalam Edit Transaksi,Silahkan Klik Tombol Simpan untuk meyimpan',mtInformation,[mbOK],1);
        ednomor.Text:=queryrefresh.FieldByName('Nomor_Induk').AsString;
        edpersonel.Text:=queryrefresh.FieldByName('Personel_Number').AsString;
        ednama.Text:=queryrefresh.FieldByName('Nama_Pegawai').AsString;
        lblkodestp.Caption:=queryrefresh.FieldByName('Kode_Status_Pegawai').AsString;
        lblkunit.Caption:=queryrefresh.FieldByName('kode_unit').AsString;
        lblnamapeg.Caption:=queryrefresh.FieldByName('Nama_Pegawai').AsString;          //
        qkunit.Locate('Kode_Unit',lblkunit.Caption,[]);
        cbkunit.Text:=qkunit.FieldByName('Nama_Unit').AsString;
                  //
        qkstatus.Locate('Kode_status',lblkodestp.Caption,[]);
        cbkodestp.Text:=qkstatus.FieldByName('Keterangan_Status').AsString;
                  //
        edpersonel.ReadOnly:=false;
        ednama.ReadOnly:=false;
        lbltransaksi.Caption:='Edit Data Transaksi';
        cbkodestp.Enabled:=true;
        cbkunit.Enabled:=true;
        DBGrid1.Enabled:=false;
end
else
  begin
  Abort;
  end;
        end;

procedure Tftransaksipegawai.FormActivate(Sender: TObject);
begin
if ADOConnection1.Connected=true then
  begin
qkstatus.Active:=true;
qkstatus.Close;
qkstatus.SQL.Clear;
qkstatus.SQL.Add('SELECT * FROM Master_Status');
qkstatus.ExecSQL;
qkstatus.Open;
cbkodestp.Clear;
While not qkstatus.Eof do
  begin
  cbkodestp.Items.Add(qkstatus['Keterangan_Status']);
  qkstatus.Next;
end;
//
qkunit.Active:=true;
qkunit.Close;
qkunit.SQL.Clear;
qkunit.SQL.Add('Select * from Master_Unit');
qkunit.ExecSQL;
qkunit.Open;
cbkunit.Clear;
While not qkunit.Eof do
  begin
  cbkunit.Items.Add(qkunit['nama_unit']);
  qkunit.Next;
end;
end
  else
    begin
    end;
end;

procedure Tftransaksipegawai.TutupKoneksi;
begin
ADOConnection1.Connected:=false;
qkstatus.Active:=false;
qkunit.Active:=false;
querypegawai.Active:=false;
queryedit.Active:=false;
queryrefresh.Active:=false;
querypeg.Active:=false;
adopegawai.Active:=false;
tabelkeluarga.Active:=false;
tabelpasien.Active:=false;
tabelrecord.Active:=false;
tabelbeliobat.Active:=false;
formtransunit.ADOConnection1.Connected:=false;
formtransunit.adounit.Active:=false;
formtransunit.queryunit.Active:=false;
formmasterstatus.ADOConnection1.Connected:=false;
formmasterstatus.ADOTable1.Active:=false;
formmasterstatus.ADOQuery1.Active:=false;
end;
procedure Tftransaksipegawai.Copy1Click(Sender: TObject);
var
  data:string;
  x,y:integer;
begin
  data:=queryrefresh.FieldByName('Nomor_Induk').AsString;
  if adopegawai.Locate('Nomor_Induk',data,[])then
    begin
      //
        queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_keluarga.Nomor_Induk, Count(master_keluarga.Nomor_Induk) AS Jumlah');
              queryhapus.SQL.Add('From master_keluarga');
              queryhapus.SQL.Add('GROUP BY master_keluarga.Nomor_Induk;');
              queryhapus.ExecSQL;
              queryhapus.Open;
              ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString);
              if queryhapus.Locate('Nomor_Induk',data,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                  begin
                  tabelkeluarga.Active:=false;
                  tabelkeluarga.Active:=true;
                    if tabelkeluarga.Locate('Nomor_Induk',data,[]) then
                      begin
                      tabelkeluarga.Delete;
                      end
                    else
                      begin
                      end;//Akhir Hapus Data Keluarga
                       end;//Perulangan Hapus Data
                 end//Jika Menemukan Data
                    else
                      begin
                    end;//Akhir Jika Tidak Menemukan Data
                  //
                                   queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_pasien.Nomor_Induk, Count(master_pasien.Nomor_Induk) AS Jumlah');
              queryhapus.SQL.Add('From master_pasien');
              queryhapus.SQL.Add('GROUP BY master_pasien.Nomor_Induk;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Pasien Yang Terhubung');
              if queryhapus.Locate('Nomor_Induk',data,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelpasien.Active:=false;
                tabelpasien.Active:=true;
                if tabelpasien.Locate('Nomor_Induk',data,[]) then
                begin
                tabelpasien.Delete;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
               queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_record_berobat.Nomor_Induk, Count(master_record_berobat.Nomor_Induk) AS Jumlah');
              queryhapus.SQL.Add('From master_record_berobat');
              queryhapus.SQL.Add('GROUP BY master_record_berobat.Nomor_Induk;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Berobat Yang Terhubung');
              if queryhapus.Locate('Nomor_Induk',data,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelrecord.Active:=false;
                tabelrecord.Active:=true;
                if tabelrecord.Locate('Nomor_Induk',data,[]) then
                begin
                tabelrecord.Delete;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
                  ///
                    queryhapus.Active:=false;
              queryhapus.Active:=true;
              queryhapus.Close;
              queryhapus.SQL.Clear;
              queryhapus.SQL.Add('SELECT master_beli_obat.Nomor_Induk, Count(master_beli_obat.Nomor_Induk) AS Jumlah');
              queryhapus.SQL.Add('From master_beli_obat');
              queryhapus.SQL.Add('GROUP BY master_beli_obat.Nomor_Induk;');
              queryhapus.ExecSQL;
              queryhapus.Open;
             // ShowMessage('Ada '+queryhapus.fieldByName('Jumlah').AsString+' Data Pembelian Obat Yang Terhubung');
              if queryhapus.Locate('Nomor_Induk',data,[]) then
                begin
                 y:=StrToInt(queryhapus.FieldByName('Jumlah').AsString);
                  for x:=1 to y do
                begin
                tabelbeliobat.Active:=false;
                tabelbeliobat.Active:=true;
                if tabelbeliobat.Locate('Nomor_Induk',data,[]) then
                begin
                tabelbeliobat.Delete;
                end
                else
                    begin
                    end;//Akhir Jika Menemukan Didata Keluarga
                end;//Akhir Perulangan Mencari Lalu Menghapus Data di Data Keluarga
                  end//Jika menemukan Data
                else
                  begin
                  end;//Akhir Jika Tidak Menemukan Data
                  //
      adopegawai.Delete;
      MessageDlg('Data Berhasil Dihapus',mtInformation,[mbOK],1);
      RefreshData;
    end
  else
    begin
      MessageDlg('Data Tidak Berhasil Ditemukan',mtError,[mbOK],1);
    end;
end;

procedure Tftransaksipegawai.Paste1Click(Sender: TObject);
var
  data:string;
begin
if lbltransaksi.Caption='Tidak Ada Transaksi' then
  begin
    data:=queryrefresh.FieldByName('Nomor_Induk').AsString;
    if adopegawai.Locate('Nomor_Induk',data,[]) then
      begin
        lbltransaksi.Caption:='Edit Data Transaksi';
        MessageDlg('Anda Saat Ini dalam Edit Transaksi,Silahkan Klik Tombol Simpan untuk meyimpan',mtInformation,[mbOK],1);
        ednomor.Text:=adopegawai.FieldByName('Nomor_Induk').AsString;
        edpersonel.Text:=adopegawai.FieldByName('Personel_Number').AsString;
        ednama.Text:=adopegawai.FieldByName('Nama_Pegawai').AsString;
        lblkodestp.Caption:=adopegawai.FieldByName('Kode_Status_Pegawai').AsString;
        lblkunit.Caption:=adopegawai.FieldByName('kode_unit').AsString;
        lblnoinduk.Caption:=adopegawai.FieldByName('Nomor_Induk').AsString;
        //
        qkunit.Locate('Kode_Unit',lblkunit.Caption,[]);
        cbkunit.Text:=qkunit.FieldByName('Nama_Unit').AsString;
                  //
        qkstatus.Locate('Kode_status',lblkodestp.Caption,[]);
        cbkodestp.Text:=qkstatus.FieldByName('Keterangan_Status').AsString;
                  //
        edpersonel.ReadOnly:=false;
        ednama.ReadOnly:=false;
        lbltransaksi.Caption:='Edit Data Transaksi';
        cbkodestp.Enabled:=true;
        cbkunit.Enabled:=true;
      end//Jika Data Ditemukan
      else
        begin
            MessageDlg('Data Tidak Ditemukan',mtError,[mbYes],1);
        end;
    end//Akhir Jika Tidak Ada Transaksi
  else if lbltransaksi.Caption='Edit Data Transaksi' then
    begin//Jika Edit Transaksi
      adopegawai.Edit;
        adopegawai.FieldByName('Nomor_Induk').AsString:=ednomor.Text;
        adopegawai.FieldByName('Personel_Number').AsString:=edpersonel.Text;
        adopegawai.FieldByName('Nama_Pegawai').AsString:=ednama.Text;
        adopegawai.FieldByName('kode_status_pegawai').AsString:=lblkodestp.Caption;
        adopegawai.FieldByName('Kode_Unit').AsString:=lblkunit.Caption;
        adopegawai.Post;
        MessageDlg('Edit Data Pegawai Tersimpan',mtInformation,[mbOK],1);
        RefreshData;
    end
  else
    begin
      MessageDlg('Tidak Bisa Melakukan Edit Data ,Karena saat ini anda dalam mode Simpan Data',mtError,[mbOK],1);
    end;
end;

procedure Tftransaksipegawai.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
var
  data:string;
begin
if not (key=chr(13)) then exit;
    if MessageDlg('Apakah anda ingin mengedit Data Pegawai ini ?',mtConfirmation,[mbYes,mbNo],1)=mrYes then
    begin
    data:=queryrefresh.FieldByName('Nomor_Induk').AsString;
    if adopegawai.Locate('Nomor_Induk',data,[]) then
      begin
        lbltransaksi.Caption:='Edit Data Transaksi';
        MessageDlg('Anda Saat Ini dalam Edit Transaksi,Silahkan Klik Tombol Simpan untuk meyimpan',mtInformation,[mbOK],1);
        ednomor.Text:=adopegawai.FieldByName('Nomor_Induk').AsString;
        edpersonel.Text:=adopegawai.FieldByName('Personel_Number').AsString;
        ednama.Text:=adopegawai.FieldByName('Nama_Pegawai').AsString;
        lblkodestp.Caption:=adopegawai.FieldByName('Kode_Status_Pegawai').AsString;
        lblkunit.Caption:=adopegawai.FieldByName('kode_unit').AsString;
        lblnoinduk.Caption:=adopegawai.FieldByName('Nomor_Induk').AsString;
        //
        qkunit.Locate('Kode_Unit',lblkunit.Caption,[]);
        cbkunit.Text:=qkunit.FieldByName('Nama_Unit').AsString;
                  //
        qkstatus.Locate('Kode_status',lblkodestp.Caption,[]);
        cbkodestp.Text:=qkstatus.FieldByName('Keterangan_Status').AsString;
                  //
        edpersonel.ReadOnly:=false;
        ednama.ReadOnly:=false;
        lbltransaksi.Caption:='Edit Data Transaksi';
        cbkodestp.Enabled:=true;
        cbkunit.Enabled:=true;
      end//Jika Data Ditemukan
    else
      begin
        MessageDlg('Terjadi kesalahan koneksi dari database,silahkan refresh form',mtError,[mbYes],1);
        RefreshData;
      end;
      end
      else
        begin
        abort;
        end;
end;

procedure Tftransaksipegawai.Image22Click(Sender: TObject);
begin
RefreshData;
end;

end.
