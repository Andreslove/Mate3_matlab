%Crear un polinomio mónico q(x), cuyas raíces sean x1 = 3 y x2 = 7.
%Solución: p(x) = x^2 − (3 + 7)x + 3 × 7 = (x − 3)(x − 7)

p=poly([3 7]);
% halle el polinomio monico cuyas raices son:
  %r1 = 3 de multiplicidad algebraica igual a 4.
p1=poly([3 3  3 3]) ;
  %r2 = 4 de multiplicidad algebraica igual a 2.
p2=poly([4 4]) ;

  %r3 = 6 de multiplicidad simple.
p3=poly([6]); 
  
  