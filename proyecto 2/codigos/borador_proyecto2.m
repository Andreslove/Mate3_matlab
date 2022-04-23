xxx=linspace(0,0.382); %
T=[382 376.274538 359.0488778 352.4412212 347.5098159 344.6925966 343.5985634]';
x=[0 0.027 0.132 0.191 0.254 0.314 0.382]'
T1=((90*cosh(3.0230*(0.382-xxx)))/cosh(3.0230*0.382))+292 ;
f=@(x) -103.8402*x+ 377.2225
xx=linspace(0,0.382);
f=f(xx);


plot(x,T,"ob",xxx,T1,xx,f)
title("funcion explicita y polinomio ajuste lineal")
xlabel("distancia(m)")
ylabel("Temperatura(°K)")
legend("nodos","funcion explicita","polinomio ajuste lineal")