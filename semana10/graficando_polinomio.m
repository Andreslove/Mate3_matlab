%Graficar el polinomio p(x) = 2x^3 − 6x + 5, para −4 ≤ x ≤ 4
xx = linspace(-4,4);%genera un conjunto de puntos(abcisas),
p = [2 0 -6 5]; %creando un polinomio
yy=polyval(p,xx);%evaluando el polinomio en los puntos que estan en xx

%GRAFICANDO EL POLINOMIO:
plot(xx,yy,"r")
title('funcion polinomial')
xlabel("eje x")
ylabel("eje y")
grid on % funcion para que aparezca grilletas
