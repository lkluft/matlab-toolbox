%% ERWEITERTE DATEN IN ASCII-FILES SCHREIBEN
clear;close all;clc
% Erstellen von drei Vektoren mit unterschiedichen Daten zum spaeteren
% Abspeichern. Dieser Schritt ist unnoetig, wenn man beretis Daten hat.
char(1:100) = 'A';
dat1(1:100) = 0.1:0.1:10;
dat2(1:100) = 200:10:1190;

%% Speichern in ASCII-File
% Oeffnen einer Datei im Schreibmodus ('w'). Zusaetzlich zum Dateinamen
% kann ein Verzeichnis angegeben werden. Die Erkennungsnummer (file ID) der
% Datei wird in der Variablen fid gespeichert.
fid = fopen('./matlab_test.txt','w');

% Eingabe eines Headers (optional). Der Platzhalter '%s' gibt an, dass ein
% String geschrieben werden soll. Die Angabe welcher String (header), folgt
% im Anschluss. '\n' sorgt fuer einen Umbruch am Zeilenende.
header = 'Ich bin eine Headerzeile';
fprintf(fid,'%s \n',header);

% Speichern der Daten in der geoeffneten Datei. Die Platzhalter (%s, %f,..)
% werden Zeile fuer Zeile durch die Werte in den Vektoren char, dat1 und
% dat2 ersetzt. Eingefuegte Zeichen zwischen den Platzhaltern werden in der
% Datei uebernommen (s. matlabt_test.txt). Fuer moegliche Formate siehe die
% Matlabhilfe zu fprintf(). Bei der Darstellung von Zahlen kann angegeben
% werden wie viel Stellen und Nachkommastellen genutzt werden sollen (%f6.2
% sechs Stellen, zwei davon Nachkommastellen)

for i = 1:length(char);
    fprintf(fid,'%s _ %6.2f ; %6.f \n',char(i),dat1(i),dat2(i));
end

% Die Datei muss geschlossen werden
fclose(fid);

% Oeffnen der Datei im Matlab-Editor
open('./matlab_test.txt');
