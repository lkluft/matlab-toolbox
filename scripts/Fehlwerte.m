%% FEHLWERTE
clear;close all;clc

% In Zeitreihen kommt es immer wieder zu Fehlwerten. Diese haben meistens
% einen besonderen Wert (z.B. -999), der sie als solche kennzeichnet. Um
% Ergebnisse so nicht zu verfälschen, müssen sie in MATLAB als NaN (not a
% number) gekennzeichnet werden.

%% Beispiel
% Deklarieren von Fehlwerten
ts = [14, 15, 15, -999, -999, 13, 14];  % Zeitreihe mit Fehlwerten

ts(ts==-999) = NaN;                % Umdefinieren der Fehlwerte

display(ts)                        % Ausgabe der neuen Zeitreihe

% Rechnen mit NaN-Werten
% Einige Funktionen in MATLAB (z.B. mean) haben einen
% "Sicherheitsmeachanismus" gegenüber NaN-Werten: Befindet sich in einer
% Zeitreihe ein NaN-Wert, wird der Mittelwert automatisch auf NaN gesetzt:

display(['"Nomaler" Mittelwert: ' num2str(mean(ts))])

% Da man den Mittelwert jedoch häufig trotzdem berechnen möchtet, gibt es
% die Funktion nanmean(x). Diese gibt den Mittelwert aus, der entsteht,
% wenn die NaN-Werte als nicht vorhanden angesehen werden:

display(['NaN-Mittelwert: ' num2str(nanmean(ts))])