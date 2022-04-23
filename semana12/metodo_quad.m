%EL COMANDO QUAD DE MATLAB(metodos adaptativos)
% q=quad('funcion',a,b)
% q:valor de la integral
% a y b:limites de integracion

f=@(x)(x.*exp(-x.^(0.8))+0.2)

I=quad(f,0,8)
%itra forma
I2=quad('x.*exp(-x.^(0.8))+0.2',0,8)
