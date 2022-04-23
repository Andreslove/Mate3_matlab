f=@(x)(x^2)
%f=inline('x^2')
syms x
Vexacto=int(f(x),1,3) %calcula la integral 
Vex=vpa(Vexacto,4) % redondea a 4 decimales
a=1;b=3;h=b-a;
Itrap=(h/2)*(f(a)+f(b))%integral por trapecio simple
Error=vpa(abs(Vex-Itrap),4)