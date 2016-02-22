%% EXPONENTIALFUNKTION ANPASSEN
clear;close all;clc

%% Vorbereitungen
% Erstellen einer zufaelligen Zeitreihe. Dieser Schritt muss nicht zwingend
% verstanden werden!
x = (1:0.05:5)';
y = 10+exp(x)+abs(10*randn(length(x),1));

% Plot der Datenreihe in Punktdarstellung
plot(x,y,'LineStyle','None','Marker','.','Markersize',5)

%% Nicht-lineares Fitten
% MATLAB bietet mit den Funktionen inline und nlinfit (nonlinear fit)
% maechtige Routinen zur Anpassung von Funktionen an Messdaten.

% Im ersten Schritt wird die Form der Funktion angegeben, die man an
% die Messreihe anpassen will. Hierbei muss inline() die Form der Funktion
% als String mitgegeben werden. Ebenso mueseen die Funktionsvariable (t)
% und die Koeffizienten uebergeben werden  (a). Das Ergebnis wird in einer
% Variablen (f) gespeichert:
f=inline('a(1)+a(2)*exp(a(3)*t)','a','t');

% Im Anschluss wird die Funktion nlinfit verwendet um die Werte der
% Koeffizienten (a) zu bestimmen. Zuerst muessen die x- und y-Werte der
% Messdaten angegeben werden. Des Weiteren wird das im ersten Schritt
% erzeugte Ergebnis der inline-Funktion (f) verwendet. Zusaetzlich muss ein
% first-guess fuer die Koeffiziente (z.B. a(1)=0 a(2)=1 a(3)=1 => [0 1 1])
% in Vektorform angegeben werden. Dieser dient dazu, die Form der
% Funktion grob vorzudefinieren und muss selbst getroffen werden. Hierbei
% ist ein Blick auf die geplotteten Messdaten hilfreich.
% Zur Veranschaulichung des Einflusses des first-guess auf die Form der
% Funktio folgen ein Plot mit einem schlechten (gruen) und einem guten
% (schwarz) first-guess: 

hold on     % die Graphen werden in den bestehenden Plot gezeichnet

% Plot zweier first-guess gegen die x-Werte
b = [0 -1 1];   % schlechter first-guess
plot(x,b(1)+b(2)*exp(b(3)*x),'--g')

b = [0 1 1];    % guter first guess
plot(x,b(1)+b(2)*exp(b(3)*x),'--k')

% Der Fit fuer die Koeffizienten (bei gutem first-guess) wird in der
% Variablen k gespeichert:
k = nlinfit(x, y, f, [0 1 1]);

%% Plot der Exponentialfunktion mit den berechneten Koeffizienten (k).
% Die Berechnung der Funktionswerte kann explizit durch
% (k(1)+k(2)*exp(k(3)*x) vorgenommen werden oder durch einsetzen des
% Koeffizientenvektors (k) und der x-Werte der Messdaten (x) in die
% Variable f erfolgen (f(k,x)).
plot(x,f(k,x),'r')

% Erstellen einer Legende
legend('Daten','Schlechter first-guess','Guter first-guess','e-fit', ... 
    'Location','NorthWest')