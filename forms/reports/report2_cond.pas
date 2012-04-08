unit report2_cond;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TReport2CondForm = class(TForm)
    DateTimePicker: TDateTimePicker;
    Button1: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report2CondForm: TReport2CondForm;

implementation

uses data_module, report2;

{$R *.dfm}

procedure TReport2CondForm.Button1Click(Sender: TObject);
begin
  DataLibrary.Rep2Query.Close;
  DataLibrary.Rep2Query.Parameters.ParamByName('date').Value:=DateToStr(DateTimePicker.Date);
  DataLibrary.Rep2Query.Open;
  Report2Form.QuickRep1.Preview;
end;

procedure TReport2CondForm.FormShow(Sender: TObject);
begin
  DateTimePicker.Date:=Now();
end;

end.
