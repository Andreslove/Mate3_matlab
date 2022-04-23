function[z]=gausseidel1(A,b,x0,Tol,maxiter)
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
Tgs=inv(D-L)*U;
cgs=inv(D-L)*b;
error=1;
iter =0
z=[ iter x0' error];
while error>Tol & iter<maxiter
    x1=Tgs*x0+cgs;
    error=norm(x1-x0,inf)/norm(x1,inf);
    iter =iter +1
    z=[z;iter x1' error];
    x0=x1;
end
end