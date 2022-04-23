%ejemplo1
 %forma 1
 
 x=[1 3 10 16]';
 y=[4 7 12 8]';
 g1=polyfit(x,y,1);% devuelve los coeficientes de forma decreciente
 yis = polyval(g1,x)
 %graficando
 
 xx = [1:0.01:16]; %desde 1 hasta 16 con un paso de 0.01
 yy1= polyval(g1,xx); % recibe como parametros los coeficintes del polinomio y las abcisas
 
 plot(xx,yy1,"r",x,y,"ob")
 grid on
 title("Ajuste lineal")
 
 % Otra manera. Construyendo el Sistema deEcuaciones Normales.
 A = [ones(4,1) x] % SEL sobredeterminado
 u = inv(A'*A)*A'*y; % solucion del sistema de ecuaciones normales

disp("los coeficientes del polinomio lineal via SEN es:")
disp(u)
 
 