%% SYMBOLISCHES RECHNEN
clear;close all;clc

% MATLAB bietet neben numerischen Rechnungen auch die Möglichkeit
% symbolische Auswertungen vorzunehmen. Hierzu muss dem System mitgeteilt
% werden, dass eine Variable als Symbol betrachtet werden soll
syms x

% Im Anschluss lassen sich Funktionen definieren.
F=x^3+2;

% Auf so definierte Funktionen lassen sich diverse Operationen anwenden
f=diff(F,x);    % Ableitung

% Die Ergebnisse lassen sich auch in "schöner" Form anschauen
display('Stammfunktion')
pretty(F)
display('Ableitung')
pretty(f)

% Zum Auswerten/Plotten muss die symbolische Variable mit Werten ersetzt
% (substituiert) werden.
v=-5:0.1:5;     % einzusetzende Werte

F=subs(F,x,v);  % Ersetzen der Symbolvariablen durch Werte
f=subs(f,x,v);

% Plot der beiden Funktionen
hold on
plot(v,f)
plot(v,F,'r')