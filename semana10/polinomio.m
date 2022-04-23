% crea un polinomio p=2x^3 - 6x +5 
p=[2 0 -6 5];

%evaluar el polinomio p en x=2
a=polyval(p,2);
disp("el polinomio evaluando en 2 es:")
disp(a)

%evaluar el polinomio p en x=3 y x= 5
b=polyval(p,[3 5]);
disp("el polinomio evaluando en 3 y 5 es:")
disp(b)

