%% AUFBAU EINES MATLABSKRIPTES

% Grundsätzlich gibt es im Aufbaue eines Matlabskriptes keine Regeln. Es
% ist möglich ab der ersten Zeile Rechnungen auszuführen. Zur besseren
% Übersichtlichkeit und Handhabung, gibt es jedoch einige kleine Tipps und
% Tricks, die es sowohl für den Verfasser als auch spätere Leser
% erleichtern, dem Skript zu folgen.

%% Die Überschrift
% In der ersten Zeile sollte eine möglichst treffende Überschrift stehen,
% welche es auf den ersten Blick erlaubt den Verwendungszweck eines
% Skriptes zu erkennen und es von ähnlichen zu unterscheiden.

%% Die "Säberungszeile"
% Es bietet sich an am Beginn eines Skriptes ein wenig "aufzuräumen",
% sodass beim Ausführen des Skriptes Überbleibsel von vorher ausgeführten
% Skripten beseitigt werden:

clear           % Löscht alle Variablen im Workspace
close all       % Schließt alle geöffneten figures
clc             % Leert das Command Window

% Oder zusammengefasst.
clear;close all;clc

%% Kommentare
% Wie bis zu diesem Punkt bereits eindrucksvoll bewiesen, bietet Matlab die
% Möglichkeit seinen Quelltext zu kommmentieren. Dies sollte unbedingt und
% ausführlich genutzt werden! Kommentare beginnen mit einem %

%% Sektionen 
% Zusätzlich zur Kommentarfunktion gibt es die Möglichkeit zur
% Strukturierung von Skripten mit Hilfe von Sektionen (%%). Diese
% Erscheinen mit kleinen Unterüberschriften im Skriptverlauf und sind je
% nach Einstellung farblich hinterlegt. Neben der beseren Lesbarkeit der
% Skripte bietet dies den Vorteil sektionsweise auszuführen (Strg+Enter).