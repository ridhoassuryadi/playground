unit uInsertKeluarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  Tftransaksikeluarga = class(TForm)
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txttanggallahir: TEdit;
    txtkodest: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    btnsimpan: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftransaksikeluarga: Tftransaksikeluarga;

implementation

{$R *.dfm}

procedure Tftransaksikeluarga.Button1Click(Sender: TObject);
begin
ADOTable1.Delete;
end;

end.
