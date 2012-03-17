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
unit book_add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Mask, DBCtrls;

type
  TBookAddForm = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BookAddForm: TBookAddForm;

implementation

uses data_module;

{$R *.dfm}

end.
