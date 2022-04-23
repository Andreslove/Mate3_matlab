A=[1 0.4 0;0.4 1 0.6;0 0.6 1]
D=diag(diag(A))
L=-tril(A,-1)
U=-triu(A,1)
a=D-L-U%Obtenemos la matriz A

m=inv(D-L)*U
rho_gs=max(abs(eig(m)))
