{**
 * Copyright (C) 2012 Vladislav Mileshkin
 *
 * This file is part of Sibri.
 *
 * Sibri is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Sibri is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Sibri.  If not, see <http://www.gnu.org/licenses/>.
 *}

unit book_search;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, ComCtrls, StrUtils;

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
    FindButton: TButton;
    CancelButton: TButton;
    LabeledEditUDC: TLabeledEdit;
    DBLookupComboBoxPub: TDBLookupComboBox;
    StaticText3: TStaticText;
    ClearButton: TButton;
    procedure CancelButtonClick(Sender: TObject);
    procedure FindButtonClick(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  cond, condDate:string;
begin
  Case PubRadioGroup.ItemIndex of
    0:condDate:=' > ';
    1:condDate:=' < ';
    2:condDate:=' = ';
  end;
  if labeledEditTitle.Text <> '' then
    cond:=cond+'title = '+''''+labeledEditTitle.Text+''' AND ';
  if labeledEditISBN.Text <> '' then
    cond:=cond+'ISBN = '+''''+labeledEditISBN.Text+''' AND ';
  if labeledEditBBC.Text <> '' then
    cond:=cond+'BBC = '+''''+labeledEditBBC.Text+''' AND ';
  if labeledEditUDC.Text <> '' then
    cond:=cond+'UDC = '+''''+labeledEditUDC.Text+''' AND ';
  if DBLookupComboBoxCat.KeyValue <> Null then
    cond:=cond+'category_id = '+IntToStr(DBLookupComboBoxCat.KeyValue)+' AND ';
  if DBLookupComboBoxPub.KeyValue <> Null then
    cond:=cond+'publisher_id = '+IntToStr(DBLookupComboBoxPub.KeyValue)+' AND ';
  if condDate <> '' then
    cond:=cond+'publication_date'+condDate+DateToStr(DateTimePicker.Date)+' AND ';
  if cond <> '' then
    cond:=LeftStr(cond, length(cond)-5);
  DataLibrary.Books.Filter:=cond;
  DataLibrary.Books.Filtered:=True;
  close();
end;

procedure TBookSearchForm.ClearButtonClick(Sender: TObject);
begin
  labeledEditTitle.Text:='';
  labeledEditISBN.Text:='';
  labeledEditBBC.Text:='';
  labeledEditUDC.Text:='';
  DBLookupComboBoxCat.KeyValue:=Null;
  DBLookupComboBoxPub.KeyValue:=Null;
  DateTimePicker.Date:=Now();
  PubRadioGroup.ItemIndex:=-1;
  DataLibrary.Books.Filter:='';
  DataLibrary.Books.Filtered:=False;
end;

procedure TBookSearchForm.FormCreate(Sender: TObject);
begin
  DateTimePicker.Date:=Now();
end;

end.
