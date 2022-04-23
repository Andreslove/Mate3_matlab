%solucion con polinomio interpolante
x=[0 2 6 7 12 15];
y=[0 4 4 6 7 1];
p = polyfit(x,y,5);
xx=[0:0.01:15];
yy=polyval(p,xx);
plot(x,y,"or",xx,yy,"b")
grid on
%solucion con spline cubico natural
%Calculo de 100puntos de la graficadeS(x)
xx=linspace(0,15,100);
yy=spline(x,y,xx);
%Dibujo de lafuncion interpoladora S(x)sobre...elconjuntodedatos(x,y)
hold on
plot(xx,yy,'m')
legend('Data','Interpolacion','Spline')
