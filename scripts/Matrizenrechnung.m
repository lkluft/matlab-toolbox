%% MATRIZENRECHNUNG
clear, close all, clc;

%% Definition zufaelliger Matrizen
% Dieser Schritt muss nicht unbedingt verstanden werden
A = magic(5);
B = magic(5);

%% Rechenarten
% Addition
C = A + B;
% Subtraktion
D = A - B;
% Multiplikation
E = A * B;
% Komponentenweise Multiplikation
F = A.* B;
%% Transponieren
A_transponiert = A';

%% Auf Elemente der Matrix zugreifen, Command Window beachten!
% Dieser Ausdruck liefert das zweite, fuenfte und siebte Element
% der Matrix A.
A([2 5 7])

% Dieser Ausdruck liefert das vierte bis achte Element zurück.
A(4:8)     

% Zugriff auf Spalten und Zeilen einer Matrix
A(2,3)	% Liefert den dritten Wert der zweiten Zeile
A(:,2) 	% ALLE (:) Werte der zweiten Spalte
A(3,:)  % Alle Werte der dritten Zeilen

% Dieser Ausdruck liefert den zwanzigsten bis zum letzten Wert
% der Matrix zurück.
A(20:end)
