%% Plotten mehrerer Linien in einem Plot
% Das Darstellen mehrerer Linien in einem Plot ist sehr einfach und
% n�tzlich f�r das Vergleichen von Funktionen oder Messreihen.
clear, close all, clc;

%% So geht's:

x=(0:0.5:10); % Erstellen der n�tigen x, y, und z Vektoren.
y=(0:0.5:10);
z=(0:1:20);

figure       
plot(x,y,x,z) % Hier werden die Y-Werte gegen die X-Werte geplottet, 
              % anschlie�end die Z-Werte gegen die X-Werte.
                        
