A = [1, 2, 3;4, 5, 6 ; 7, 8, 9];%Matriz3x3
A+3; %Adicion a un escalar:suma a todos

A*3; %Multiplica un escalar:multiplica a todos

sin(A);%Seno elemento a elemento

exp(A);%Exponencialelementoaelemento

inv(A);%Inversadeunamatriz

det(A);%Determinantedeunamatriz

A.^3;%Potenciaelementoaelemento

A';%Transpuesta

B=[ones(2,2) [1;2] ;1:3];

A+B; % suma de matrices

A*B;%Productodematrices

A.*B;%Producto el emento a elemento

A / B %A *inv(B)=x 
pause
A \B  %inv(A) *B   % Aesmatrizcuadrada