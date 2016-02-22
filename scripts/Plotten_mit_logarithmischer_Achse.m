%% Plot mit logarithmischer Y-Achse erstellen
clear, close all, clc;

%% Datenreihe erstellen und e-Funktion definieren
x = [0:0.1:5];
y = exp(x);

%% Plot mit logarithmischer X-Achse
figure(1)                                   % Öffnen einer neuen Figure
semilogy(x,y)                               % Plotbefehl für  log. Y-Achse
  
%% Plot mit unskalierter Achse
figure(2)                                   % Öffnen einer neuen Figure
plot(x,y)                                   % Einfacher Plotbefehl
