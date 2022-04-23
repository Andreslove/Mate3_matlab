function [z]=rk4(f,a,b,y0,n)
syms y(x) x
y(x)=dsolve(diff(y,x)==f(x,y),y(0)==y0)
SolEx=inline(subs(y(x)),"x")
yy=zeros(n+1,1);
yy(1)=y0;
h=(b-a)/n;
x=[a:h:b];
z=[];
for i=1:n
    k1=f(x(i),yy(i));
    k2=f(x(i)+h/2,yy(i)+(h/2)*k1);
    k3=f(x(i)+h/2,yy(i)+(h/2)*k2);
    k4=f(x(i)+h,yy(i)+h*k3);
    yy(i+1)=yy(i) + (h/6)*(k1+2*k2+2*k3+k4);
    z=[z;i-1 x(i) yy(i) k1 k2 yy(i+1)];
end
end