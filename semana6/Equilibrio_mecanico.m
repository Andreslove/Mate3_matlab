A = [6 5 3;3 3 2;1 1 1];
P=[1 1 1;0 1 1;0 0 1];
% la matriz asociado al problema de autovalores es A2:

A2=inv(P)*A;
disp(A2)

%pregunta 1

[R,D]=eig(A2);
disp('los vectores propios de A2 son')
disp(R)
disp('los valores propios de A2 son')
disp(D)
%pregunta 2
% podemos calcular el valor propio mas pequeño de A2 y su correspondiente
% vector propio aplicando el metodo de la potencia a la inversade A2

disp('Calculo de una aproximacion del autovalor mas pequeño de A2')
disp('metodo de la potencia con inversa de A2')
x0=[1;0;0];
tol = 10^(-3);
maxiter=30;
invA2=inv(A2);

[z,iter,e_rel] = potencia_1(x0,invA2,tol,maxiter)


disp('Una aproximacion al valor propio mas pequeño de la matriz A es')
disp(1/z(iter,4))
disp('Una aproxiamcion al vector propio asociado al valor propio mas pequeño de A2')

disp(z(iter,1:3)')

%pregunta3
valor = ceil(1/z(iter,4)) % la funcion ceil redondea al entero mas cercano
N1 = sprintf('%tx',valor) %pasa a hexadecimal
N2 = hex2dec(N1)
N=dec2bin(N2)
length(N)
N = strcat('0',N)
%pregunta 4
valor =  '0111111100000000000000000000000'
valor = bin2dec(valor)
valor2 = dec2hex(valor)
valor3 = sprintf('%tu',valor2) 

 