#Tarea 2 Julio Esteban de León Saravia 201807036

%%Cargamos el archivo de voz .wav 
[y, Fs] = audioread('cero.wav');
duracion = length(y)/Fs;
t = 0:1/Fs:duracion;
t = t(1:end-1);
%%Muestreamos los valores del archivo de voz 
[yfil, ycol] = size(y);
y = sum(y,2)/ycol; 
%%Calculamos los valores estadisticos
%%MEDIA
media = mean(y);
%%DESVIACION ESTANDAR
desv_es = std(y);
%%VARIANZA
var = std(y)^2;
%%POTENCIA MEDIA 
pot_med = mean((y.^2));
%%MAGNITUD MEDIA 
mag_med = mean(abs(y));
%%Calculamos los cruces por 0 
prod = y(1:length(y)-1).*y(2:length(y));
cruces = length(find(prod<0));
%%Imprimimos los valores estadisticos 
fprintf('Estadisticas de dígito \n\n')
fprintf('Media: %f \n', media)
fprintf('Desviación estándar: %f \n', desv_es)
fprintf('Varianza: %f \n', var)
fprintf('Potencia media: %f \n', pot_med)
fprintf('Magnitud media: %f \n', mag_med)
fprintf('Cruces de cero: %.0f \n', cruces)
%%Grafica de la señal de voz 
plot(t,y);
title('Pronunciación de la palabra CERO')
xlabel('Tiempo');
ylabel('Audio');