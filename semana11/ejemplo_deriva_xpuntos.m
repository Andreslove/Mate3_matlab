format long
clc
syms x % significa que vamos a trabjar con una variable simbolica
f=inline('x^2*log(x)')
x0=2;
h=0.01;

Der1_4p=(f(x0-2*h)-8*f(x0-h)+8*f(x0+h)-f(x0+2*h))/(12*h)
error=abs(Der1_4p-Der01_value)