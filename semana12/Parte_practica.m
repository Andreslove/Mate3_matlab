% el volumen viene dado por V=pi*int_a^b[f(x)]^2dx
x=[0 2 4 6 8];
y=[0 1 1 1.3 1.3];
y1=y.^2;

v=pi*trapz(x,y1)

n=length(x);
h=(x(n)-x(1))/n;
v1=pi*(y(1)+y1(n)+4*sum(y1(2:2:n-1)) +2*sum(y1(3:2:n-2)))*(h/3)

