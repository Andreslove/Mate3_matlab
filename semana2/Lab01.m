% LABORATORIO 1 - SEMESTRE 2021-II
% Ejercicio 1
p = [80 15 35 60;28 72 57 25;20 20 12 20;50 10 20 60];
q=[230;180;80;160]; % tambien q = [230 180 80 160]'
traza_p=trace(p);
fprintf('\nEl resulatdo del Ejercicio 1 es:\n')
fprintf('\n\t La traza de la matriz p es :%f\n',traza_p)

% Ejercicio 2
pq = [p q ] %tambien pq es la matriz ampliada [p,q]
fprintf('\nEl resultado del Ejericio 2 es :\n')
fprintf('\n\t El rango de la matriz p es: %f\n',rank(pq));
fprintf('\n\t El rango de la matriz ampliad [p p] es: %f\n',rank(pq));

% Ejercicio 3
fprintf("\nEl resultado del Ejercicio 3 es:\n\n")
% se hace uso de la funcion RoucheFrobenius para ver el tipo de sistema que
% se tiend.
RoucheFrobenius(p,q);
% Se resuelve el SEI.
x = inv (p) * q
fprintf("nla solucion numerica del SEI es:\n")
fprintf("\t x1 = %.2f\n",x(1));
fprintf("\t x2 = %.2f\n",x(2));
fprintf("\t x3 = %.2f\n",x(3));
fprintf("\t x4 = %.2f\n",x(4));

% Ejercicio 4
fprintf('\nEl resultado del Ejericio 2 es :\n')
c=[18 5 7 20];
costo = c*x;
fprintf("\n\t El costo de la mezcla es: %9.6f\n\n",costo)

pause



