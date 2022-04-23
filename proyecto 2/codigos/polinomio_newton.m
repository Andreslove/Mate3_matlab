x=[0 0.027 0.132 0.191 0.254 0.314 0.382]'; %x:distancia 
T=[382 376.274538 359.0488778 352.4412212 347.5098159 344.6925966 343.5985634]';
p=polynewton(x,T); %utilizando la función polynewton.
xx=linspace(0,0.382); % generando conjunto de 100 puntos "x".
format long
p=polyval(p,xx); % evaluando los puntos xx en p.

xxx=linspace(0,0.382); %
T1=((90*cosh(3.0230*(0.382-xxx)))/cosh(3.0230*0.382))+292 ;
z=[]
for i =1:100
    error=(T1(i)-p(i))/T1(i);
    z=[z,error];
    
end   
z=z';
max(abs(z))
    
%graficando

plot(x,T,"ob",xx,p,"k",xxx,T1,"r") , hold on
title("polinomio de Newton y funcion explicita")
xlabel("distancia(m)")
ylabel("Temperatura(°K)")
legend('nodos','P. Interpolante-newton','funcion explicita')


