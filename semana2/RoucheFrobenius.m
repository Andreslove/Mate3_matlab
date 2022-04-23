function [] = RoucheFrobenius(A,b)
[n,m] = size(A);
rA = rank(A);
rAb = rank([A b]);
if (rA ~= rAb)
    fprintf("el sistema no tiene solucion.");
elseif (rA == n)
    fprintf("el sistema tiene solucion unica.\n");
else 
    fprintf(" El sistema tiene infinitas soluciones ");
end   