%% Fouriertransformation mit Matlab
clear; close all; clc;

%% Definition der verwendeten Daten
% Dieser Schritt muss nicht zwingend verstanden werden!
t = 0:1/100:10;                    % 10 s Aufnahmezeit
x = (1.3)*sin(2*pi*15*t) ...       % 15 Hz Komponente
  + (1.7)*sin(2*pi*40*(t-2)) ...   % 40 Hz Komponente
  + (2.5)*randn(size(t));          % Rauschen

%% Berechnung der Fouriertransformierten von x
fs = 100;                       % Abtastfrequenz (Hz) des Messgeraetes
m = length(x);                  % Länge des Eingangsvektors

% Erstellen eines Vektors mit den Werten 0 bis fs/2 und der halben Laenge
% der Eingangsvektors.
f = fs/2*linspace(0,1,m/2+1);

% Berechnung der transformierten Werte mit Hilfe der 'Fast fourier
% transform' Funktion.
y = fft(x)/m;

% Der Betrag des Realteils (abs) des halben Vektores wird mit zwei
% multipliziert. Auf diese Weise wird eine symmetrische zweiseitige
% Transformation zu einer einseitigen.
y = 2*abs(y(1:floor(m/2)+1));

%% Plotten der urspruenglichen Daten (1) und der transformierten Daten (2)
figure(1)
plot(x)

figure(2)
plot(f,y)