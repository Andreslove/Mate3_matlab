clc
syms x % significa que vamos a trabjar con una variable simbolica
f=inline('x^2*log(x)')
x0=2;
h=0.01;

Der1_Atrasada=(f(x0)-f(x0-h))/h
