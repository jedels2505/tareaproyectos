# Julio Esteban de León Saravia 201807036
#Problema 45
#PARTE1
num1 = 5;
num2 = 3;
if ( num1 > num2)
mensaje = 'num1 es mayor'
elseif ( num2 > num1)
mensaje = 'num2 es mayor'
else
mensaje = 'Ambos valores son iguales'
end
#PARTE2
edad = 22;
if ( edad < 4)
mensaje = 'Buscando a Nemo'
elseif ( edad >= 5) && (edad < 16)
mensaje = 'Toy Story'
elseif ( edad >= 16) && (edad < 28)
mensaje = 'Harry Potter'
elseif ( edad >= 28) && (edad < 40)
mensaje = 'Star Wars'
elseif ( edad >= 40) && (edad < 16)
mensaje = 'Forrest Gump'
elseif ( edad >= 60)
mensaje = 'El Padrino'
end
#PARTE3
a = [ 1 5 3 ; 6 9 0 ; 4 7 1 ];
columna_central = a (:, 2 );
sum_columna_central = sum ( columna_central)
renglon_central = a ( 2 ,:);
sum_renglon_central = sum ( renglon_central)
if ( sum_columna_central >= sum_renglon_central)
mensaje = 'true'
else
mensaje = 'false'
end