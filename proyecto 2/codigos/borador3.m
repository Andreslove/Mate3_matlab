x=[0 0.027 0.132 0.191 0.254 0.314 0.382]'; %x:distancia 
T=[382 376.274538 359.0488778 352.4412212 347.5098159 344.6925966 343.5985634]';%T:temperatura(°K)
p=polynewton(x,T);
xx=linspace(0,0.382); % generando conjunto de 100 puntos "x".
p=polyval(p,xx); % evaluando los puntos xx en p.
plot(x,T,"ob",xx,p,"k")
title("polinomio interpolante de Newton")
xlabel("distancia(m)")
ylabel("Temperatura(°K)")
legend("nodos","polinomio interpolante")