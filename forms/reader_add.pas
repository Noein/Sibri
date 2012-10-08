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

unit reader_add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, Mask, ExtCtrls;

type
  TReaderAddForm = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Edit7: TEdit;
    Label9: TLabel;
    Edit8: TEdit;
    Label10: TLabel;
    Edit9: TEdit;
    Label11: TLabel;
    Edit10: TEdit;
    Label12: TLabel;
    Edit11: TEdit;
    Panel4: TPanel;
    Panel3: TPanel;
    CancelButton: TButton;
    Panel5: TPanel;
    SaveButton: TButton;
    procedure CancelButtonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReaderAddForm: TReaderAddForm;

implementation

uses data_module;

{$R *.dfm}

procedure TReaderAddForm.CancelButtonClick(Sender: TObject);
begin
  close();
end;

procedure TReaderAddForm.SaveButtonClick(Sender: TObject);
begin
  try
  try
  DataLibrary.Readers.Insert;
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
  except
  showmessage('Произошла ошибка. Приносим свои извинения. Попробуйте снова.');
  end;
  finally
  close();
  end;
end;

procedure TReaderAddForm.FormShow(Sender: TObject);
begin
  Edit1.Text:=''; Edit2.Text:=''; Edit3.Text:=''; Edit4.Text:='';
  Edit6.Text:=''; Edit7.Text:=''; Edit8.Text:=''; Edit9.Text:='';
  Edit10.Text:=''; Edit11.Text:='';
  DateTimePicker1.Date:=Now;
  DBLookupComboBox1.KeyValue:=Null;
end;

end.
