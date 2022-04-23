p=polynewton(x,T);%genera el polinomio de newton
xx=linspace(0,0.382);
p=polyval(p,xx); % evaluando los puntos xx en p.
xxx=linspace(0,0.382); %
T1=((90*cosh(3.0230*(0.382-xxx)))/cosh(3.0230*0.382))+292 ;
z=[]
for i =1:100
    error=(T1(i)-p(i))/T1(i);
    z=[z,error];
    
end   
z=z'
errorR=max(abs(z))
