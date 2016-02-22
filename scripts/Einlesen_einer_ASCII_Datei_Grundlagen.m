%% EINLESEN EIENR ASCII-DATEI - GRUNDLAGEN
clear;close all;clc

%% Erstellen einer Testdatei mit 5x5 semikolonseparierten Werte.
% Dieser Schritt erzeugt lediglich eine einzulesende Datei und muss nicht
% verstanden werden!
% (Fuer weitergehendes Interesse s. Speichern_von_Daten_in_ASCII_Files.m)
dlmwrite('Testdatei.csv',magic(5),'delimiter',';');

%% Schritt 1: Einlesen der Datei als Zeichenkette
% Die Funktion fileread() liest die als Zeichenkette (zwischen Hochkommata)
% angegebene Datei als Zeichenkette ein.
text = fileread('Testdatei.csv');

%% Schritt 2: Entfernen unerwünschter Zeichen.
% Die Funktion strrep (string replace) dient zum Suchen und Veraendern von
% Strings in einer Zeichenkette. strrep(Zeichenkette,'Alt','Neu')
% So koennen z.B. Kommas in Punkte geändert werden:
text = strrep(text,',','.');

%% Schritt 3: Auslesen der Zahlenwerte in einen Cell-Array
% Die Funktion textscan benoetigt als Parameter die einzulesende Variable
% und das Format der einzelnen Zeilen. Hierbei muss angegeben werden in
% welcher Reihenfolge verschiedene Datentypen pro Zeile vorkommen.
% '%f' fuer eine Zahl
% '%s' fuer eine Stringvariable (sinnvol bei z.B. Datum, Uhrzeit)

% Moechte man einen Wert nicht einlesen, muss dessen Position trotzdem 
% angegeben werden! Er laesst sich ueber ein eingefuegtes * jedoch beim
% Einlesen ueberspringen:
% '%*s' steht fuer einen String, der nicht eingelesen werden soll

% Weitere Formate sind der Matlab-Hilfe zu textscan zu entnehmen.
% Zusaetzlich wird der Delimiter (das Trennzeichen) angegeben.
% Das Format fuer fuenf Zahlen ist z.B.:
format = '%f%f%f%f%f';

% Zu Verkuerzung des format-Strings bei vielen Wiederholungen kann die
% Funktion repmat benutzt werden. Diese wiederholt die angegebene Variable
% fuer die gegebene Anzahl an Zeile und Spalten. Das Format-Beispiel
% liesse sich also auch darstellen durch:
format = repmat('%f',1,5);

% Einlesen von 5, durch ein Semikolon separierte Zahlen:
data = textscan(text,format,'Delimiter',';');

% textscan() bietet die Moeglichkeit Kopfzeilen und Kommentare zu ignorieren.
% textscan( ... ,'HeaderLines',1) ignoriert die erste Zeile.
% textscan( ... ,'CommentStyle','#') ignoriert Zeilen, die mit
% einer Raute beginnen.

%% Schritt 4: Umspeichern des Cell-Arrays in eine Matrix
% Ein Cell-Array ist eine gesonderte Datenstruktur in Matlab, die das
% Zusammenfassen verschiedener Datentypen (z.B. String, Double, ...)
% ermoeglicht. Zur leichteren Weiterbearbeitung wird dieser im folgenden
% Schritt jedoch in eine Matrix umgewandelt (nur moeglich, wenn alle
% Datentypen gleich sind!).
data = cell2mat(data);

%% Ausgabe der eingelesenen Werte auf das Command Window
display(data);

% Löschen der Testdateien (bei Interesse s. UNIX_Shell_in_Matlab.m)
!rm Testdatei.csv
