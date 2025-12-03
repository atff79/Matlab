t = linspace(0,4*pi,100);
r = 1.5;

%% Calculate Cycloid

x = r * (t - sin(t));
y = r * (1 - cos(t));

%% Plot Results
plot(x,y,LineWidth=1.5);
grid on;

xlabel("X"); ylabel("Y");
title("Cycloid",FontWeight="bold");
axis equal;