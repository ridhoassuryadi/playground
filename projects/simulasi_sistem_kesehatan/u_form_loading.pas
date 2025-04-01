unit u_form_loading;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  Tform_loading = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Shape2: TShape;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_loading: Tform_loading;

implementation

{$R *.dfm}

procedure Tform_loading.Timer1Timer(Sender: TObject);
begin
if Shape2.Width < 689 then
begin
Shape2.Width := Shape2.Width + 5;
end
else
begin
Timer1.Enabled:= False;
end;
end;

end.
