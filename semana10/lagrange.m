function p = lagrange(x,y)
n=length(x);
p = zeros(1,n); % genera la matriz con zeros de 1xn :[0 0 0 ...0]
for k=1:n
    num=poly(x([1:k-1,k+1:n]));%formando el numerafdor a travez del polinomio monico
    den = polyval(num,x(k));%evaluando 
    L=num/den;
    p=p +y(k)*L;   
end
end
