f=@(x,y,t)y;
g=@(x,y,t)20.35707111*x-594.4264764
%[z] = runge_kutta_sis(f,g,x0,y0,a,b,h)
[z] = runge_kutta_sis(f,g,382,0,0,0.382,0.05)