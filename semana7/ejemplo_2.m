A=[10 -1 2 0;-1 11 -1 3;2 -1 10 -1;0 3 -1 8]
b=[6;25;-11;15]
Tol=1e-3
x0=[0;0;0;0]
z=jacobi(A,b,x0,Tol) % solucion por jacobi
z=gausseidel(A,b,x0,Tol)%solucion po gauss-seidel