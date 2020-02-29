uses crt;
var
  kalame,ramz:string;
  b,i,kelid:integer;
begin
     clrscr; //clear terminal screen

     writeln('enter password! (an integer)');
     readln(kelid);

     writeln('enter the secred word');
     readln(kalame);

     ramz[0]:=kalame[0]; // set length of new string

     for i:=1 to ord(kalame[0]) do
     begin
          b:=ord(kalame[i]);
          b:=b-97;
          b:=b+kelid;
          b:=b mod 26+97;
          //we put encrypted character in b

          ramz[i]:=chr(b);
     end;

     writeln(ramz);
     readln; // same as system("pause")!
end.
