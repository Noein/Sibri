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

unit reader_search;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, ComCtrls, StrUtils;

type
  TReaderSearchForm = class(TForm)
    FindButton: TButton;
    ClearButton: TButton;
    LabeledEdit1: TLabeledEdit;
    StaticText2: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    DateTimePicker1: TDateTimePicker;
    StaticText1: TStaticText;
    BirthRadioGroup: TRadioGroup;
    Button1: TButton;
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
var
  cond, condDate:string;
begin
  Case BirthRadioGroup.ItemIndex of
    0:condDate:=' > ';
    1:condDate:=' < ';
    2:condDate:=' = ';
  end;
  if labeledEdit1.Text <> '' then
    cond:=cond+'last_name = '+''''+labeledEdit1.Text+''' AND ';
  if labeledEdit2.Text <> '' then
    cond:=cond+'first_name = '+''''+labeledEdit2.Text+''' AND ';
  if labeledEdit3.Text <> '' then
    cond:=cond+'patronymic = '+''''+labeledEdit3.Text+'''AND ';
  if labeledEdit4.Text <> '' then
    cond:=cond+'passport_number = '+labeledEdit4.Text+' AND ';
  if DBLookupComboBox1.KeyValue <> Null then
    cond:=cond+'street_id = '+IntToStr(DBLookupComboBox1.KeyValue)+' AND ';
  if condDate <> '' then
    cond:=cond+'birth_date'+condDate+DateToStr(DateTimePicker1.Date)+' AND ';
  if cond <> '' then
    cond:=LeftStr(cond, length(cond)-5);
  DataLibrary.Readers.Filter:=cond;
  DataLibrary.Readers.Filtered:=True;
  close();
end;

procedure TReaderSearchForm.ClearButtonClick(Sender: TObject);
begin
  labeledEdit1.Text:='';
  labeledEdit2.Text:='';
  labeledEdit3.Text:='';
  labeledEdit4.Text:='';
  DBLookupComboBox1.KeyValue:=Null;
  DateTimePicker1.Date:=Now();
  BirthRadioGroup.ItemIndex:=-1;
  DataLibrary.Readers.Filter:='';
  DataLibrary.Readers.Filtered:=False;
end;

procedure TReaderSearchForm.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date:=Now();
end;

end.
