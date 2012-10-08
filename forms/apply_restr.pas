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
  DBLookupComboBox1.KeyValue:=Null;
  close();
end;

procedure TApplyRestForm.ApplyButtonClick(Sender: TObject);
begin
  if DBLookupComboBox1.KeyValue <> Null then begin
    DataLibrary.AppliedSanctions.Insert;
    DataLibrary.AppliedSanctions.FieldByName('sanction_id').AsInteger:=DBLookupComboBox1.KeyValue;
    DataLibrary.AppliedSanctions.FieldByName('applied_date').AsString:=DateToStr(Now);
    DataLibrary.AppliedSanctions.FieldByName('applied_time').AsString:=TimeToStr(Now);
    close();
    end
  else
    MessageDlg('Чтобы применить меру её надо выбрать из списка.', mtWarning, [mbOk], 0);
  DBLookupComboBox1.KeyValue:=Null;
end;

end.
