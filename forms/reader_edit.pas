unit reader_edit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, Mask;

type
  TReaderEditForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    DateTimePicker1: TDateTimePicker;
    UpdateButton: TButton;
    CancelButton: TButton;
    procedure CancelButtonClick(Sender: TObject);
    procedure UpdateButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReaderEditForm: TReaderEditForm;

implementation

uses data_module;

{$R *.dfm}

procedure TReaderEditForm.CancelButtonClick(Sender: TObject);
begin
  close();
end;

procedure TReaderEditForm.UpdateButtonClick(Sender: TObject);
begin
  DataLibrary.Readers.ReadOnly:=false;
  DataLibrary.DSReaders.AutoEdit:=true;
  if DataLibrary.Readers.CanModify = true then DataLibrary.Readers.Edit;
  DataLibrary.Readers.FieldByName('passport_number').AsString:=Edit1.Text;
  DataLibrary.Readers.FieldByName('last_name').AsString:=Edit2.Text;
  DataLibrary.Readers.FieldByName('first_name').AsString:=Edit3.Text;
  DataLibrary.Readers.FieldByName('patronymic').AsString:=Edit4.Text;
  DataLibrary.Readers.FieldByName('birth_date').AsString:=DateToStr(DateTimePicker1.Date);
  DataLibrary.Readers.FieldByName('street_id').AsString:=DBLookupComboBox1.KeyValue;
  DataLibrary.Readers.FieldByName('home_number').AsString:=Edit6.Text;
  DataLibrary.Readers.FieldByName('home_case').AsString:=Edit7.Text;
  DataLibrary.Readers.FieldByName('work_place').AsString:=Edit8.Text;
  DataLibrary.Readers.FieldByName('work_phone').AsString:=Edit9.Text;
  DataLibrary.Readers.FieldByName('home_phone').AsString:=Edit10.Text;
  DataLibrary.Readers.FieldByName('cell_phone').AsString:=Edit11.Text;
  DataLibrary.Readers.Post;
  DataLibrary.Readers.Refresh;
  close();
end;

procedure TReaderEditForm.FormShow(Sender: TObject);
begin
  Edit1.Text:=DataLibrary.Readers.FieldByName('passport_number').AsString;
  Edit2.Text:=DataLibrary.Readers.FieldByName('last_name').AsString;
  Edit3.Text:=DataLibrary.Readers.FieldByName('first_name').AsString;
  Edit4.Text:=DataLibrary.Readers.FieldByName('patronymic').AsString;
  DateTimePicker1.Date:=StrToDate(DataLibrary.Readers.FieldByName('birth_date').AsString);
  DBLookupComboBox1.KeyValue:=DataLibrary.Readers.FieldByName('street_id').AsString;
  Edit6.Text:=DataLibrary.Readers.FieldByName('home_number').AsString;
  Edit7.Text:=DataLibrary.Readers.FieldByName('home_case').AsString;
  Edit8.Text:=DataLibrary.Readers.FieldByName('work_place').AsString;
  Edit9.Text:=DataLibrary.Readers.FieldByName('work_phone').AsString;
  Edit10.Text:=DataLibrary.Readers.FieldByName('home_phone').AsString;
  Edit11.Text:=DataLibrary.Readers.FieldByName('cell_phone').AsString;
end;

end.
