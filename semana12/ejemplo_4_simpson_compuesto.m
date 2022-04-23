f=@(x)(x^2)
f1=@(x)(x.^2)
syms x
Vexacto=int(f(x),1,3)
Vex=vpa(Vexacto,4)%redondeaa4decimales
a=1; b=3; N=4;
h=(b-a)/N;%Neselnumerodesubintervalos
x=[a:h:b];
xpar=x(2:2:length(x)-1);
ximpar=x(3:2:length(x)-2);
Isimpcomp=(h/3)*(f1(a)+4*sum(f1(xpar))+2*sum(f1(ximpar))+f1(b))
Error=vpa(abs(Vex-Isimpcomp),4)
