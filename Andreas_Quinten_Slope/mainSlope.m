% Main script for the calculation of the slope, given a DEM, by vectorial
% calculations and nested loops
clearvars
clc 
close all

% Function to read DEM: set working directory manually
locationOfTheFile= 'F:\GRM3\Session 2'; %fullfile('F:','GRM3','Session 2');
dem = readDEM(locationOfTheFile);

% Function to calculate slope with the dem and wanted method
S1 = slope(dem,'vector'); % complex? Wrong?
S2 = slope(dem,'loop');
imagesc(S2);


