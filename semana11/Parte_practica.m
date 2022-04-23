%pregunta 1
clc
clf
x=[2 2.7 3.8 6 8 10 13 16 18 21 25 30 36];
y=[5 7.8 9 10 10.2 10.3 10.4 14.5 15 15.4 15.5 14 5];
s=splinenatural(x,y);

hold on
xx=[2 3 7 12 36];
yy=[5 4 7.9 3.8 5];
s1=splinenatural(xx,yy);
