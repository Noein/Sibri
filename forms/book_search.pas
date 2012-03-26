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
unit book_search;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, ComCtrls;

type
  TBookSearchForm = class(TForm)
    LabeledEditTitle: TLabeledEdit;
    LabeledEditISBN: TLabeledEdit;
    LabeledEditBBC: TLabeledEdit;
    DateTimePicker: TDateTimePicker;
    StaticText1: TStaticText;
    PubRadioGroup: TRadioGroup;
    DBLookupComboBoxCat: TDBLookupComboBox;
    StaticText2: TStaticText;
    AndOrRadioGroup: TRadioGroup;
    FindButton: TButton;
    CancelButton: TButton;
    LabeledEditUDC: TLabeledEdit;
    DBLookupComboBoxPub: TDBLookupComboBox;
    StaticText3: TStaticText;
    procedure CancelButtonClick(Sender: TObject);
    procedure FindButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BookSearchForm: TBookSearchForm;

implementation

uses data_module;

{$R *.dfm}

procedure TBookSearchForm.CancelButtonClick(Sender: TObject);
begin
  DataLibrary.Books.Filter:='';
  DataLibrary.Books.Filtered:=False;
  close();
end;

procedure TBookSearchForm.FindButtonClick(Sender: TObject);
var
  cond, condDate, filterStr:string;
begin
  Case AndOrRadioGroup.ItemIndex of
    0:cond:=' AND ';
    1:cond:=' OR ';
  end;
  Case PubRadioGroup.ItemIndex of
    0:condDate:=' > ';
    1:condDate:=' < ';
    2:condDate:=' = ';
  end;
  filterStr:='title = '+''''+labeledEditTitle.Text+''''+
  cond+'ISBN = '+''''+labeledEditISBN.Text+''''+
  cond+'BBC = '+''''+labeledEditBBC.Text+''''+
  cond+'UDC = '+''''+labeledEditUDC.Text+'''';
  if DBLookupComboBoxCat.KeyValue <> Null then
    filterStr:=filterStr+cond+'category_id = '+IntToStr(DBLookupComboBoxCat.KeyValue);
  if DBLookupComboBoxPub.KeyValue <> Null then
    filterStr:=filterStr+cond+'publisher_id = '+IntToStr(DBLookupComboBoxPub.KeyValue);
  if condDate <> '' then
    filterStr:=filterStr+cond+'publication_date'+condDate+DateToStr(DateTimePicker.Date);
  DataLibrary.Books.Filter:=filterStr;
  DataLibrary.Books.Filtered:=True;
  close();
end;

procedure TBookSearchForm.FormShow(Sender: TObject);
begin
  //
end;

end.
