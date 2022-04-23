x=[1 3 10 16]';
y=[4 7 12 8]';
X=x;
Y=log(y);
g1 = polyfit(X,Y,1);
B=g1(1);
A = exp(g1(2));
syms x
g = inline(subs(A*exp(B*x)),"x");
xx=[1:0.01:16];
yy2=g(xx);
plot(xx,yy2,"r")
grid on

