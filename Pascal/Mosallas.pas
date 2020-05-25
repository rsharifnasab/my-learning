program Mosallas;

function is_triangle(a,b,c: integer): boolean;
var
  biggest,sum_other:integer;
begin
    biggest:=a;
    if(b > biggest) then biggest:=b;
    if(c > biggest) then biggest:=c;
    sum_other := a+b+c-biggest; // smallest + mid
    is_triangle := (sum_other > biggest);
end;

var
  a,b,c:integer;
begin
  readln(a,b,c);

  if (not (is_triangle(a,b,c))) then
    writeln('it is not triangle')

  else if ((a*a + b*b = c*c) or (a*a + c*c = b*b) or (b*b + c*c = a*a))
    then writeln('ghaem olZavieh mishavad')

  else  if ((a=b) and (a=c) and (b=c))
    then writeln('motesavo olazla mishavad')

  else if ((a=b) or (a=c) or (b=c))
    then writeln('motesavi olsaghein mishavad')

  else
    writeln('mokhtalefolzaviye mishavad');

  readln;
end.
