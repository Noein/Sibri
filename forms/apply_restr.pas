unit apply_restr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls;

type
  TApplyRestForm = class(TForm)
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText1: TStaticText;
    ApplyButton: TButton;
    CancelButton: TButton;
    procedure CancelButtonClick(Sender: TObject);
    procedure ApplyButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ApplyRestForm: TApplyRestForm;

implementation

uses data_module;

{$R *.dfm}

procedure TApplyRestForm.CancelButtonClick(Sender: TObject);
begin
  close();
  DBLookupComboBox1.KeyValue:=Null;
end;

procedure TApplyRestForm.ApplyButtonClick(Sender: TObject);
begin
  DataLibrary.AppliedRestrictions.Insert;
  DataLibrary.Readers.FieldByName('restriction_id').AsString:=DBLookupComboBox1.KeyValue;
  DataLibrary.Readers.FieldByName('applied_date').AsString:=DateToStr(Now);
  DataLibrary.Readers.FieldByName('applied_time').AsString:=TimeToStr(Now);
end;

end.
