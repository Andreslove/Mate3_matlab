f=@(x)(x^2) %para que utilce la funcion int
f1=@(x)(x.^2)% para que utilice Itrap,para que multiplique punto a punto
syms x
Vexacto=int(f(x),1,3)
Vex=vpa(Vexacto,4)%redondeaa4decimales
a=1; b=3; N=4;
h=(b-a)/N;%Neselnumerodesubintervalos
x=[a:h:b]; % se define el vector x 
Itrapcomp=(h/2)*(f1(a)+2*sum(f1(x(2:length(x)-1)))+f1(b))
Error=vpa(abs(Vex-Itrapcomp),4)
