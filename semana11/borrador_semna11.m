x=[0 0.027 0.132 0.191 0.254 0.314 0.382];
T=[383 377.199 359.7502107 353.0579988 348.0639 345.21114 344.1033219];
S=splinenatural(x,T)
T1=((90*cosh(3.0230*(0.382-x)))/cosh(3.0230*0.382))+292

