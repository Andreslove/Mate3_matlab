%pregunta1
t=[1 2 3 4]';
v=[5 23 25 26]';
pl=lagrange(t,v);
disp("el polinomio interpolante de Lagrange")
disp(pl)
pn=polynewton(t,v);
disp("el polinomio interpolante de Newton")
disp(pn)

%pregunta 2
disp("evaluando en el instante t=2.5 en el polinomio interpolante la velocidad es:")
n=polyval(pn,2.5);
disp(n)

%pregunta 3
 %graficando
 tt=linspace(1,4);
 vv=polyval(pn,tt);
 plot(t,v,'ob',tt,vv,'r')
 
