%% Parameters
L = 0.2;
C = 2e-6;

%% Calculate Frequency
R1 = 1500;
R2 = linspace(500,2000, 100);

f = 1./(2.*pi) .*...
    sqrt(L.*C.*(R1.^2.*C - L)./(R2.^2.*C - L));

plot(R2, f, linewidth = 1.5, DisplayName="R2"); grid on;
title("f as as function of R1 and R2");
xlabel("R (Ohm)"); ylabel("f (Hz)");

hold on;

R2 = 1500;
R1 = linspace(500,2000, 100);

f = 1./(2.*pi) .*...
    sqrt(L.*C.*(R1.^2.*C - L)./(R2.^2.*C - L));

plot(R1, f, linewidth = 1.5, DisplayName="R1");

legend show
