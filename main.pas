{
  Copyright © 2012 Vladislav Mileshkin

  This file is part of Sibri.

  Sibri is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  Sibri is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with Sibri.  If not, see <http://www.gnu.org/licenses/>.
}
unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, XPMan, ComCtrls, Menus, ExtCtrls,
  DBCtrls, DB, ADODB;

const
  DEBUG = true;

type
  TMainForm = class(TForm)
    XPManifest1: TXPManifest;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    PageControl3: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    DBGrid2: TDBGrid;
    ExtendSearchButton: TButton;
    FindReaderButton: TButton;
    Label1: TLabel;
    DBGrid3: TDBGrid;
    ReturnBookButton: TButton;
    AppyRestButton: TButton;
    CleanRestButton: TButton;
    AddReaderButton: TButton;
    EditReaderButton: TButton;
    DelReaderButton: TButton;
    DBGridBooks: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    DBGrid7: TDBGrid;
    DBGrid8: TDBGrid;
    DBGrid9: TDBGrid;
    DBGrid1: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid10: TDBGrid;
    FindBookButton: TButton;
    Button4: TButton;
    N4: TMenuItem;
    NEEDMoreTimeButton: TButton;
    DBCheckBox1: TDBCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label3: TLabel;
    Panel1: TPanel;
    DBNavigator6: TDBNavigator;
    Panel2: TPanel;
    DBNavigator10: TDBNavigator;
    Panel3: TPanel;
    DBNavigator5: TDBNavigator;
    Panel4: TPanel;
    DBNavigator7: TDBNavigator;
    Panel5: TPanel;
    DBNavigator8: TDBNavigator;
    Panel6: TPanel;
    DBNavigator9: TDBNavigator;
    GroupBox1: TGroupBox;
    Panel7: TPanel;
    FindReaderEdit: TLabeledEdit;
    Panel8: TPanel;
    AddBookButton: TButton;
    EditBookButton: TButton;
    DelBookButton: TButton;
    TakeBookButton: TButton;
    Panel9: TPanel;
    FindBookEdit: TLabeledEdit;
    GroupBox2: TGroupBox;
    Panel10: TPanel;
    N3: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure AddBookButtonClick(Sender: TObject);
    procedure AddReaderButtonClick(Sender: TObject);
    procedure DelReaderButtonClick(Sender: TObject);
    procedure EditReaderButtonClick(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure TakeBookButtonClick(Sender: TObject);
    procedure DelBookButtonClick(Sender: TObject);
    procedure EditBookButtonClick(Sender: TObject);
    procedure FindReaderButtonClick(Sender: TObject);
    procedure FindBookButtonClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure ReturnBookButtonClick(Sender: TObject);
    procedure NEEDMoreTimeButtonClick(Sender: TObject);
    procedure CleanRestButtonClick(Sender: TObject);
    procedure AppyRestButtonClick(Sender: TObject);
    procedure ExtendSearchButtonClick(Sender: TObject);
    procedure DBGrid10DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid10ColExit(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker1DropDown(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure DateTimePicker2DropDown(Sender: TObject);
    procedure DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button4Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    reasons_ended:integer;
  end;
  
var
  MainForm: TMainForm;

implementation

uses data_module, about, book_add, reader_edit, reader_add, book_edit,
  apply_restr, reader_search, book_search, taken_books, debtors,
  statistics, report1, report2_cond, settings;

{$R *.dfm}

// Help -> About program
procedure TMainForm.N2Click(Sender: TObject);
begin
  AboutForm.Memo1.lines.loadFromFile('COPYING');
  AboutForm.showModal();
end;

procedure TMainForm.AddBookButtonClick(Sender: TObject);
begin
  BookAddForm.showModal();
end;

procedure TMainForm.EditBookButtonClick(Sender: TObject);
begin
  BookEditForm.showModal();
end;

procedure TMainForm.DelBookButtonClick(Sender: TObject);
begin
  if MessageBox(handle, 'Вы действительно хотите удалить книгу?',
   'Подтверждение', MB_YESNO Or MB_ICONQUESTION) = IDYES then
    DataLibrary.Books.Delete;
end;

procedure TMainForm.AddReaderButtonClick(Sender: TObject);
begin
  ReaderAddForm.showModal();
end;

procedure TMainForm.EditReaderButtonClick(Sender: TObject);
begin
  ReaderEditForm.showModal();
end;

procedure TMainForm.DelReaderButtonClick(Sender: TObject);
begin
  if MessageBox(handle, 'Вы действительно хотите удалить читателя?',
   'Подтверждение', MB_YESNO Or MB_ICONQUESTION) = IDYES then
    DataLibrary.Readers.Delete;
end;

procedure TMainForm.TabSheet6Show(Sender: TObject);
begin
   TakeBookButton.Caption:='Взять книгу для читателя: '+
   DataLibrary.Readers.FieldByName('last_name').AsString+' '+
   DataLibrary.Readers.FieldByName('first_name').AsString;
end;

procedure TMainForm.TakeBookButtonClick(Sender: TObject);
var count:integer;
begin
  count:=DataLibrary.Books.fieldByName('count').AsInteger;
  if count > 0 then begin
    DataLibrary.Books.Edit;
    DataLibrary.Books.fieldByName('count').AsInteger:=count - 1;
    if count = 0 then DataLibrary.Books.fieldByName('reason_id').AsInteger:=reasons_ended;
    DataLibrary.Books.Post;
    DataLibrary.Books.Refresh;
    DataLibrary.TakenBooks.insert;
    DataLibrary.TakenBooks.FieldByName('book_id').AsInteger:=DataLibrary.Books.fieldByName('id_Book').AsInteger;
    DataLibrary.TakenBooks.FieldByName('reader_id').AsInteger:=DataLibrary.Readers.fieldByName('id_Reader').AsInteger;
    DataLibrary.TakenBooks.FieldByName('taken_date').AsString:=DateToStr(Now);
    DataLibrary.TakenBooks.FieldByName('return_date').Assign(Nil);
    DataLibrary.TakenBooks.Post;
    DataLibrary.TakenBooks.Refresh;
    end
  else
    showMessage('Нельзя взять книгу, экземпляров которой не осталось!');
end;

procedure TMainForm.FindReaderButtonClick(Sender: TObject);
begin
  if NOT(FindReaderEdit.Text = '') then begin
      DataLibrary.Readers.Filter:='last_name LIKE '+''''+FindReaderEdit.Text+'%''';
      DataLibrary.Readers.Filtered:=true;
    end
  else
    DataLibrary.Readers.Filtered:=false;
end;

procedure TMainForm.FindBookButtonClick(Sender: TObject);
begin
  if NOT(FindBookEdit.Text = '') then begin
      DataLibrary.Books.Filter:='title LIKE '+''''+FindBookEdit.Text+'%''';
      DataLibrary.Books.Filtered:=true;
    end
  else
    DataLibrary.Books.Filtered:=false;
end;

procedure TMainForm.N4Click(Sender: TObject);
begin
  close();
end;

procedure TMainForm.ReturnBookButtonClick(Sender: TObject);
var id:integer;
begin
  DataLibrary.Books.Locate('id_Book', DataLibrary.TakenBooks.fieldByName('book_id').AsString, [locaseinsensitive]);
  DataLibrary.Books.Edit;
  DataLibrary.Books.fieldByName('count').AsInteger:=DataLibrary.Books.fieldByName('count').AsInteger + 1;
  DataLibrary.Books.Post;
  DataLibrary.Books.Refresh;
  // Work around some bug
  id:=DataLibrary.TakenBooks.fieldByName('id_Taken_book').AsInteger;
  DataLibrary.TakenBooks.Filtered:=False;
  DataLibrary.TakenBooks.Locate('id_Taken_book', id, [locaseinsensitive]);
  DataLibrary.TakenBooks.Edit;
  DataLibrary.TakenBooks.FieldByName('return_date').AsString:=DateToStr(Now);
  DataLibrary.TakenBooks.Post;
  DataLibrary.TakenBooks.Filtered:=True;
end;

procedure TMainForm.NEEDMoreTimeButtonClick(Sender: TObject);
begin
  DataLibrary.TakenBooks.Edit;
  DataLibrary.TakenBooks.fieldByName('taken_date').AsString:=DateToStr(Now);
  DataLibrary.TakenBooks.Post;
  DataLibrary.TakenBooks.Refresh;
end;

procedure TMainForm.CleanRestButtonClick(Sender: TObject);
var i:integer;
begin
  if MessageBox(handle, 'Вы действительно хотите очистить все записи о примененных мерах?',
   'Подтверждение', MB_YESNO Or MB_ICONQUESTION) = IDYES then
    For i:=DataLibrary.AppliedRestrictions.RecordCount downto 1 do
      DataLibrary.AppliedRestrictions.Delete();
end;

procedure TMainForm.AppyRestButtonClick(Sender: TObject);
begin
  ApplyRestForm.showModal();
end;

procedure TMainForm.ExtendSearchButtonClick(Sender: TObject);
begin
  ReaderSearchForm.showModal();
end;

procedure TMainForm.DBGrid10DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const IsChecked : array[Boolean] of Integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);
var
  DrawState: Integer;
  DrawRect: TRect;
begin
  if (gdFocused in State) then
  begin
    if (Column.Field.FieldName = DBCheckBox1.DataField) then
    begin
     DBCheckBox1.Left := Rect.Left + DBGrid10.Left + 2;
     DBCheckBox1.Top := Rect.Top + DBGrid10.top + 2;
     DBCheckBox1.Width := Rect.Right - Rect.Left;
     DBCheckBox1.Height := Rect.Bottom - Rect.Top;
     DBCheckBox1.Visible := True;
    end
  end
  else
  begin
    if (Column.Field.FieldName = DBCheckBox1.DataField) then
    begin
      DrawRect:=Rect;
      InflateRect(DrawRect,-1,-1);
      DrawState := ISChecked[Column.Field.AsBoolean];
      DBGrid1.Canvas.FillRect(Rect);
      DrawFrameControl(DBGrid1.Canvas.Handle, DrawRect, DFC_BUTTON, DrawState);
    end;
  end;
    if (gdFocused in State) then
  begin
    if (Column.Field.FieldName = 'foundation_date') then
    with DateTimePicker1 do
    begin
      Left := Rect.Left + DBGrid10.Left + 1;
      Top := Rect.Top + DBGrid10.Top + 1;
      Width := Rect.Right - Rect.Left + 2;
      Width := Rect.Right - Rect.Left + 2;
      Height := Rect.Bottom - Rect.Top + 2;
      if DataLibrary.Publishers.FieldByName('foundation_date').AsString <> '' then
          DateTimePicker1.Date:=StrToDate(DataLibrary.Publishers.FieldByName('foundation_date').AsString)
        else
          DateTimePicker1.Date:=Now;
      Visible := True;
    end;
  end;
end;

procedure TMainForm.DBGrid10ColExit(Sender: TObject);
begin
  if DBGrid1.SelectedField.FieldName = DBCheckBox1.DataField then
    DBCheckBox1.Visible := False;
  if DBGrid1.SelectedField.FieldName = 'foundation_date' then
    DateTimePicker1.Visible := False;
end;

procedure TMainForm.DBCheckBox1Click(Sender: TObject);
begin
  if DBCheckBox1.Checked then
     DBCheckBox1.Caption:=DBCheckBox1.ValueChecked
  else
     DBCheckBox1.Caption:=DBCheckBox1.ValueUnChecked;
end;

procedure TMainForm.DateTimePicker1Change(Sender: TObject);
begin
  if DataLibrary.DSPublishers.State in [dsEdit, dsInsert] then
    DataLibrary.Publishers.FieldByName('foundation_date').AsString:=DateToStr(DateTimePicker1.Date);
end;

procedure TMainForm.DateTimePicker1DropDown(Sender: TObject);
begin
  DataLibrary.Publishers.Edit;
end;

procedure TMainForm.DateTimePicker2Change(Sender: TObject);
begin
  if DataLibrary.DSAuthors.State in [dsEdit, dsInsert] then
    DataLibrary.Authors.FieldByName('birth_date').AsString:=DateToStr(DateTimePicker2.Date);
end;

procedure TMainForm.DateTimePicker2DropDown(Sender: TObject);
begin
  DataLibrary.Authors.Edit;
end;


procedure TMainForm.DBGrid6DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdFocused in State) then
    begin
      if (Column.Field.FieldName = 'birth_date') then
      with DateTimePicker2 do
      begin
        Left := Rect.Left + DBGrid6.Left + 1;
        Top := Rect.Top + DBGrid6.Top + 1;
        Width := Rect.Right - Rect.Left + 2;
        Width := Rect.Right - Rect.Left + 2;
        Height := Rect.Bottom - Rect.Top + 2;
        if DataLibrary.Authors.FieldByName('birth_date').AsString <> '' then
          DateTimePicker2.Date:=StrToDate(DataLibrary.Authors.FieldByName('birth_date').AsString)
        else
          DateTimePicker2.Date:=Now;
        Visible := True;
      end;
    end;
end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
  BookSearchForm.ShowModal();
end;

procedure TMainForm.N7Click(Sender: TObject);
begin
  TakenBooksQForm.ShowModal();
end;

procedure TMainForm.N8Click(Sender: TObject);
begin
  DebtorsQForm.ShowModal();
end;

procedure TMainForm.N9Click(Sender: TObject);
begin
  StatisticsQForm.ShowModal();
end;

procedure TMainForm.N10Click(Sender: TObject);
begin
  //Report1Form.ShowModal();
  DataLibrary.Rep1Query.Close;
  DataLibrary.Rep1Query.Open;
  Report1Form.QuickRep1.Preview;
end;

procedure TMainForm.N11Click(Sender: TObject);
begin
  Report2CondForm.ShowModal();
end;

procedure TMainForm.N3Click(Sender: TObject);
begin
  SettingsForm.ShowModal();
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  DataLibrary.Settings.Locate('Key', 'debtors_restr', [locaseinsensitive]);
  DataLibrary.DebtorsQuery.Parameters.ParamByName('restr').Value:=StrToInt(DataLibrary.Settings.FieldByName('Value').AsString);
  DataLibrary.Settings.Locate('Key', 'reasons_trash', [locaseinsensitive]);
  DataLibrary.Rep1Query.Parameters.ParamByName('trash_reas').Value:=StrToInt(DataLibrary.Settings.FieldByName('Value').AsString);
  DataLibrary.Settings.Locate('Key', 'reasons_ended', [locaseinsensitive]);
  reasons_ended:=StrToInt(DataLibrary.Settings.FieldByName('Value').AsString);
end;

procedure TMainForm.DBGrid1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  pt: TGridcoord;
begin
  pt:= DBGrid1.MouseCoord(x, y);

  if pt.y=0 then
    DBGrid1.Cursor:=crHandPoint
  else
    DBGrid1.Cursor:=crDefault;
end;

procedure TMainForm.DBGrid1TitleClick(Column: TColumn);
{$J+}
  const PreviousColumnIndex : integer = -1;
{$J-}
begin
  if DBGrid1.DataSource.DataSet is TCustomADODataSet then
  with TCustomADODataSet(DBGrid1.DataSource.DataSet) do
  begin
    try
      DBGrid1.Columns[PreviousColumnIndex].title.Font.Style:=DBGrid1.Columns[PreviousColumnIndex].title.Font.Style - [fsBold];
    except
    end;

    Column.title.Font.Style:=Column.title.Font.Style + [fsBold];
    PreviousColumnIndex:=Column.Index;

    if (Pos(Column.Field.FieldName, Sort) = 1) and (Pos(' DESC', Sort)= 0) then
      Sort:=Column.Field.FieldName + ' DESC'
    else
      Sort:=Column.Field.FieldName + ' ASC';
  end;
end;

end.
