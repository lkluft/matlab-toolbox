%% STRINGS
clear;close all;clc
% Der Umgang mit Zeichenketten (Strings) hat viele praktische Anwendungen.
% Sei es das Einlesen von Dateien oder die Kommentierung von Plots oder
% Ausgabedateien. Im Folgenden werden einige grundlegende Funktionen zur
% Stringbearbeitung erläutert.

%% Erstellen eines Strings
% Um einen String einer Variablen zu zuordnen, wird dieser in 'Apostrophe'
% gesetzt.
a = 'Test';
% Sämtliche Zeichen (character) innerhalb der Apostrophe werden dem String
% zugeordnet.
b = 'Alles.was_hier steht,ist;ein:String';

%% Umwandeln von Zahlen in einen String.
% Häufig kommt es vor, dass man ein Ergebnis in einen String umwandeln
% möchte (z.B. dynamische Abbildungstitel). Zur Umwandlung von Zahlen in
% Strings steht die Funktion num2str() zur Verfügung.
x = 1+2;        % enthält die ZAHL 3
c = num2str(x); % enthält das Zeichen '3' als String

%% Zusammensetzen von Strings
% Möchte man mehrere Strings zusammensetzen, setzt man diese in eckige
% Klammern.
d = ['Eins plus zwei ist ' c];

%% Ausgabe der Strings auf das Command Window
% Strings lassen sich mit den Funktion disp() auf das Command Window 
% ausgeben. display() gibt zusätzlich den Variablennamen mit an. 
display(a)
display(b)
disp(c)
disp(d)