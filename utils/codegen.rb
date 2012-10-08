# Copyright (C) 2012 Vladislav Mileshkin
#
# This file is part of Sibri.
#
# Sibri is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Sibri is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Sibri. If not, see <http://www.gnu.org/licenses/>.

str = ""
2.upto 12 do |x|
str +=
"
procedure TMainForm.DBGrid#{x}MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  pt:TGridcoord;
begin
  pt:= DBGrid#{x}.MouseCoord(x, y);
  if pt.y=0 then
    DBGrid#{x}.Cursor:=crHandPoint
  else
    DBGrid#{x}.Cursor:=crDefault;
end;

procedure TMainForm.DBGrid#{x}TitleClick(Column: TColumn);
{$J+}
  const PreviousColumnIndex:integer=-1;
{$J-}
begin
  if DBGrid#{x}.DataSource.DataSet is TCustomADODataSet then
  with TCustomADODataSet(DBGrid#{x}.DataSource.DataSet) do
  begin
    try
      DBGrid#{x}.Columns[PreviousColumnIndex].title.Font.Style:=DBGrid#{x}.Columns[PreviousColumnIndex].title.Font.Style - [fsBold];
    except
    end;

    Column.title.Font.Style:=Column.title.Font.Style + [fsBold];
    PreviousColumnIndex:=Column.Index;

    if (Pos(Column.Field.FieldName, Sort) = 1) and (Pos(' DESC', Sort)= 0) then
      Sort:=Column.Field.FieldName+' DESC'
    else
      Sort:=Column.Field.FieldName+' ASC';
  end;
end;
"

end

puts str
