
A=[0.3 0.15 0.2  ;0.1 0.15 0.15 ;0.6 0.5 0.45 ;0 0.2 0.2 ]
R=A'*A
[L, U]=craut(R)
sum(L)