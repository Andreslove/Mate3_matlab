% INDEXACION DE MATRICES
% En Matlab, las matrices y vectores empiezan la indexacion desde 1,

A=[1 2 3 4;5 6 7 8;9 10 11 12]

a=A(3,2); % accede al elemento que esta en la fila 3 y columna 2

b=A(:,1); % seleciona todos los elementos de la columna1

c=A(2,2:4); % de la fila 2 seleciona elementos que van de 2 hasta 4

d = sum(A(2,:)); % suma todos los elementos de la fila 2

e = max (A(:,3)) % Maximo valor de la columna 3