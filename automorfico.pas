program automorfico;
    uses crt,math;
    var num,pot,i,longpot,longnum:integer;
      potcadena,numcadena:string;
      decision:boolean;
begin
  writeln('ingrese un numero para comprobar si es automorfico ');
  readln(num);
  for i:=1 to 4 do
    begin
      pot:=num**i;
      writeln(' el resultado es: ',pot);       //potencia del numero ingresado por el usuario//

      str (pot,potcadena);                     //transformo la potencia en cadena//
      longpot:=length(potcadena);              //guardo la longitud de la cadena
      str(num,numcadena);                      //transformo el numero ingresado por el usuario a cadena//
      longnum:=length(numcadena);              //guardo la longitud del numero ingresado por el usuario//
      longpot:=longpot-longnum;                //realizo la resta de la longitud de la potencia menos la longitud del numero ingresado por el usuario//
      delete (potcadena,1,longpot);            //elimino el excedente de la cadena//
      if potcadena=numcadena then
        decision:=true
      else
        decision:=false;

    end;

 if decision=true then
  writeln( 'el numero es automorfico ')
 else
   writeln( 'el numero no es automorfico ');
  readkey;
end.
