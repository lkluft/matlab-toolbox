%% AUTOKORRELATION
clear;close all;clc
% Erstellen einer Zufallsreihe mit "Tagesgang"
x = 1:0.1:10;
y = 2*cos(2*x)+0.25*randn(1,length(x));

%% Berechnung der Autokorrelationsfunktion
% In Matlab lässt sich die Autokorrelation mit Hilfe der Funktion
% autocorr() bestimmen. Diese benötigt mindestens einen Vektor als
% Eingabeelement. Zusätzlich kann angebeben werden, über wie viele
% "time-lags" die Autokorrelation gebildet werden soll (max. Länge
% des Vektors-1). Das Ergebnis lässt sich in einer Variablen (hier
% ac) abfangen.
ac = autocorr(y,length(x)-1);

%% Plotten der Zeitreihe und der Autkokorrelation
plot(x,y,'r',x,ac,'b')
legend('Messreihe','Autokorrelation')
