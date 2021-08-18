# Julio Esteban de León Saravia 201807036
# German Omar Chiguichón Sibrian 201801458
#Problema 55
#PARTE1
function [ value ] = fib(n)
f_mas_viejo = 1;
f_anterior = 1;
% Si n <= 0 vamos a regresar un valor 0
if ( n <= 0)
value = 0;
return;
end
% Fn es 1 para n = 1 y n = 2
if ( n <= 2)
value = 1;
return;
end
% A partir de n = 3 se hace el cálculo
for i = 3 :n
f_actual = f_anterior + f_mas_viejo;
f_mas_viejo = f_anterior;
f_anterior = f_actual;
end
value = f_actual;
#PARTE2
function [ mBinaria ] = binariza ( mGrises , umbral)
[ m , n ] = size ( mGrises );
% Crea una matriz de 1's del mismo tamaño que la matriz de entrada
mBinaria = ones ( m , n );
for i = 1 :m
for j = 1 :n
if ( mGrises ( i , j ) >= umbral)
mBinaria ( i , j ) = 0;
else
mBinaria ( i , j ) = 1;
end
end
end
#PARTE3
function [ suma_energia ] = obtenEnergia ( signal)
N = length ( signal );
suma_energia = 0;
for n = 1 :N
suma_energia = suma_energia + signal ( n )^ 2;
end
#PARTE4
function [ suma ] = obtenSerie ( N)
r = 0.5;
suma = 0;
for i = 0 : N -1
suma = suma + r ^ i;
end
#PARTE5
function [ suma ] = obtenSerieSinCiclos ( N)
r = 0.5;
% Crea un vector de [ 1 , 2 , 3 , ..., N]
v = 0 : N - 1;
% Obt é n los valores de la serie para r y v [ 1 , 0.5 , 0.25 , ... ]
serie = r .^ v;
% Suma todos los valores de la serie
suma = sum ( serie );
#PARTE6
function decimal = bin_2_dec ( v)
% Volteamos el vector binario para ir aumentando
% el exponente [1, 2, 3,... N]
f = fliplr ( v );
dec = zeros ( 1 , length ( f ));
for i = 1 : length ( f)
% Solo se toman en cuenta los 1's para la suma
if ( f ( i )== 1)
dec ( i )= 2 ^( i - 1 );
else
dec ( i )= 0;
end
end
% Sumamos todos los valores del vector dec para obtener el resultado
decimal = sum ( dec );
