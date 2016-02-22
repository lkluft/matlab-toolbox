%% MATLAB-ZEIT
clear;close all;clc

% Matlab verwendet zur Generierung von Zeitserien ein eigenes Zeitformat.
% Gezaehlt werden die Tage seit dem 0. Januar 0. Es gibt verschiedene
% Funktionen um zwischen der Matlabzeit und der "normalen" Zeitrechnung zu
% wechseln.

%% datenum() errechnet die Matlab-Zeit
% Als Eingabeparameter sind sowohl Vektoren als auch Strings moeglich
string_num = datenum('12. Januar 2014');
vec_num    = datenum(2014,01,12);

%% datevec() errechnet einen in Y,M,D,H,MN,S unterteilten Vektor
% Als Eingabeparameter sind sowohl Strings als auch Matlab-Zeiten moeglich
string_vec  = datevec('12. Januar 2014');
num_vec     = datevec(735611);

%% datestr() gibt das Datum als String aus (z.B. fuer Titel)
% Als Eingabeparameter sind sowohl Datumsvektoren aus auch die Matlabzeit
% moeglich
vec_string  = datestr([2014 01 12 ]);
date_string = datestr(735611);

%% Hochzaehlen im Matlab-Format
% Um in der Matlabzeit z.B. eine Sekunde weiter zu zaehlen, muss der
% vorherige Wert um den Bruchteil erhoeht werden, den eine Sekunden an
% einem Tag hat.
sec_0 = datevec(735611);
sec_1 = datevec(735611 + 1 / ( 24 * 60 * 60 ) );

% Die Ergebnisse lassen sich im Workspace betrachten und miteinander
% vergleichen!