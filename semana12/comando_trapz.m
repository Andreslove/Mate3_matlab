% El comando trapz de Matlab se puede utilizar para
%integrar una funcion que se da en forma de puntos.
%Este metodo utiliza integracion por el metodo de trapecios.La
%dintaxis de ste comando es q=trapz(X,Y) donde X e Y son vectores 
%de las coordenadas x e y de los puntos que se van a integrar,
%los dos vectores deben tenr el mismo tamaño
x=[0 0.1 0.2 0.3 0.4 0.5]
y=[1 7 4 3 5 2]
%UtilizandoelcomandotrapzdeMatlab
I=trapz(x,y)
