%% SPEICHERN VON ABBILDUNGEN
clear;close all;clc

% Die Funktion print() bietet die Moeglichkeit seine erstellen Grafiken
% direkt aus dem Skript heraus abzuspeichern.

% Erstellen einer Testdatenreihe
x=1:10;
y=x.^2;

%% Plotten und speichern der Werte
% Erstellen einer figure mit figure-Nummer
figure(1)

% Plotten der y-Werte gegen die x-Werte
plot(x,y)

% Speichern der Datei in den gaengien Formaten pdf, png und eps. Es werden
% die Nummer der figure (1), das Format ('-dFORMAT') und der Dateiname
% (optional mit Verzeichnis) angegeben
print(1,'-dpdf','./matlab_testplot.pdf')
print(1,'-dpng','./matlab_testplot.png')
print(1,'-depsc','./matlab_testplot.eps') % c(olor) fuer farbige eps-Datei

%% Einstellung der Hoehe und Breite einer Abbildung
% PDF-Dateien werden standardmaessig auf DIN A4 Seiten gespeichert. Wenn
% man dieser verhindern, oder generell die Maße seiner Abbildungen
% bestimmen moechte, koennen die Parameter 'PaperSize' und 'PaperPosition'
% angegeben werden. Als 'PaperSize' wird ein Vektor mit der Breite und
% Hoehe angegebene. 'PaperPosition' ist ein Vektor mit der linken unteren
% Ecke ([0 0]) sowie Breite und Höhe ([15 15]). Die Aenderungen sind
% erst in der gespeicherten Datei sichtbar und beziehen sich nicht auf die
% figure in Matlab!
set(gcf,'units','centimeters','PaperSize',[15 15], ... 
    'PaperPosition',[0 0 15 15]);

% Speichern der Datei mit der neuen Groesse als pdf
print(1,'-dpdf','./matlab_testplot_parameter.pdf')
