unit uInsertPegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
ADOTable1.Append;
ADOTable1.FieldByName('Nomor_induk').AsString:=ednoinduk.Text;
ADOTable1.FieldByName('Personel_number').AsString:=edpersonel.Text;
ADOTable1.FieldByName('Nama_Pegawai').AsString:=ednama.Text;
ADOTable1.Post;
end;

end.
