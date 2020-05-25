program EvenOrOdd;
var
	x:integer;
begin
	writeln('this program will check if your number is even or odd');
	writeln('enter -66 to close');

	read(x);
	while(x<>-66) do
	begin
		if x mod 2=0 then
			writeln(x,' is even')
		else
			writeln(x,' is odd');
		read(x);
	end;
	readln;
end.
