 x=[-1 1 3 5]';
 y=[-1 12 10 1]';
 
 g2=polyfit(x,y,2)
 %Otra forma
 A=[x.^2 x ones(4,1)];
 
 u = inv(A'*A)*A'*y
 