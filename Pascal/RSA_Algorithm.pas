program RSA_Algorithm;
uses crt;
var
  ramz:array [1..1000] of longint;

{MOHASEBAT E ADADI}
function bmm(m,n:integer):integer;
begin
     if n=0 then bmm:=m
     else bmm:=bmm(n,m mod n);
end;

function modexp(a,b,n:integer):longint;
begin
     if b=1 then modexp:=a mod n
     else modexp:=(a*modexp(a,b-1,n) mod n);
end;

{RAMZGOZARI & RAMZGOSHAYI}
procedure encryption(e,n:longint;s:string);
var
   a,b,c,d,f,g,m:integer;
begin
     for a:=1 to length(s) do
     begin
          c:=ord(s[a]);
          ramz[a]:=modexp(c,e,n);
     end;
end;

function decryption(d,n:longint):string;
var
  a,b,c,e,f,g,m,s:integer;
  sprime:string;
begin
     a:=1;
     while(ramz[a]<>0) do
     begin
          s:=modexp(ramz[a],d,n);
          sprime[a]:=chr(s);
          inc(a);
     end;
     sprime[0] := chr(a-1);
     decryption:=sprime;
end;


{MOTEGHAYER HA VA BARNAME-YE ASLI}
var
     z:char;
     t:text;
     s,u:string;
     code:integer;
     p,q,n,phi,d,e,a:longint;
     // need removing unsied variables

begin

     e:=2;
     clrscr;

     textcolor(lightblue);
     writeln('do adad e aval vared konid');
     readln(p,q);

     n:=p*q;
     phi:=(p-1)*(q-1);
     while a<>1 do
     begin
          if bmm(e,phi)=1 then a:=1
          else e:=e+1;
     end;

     a:=0;
     d:=e+1;
     while a<>1 do
     begin
          if ((d*e) mod phi) = 1 then a:=1
          else inc(d);
     end;

     writeln('do kelid:' ,d,' ',e);

     textcolor(lightred);
     writeln('matn e morede nazar ra vared konid');
     readln(s);

     encryption(e,n,s);

     textcolor(brown);
     write('processing the text');
     delay(500); write('.'); delay(500); write('.'); delay(500); write('.'); delay(500);
     writeln;

     for a:=1 to length(s) do
         write(ramz[a], ' ');
     writeln;

     writeln('matne asli in bud:');
     writeln(decryption(d,n));
     readln;
end.
