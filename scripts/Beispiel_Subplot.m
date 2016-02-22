                                           
%% Mehrere Plots in einer Figure
clear;close all;clc
% Um mehrere Plots in einer figure zu plotten gibt, gibt es den Befehl
% subplot(). Dieser wird hier kurz in einer einfachen Form gezeeigt.

%% Erstellen eines x-Vektors (Nebenrechnung)
x=0:0.1:10;     % x enthält die Zahlen von 0 bis 10 in 0.1-Schritten

% Erstellen einer figure mit drei Plots untereinander

subplot(3,1,1)          % 1. Argument: Anzahl der Plotreihen 
                        % 2. Argument: Anzahl der Plotspalten
                        % 3. Argument: Nummer des Plots (Plots werden wie
                        % in einem Fließtext durchnummeriert)
                        
plot(x,sin(x))          % Plotbefehl für den ersten Plot
ylabel('Plot 1')        % Erste y-Achse beschriften

subplot(3,1,2)                      % Zweiten Subplot aufrufen
plot(x,cos(x))                      % Zweiter Plotbefehl
ylabel('Plot 2')                    % Zweite y-Achse beschriften

subplot(3,1,3)                      % Drittenn Subplot aufrufen
plot(x,x)                           % Dritter Plotbefehl
ylabel('Plot 3')                    % Dritte y-Achse beschriften

xlabel('X-Werte')                   % Die x-Achse wird in diesem Fall nur
                                    % ein mal beschriftet, da sie für alle
                                    % Plots identisch ist. Es sind jedoch
                                    % auch unterschiedliche x-Achsen
                                    % möglich.