for i=1:3
    for j=1:3
        A(i,j) = 1/(i+j-1);
    end
end
disp("La matriz A es:")
disp(A)
trace(A)
inv(A)
det(A)