program dividable_by_three;
var
	i,x:integer;
begin
	for i:=1 to 14 do
	begin
		read(x);
		if x mod 3=0 then
			 writeln (x,' is dividable by three')
		else
			writeln(x,' isnt dividable by three');
	end;
	readln;
end.
