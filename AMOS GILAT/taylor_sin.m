x = -2*pi:0.01:2*pi;

y = sin(x);

taylor_series1 = x;
taylor_series2 = x - (x.^3/factorial(3));
taylor_series5 = x - (x.^3/factorial(3)) + ...
                (x.^5/factorial(5)) - ... 
                (x.^7/factorial(7)) + ...
                (x.^9/factorial(9));

plot(x,y,x,taylor_series1,x,taylor_series2,x,taylor_series5,'LineWidth',1.5);
grid on;
xlabel("x");
xlim([-7 7]);
ylim([-2 2]);
legend("sin(x)", "T1", "T2", "T5");
