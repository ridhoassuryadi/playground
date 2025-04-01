unit ureportpegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, QuickRpt, QRCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    QuickRep1: TQuickRep;
    QRChildBand1: TQRChildBand;
    QRSubDetail2: TQRSubDetail;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    PageFooterBand1: TQRBand;
    QRDBText4: TQRDBText;
    ADOTable1: TADOTable;
    SummaryBand1: TQRBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
