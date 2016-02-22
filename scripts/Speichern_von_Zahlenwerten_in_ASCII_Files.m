%% ZAHLENWERTE IN ASCII-FILES SCHREIBEN
clear;close all;clc
% Im Zuge von Datenaustausch ist es notwendig seine Ergebnisse in einem für
% alle Anwender verwertbaren Format zu speichern. Hierbei bietet sich das
% Ablegen der Daten in einer einfachen ASCII-Datei an.

%% Einfache ASCII-Datei
% Erstellen einer 5x5-Zufallsmatrix
M = magic(5);        % M enthält eine 5x5 Matrix zufälliger Werte

% Speichern der Daten (M) mit Semikolon zur Trennung.
dlmwrite('Testdatei_Semikolon.txt',M,'delimiter',';')
% Um einen anderen Delimiter zu verwenden, wird das ; einfach durch das
% gewünschte Zeichen ersetzt. Neben dem Semikolon sind Komma (','),
% Tab ('\t') und Leerzeichen (' ') gängig.

%% ASCII-Datei mit Überschrift
% Es ist sinnvoll seinem Datensatz eine Headerzeile hinzuzufügen, damit der
% Inhalt leichter zu erkennen ist.

% Im ersten Schritt wird dlmwrite() wie gehabt angewandt. Allerdings wird
% nicht die Datenmatrix, sondern eine Matrix mit Header-Strings übergeben.
dlmwrite('Testdatei_Header.txt',['A' 'B' 'C' 'D' 'E'],'delimiter',';')

% Im zweiten Schritt werden die Daten an die bestehende Datei angehängt.
dlmwrite('Testdatei_Header.txt',M,'delimiter',';','-append')

% Die folgende Zeilen öffnen die beiden Dateien im Matlab-Editor
open('Testdatei_Header.txt')
open('Testdatei_Semikolon.txt')