program MultiplactionTable;
var
	i,j : integer;
begin
	for i:=1 to 10 do
 	begin
		for j:=1 to 10 do
			write (i*j:5);
		writeln;
	end;
	readln
end.
