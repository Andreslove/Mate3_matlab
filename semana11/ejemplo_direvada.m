clc
syms x % significa que vamos a trabjar con una variable simbolica
f=inline('x^2*log(x)')
Der01=diff(f(x)) % calcula la dreivada de la funcion f ya que es una funcion simbolica

Der01_value=vpa(subs(Der01,2),15)
% subs sirve para evaluar funcion simbolica:evalua en 2
%vpa trabaja con aritmetica en punto flotante con 15 digitos,por defecto
%son 32