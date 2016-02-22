%% FIND-FUNKTION
clear;close all;clc

% Häufig nutzt man zum Suchen von bestimmten Werten in Vektoren aufwändige
% Schleifenkonstruktionen. Diese verbrauchen in Matlab viele Ressourcen und
% sollten wenn möglich vermieden werden. Eine mächtige interne Funktion ist
% find().

%% Beispiele
a = [1, 2, 1, 3, 4, 1]; % Erstellen eines Datenvetkors

find(a>2);              % Gibt die Position der Werte größer 2 an

b = a(find(a>2));       % Ein Vektor, der nur die Zahlen >2 enthält

% Die Funktion lässt sich beispielsweise zur Verarbeitung von Zeitreihen
% mit Fehlwerten nutzen (s. Fehlwerte.m)