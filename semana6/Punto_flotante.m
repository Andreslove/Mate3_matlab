%convertir 168 a base 2
dec2bin(168) % devuelve un string

%convertir 732 a base 4
dec2base(732,4)
%convertir '1011011' a decimal
bin2dec('1011011') 
%convertir '1452332' a decimal
base2dec('1452332',6)
%convertir '323101' a base 7
n1 = base2dec('323101',4)
n = dec2base(N1,7)
%convertir 429 a hexadecimal 
dec2hex(429)
%convertir '1AF' a decimal
hex2dec('1AF')

%EJEMPLO :Represente 625 en representacion de simple precision(32bits)

N1 = sprintf('%tx',625) % convierte en hexadecimal en simple presicion
N2 = hex2dec(N1)
N=dec2bin(N2)
length(N)
N = strcat('0',N)

%EJEMPLO :Represente 625 en representacion de doble precision(64bits)

N1 = sprintf('%bx',625) %pasa a hexadecimal en dodle presición
N2 = hex2dec(N1)
N=dec2bin(N2)
length(N)
N = strcat('0',N) %concatenar la cadena "0" + N
