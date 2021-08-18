# Julio Esteban de León Saravia 201807036
# German Omar Chiguichón Sibrian 201801458
#Problema 47
#PARTE1
batman = [];
n = 100;
i = 1;
while ( i <= n )
if ( mod ( i ,3) == 0)
batman = [ batman i ];
end
i = i +2;
end
batman
#PARTE2
hulk = [ 1 2 3 4 5 ];
n = length ( hulk );
i = 1;
suma = 0;
while ( i <= n)
suma = suma + hulk ( i );
i = i + 1;
end
suma