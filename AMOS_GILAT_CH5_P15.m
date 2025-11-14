A = 140;
Kab = 0.45;
Kel = 1.6;

t = 0:0.01:10;

Cp = A .* Kab .* (exp(-Kel.*t) - exp(-Kab.*t)) ...
     ./ (Kab - Kel);

plot(t, Cp, LineWidth=1.5);
grid on;
title("Plasma concentration as a function of the absorption");
xlabel("t (s)"); ylabel("Concentration");

hold on;
scatter(t(111), Cp(111), MarkerFaceColor="flat");

