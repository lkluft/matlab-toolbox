%% SWITCH FUNKTION
clear;close all;clc

% Haeufig kommt es bei der Programmierung zu der Situation, dass man fuer
% verschiedene Faelle einer Variable unterschiedliche Aktionen ausfuehren
% moechte. Anstatt mit mehreren if-Abfragen unterschiedliche Wege
% vorzuschreiben, kann die switch()-Funktion verwendet werden. Diese kann
% unterschiedliche Faelle erkennen und verarbeiten.

%% Anwendung der case Funktion
% Das folgende Kurzbeispiel zeigt die Syntax von switch. Im Kopf von switch
% muss die Variable angegeben werden, die "beobachtet" werden soll (i).
% Fuer die Faelle i=1 und i=2 werden unterschiedliche Befehle ausgefuehrt.
% Fuer alle anderen i passiert nichts.

for i = 1:4
    switch i
        case 1, display('1');
        case 2, display('11');
    end
end
