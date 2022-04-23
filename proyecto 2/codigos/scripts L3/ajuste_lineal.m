x=[0 0.027 0.132 0.191 0.254 0.314 0.382]';
T=[382 376.274538 359.0488778 352.4412212 347.5098159 344.6925966 343.5985634]';

A=[x ones(7,1)] ;
[Q, R] = gs(A);

u=inv(R)*Q'*T;
d=FactorR2(x,T) %calidad de ajuste lineal
%graficando
f=@(x) -103.8402*x+ 377.2225
xx=linspace(0,0.382);
f=f(xx);
xxx=linspace(0,0.382);
T1=((90*cosh(3.0230*(0.382-xxx)))/cosh(3.0230*0.382))+292 ;
z=[];
for i =1:100
    error=(T1(i)-f(i))/T1(i);
    z=[z,error];
    
end   
z=z';
errorMax=max(abs(z))
 
plot(x,T,"ob",xx,f)
legend("nodos","polinomio de ajuste lineal")
title("polinomio ajuste lineal")
xlabel("distancia(m)")
ylabel("Temperatura(°K)")

 