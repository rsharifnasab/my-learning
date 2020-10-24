Uses crt;
Var
z,f:boolean;
x:array[1..100]of integer;
y:array[1..100]of integer;
length:integer;
xfood:integer;
yfood:integer;
c:char;
score:longint;
gd,gm,d:integer;
h:string;
procedure setfood;
var
i:integer;
begin
     z:=true;
     while z=true do
     begin
          z:=false;
          xfood:=(random(60)+5);
          yfood:=(random(20)+5);
          gotoxy(xfood,yfood);
          write('0');
          for i:=1 to length do
              if(xfood=x[i])and(yfood=y[i]) then z:=true;


    end;
end;
procedure GetDirection;
var
i:integer;
Begin
   if keypressed then c:=readkey;
   if c=#27 then f:=true;
   if  c=#112 then while not keypressed do delay(1);
{bala}   if ((c=#72)or(c=#119))and(h<>'paen')then  h:='bala';
{chap}   if ((c=#75)or (c=#97))and(h<>'rast')then  h:='chap';
{rast}   if ((c=#77)or(c=#100))and(h<>'chap')then  h:='rast';
{paen}   if ((c=#80)or(c=#115))and(h<>'bala')then  h:='paen';

End;
procedure Move;
var
i,i2:longint;
Begin
     for i:=2 to length do
          x[i]:=x[i-1];
     for i:=2 to length do
          y[i]:=y[i-1];
{bala}   if(h='bala')then  y[1]:=y[1]-1;
{chap}   if h='chap' then  x[1]:=x[1]-1;
{rast}   if h='rast' then  x[1]:=x[1]+1;
{paen}   if h='paen' then  y[1]:=y[1]+1;
    for i:=2 to length do
     for i2:=2 to length do
          if(x[1]=x[i])and(y[1]=y[i2])then f:=true;
    if x[1]>=80 then x[1]:=x[1]-80;
    if x[1]<=2 then x[1]:=x[1]+80;
    if y[1]>=35 then y[1]:=y[1]-35;
    if y[1]<=2 then y[1]:=y[1]+35;
    for i:=2 to length do if(x[1]=x[i])and(y[1]=y[i])then f:=true;
    if(x[1]=xfood)and(y[1]=yfood)then begin  score:=score+1; length:=length+1;d:=d-1;setfood;end;

End;

procedure Show;
var
i,i2:longint;
Begin

     gotoxy(xfood,yfood);
     write('0');
      gotoxy(1,1);
     write('your score is:',score);
     for i:=1 to length do
     begin
          gotoxy(x[i],y[i]);
          write('#');
     end;
end;



procedure init;
Begin
 Randomize;
     clrscr;
    {Initgraph(gd,gm,'');        }
     f:=false;
     score:=0;
     length:=5;
     writeln('    LOADING! . . .   ');
     delay(3000);
      setfood;
     h:='paen';
     d:=90;
End;

Var

    n,i,r2,r3:integer;

Begin
     init;
     Repeat
          GetDirection;
          Move;
          Show;
          Delay(d);
          CLRSCR;
     until(f=true);
     clrscr;
     gotoxy(0,0);
     writeln('your score is:',score);
     Readln;

End.
