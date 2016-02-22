%% for-Schleifen
clear;close all;clc

% Schleifen stellen eine wichtige Funktion in der Datenverarbeitung mit
% Matlab dar. Sie ermöglichen das wiederholte Ausführen von
% Anweisungsblöcken.

%% Fibonacci-Folge mit for-Schleife

x(1)=0;     % Definition der beiden Startwerte
x(2)=1;     % der Fibonacci-Folge

for i=3:10 % Gezählt wird von 3 bis 10 (s. Vektorrechnung.m)
    x(i) = x(i-1) + x(i-2);
end

display(x) % Ausgabe des Ergebnisvektors