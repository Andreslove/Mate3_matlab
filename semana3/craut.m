function[L, U]=craut(A)
% esta funcion calcula la foctorizacion lu de A
% mediante el metodo de Crout sin pivoteo

[n,m] = size(A)
U=eye(n,n);

for k=1:n-1
    pivo = A(k,k); %calcula el pivote
    for i = k+1:n
        U(k,i)=A(k,i)/pivo; % calcula el multiplicador m_ki
        A(:,i) = A(:,i)-U(k,i)*A(:,k); %avtualizacion de la columna i
    end
end
L=tril(A); %tril(A) es la matriz triangular inferior de la A