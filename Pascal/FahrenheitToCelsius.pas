program fahrenhaight_to_celsius;
var
  f:integer;
  c:real;
begin
	for f := 5 to 120 do
	begin
  	c:=5/9*(f-32);
  	writeln (f:3,' fahrenhaight is ',c:5:2,' celcius');
	end;
	readln;
end.
