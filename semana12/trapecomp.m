function [Itrapcomp,error] =trapecomp(f,a,b,N)
syms x;
f=inline(f);

Vexacto=int(f(x),a,b);
Vex=vpa(Vexacto,4) %redondea a 4 decimales

h=(b-a)/N;%N es el numero de subintervalos

x=[a:h:b];

Itrapcomp=(h/2)*(f(a) + 2*sum(f(x(2:length(x)-1))) +f(b));
error=vpa(abs(Vex-Itrapcomp),4);
end
