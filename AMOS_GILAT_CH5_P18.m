% time
t = 0:0.01:8;

% Poistion
x = 0.41.*t.^4 - 10.8.*t.^3 + 64.*t.^2 - 8.2.*t + 4.4;

% Velocity
v = 1.64.*t.^3 - 32.4.*t.^2 + 128.*t - 8.2;

% Acceleration
a = 4.92.*t.^2 - 64.8.*t + 128;

subplot(3,1,1);
plot(t,x, LineWidth=2);
grid on;
title("Position"); xlabel("t (s)"); ylabel("X");

subplot(3,1,2)
plot(t,v,LineWidth=2);
grid on;
title("Velocity"); xlabel("t (s)"); ylabel("V");

subplot(3,1,3)
plot(t,a, LineWidth=2);
grid on;
title("Acceleration"); xlabel("t (s)"); ylabel("a");