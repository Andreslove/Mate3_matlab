function [z]=rk2(f,a,b,y0,n)
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
    k2=f(x(i)+h,yy(i)+h*k1);
    yy(i+1)=yy(i) + (h/2)*(k1+k2);
    z=[z;i-1 x(i) yy(i) k1 k2 yy(i+1)]
end
end
    
    
    