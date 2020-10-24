uses crt;
var
        secret:string;
        z:array[1..32]of integer;

procedure code();
begin
     writeln('code  me khahi hahahahahahahaha!!!!!');
end;

procedure decode();
var
i,i2,b:integer;
begin
     writeln('attention run of this part of this program may be not good for you!             because of police!');
     for i2:=1 to 32 do
          for i:=1 to ord(secret[0]) do if ord(secret[i2])=i2+97 then z[i2]:=z[i2]+1;
    b:=z[1];
    for i:=2 to 32 do if z[i]>b then  b:=z[i];
end;

var
        need:string;
        i,f:longint;
begin

    clrscr;
    writeln('welcome to program of gray code');
    repeat
        writeln('need codeing  or  decodeing');
        readln(need);
        if(need='coding')or(need='codeing')then {code() }
        else if(need='decoding')or(need='decodeing') then {decode()}
        else BEGIN writeln('- - - - - - - - - - Eror - - - - - - - - - - -'); f:=1;  end;
        if f=0 then begin f:=0; writeln('write your secret document or sentences!'); readln(secret); end;
        if(need='coding')or(need='codeing')then code()
        else if(need='decoding')or(need='decodeing') then decode();
    until(need='quit')or(secret='quit')or(need='exit')or(need='break');

end.
