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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReaderSearchForm: TReaderSearchForm;

implementation

{$R *.dfm}

end.
