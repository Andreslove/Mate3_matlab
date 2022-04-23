function [z,iter,e_rel] = potencia_1(x0,A,tol,maxiter)
% Esta funcion calcula el valor propio dominante y su correspondiente
% vector propio por el metodo de la potencia
%Entrada:
%     x0:iterado inicial.
%     A: matriz a la cual se le calculara el valor propio y vector propio
%     dominate
%     tol:tolerancia exigida para el criterio de parada (estimado del error
%     relativo.
%     maxiter: numero de iteraciones a realizar

iter=0;
x=x0;
e_rel=100;
z=[x0' 1];
while e_rel > tol & iter <= maxiter
    y=A*x;
    [may,pos]=max(abs(y));
    c=y(pos); % aproximacion al valor propio
    x=(1/c)*y ;% aproximacion al vector propio
    e_rel = norm((x-x0)/x,Inf);
    iter = iter +1;
    z=[z;x' c];
    x0=x;
end    
    
    
    
    