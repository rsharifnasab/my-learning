uses
    crt,graph;
var
gd,gm,i,a,v,x,t,b,c,d,e,f:integer;
begin
     gd:=1;
     gm:=2;
     initgraph(gd,gm,'');
     for i:=1 to 40 do circle(159,95,i);
     e:=100;
     d:=95;
     while c<200 do
     begin
          setcolor(red);
          for b:=1 to 4 do circle(e,d,b);
          delay(120);
          setcolor(black);
          for b:=1 to 4 do circle(e,d,b);
          e:=e+1;
          d:=d-2;
          if c>20 then
          begin
               d:=d+2;
               e:=e+1;
          end;
          if c>60 then d:=d+4;

          c:=c+1;
     end;
     readln;
end.