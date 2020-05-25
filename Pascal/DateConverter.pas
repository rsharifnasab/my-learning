program painting;
var
	jalali,miladi,i:integer;
	exit_code,zarib_tabdil:integer;
begin


	writeln('enter jalali year and we convert it to miladi');
	zarib_tabdil := 621; // ekhtelaf e shamsi o miladi

	writeln('and enter 0 for exit the program');
	exit_code := 0;

	i := 0;
	repeat
		read(jalali);
		miladi:=jalali+zarib_tabdil; //
		writeln ('The year of ',jalali,' is year of ',miladi,' miladi');
		i:=i+1;
	until jalali = exit_code;

	writeln('we calculated ',i,' dates for you!, good bye!');
	readln;

end.
