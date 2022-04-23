A=[10 -1 2 0;-1 11 -1 3;2 -1 10 -1; 0 3 -1 8]
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
Tj=inv(D)*(L+U);
Tgs=inv(D-L)*U;


rho_j=max(abs(eig(Tj)))
rho_gs=max(abs(eig(Tgs)))
