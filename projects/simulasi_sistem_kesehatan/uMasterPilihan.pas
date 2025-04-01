unit uMasterPilihan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TformPilihan = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPilihan: TformPilihan;

implementation

{$R *.dfm}

procedure TformPilihan.FormCreate(Sender: TObject);
begin
formPilihan.Hide;
end;

end.
