x=[0 0.027 0.132 0.191 0.254 0.314 0.382];
T=[382 376.274538 359.0488778 352.4412212 347.5098159 344.6925966 343.5985634];
S=splinenatural(x,T)

xxx=linspace(0,0.382);
T1=((90*cosh(3.0230*(0.382-xxx)))/cosh(3.0230*0.382))+292 ;

plot(xxx,T1,"r")
%grid on
%legend("funcion explicita")

a=S(4,:)
m=polyval(a,0.254)
T2=@(n)((90*cosh(3.0230*(0.382-n)))/cosh(3.0230*0.382))+292
t2=T2(0.254)

error=(t2-m)/t2