Uses Crt;
type
    ar=array[1..255]of longint;

Var
        w,need:String;
        z:Array[1..26]Of longint;
        omomee,khososee,wrsa:longint;
        {aval:array[100..3000]of longint;}

{--------------------------file read kon-----------------------}
{function filereadkon:string;
var
fil:text;
y:string;
i:longint;
begin
    assign(fil,'Z:\pascal\stri.txt');
    reset(fil);
        readln(fil,y);
    close(fil);
    filereadkon:=y;
end;}

{----------------------------------loading---------------------------------}

procedure loading;
var
i:longint;
begin
i:=10 ;
clrscr;
write('loading ');
delay(50*i);
write('.');
delay(50*i);
write('.');
delay(50*i);
write('.');
delay(50*i);
write('.');
delay(50*i);
write('.');
delay(50*i);
writeln('.');
delay(50*i);
clrscr;
end;
{------------------------------aval---------------}
function aval:longint;
var
i,i2,z,f:longint;
begin

     randomize;
     for i:=random(20)+10 to random(20)+40  do
     begin
         for i2:=2 to i-1  do if i mod i2 = 0 then
         begin
               f:=1;

        end;
          if f=0 then begin aval:=i; break; end;
          f:=0;
     end;
     delay(random(1000));
end;
{--------------------------------------------bmm-------------------}
Function bmm(a,b:longint):longint;
var
z:longint;
begin
     if b>a then
     begin
        z:=a;
        a:=b;
        b:=z;
     end;
     while b<>0  do
     begin
          z:=a-b*(a div b);
          a:=b;
          b:=z;
     End;             {stack over flow}
     bmm:=a;
     end;
{-----------------------------------modexp------------------------------}
function modexp(m,e,n:longint):longint;
var
nahaee,i,last:longint;
begin
     if e=1 then modexp:=m mod n
     else modexp:=(modexp(m,e-1,n)*m)mod n;
end;
{-----------------------------------omomee-----------------------------}
Function omome(phi:longint):longint;
Var
     e:longint;
     c:char;
     quit:string;
Begin


     for e:=20 to 1000 do
     begin
          if(bmm(e,phi)=1) then break;

     end;
          omome:=e;


End;

{------------------------------khososee-------------------------------}

Function khosose(e,phi:longint):longint;
Var
     i,z,n,d,k:longint;

Begin

     d:=1;
     for k:=10 to e-1 do
     begin
        if (((k*phi)+1) mod e)=0   then
        begin
             d:=((k*phi)+1) div e;
        end;

     end;
     khosose:=d;

End;
{-----------------------------------kelid-----------------------------}
procedure kelid;
var
n,phi,p,q,e,d:longint;
begin
     p:=aval;
     {writeln('p:',p);  }
     q:=aval;
     {writeln('q:',q);    }
     n:=p*q;
     phi:=(p-1)*(q-1);
     omomee:=omome(phi);
     e:=omomee;
     khososee:=khosose(e,phi);
     d:=khososee;
     writeln('kelid omomee=',omomee);
     writeln('kelid khososee=',khososee);
end;

{-------------------------------------------------code-sezar-----------------------}
Function code(key:longint;secret:string):string;
Var
    quit:string;
    z,i:longint;
    c:char;
Begin
    For i:=1 to ord(secret[0]) do
    Begin
        c:=secret[i];
        z:=ord(c);
        z:=z+key;
        if z>122 then z:=z-122+65;
        c:=chr(z);
        quit[i]:=c;
    End;
    quit[0]:=secret[0];
    code:=quit;
End;


{--------------------------------------decode-sezar---------------------------}

function Decode(key:longint;secret:string):string;
Var
    quit:string;
    z,i:longint;
    c:char;
Begin
    For i:=1 to ord(secret[0]) do
    Begin
        c:=secret[i];
        z:=ord(c);
        z:=z-key;
        if z<65 then z:=(122-(65-z));
        c:=chr(z);
        quit[i]:=c;
    End;
    quit[0]:=secret[0];
    decode:=quit;
End;
{-------------------------------------------------code-rsa-----------------------}
Function codersa(key:longint;secret:longint):longint;
Var
     i,z,p,q,n,phi,d,e,k,m,mpe:longint;
     c:char;
Begin

     m:=secret;
    codersa:=modexp(m,e,n);


End;
{--------------------------------------decode-rsa---------------------------}

function Decodersa(key,key2:longint;secret:longint):longint;
Var

    z,i,c,d,n:longint;

Begin

      c:=secret;
      n:=key;
      d:=key2;
    decodersa:=modexp(c,d,n);
End;
{------------------------------iffing-----------------------------}
procedure iffing;
Var
        secret:string;
        i,f,secretrsa:longint;
        key,key2:longint;
begin
     randomize ;
     writeln('welcome to semainar5 of helli3');
     writeln('welcome to program of RSA&sezar decoding');
     writeln('what is your need??');
     writeln('nemone or decoding or coding or kelid rsa or coding rsa or decoding rsa');
     readln(need);
     if(need='nemone2')or(need='n2')or(need='nemoone2')then w:=decode(5,'Cjqhtrjytxjrnsfw')
     else if (need='nemone')or(need='n')or(need='nemoone')then w:=code(5,'welcometoseminar')
     else if(need='clear screen')or(need='clrscr')then begin clrscr;f:=0; halt; end
        else if(need='decodingsezar')or(need='decodeingsezar')or(need='decodesezar')or(need='ds')then
        begin
             writeln('write your secret sentences!');
             readln(secret);
             writeln('type your key please..');
             readln(key);
             w:=decode(key,secret);
        end
        else If(need='cs')or(need='codingsezar')or(need='codeingsezar')or(need='codesezar')then
        begin
             writeln('write your secret sentences!');
             readln(secret);
             writeln('type your key please.');
             readln(key);
             w:=code(key,secret);
       end
       else if(need='decodingrsa')or(need='decodeingrsa')or(need='decodersa')or(need='drsa')then
        begin
             writeln('write your secret adad!');
             readln(secretrsa);
             writeln('type your omomee key please...');
             readln(key);
             writeln('type your khososee key please...');
             readln(key2);
             wrsa:=decodersa(key,key2,secretrsa);
        end
        else If(need='crsa')or(need='codingrsa')or(need='codeingrsa')or(need='codersa')then
        begin
             writeln('write your secret adad!');
             readln(secretrsa);
             writeln('type your key please.');
             readln(key);
             wrsa:=codersa(key,secretrsa);
       end
        else if(need='krsa')or(need='kelid rsa')or(need='kelidrsa')then
             kelid
        Else BEGIN writeln('- - - - - - - - - - Error - - - - - - - - - - -'); end;

        if w<>'' then writeln('the secret matn was crypted with sezar:',w);
        if wrsa<>0 then writeln('the secret matn was crypted with rsa :',wrsa);

        writeln;
        writeln;
end;
Var

        i,f:longint;
        key:shortint;
Begin
    Clrscr;
    loading;

    Repeat
        iffing;
    Until(need='quit')or(need='exit')or(need='break');

End.

