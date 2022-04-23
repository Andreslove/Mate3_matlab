como hacer que mi editor en matlab no se abra en otra ventanacomo hacer que mi editor en matlab no se abra en otra ventanacomo hacer que mi editor en matlab no se abra en otra ventanacomo hacer que mi editor en matlab no se abra en otra ventanacomo hacer que mi editor en matlab no se abra en otra ventanacomo hacer que mi editor en matlab no se abra en otra ventanacomo hacer que mi editor en matlab no se abra en otra ventanacomo hacer que mi editor en matlab no se abra en otra ventanafunction [] = RoucheFrobenius(A,b)
[n,m] = size(A);%tamaño de la matriz
rA = rank(A);
rAb = rank([A b]);
if (rA ~= rAb)
    fprintf("el sistema no tiene solucion.");
elseif (rA == n)
    fprintf("el sistema tiene solucion unica.\n");
else 
    fprintf(" El sistema tiene infinitas soluciones ");
end   