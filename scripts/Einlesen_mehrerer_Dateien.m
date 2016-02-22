%%Dateien einlesen
clear;close all;clc

dir = 'C:\Users\Ben\Documents\Windverfikation\LMK-FCST+OBS./';
dir1 = 'C:\Users\Ben\Documents\Windverfikation\LME-FCST+OBS./';
for i = 0:6:18
    filename = [ dir 'LMK_201305_' num2str(i) '.dat' ];
    text = fileread(filename);
    text = textscan(text,'%f');
    data(i,:) = cell2mat(text);
end
