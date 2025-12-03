clear;
clc;
close all;

load("data.mat");

%% Calculate Sigma F = data(:,1) and A = data(:,3)
stress = data(:,1) ./ data(:,3);

%% Calculate Sigma l = data(:,2) and l0 = data(1,2)
strain = (data(:,2) - data(1,2)) ./ data(1,2);

%% Plot
plot(strain, stress, ...
    Color='k', ...
    Marker='o', ...
    LineWidth=1.5)
grid on;
title("Stress as a Function of Strain", FontWeight='bold');
ylabel("\sigma", FontWeight='bold');
xlabel("\epsilon", FontWeight='bold');