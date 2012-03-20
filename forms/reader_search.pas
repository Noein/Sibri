unit reader_search;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, ComCtrls;

type
  TReaderSearchForm = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    DateTimePicker1: TDateTimePicker;
    StaticText1: TStaticText;
    RadioGroup1: TRadioGroup;
    DBLookupComboBox1: TDBLookupComboBox;
    StaticText2: TStaticText;
    RadioGroup2: TRadioGroup;
    FindButton: TButton;
    CancelButton: TButton;
    Panel1: TPanel;
    procedure CancelButtonClick(Sender: TObject);
    procedure FindButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReaderSearchForm: TReaderSearchForm;

implementation

uses data_module;

{$R *.dfm}

procedure TReaderSearchForm.CancelButtonClick(Sender: TObject);
begin
  DataLibrary.Readers.Filter:='';
  DataLibrary.Readers.Filtered:=False;
  close();
end;

procedure TReaderSearchForm.FindButtonClick(Sender: TObject);
begin
  DataLibrary.Readers.Filter:='last_name = '+''''+labeledEdit1.Text+''''+
  ' AND first_name = '+''''+labeledEdit2.Text+'''';
  DataLibrary.Readers.Filtered:=True;
  close();
end;

end.
