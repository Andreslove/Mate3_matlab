% calculo de autovalores y autovectores con Matlab
A=[1 2 3;4 5 6;7 8 0];
[R,D] = eig(A);
disp('Los valores propios y vectores propios de A obtenidos con eig de Matlab son')
disp(R) % autovectores
disp(D) %autovalores

%verificar 

lado_izq = A*R(:,1)
lado_der = D(1,1)*R(:,1)
dif = lado_der - lado_izq %oden de diez a la menos 14
%UTILIZANDO LA FUNCION POTENCIA
x0=[1;1;1];
Maxiter=100;
tol=10^(-6);
[z]=potencia(A,x0,Maxiter)
[z1,iter,e_rel] = potencia_1(x0,A,tol,Maxiter)
%ejemplo del ppt
A1=[2 -12;1 -5];
x00=[1;1];
Maxiter=30;
[z2]=potencia(A1,x00,Maxiter)
[z2,iter2,e_rel2] = potencia_1(x00,A1,tol,Maxiter)
