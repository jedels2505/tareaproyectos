# Julio Esteban de León Saravia 201807036
# German Omar Chiguichón Sibrian 201801458
#Problema 49
#PARTE1
superman = [];
n = 100;
for i = 1 :n
if ( mod ( i , 2 ) ~= 0)
superman = [ superman i ];
end
end
superman
#PARTE2
thor = [ 1 2 3 4 5 ];
n = length ( thor );
i = 1;
multiplicacion = 1;
for i = 1 :n
multiplicacion = multiplicacion * thor ( i );
end
multiplicacion
#PARTE3
limones = [ 1 2 3 4 ; 5 6 7 8 ; 9 10 11 12 ];
[ m , n ] = size ( limones );
suma = 0;
for i = 1 :m
for j = 1 :n
suma = suma + limones ( i , j );
end
end
suma
