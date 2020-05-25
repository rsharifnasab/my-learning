program Loan;
var
	total_vam,j,ghest:integer;
begin
	total_vam:=0;
	for j:=1 to 3 do
	begin
		read(ghest);
		total_vam:=total_vam+ghest;
	end;
	writeln('the total_vam of loan was ',total_vam);
	readln;
end.
