A=[4 2 1;1 5 3;2 6 9];
b=[9;14;23];
Tol=1e-3;
x0=[0.5;1;0.5];
maxiter=10
z=jacobi1(A,b,x0,Tol,maxiter)
