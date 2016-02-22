%% SPEICHERN VON DATEN IM MATLAB-FORMAT
clear;close all;clc

% Wenn man die Ergebnisse eines Matlabskriptes später wieder in Matlab
% verwenden möchte, bietet es sich an, das interne .mat-Format zu
% verwenden.

%% Speichern einer Variablen
x=1:10;     % Vektor x enthält die Ganzzahlen von 1 bis 10

% Zum Speichern in Matlab wird die save()-Funktion verwendet. Als Parameter
% werden die gewünschte Zieldatei und die zu speichernde(n) Variable(n)
% angegeben.
save('Daten.mat','x')

clear x     % Die Variable x wird aus dem Workspace entfernt.

%% Laden einer .mat-Datei
% Um alle Variablen aus einer .mat-Datei wieder in den Workspace zu laden,
% wird die load()-Funktion mit dem Dateinamen als einzigem Parameter
% verwendet.
load('Daten.mat')
% Die Variable x ist wieder im Workspace.

%% Laden einer bestimmten Variablen aus einer .mat-Datei
% load() benötigt zur Ausführung mindestens den Dateinamen. Allerdings
% lässt sich, wie auch beim Speichern, eine explizite Variable angeben,
% falls aus einer .mat-Datei mit mehreren Variablen nur eine gebraucht wird.
load('Daten.mat','x')