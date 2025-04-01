unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, jpeg, ExtCtrls, Grids, DBGrids;

type
  TformTransaksiPasien = class(TForm)
    grupboxpegawai: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblkeluhan: TLabel;
    Label5: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Image6: TImage;
    Image8: TImage;
    btnsimpan: TImage;
    Image3: TImage;
    Image16: TImage;
    ednomor: TEdit;
    edpersonel: TEdit;
    ednama: TEdit;
    edkeluhan: TEdit;
    Shape4: TShape;
    edanamesa: TEdit;
    Shape5: TShape;
    edpemfisik: TEdit;
    Shape6: TShape;
    Label4: TLabel;
    edpempenunjang: TEdit;
    Shape7: TShape;
    Label6: TLabel;
    eddiagnosa: TEdit;
    Shape8: TShape;
    lbldiagnosa: TLabel;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    adotransaksi: TADOTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    adotpasien: TADOTable;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    grupboxkeluarga: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    Image1: TImage;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
    Image7: TImage;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Label12: TLabel;
    Shape15: TShape;
    Label13: TLabel;
    Shape16: TShape;
    Label14: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    ComboBox1: TComboBox;
    Label8: TLabel;
    Image9: TImage;
    adokeluarga: TADOQuery;
    adospasien: TADOQuery;
    procedure Image6Click(Sender: TObject);
    procedure edkeluhanKeyPress(Sender: TObject; var Key: Char);
    procedure edanamesaKeyPress(Sender: TObject; var Key: Char);
    procedure edpemfisikKeyPress(Sender: TObject; var Key: Char);
    procedure edpempenunjangKeyPress(Sender: TObject; var Key: Char);
    procedure ednomorKeyPress(Sender: TObject; var Key: Char);
    procedure btnsimpanClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formTransaksiPasien: TformTransaksiPasien;

implementation

uses uMasterPasien;

{$R *.dfm}

procedure TformTransaksiPasien.Image6Click(Sender: TObject);
begin
if (adotpasien.Locate('Nomor_Induk',ednomor.Text,[])) and (adotpasien.Locate('Kode_Jenis_Keluarga','0',[])) then
  begin
     if  ADOTable1.Locate('Nomor_Induk',ednomor.Text,[]) then
        begin
          ShowMessage('Data Ditemukan DiDaftar Pasien dan Data Pegawai');
          edpersonel.Text:=ADOTable1.FieldByName('Personel_Number').AsString;
          ednama.Text:=ADOTable1.FieldByName('Nama_Pegawai').AsString;
          edkeluhan.SetFocus;
        end
     else
        begin
          ShowMessage('ID Anda Tidak Ditemukan di Daftar Pegawai,segera hubungi Administrasi');
        end;
  end
else
  begin
    if ADOTable1.Locate('Nomor_Induk',ednomor.Text,[])  then
      begin
        ShowMessage('Data Pegawai Ditemukan tapi tidak terdaftar di nama pasien');
        if MessageDlg('Apakah anda ingin mendaftar Sebagai Pasien?',mtConfirmation,[mbYes,mbNo],1)=mryes
      then
  begin
    formpasien.Show;
  end
else
  begin
    showmessage('Mendaftar Sebagai Pasien Dibatalkan');
  end;
end//Akhir Dari Message Dialog
else
  begin
    ShowMessage('Data Tidak Ditemukan');
    ednomor.SetFocus;
  end;
end;
end;
procedure TformTransaksiPasien.edkeluhanKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
edanamesa.SetFocus;
end;

procedure TformTransaksiPasien.edanamesaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
edpemfisik.SetFocus;
end;

procedure TformTransaksiPasien.edpemfisikKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
edpempenunjang.SetFocus;
end;

procedure TformTransaksiPasien.edpempenunjangKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
eddiagnosa.SetFocus;
end;

procedure TformTransaksiPasien.ednomorKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key=chr(13)) then exit;
Image6Click(Sender);
end;

procedure TformTransaksiPasien.btnsimpanClick(Sender: TObject);
begin
if (ednomor.Text='') or (edpersonel.Text='') or (ednama.Text='') or
(edkeluhan.Text='') or (edanamesa.Text='') or (edpemfisik.Text='') or
(edpempenunjang.Text='') or (eddiagnosa.Text='') then
begin
  ShowMessage('Data Ada yang kosong');
end
  else
    begin
    showmessage('Data Tersimpan');
      adotransaksi.Append;
        adotransaksi.FieldByName('Nomor_Induk').AsString:=ednomor.Text;
        adotransaksi.FieldByName('Nama_Pasien').AsString:=ednama.Text;
        adotransaksi.FieldByName('Tanggal_Berobat').AsString:=FormatDateTime('mm/dd/yyyy',now);
        adotransaksi.FieldByName('Keluhan').AsString:=edkeluhan.Text;
        adotransaksi.FieldByName('Anamesa_Terimpin').AsString:=edanamesa.Text;
        adotransaksi.FieldByName('Pemeriksaan_Fisik').AsString:=edpemfisik.Text;
        adotransaksi.FieldByName('Pemeriksaan_Penunjang').AsString:=edpempenunjang.Text;
        adotransaksi.FieldByName('Diagnosa').AsString:=eddiagnosa.Text;
        adotransaksi.Post;

end;
end;

end.

end.
