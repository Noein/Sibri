str = ""
2.upto 10 do |x|
str +=
"
procedure DBGrid#{x}MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
procedure DBGrid#{x}TitleClick(Column: TColumn);
"
end
puts str
