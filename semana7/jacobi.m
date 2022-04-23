function[z]=jacobi(A,b,x0,Tol)
% ecuacion Ax=b fprma matricial
%tol=tolerancia permitida
%x0=iteracion inicial
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
Tj=inv(D)*(L+U);
cj=inv(D)*b;
error=1;
iter=0;
z=[iter x0' error];
while error>Tol % si no converge nunca va parar,es decir entra en loop infinito
   
    x1=Tj*x0+cj;
    error=norm(x1-x0,inf)/norm(x1,inf); % error relativo con norma infinito
    iter = iter + 1;
    z=[z;iter x1' error];
    x0=x1;
end
end
