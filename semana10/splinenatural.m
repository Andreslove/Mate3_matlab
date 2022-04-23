function S=splinenatural(X,Y) 
%x y y vectores deben estar ordenados
% devuelve S spline
%H es la diferencia de nodos continuos
%la funcion diff: si algumento es una diferncia simbolica,entonces calcula
%la derivada de la funcion;si no calcula la diferencia de los elementos 
% consecutivos del vector si x=[1 3 5 7] entonces diff devuelve [2 2 2]
%./ operacion elemnto a elemento
N=length(X)-1; H=diff(X); E=diff(Y)./H;
diagprinc=2*(H(1:N-1)+H(2:N)); diagsupinf=H(2:N-1);
g0=0; gn=0;
A=diag(diagprinc)+diag(diagsupinf,1)+diag(diagsupinf,-1);
b=6*diff(E'); g=A\b;
g=[g0 g' gn];% se agrega Mo y Mn
for i=1:N % con este for se construye el spline
    S(i,1)=(g(i+1)-g(i))/(6*H(i)); %ai
    S(i,2)=g(i)/2;%bi
    S(i,3)= E(i)-H(i)*(g(i+1)+2*g(i))/6;%ci
    S(i,4)=Y(i);%di
    xx=linspace(X(i),X(i+1),100);
    yy=S(i,1)*(xx-X(i)).^3+S(i,2)*(xx-X(i)).^2+S(i,3)*(xx-X(i))+S(i,4);
    plot(xx,yy), hold on
end
grid on, %hold off
    




