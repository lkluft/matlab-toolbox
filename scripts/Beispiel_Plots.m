%% BEISPIELE FUER DAS PLOTTEN VON DATEN
clear;close all;clc

% Erstellen einer Datenreihe (Nebenrechnung)
x=(0:2:10);   % Vektor mit jedem zweiten Wert von 0 bis 10
y=(0:5);      % Vektor mit den Werten von 0 bis 5

%% Plot der Daten als Linie
figure(1)   % Oeffnen einer neuen figure

% Einfachster Plotbefehl mit Angabe der Liniendicke und der Farbe
plot(x,y,'LineWidth',2,'Color','r')
grid on     % Gitter im Hintergrund aktivieren

% Legende benennen, mit Angabe der Position im Figure
% 'North'=oben; 'East'=rechts; 'South'=unten; 'West'=links;
% Angabe von 'Outside' positioniert die Legende ausserhalb des Plots; der
% Standard ist innen.
legend('Beispiel','Location','NorthEastOutside')

%% Plot der einzelnen Datenpunkte
figure(2)   % Oeffnen einer neuen figure

% Die Verbindungslinien lassen sich ausschalten, indem der 'LineStyle' auf
% 'none' gesetzt wird. Plot der Datenpunkte als X ohne Verbindungslinie:
plot(x,y,'LineStyle','none','Marker','X','MarkerSize',10)
