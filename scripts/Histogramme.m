%% HISTOGRAMM
clear;close all;clc
% Histogramme lassen sich in Matlab mit dem Befehl hist() sehr leicht
% erstellen. Als Parameter werden der Funktion die zu untersuchende
% Matrix/der zu untersuchende Vektor und die bin-Groessee mitgegeben. Als
% bin-Groesse kann man entweder die Anzahl an Groessenklassen angeben 
% (z.B. 10), oder einen Vektor, der die bin-Mittel direkt angibt 
% (z.B. 1:0.1:10).

% Erstellen von Zufallszahlen
x=randn(1,100);  % 1 Zeile mit 100 Werten (zwischen -3 und 3)
%% Direktes Plotten von Histogramme
% Im folgenden wird die Auswirkung einer veraenderten Anzahl von
% bin-Klassen auf ein Histogramm dargestellt. Zuerst werden die
% Zufallszahlen in nur fuenf und anschliessend in 50 bin-Klassen
% unterteilt.  Im letzten Schritt werden din Mittelwerte den bin-Klassen
% explizit angegeben.

% Histogramm mit grober Aufloesung
figure(1)
hist(x,5);
% Histogramm mit feiner Aufloesung
figure(2)
hist(x,50);
% Histogramm mit Ganzzahlen zwischen -3 und 3 als bin-Mitte
figure(3)
hist(x,-3:3)

%% Abfangen der Daten zum Weiterverarbeiten
% Die Zahlenwerte (und ggf. die vom Programm gewaehlten bin-Klassen) der 
% Auszaehlung lassen sich mit Hilfe von Variablen abfangen. In diesem Fall
% plottet Matlab nicht selbst!

[a,bin] = hist(x,5); % bin=Mittel der bin-Klasse, a=Werte in bin-Klasse

% Die so abgefangenen Werte lassen sich mit Hilfe der bar()-Funktion wieder
% darstellen. bar() liefert ein Balkendiagramm.
figure(4)
bar(bin,a,'hist')    % Das Argument 'hist' sorgt dafür, dass zwischen den
                     % Balken keine Luecken sind. figure 1 und 4 sehen nun
                     % identisch aus.