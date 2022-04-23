function[z]=potencia(A,x0,Maxiter)
z=[x0' 1];
for k=1:Maxiter
    y1=A*x0;
    [maxi,pos]=max(abs(y1));
    u=y1(pos);%valorpropio
    x1=y1/u;%vectorpropionormalizado
    z=[z;x1' u];
    x0=x1;
end
