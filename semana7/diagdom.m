function op=diagdom(A)
%op=0:diagonalestrictamentedominante
%op=1:Noesdiagonalestrictamentedominante
[m,n]=size(A);
op=0;
if  m==n
    for k=1:m
        if abs(A(k,k))<=sum(abs(A(k,:)))-abs(A(k,k))
            op=1;
            break;
        end
     end
end
end
