function cord=rotacion(m,xyz)
angu=m/180*pi; % Angulo de rotacion
C=cos(angu);
S=sin(angu);
%Rotacion alrededor del eje X
Rx=[1 0 0;0 C(1) -S(1); 0 S(1) C(1)];
%Rotacion alrededor del eje Y
Ry=[C(2) 0 S(2); 0 1 0; -S(2) 0 C(2)];
%Rotacion alrededor del eje Z
Rz=[C(3) -S(3) 0;S(3) C(3) 0; 0 0 1];
cord=Rx*Ry*Rz*xyz;
end
