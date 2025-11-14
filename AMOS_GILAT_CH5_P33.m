clear; clc;

%% Resistors Values
v = 12;
[r3, r4] = deal(250);

%% Calculate Voltage
r2 = 120;
r1 = 0:10:500;

v_ab = v * (r2./(r1+r2) - r4./(r3+r4));
plot(r1, v_ab,'LineWidth',1.5);

hold on;
r1 = 120;
r2 = 0:10:500;
v_ab = v * (r2./(r1+r2) - r4./(r3+r4));
plot(r2, v_ab,'LineWidth',1.5);

grid on;
legend("R1 is variable", "R2 is variable");
title("Compare R1 and R2");
xlabel("Resistor (Ohm)");
ylabel("Voltage (V)");
hold off;
