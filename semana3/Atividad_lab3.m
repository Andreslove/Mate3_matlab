P = [5.5 8.2 12.4 16;3.2 6 10.5 14;2.9 5.75 10.1 13.9;2.8 5.6 10 13.8]
Q=[158256;122150;117415;115500]
%pregunta2
[L, U]=craut(P)
traza_L=trace(L)
%pregunta3
[Ll,Uu,Pp]=lu(P)
traza_Uu=trace(Uu)
%pregunta4
[z]=sustidir(L,Q)
[x]=sustinv(U,z)


