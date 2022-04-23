f=@(x)(x^2) % si se e define asi no es necesario syms
syms x
Vexacto=int(f(x),1,3)
Vex=vpa(Vexacto,4)%redonedaa4decimales
a=1; b=3; h=(b-a)/2;
Isimp=(h/3)*(f(a)+4*f(a+h)+f(b))
Error=vpa(abs(Vex-Isimp),4)
