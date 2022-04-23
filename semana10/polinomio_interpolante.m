%Utilice los nodos x0 = 2, x1 = 2, 75 y x2 = 4 para obtener el polinomio interpolante
%de segundo grado p(x) para f(x) = 1/x. Graficar p(x) vs f(x).

%SOLUCION.
x=[2 2.75 4]',
f=inline('1./x','x');%funcion de la forma f(x)=1/x
y=f(x); %evaluaa la funcion
p2=polyfit(x,y,2);
xx = linspace(2,4);%generando un conjunto de abcisas
yy1=polyval(p2,xx);%evaluando para generar ordenadas
%al polinmio interpolante
yy2=f(xx);%evaluando para generar ordenadas
%al polinomio conocido

plot(x,y,'ob',xx,yy1,'r',xx,yy2,'k') %ob :dibuja solo el pumto
grid on
legend('nodos','P. Interpolante','Funcion f(x)')


