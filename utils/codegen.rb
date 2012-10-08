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
