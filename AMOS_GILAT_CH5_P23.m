%% time 
t1 = 0:0.01:0.5;
t2 = 0.5:0.01:2;

%% Calculate i
v = 12;
r = 4;
l = 1.3;
i1 = v/r .* (1 - exp(-1.*r.*t1/l));
i2 = exp(-1.*r.*t2/l) .* v/r .* (exp(0.5 .* r / l) - 1);

%% Plot Results
i = [i1 i2];
t = [t1 t2];
V = 12 * (t >= 0 & t < 0.5); 

plot(t,i,LineWidth=2); hold on;
plot(t,V,LineWidth=1.5,LineStyle="--")
ylim([-2 14]);
grid on;
legend("i", "Voltage Source");
title("RL Circuit");
xlabel("time (s)");
