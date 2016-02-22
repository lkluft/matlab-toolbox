%% ACHSENEINSTELLUNGEN
clear;close all;clc

% Matlab bietet viele Möglichkeiten die Darstellung von Grafiken (figures)
% zu editieren. Hierbei wird zwischen der figure selbst und den Achsen
% unterschieden.
% Erstellen eines Standardplots
plot(1:10,(1:10).^2)

%% Eigenschaften der Achsen
% Zum Setzen (set) der Achseneigenschaften wird haufig aktuelle Achse
% benoetigt. Diese laesst sich mit gca (get current axis) ermitteln.

% Wertebereich der Achsen
xlim([0 10])        % Grenzen der x-Achse
ylim([0 100])       % Grenzen der y-Achse

% Anzeige von Zwischenschritten auf der Achse
set(gca,'XMinorTick','on')

% Angabe der Schritte 1, 7, 42, 99 auf der y-Achse:
set(gca,'YTick',[1 7 42 99]);
% Die Angabe von Bereichen mit : ist moeglich.

%% Einstellung der Achsenbeschriftung
% Im Anschluss laesst sich z.B. die Schriftgroesse (FontSize) auf 16 Pt
% veraendern.
set(gca,'FontSize',16)

% NACH dem Einstellen der Achseneigenschaften, koennen diese beschriftet
% werden.
xlabel('x-Achse')
ylabel('y-Achse')
title('Beispielplot')