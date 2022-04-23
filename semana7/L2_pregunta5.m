A=[3 1 -1;2 -7 1;1 -3 10];
b=[13 -28 -2]';
x0=[1 0 1]'
Tol=1e-3;
maxiter=3
z=gausseidel1(A,b,x0,Tol,maxiter)