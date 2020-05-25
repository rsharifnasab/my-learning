program SumAndCounter;

var
	sum,counter,temp:longint;
begin

	sum:=0;
	counter:=0;

	read(temp);

	while temp <>0 do
	begin
		sum:=sum+temp;
		counter:=counter+1;
		read(temp);
	end;

	write ('jam e adad:',sum,'   tedad adad:',counter);
	readln;
end.
