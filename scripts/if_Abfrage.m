%% if-Abfrage
clear;close all;clc

% Ein elementares Werkzeug der Prozesssteuerung in der Programmierung sind
% bedingte Abfagen. In Matlab lassen sich diese in Form von if-Konstrukten
% realisieren. Eine if-Abfrage steuert mit Hilfe einer Bedingung den Ablauf
% des Skriptes.

%% Beispiel der Verwendung der if-Abfrage

x=2; % Definieren der Variable x

if ( x == 2 )
    display('Ich werde ausgeführt.')
end

if ( x < 2 )
    display('Ich werde nicht ausgeführt.')
end

if ( x > 2 ) || ( x == 2 )
    display('Ich werde ausgeführt.')
end

if ( x > 2 ) && (x == 2 )
    display('Ich werde nicht ausgeführt.')
end
