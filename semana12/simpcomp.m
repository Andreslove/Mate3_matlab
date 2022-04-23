function [Isimpcomp,Error]=simpcomp(f,a,b,N)
syms x;
f = inline(f)
Vexacto=int(f(x),a,b)
Vex=vpa(Vexacto,4)%redondeaa4decimales
h=(b-a)/N;%Neselnumerodesubintervalos
x=[a:h:b];
xpar=x(2:2:length(x)-1);
ximpar=x(3:2:length(x)-2);
Isimpcomp=(h/3)*(f(a)+4*sum(f(xpar))+2*sum(f(ximpar))+f(b))
Error=vpa(abs(Vex-Isimpcomp),4)
end