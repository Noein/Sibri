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

unit settings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, DB;

type
  TSettingsForm = class(TForm)
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SettingsForm: TSettingsForm;

implementation

uses data_module, main;

{$R *.dfm}

procedure TSettingsForm.Button1Click(Sender: TObject);
begin
  DataLibrary.Settings.Locate('Key', 'debtors_restr', [locaseinsensitive]);
  DataLibrary.Settings.Edit;
  DataLibrary.Settings.FieldByName('Value').AsString:=IntToStr(DBlookupComboBox1.KeyValue);
  DataLibrary.Settings.Post;
  DataLibrary.Settings.Refresh;
  DataLibrary.Settings.Locate('Key', 'reasons_trash', [locaseinsensitive]);
  DataLibrary.Settings.Edit;
  DataLibrary.Settings.FieldByName('Value').AsString:=IntToStr(DBlookupComboBox2.KeyValue);
  DataLibrary.Settings.Post;
  DataLibrary.Settings.Refresh;
  DataLibrary.Settings.Locate('Key', 'reasons_ended', [locaseinsensitive]);
  DataLibrary.Settings.Edit;
  DataLibrary.Settings.FieldByName('Value').AsString:=IntToStr(DBlookupComboBox3.KeyValue);
  DataLibrary.Settings.Post;
  DataLibrary.Settings.Refresh;
  close();
end;

procedure TSettingsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataLibrary.DebtorsQuery.Parameters.ParamByName('restr').Value:=DBlookupComboBox1.KeyValue;
  DataLibrary.Rep1Query.Parameters.ParamByName('trash_reas').Value:=DBlookupComboBox2.KeyValue;
  MainForm.reasons_ended:=DBlookupComboBox3.KeyValue;
end;

procedure TSettingsForm.Button2Click(Sender: TObject);
begin
  DataLibrary.Settings.Locate('Key', 'debtors_restr', [locaseinsensitive]);
  DataLibrary.Settings.Edit;
  DataLibrary.Settings.FieldByName('Value').AsString:='5';
  DataLibrary.Settings.Post;
  DataLibrary.Settings.Refresh;
  DBlookupComboBox1.KeyValue:='5';
  DataLibrary.Settings.Locate('Key', 'reasons_trash', [locaseinsensitive]);
  DataLibrary.Settings.Edit;
  DataLibrary.Settings.FieldByName('Value').AsString:='5';
  DataLibrary.Settings.Post;
  DataLibrary.Settings.Refresh;
  DBlookupComboBox2.KeyValue:='5';
  DataLibrary.Settings.Locate('Key', 'reasons_ended', [locaseinsensitive]);
  DataLibrary.Settings.Edit;
  DataLibrary.Settings.FieldByName('Value').AsString:='2';
  DataLibrary.Settings.Post;
  DataLibrary.Settings.Refresh;
  DBlookupComboBox3.KeyValue:='2';
end;

procedure TSettingsForm.FormShow(Sender: TObject);
begin
  DataLibrary.Settings.Locate('Key', 'debtors_restr', [locaseinsensitive]);
  DBlookupComboBox1.KeyValue:=StrToInt(DataLibrary.Settings.FieldByName('Value').AsString);
  DataLibrary.Settings.Locate('Key', 'reasons_trash', [locaseinsensitive]);
  DBlookupComboBox2.KeyValue:=StrToInt(DataLibrary.Settings.FieldByName('Value').AsString);
  DataLibrary.Settings.Locate('Key', 'reasons_ended', [locaseinsensitive]);
  DBlookupComboBox3.KeyValue:=StrToInt(DataLibrary.Settings.FieldByName('Value').AsString);
end;

end.
