unit report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, RpCon, RpConDS, RpDefine, RpRave,
  StdCtrls;

type
  TReport1Form = class(TForm)
    Panel1: TPanel;
    RvProject1: TRvProject;
    RvDataSetConnection1: TRvDataSetConnection;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report1Form: TReport1Form;

implementation

uses data_module;

{$R *.dfm}

procedure TReport1Form.Button1Click(Sender: TObject);
begin
  RvProject1.Execute;
end;

end.
