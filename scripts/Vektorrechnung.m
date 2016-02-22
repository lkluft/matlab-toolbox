%% Vektorrechnung
clear, close all, clc;

%% Rechnen mit Vektoren
% Die Addition und Subtraktion von Vektoren erfolgt in Matlab immer 
% komponentenweise. Bei der Multiplikation ist stets darauf zu achten, dass
% die Vektoren gleich groß sind. Für die komponentenweise
% Multiplikation muss ein "." hinter den ersten Vektor gesetzt werden.

% Definition der Vektoren
x = [1 2 3];
y = [4 5 6];

% Addition:                             
x_plus_y = x + y;

%Subtraktion:
y_minus_x = y - x;

% Multiplikation:
x_mal_y = x.* y;