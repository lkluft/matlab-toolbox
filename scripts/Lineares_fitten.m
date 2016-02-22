%% LINEARES FITTING
clear;close all;clc
% Erstellen einer Zufallsreihe
x=1:100;                % Vektor mit den Ganzzahlen 1 bis 100
y=0.01*x+rand(1,100);   % Gerade mit zufälligen Schwankungen

%% Darstellen der Zufallszahlen als Punkte
plot(x,y,'LineStyle','None','Marker','.','MarkerSize',10);

% Ausgleichsgerade 1. Ordnung erstellen ( f(x)=a(1)*x+a(2) )
a=polyfit(x,y,1);                     % Fit der Funktionsparameter

% Plotten der Angleichsgeraden durch die Punktwolke
hold on                               % Alter Plot bleibt erhalten
plot(x,a(1)*x+a(2),'r');