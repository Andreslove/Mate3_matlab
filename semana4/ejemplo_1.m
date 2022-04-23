%se crean los siguiente vectores que almacenan las posiciones x,y,z
x=[1 2 3 2];
y=[3 1 2 4];
p=[x;y];
fill(p(1,:),p(2,:),"m") % el valor b nos brinda el color de la superficie
cord=rotacion(75,xyp)