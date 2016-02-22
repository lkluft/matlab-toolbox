%% AUSGABE
clear;close all;clc

% MATLAB bietet verschiedene Möglichkeiten Ausgaben zur erzwingen oder zu
% unterdrücken.

%% Beispiele
a = 3       % Die Definition der Variablen wird im Command Window angezeigt

a = 3;      % Das Semikolon unterdrückt die Anzeige.

% !!! Die Nutzung des Semikolons nach Ausdrücken sollte Standard sein.
% Gerade beim Einlesen und Verarbeiten großer Datenmengen erspart man sich
% viel überflüssigen Output und Rechenzeit !!!

display(['a = ' num2str(a)]); % Bewusste Ausgabe von a in einer Zeile. 
% (Zum Verständnis der String-Verarbeitung im inneren von display() hilft
% die Datei "Strings.m" im Werkzeugkasten.
