%Halle el polinomio interpolante que pase por los 
%puntos (0; 5),(3; 2),(4; 6),(7; 9)
x=[0 3 4 7]';
y=[5 2 6 9]';

M=vander(x); %M = [x.^3 x.^2 ones(4,1)];

p=inv(M)*y % otra forma p = M\y


% OTRA FORMA
p=polyfit(x,y,3)
