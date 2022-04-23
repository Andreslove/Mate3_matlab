function [Ea , nb]=gauss(A,b)
%esta funcion lleva el sistema original Ax=b al sitema Eax=nb (Ux=b)
%Ax=b mediante el metodo de eliminacion gaussiana sin pivote
Ab=[A b]
[n,m]=size(A)
for k=1:n-1
    pivo = Ab(k,k);
    for j=k+1:n
        mij=Ab(j,k)/pivo;
        Ab(j,:)=Ab(j,:) - mij*Ab(k,:);
    end
end
Ea=Ab(:,1:n);
nb=Ab(:,n+1);
end
