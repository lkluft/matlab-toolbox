%% PLOT MIT ZEITACHSE
clear;close all;clc

% Um die Ablaeufe bei der Erstellung einer Zeitserie (mit Zeitachse) zu
% verstehen, muss der Umgang mit der Matlab-Zeit verstanden werden. Siehe
% hierzu Matlab_Zeit.m.

%% Definition einer einstuendigen Zeitreihe mit sekuendlichen Messungen
% Die Startzeit (12. Janur 2013 12:00 Uhr) wird in die Matlabzeit
% umgewandelt.
start = datenum([2013 01 12 12 0 0]);

% Erstellen der Zeitreihe START:ZEITSCHRITT:ENDE
% Zum Verstaendnis der Zahlenwerte s. Matlab_Zeit.m
zeitreihe = start : 1/(24 * 3600) : start + 1/24;

%% Einer Zufallsreihe mit der Zeitreihe als x-Achse
% Erstellen einer Zufallszeitreihe mit der Laenge des Zeitvektors
Z = randn(1,length(zeitreihe));

% Plot der Zufallswerte gegen die Zeitreihe
plot(zeitreihe,Z)

% Einstellung des Formats der x-Achse (hier 12:00:00). Fuer weitere Formate
% kann die Matlab-Hilfe fuer datetick() genutzt werden.
datetick('x','HH:MM:SS')