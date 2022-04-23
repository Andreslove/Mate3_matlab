clc
syms x % significa que vamos a trabjar con una variable simbolica
f=inline('x^2*log(x)')
x0=2;
h=0.01;
format long
x0=2;
h=0.01;

Der1_Central=(f(x0+h)-f(x0-h))/(2*h)