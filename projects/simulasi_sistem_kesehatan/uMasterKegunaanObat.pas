unit uMasterKegunaanObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  Tformgunaobat = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    txtgunaobat: TEdit;
    Shape1: TShape;
    Label2: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formgunaobat: Tformgunaobat;

implementation

{$R *.dfm}

procedure Tformgunaobat.Button1Click(Sender: TObject);
begin
if txtgunaobat.Text<>'' then
begin
  if ADOTable1.Locate('Kegunaan_Obat',txtgunaobat.Text,[]) then //Cari Kegunaan di Table
  begin//Jika Kegunaan Obat Sudah Terdaftar
    ShowMessage('Kegunaan Obat Sudah terdaftar');
    txtgunaobat.Clear;
    txtgunaobat.SetFocus;
  end
  else//Jika Kegunaan Belum Terdaftar dan Simpan Data
    begin
      ADOTable1.Append;//Buka ADOTabel
      ADOTable1.FieldByName('Kegunaan_Obat').AsString:=txtgunaobat.Text;//Simpan Field
      ADOTable1.Post;//Simpan Data
      txtgunaobat.Clear;
      txtgunaobat.SetFocus;
    end;
end//Akhir Validasi data kosong
else
  begin
  ShowMessage('Kegunaan Obat Kosong');
  txtgunaobat.SetFocus;
end;


end;

procedure Tformgunaobat.Button2Click(Sender: TObject);
var
  data,data1:string;
begin
data:=InputBox('Konfirmasi','Masukkan Nama Kegunaan Obat','');
if ADOTable1.Locate('Kegunaan_Obat',data,[]) then
begin
  ShowMessage('Data Ditemukan!');
  data1:=InputBox('Konfirmasi','Masukkan Kegunaan Obat yang diedit','');
    if data1<>'' then
    begin
      ADOTable1.Edit;
      ADOTable1.FieldByName('Kegunaan_Obat').AsString:=data1;
      ADOTable1.Post;
      ShowMessage('Data berhasil di update');
    end
    else
    begin
      ShowMessage('Kegunaan tidak Diedit');
    end;
end
else
  begin
     ShowMessage('Data tidak ditemukan');
     txtgunaobat.SetFocus;
  end;
end;

procedure Tformgunaobat.Button3Click(Sender: TObject);
var
  data:string;
begin
data:=InputBox('Hapus Data','Masukkan Kegunaan Obat Yang Ingin Dihapus :','');
if data<>'' then
begin
    if ADOTable1.Locate('Kegunaan_Obat',data,[]) then
      begin
         ADOTable1.Delete;
         ShowMessage('Data Dihapus');
      end
    else
      begin
        ShowMessage('Data Tidak Ditemukan');
      end;
end
else
  begin
     ShowMessage('Data tidak jadi dihapus');
  end;
end;

end.
