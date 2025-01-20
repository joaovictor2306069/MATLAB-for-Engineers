clear
close all
clc

Xdados = [0 4 5 10 15]';

Ydados = [ 0.99984 0.99997 0.99996 0.99970 0.99910]';

pN = formaNewton(Xdados,Ydados);
disp(" Para o valor referente a 12 Graus : " + double(pN(12)))

disp(" Para o valor referente a 3.5 Graus : " + double(pN(3.5)))
